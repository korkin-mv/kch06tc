#ifndef SCHEDULER_H
#define SCHEDULER_H

#include <stdnoreturn.h>
#include <stddef.h>

#include "task.h"

extern noreturn void schedule(task_t *tasks, size_t count);

#endif//SCHEDULER_H
