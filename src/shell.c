#include <assert.h>
#include <string.h>
#include <stdbool.h>

#include "shell.h"
#include "vt.h"
#include "text.h"

static void _parse_token(shell_data_t *d, char *c)
{
    const char sep[] = " ";

    for (d->argc = 0; d->argc < SHELL_TOKENS_MAX; d->argc++)
    {
        d->argv[d->argc] = strtok(c, sep);
        if (!d->argv[d->argc])
            break;
        c = NULL;
    }
}

static shell_program_t *_find_program(shell_program_t *b, shell_program_t *e, const char *s)
{
    for (;b < e; b++)
        if (!strcmp_P(b->name, s))
            return b;
    return NULL;
}

void shell_init(shell_data_t *data, shell_program_t *programs, size_t programs_count)
{
    assert(data != NULL);
    data->pbegin = programs;
    data->pend = programs + programs_count;
}

PT_THREAD(shell_exec(struct pt *pt, shell_data_t *data, char *command))
{
    char * const name = data->argv[0];

    assert(pt != NULL && data != NULL);
    PT_BEGIN(pt);
    if (command == NULL || *command == '\0')
        PT_EXIT(pt);
    _parse_token(data, command);
    if (data->argc > 0)
    {
        if (!strcmp_P(name, PSTR("echo")))
        {
            for (data->i = 1; data->i < data->argc; data->i++)
            {
                PT_SPAWN(pt, &data->cpt, vt_puts(&data->cpt, data->argv[data->i]));
                PT_SPAWN(pt, &data->cpt, vt_puts(&data->cpt, " "));
            }
            PT_SPAWN(pt, &data->cpt, vt_puts_P(&data->cpt, text_newline));
        }
        else if (!strcmp_P(name, PSTR("help")))
        {
            PT_SPAWN(pt, &data->cpt, vt_puts_P(&data->cpt, text_help));
            for (data->pp = data->pbegin; data->pp < data->pend; data->pp++)
            {
                PT_SPAWN(pt, &data->cpt, vt_putc(&data->cpt, '\t'));
                PT_SPAWN(pt, &data->cpt, vt_puts_P(&data->cpt, data->pp->name));
                PT_SPAWN(pt, &data->cpt, vt_puts_P(&data->cpt, text_newline));
            }
        }
        else if (data->pbegin)
        {
            data->pp = _find_program(data->pbegin, data->pend, data->argv[0]);
            if (data->pp)
                PT_SPAWN(pt, &data->cpt, data->pp->func(&data->cpt, data, data->pp->data));
            else
                goto not_found;
        }
        else
        {
not_found:
            PT_SPAWN(pt, &data->cpt, vt_puts(&data->cpt, data->argv[0]));
            PT_SPAWN(pt, &data->cpt, vt_puts_P(&data->cpt, text_not_found));
        }
    }
    PT_END(pt);
}

