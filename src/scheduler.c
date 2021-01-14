#include <stdbool.h>

#include <avr/interrupt.h>
#include <avr/sleep.h>

#include "defines.h"
#include "scheduler.h"

static ALWAYS_INLINE void _idle(void)
{
    set_sleep_mode(SLEEP_MODE_IDLE);
    sei();
    sleep_enable();
    sleep_cpu();
    sleep_disable();
}

noreturn void schedule(task_t *tasks, size_t count)
{
    size_t i;
    pt_result_t result;
    bool all_wait;

    for (i = 0; i < count; i++)
    {
        PT_INIT(&tasks[i].pt);
    }

    for(;;)
    {
        all_wait = true;
        do
        {
            for (i = 0; i < count; i++)
            {
                result = tasks[i].func(&tasks[i].pt, tasks[i].data);
                if (result != PT_WAITING)
                    all_wait = false;
            }
        } while (!all_wait);
        _idle();
    }
}
