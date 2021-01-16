#include <avr/interrupt.h>

#include "defines.h"
#include "scheduler.h"
#include "gpio.h"
#include "vt.h"

static shell_data_t _shell_data;
static vt_data_t _vt_data;

static ALWAYS_INLINE void init(void)
{
    gpio_init();
    shell_init(&_shell_data, NULL, 0);
    vt_init(&_vt_data, &_shell_data);
}

static task_t _tasks[] =
{
    { .func = &vt_task, .data = &_vt_data, .enable = true }
};

OS_MAIN int main(void)
{
    init();
    sei();
    schedule(_tasks, sizeof(_tasks)/sizeof(_tasks[0]));
}
