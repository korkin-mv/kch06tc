#include <stdbool.h>
#include <stddef.h>
#include <ctype.h>

#include <pt/pt-sem.h>

#include "config.h"
#include "vt.h"
#include "uart.h"

const char vt_newline[] PROGMEM = "\r\n";

static const char _prompt[] PROGMEM = "> ";
static const char _newline_promtp[] PROGMEM = "\r\n> ";
static const char _backspace[] PROGMEM = "\b \b";

static struct pt_sem _output_sem;
static char _input_buffer[VT_INPUT_BUFFER_SIZE];
static size_t _input_count;

void vt_init(void)
{
    uart_init();
    PT_SEM_INIT(&_output_sem, 1);
    _input_buffer[0] = '\0';
    _input_count = 0;
}

PT_THREAD(vt_task(struct pt *pt, void *data))
{
    static struct pt _pt;
    static char c;
    PT_BEGIN(pt);
    PT_SPAWN(pt, &_pt, vt_puts_P(&_pt, _newline_promtp));
    for (;;)
    {
        PT_SPAWN(pt, &_pt, uart_getc(&_pt, &c));
        if (isprint(c) || isspace(c) || c == '\b' || c == '\e')
        {
            if (c =='\b')
            {
                if (_input_count > 0)
                {
                    --_input_count;
                    PT_SPAWN(pt, &_pt, vt_puts_P(&_pt, _backspace));
                }
            }
            else if (c =='\r')
            {
                _input_buffer[_input_count] = '\0';
                PT_SPAWN(pt, &_pt, vt_puts_P(&_pt, vt_newline));
                PT_SPAWN(pt, &_pt, vt_puts(&_pt, _input_buffer));
                _input_count = 0;
                PT_SPAWN(pt, &_pt, vt_puts_P(&_pt, _newline_promtp));
            }
            else if (c == '\e')
            {
                _input_count = 0;
                PT_SPAWN(pt, &_pt, vt_puts_P(&_pt, _newline_promtp));
            }
            else
            {
                if (_input_count < VT_INPUT_BUFFER_SIZE-1)
                {
                    _input_buffer[_input_count++] = c;
                    PT_SPAWN(pt, &_pt, uart_putc(&_pt, c));
                }
            }
        }
        PT_YIELD(pt);
    }
    PT_END(pt);
}

PT_THREAD(vt_puts(struct pt *pt, const char *s))
{
    static struct pt _pt;
    static const char *_s;
    PT_BEGIN(pt);
    PT_SEM_WAIT(pt, &_output_sem);
    _s = s;
    while (*_s)
    {
        PT_SPAWN(pt, &_pt, uart_putc(&_pt, *_s));
        ++_s;
    }
    PT_SEM_SIGNAL(pt, &_output_sem);
    PT_END(pt);
}

PT_THREAD(vt_puts_P(struct pt *pt, PGM_P s))
{
    static struct pt _pt;
    static const char *_s;
    static char c;
    PT_BEGIN(pt);
    PT_SEM_WAIT(pt, &_output_sem);
    _s = s;
    c = pgm_read_byte(_s);
    while (c)
    {
        PT_SPAWN(pt, &_pt, uart_putc(&_pt, c));
        c = pgm_read_byte(++_s);
    }
    PT_SEM_SIGNAL(pt, &_output_sem);
    PT_END(pt);
}

