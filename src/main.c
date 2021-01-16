#include <avr/interrupt.h>

#include "defines.h"
#include "scheduler.h"
#include "gpio.h"
#include "vt.h"

#include "sh/relay.h"
#include "sh/help.h"
#include "sh/echo.h"

static sh_relay_data_t _sh_relay_data;
static sh_help_data_t _sh_help_data;
static sh_echo_data_t _sh_echo_data;

static shell_program_t _shell_programs[] =
{
    {
        .func = &sh_help,
        .name = &sh_help_name,
        .description = &sh_help_description,
        .data = &_sh_help_data
    },
    {
        .func = &sh_echo,
        .name = &sh_echo_name,
        .description = &sh_echo_description,
        .data = &_sh_echo_data
    },
    {
        .func = &sh_relay,
        .name = &sh_relay_name,
        .description = &sh_relay_description,
        .data = &_sh_relay_data
    }
};

static shell_data_t _shell_data;
static vt_data_t _vt_data;

static ALWAYS_INLINE void init(void)
{
    gpio_init();
    shell_init(&_shell_data, _shell_programs, sizeof(_shell_programs)/sizeof(_shell_programs[0]));
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
