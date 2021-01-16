#include <stdbool.h>
#include <stddef.h>
#include <ctype.h>
#include <stdlib.h>
#include <string.h>

#include <pt/pt-sem.h>

#include "vt.h"
#include "uart.h"
#include "text.h"
#include "queue.h"

#if VT_OUTPUT_ESC_SEQ_SIZE < 4
#error VT_OUTPUT_ESC_SEQ_SIZE is small.
#endif

#define KEY_BACKSPACE '\b'
#define KEY_ESCAPE '\e'
#define KEY_SPACE ' '
#define KEY_ENTER '\r'
#define KEY_NEWLINE '\n'
#define KEY_TAB '\t'

#define ESC_CSI '['

#define CSI_FORWARD 'D'
#define CSI_BACK 'C'
#define CSI_ERASE_IN_LINE 'K'

static struct pt_sem _output_sem;

static void _strcatc(char *s, char c)
{
    for (;*s;s++);
    *s = c;
    *(++s) = '\0';
}

static void _gen_csi_forward(char *s, int n)
{
    *(s++) = KEY_ESCAPE;
    *(s++) = ESC_CSI;
    itoa(n, s, 10);
    _strcatc(s, CSI_FORWARD);
}

void vt_init(vt_data_t *data, shell_data_t *shell)
{
    uart_init();
    data->shell = shell;
    editor_init(&data->ed, data->inbuf, sizeof(data->inbuf));
    PT_SEM_INIT(&_output_sem, 1);
}

PT_THREAD(vt_task(struct pt *pt, void *data))
{
    vt_data_t * const d = data;
    struct pt * const cpt = &d->child_pt;
    editor_t * const ed = &d->ed;

    PT_BEGIN(pt);
    PT_SPAWN(pt, cpt, vt_puts_P(cpt, text_prompt));
    d->state = VT_STATE_DEFAULT;
    for(;;)
    {
        PT_SPAWN(pt, cpt, uart_getc(cpt, &d->c));
        switch (d->state)
        {
        case VT_STATE_ESCAPE:
            switch (d->c)
            {
            case ESC_CSI:
                d->state = VT_STATE_CSI;
                _strcatc(d->esc_seq, d->c);
                break;
            default:
                d->state = VT_STATE_DEFAULT;
            }
            break;
        case VT_STATE_CSI:
            switch (d->c)
            {
            case CSI_FORWARD:
                if (editor_cursor_move(ed, ED_LEFT))
                    _strcatc(d->esc_seq, d->c);
                else
                    d->esc_seq[0] = '\0';
                d->state = VT_STATE_ESCAPE_FINAL;
                break;
            case CSI_BACK:
                if (editor_cursor_move(ed, ED_RIGHT))
                    _strcatc(d->esc_seq, d->c);
                else
                    d->esc_seq[0] = '\0';
                d->state = VT_STATE_ESCAPE_FINAL;
                break;
            default:
                d->state = VT_STATE_DEFAULT;
            }
            if (d->state == VT_STATE_ESCAPE_FINAL)
            {
                if (*d->esc_seq)
                    PT_SPAWN(pt, cpt, vt_puts(cpt, d->esc_seq));
                d->state = VT_STATE_DEFAULT;
            }
            break;
        case VT_STATE_DEFAULT:
        default:
            switch (d->c)
            {
            case KEY_BACKSPACE:
                if (editor_delete(ed))
                {
                    PT_SPAWN(pt, cpt, vt_puts_P(cpt, text_backspace));
                    if (!editor_cursor_at_end(ed))
                    {
                        PT_SPAWN(pt, cpt, vt_puts_P(cpt, text_delete_in_line));
                        PT_SPAWN(pt, cpt, vt_puts(cpt, editor_cursor(ed)));
                        _gen_csi_forward(d->esc_seq, editor_cursor_length(ed));
                        PT_SPAWN(pt, cpt, vt_puts(cpt, d->esc_seq));
                    }
                }
                break;
            case KEY_NEWLINE:
                break;
            case KEY_ENTER:
                PT_SPAWN(pt, cpt, vt_puts_P(cpt, text_newline));
                if (!editor_empty(ed))
                {
                    PT_SPAWN(pt, cpt, shell_exec(cpt, d->shell, d->inbuf));
                    editor_clean(ed);
                }
                PT_SPAWN(pt, cpt, vt_puts_P(cpt, text_prompt));
                editor_clean(ed);
                break;
            case KEY_TAB:
                break;
            case KEY_ESCAPE:
                d->esc_seq[0] = KEY_ESCAPE;
                d->esc_seq[1] = '\0';
                d->state = VT_STATE_ESCAPE;
                break;
            default:
                if (isprint(d->c) || d->c == KEY_SPACE)
                {
                    if (editor_append(ed, d->c))
                    {
                        PT_SPAWN(pt, cpt, uart_putc(cpt, d->c));
                        if (!editor_cursor_at_end(ed))
                        {
                            PT_SPAWN(pt, cpt, vt_puts(cpt, editor_cursor(ed)));
                            _gen_csi_forward(d->esc_seq, editor_cursor_length(ed));
                            PT_SPAWN(pt, cpt, vt_puts(cpt, d->esc_seq));
                        }
                    }
                }
            }
        }
        PT_YIELD(pt);
    }
    PT_END(pt);
}

PT_THREAD(vt_puts(struct pt *pt, const char *s))
{
    static struct pt cpt;
    static const char *ls;
    PT_BEGIN(pt);
    PT_SEM_WAIT(pt, &_output_sem);
    ls = s;
    while (*ls)
    {
        PT_SPAWN(pt, &cpt, uart_putc(&cpt, *ls));
        ++ls;
    }
    PT_SEM_SIGNAL(pt, &_output_sem);
    PT_END(pt);
}

PT_THREAD(vt_puts_P(struct pt *pt, PGM_P s))
{
    static struct pt cpt;
    static const char *ls;
    static char c;
    PT_BEGIN(pt);
    PT_SEM_WAIT(pt, &_output_sem);
    ls = s;
    c = pgm_read_byte(ls);
    while (c)
    {
        PT_SPAWN(pt, &cpt, uart_putc(&cpt, c));
        c = pgm_read_byte(++ls);
    }
    PT_SEM_SIGNAL(pt, &_output_sem);
    PT_END(pt);
}

PT_THREAD(vt_putc(struct pt *pt, char c))
{
    return uart_putc(pt, c);
}
