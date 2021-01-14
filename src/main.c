#include <avr/interrupt.h>

#include "defines.h"
#include "scheduler.h"
#include "gpio.h"
#include "vt.h"

static ALWAYS_INLINE void init(void)
{
    gpio_init();
    vt_init();
}

static task_t tasks[] =
{
    { .func = &vt_task, .data = NULL }
};

OS_MAIN int main(void)
{
    init();
    sei();
    schedule(tasks, sizeof(tasks)/sizeof(tasks[0]));
}
