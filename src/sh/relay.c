#include <stddef.h>
#include <stdlib.h>
#include <ctype.h>

#include "../gpio.h"
#include "relay.h"

PT_THREAD(sh_relay(struct pt *pt, const shell_data_t *shell, void *data))
{
    sh_relay_data_t * const d = data;
    uint8_t v;
    const char *p;

    PT_BEGIN(pt);
    if (shell->argc < 2)
        goto print_help;
    for (p = shell->argv[1]; *p; p++)
        if (!isdigit(*p))
            goto print_help;
    switch (atoi(shell->argv[1]))
    {
        case 0:
            v = _BV(SCH_RELAY0);
            break;
        case 1:
            v = _BV(SCH_RELAY1);
            break;
        default:
            goto print_help;
    }
    if (shell->argc >= 3)
    {
        if (!strcmp_P(shell->argv[2], PSTR("on")))
            RELAYS_PORT |= v;
        else if (!strcmp_P(shell->argv[2], PSTR("off")))
            RELAYS_PORT &= ~v;
        else
            goto print_help;
    }
    else
    {
        if (RELAYS_PIN & v)
            PT_SPAWN(pt, &d->cpt, shell_puts_P(&d->cpt, PSTR("ON\r\n")));
        else
            PT_SPAWN(pt, &d->cpt, shell_puts_P(&d->cpt, PSTR("OFF\r\n")));
    }

    PT_END(pt);

print_help:
    PT_SPAWN(pt, &d->cpt, shell_puts_P(&d->cpt,
        PSTR("Usage: relay num [on|off]\r\n")));
    PT_EXIT(pt);
}

PGM_P sh_relay_name(void)
{
    return PSTR("relay");
}

PGM_P sh_relay_description(void)
{
    return PSTR("Get/Set relay state");
}
