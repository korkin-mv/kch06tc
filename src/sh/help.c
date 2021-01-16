#include <stddef.h>

#include "../text.h"
#include "help.h"

const char _title[] PROGMEM =
    TEXT(PROJECT_NAME)" v"TEXT(PROJECT_VERSION)"\r\n"
    "General purpose controller.\r\n"
    "\r\n"
    "Source aviable on \"https://github.com/korkin-mv/kch06tc\"\r\n"
    "License: MIT\r\n"
    "Author: Mihail Korkin <korkin_mv@protonmail.ch>\r\n"
    "\r\n"
    "Supported command:\r\n";

PT_THREAD(sh_help(struct pt *pt, const shell_data_t *shell, void *data))
{
    sh_help_data_t * const d = data;
    PT_BEGIN(pt);
    PT_SPAWN(pt, &d->cpt, shell_puts_P(&d->cpt, _title));
    for (d->p = shell_program_begin(shell); d->p < shell_program_end(shell); d->p++)
    {
        PT_SPAWN(pt, &d->cpt, shell_putc(&d->cpt, '\t'));
        PT_SPAWN(pt, &d->cpt, shell_puts_P(&d->cpt, d->p->name()));
        PT_SPAWN(pt, &d->cpt, shell_putc(&d->cpt, '\t'));
        PT_SPAWN(pt, &d->cpt, shell_puts_P(&d->cpt, d->p->description()));
        PT_SPAWN(pt, &d->cpt, shell_puts_P(&d->cpt, text_newline));
    }
    PT_END(pt);
}

PGM_P sh_help_name(void)
{
    return PSTR("help");
}

PGM_P sh_help_description(void)
{
    return PSTR("Print this message");
}
