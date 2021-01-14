#ifndef GPIO_H
#define GPIO_H

#include "defines.h"
#include "scheme.h"

ALWAYS_INLINE void gpio_init(void)
{
    // Configure output relay pins
    RELAYS_PORT &= ~(_BV(SCH_RELAY0) | _BV(SCH_RELAY1));
    RELAYS_DDR |= _BV(SCH_RELAY0) | _BV(SCH_RELAY1);

    // Configure input switch pins with 20k-50k pull-up resistor
    SWITCHS_DDR &= ~(_BV(SCH_RELAY0) | _BV(SCH_RELAY1));
    SWITCHS_PORT |= _BV(SCH_ENABLE) | _BV(SCH_FORCE0) | _BV(SCH_FORCE1);
}

#endif//GPIO_H
