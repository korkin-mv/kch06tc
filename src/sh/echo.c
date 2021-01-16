#include <stddef.h>

#include "../text.h"
#include "echo.h"

PT_THREAD(sh_echo(struct pt *pt, const shell_data_t *shell, void *data))
{
    sh_echo_data_t * const d = data;
    PT_BEGIN(pt);
    for (d->i = 1; d->i < shell_argc(shell); d->i++)
    {
        PT_SPAWN(pt, &d->cpt, shell_puts(&d->cpt, shell_argv(shell)[d->i]));
        PT_SPAWN(pt, &d->cpt, shell_putc(&d->cpt, ' '));
    }
    PT_SPAWN(pt, &d->cpt, shell_puts_P(&d->cpt, text_newline));
    PT_END(pt);
}

PGM_P sh_echo_name(void)
{
    return PSTR("echo");
}

PGM_P sh_echo_description(void)
{
    return PSTR("Print arguments");
}
