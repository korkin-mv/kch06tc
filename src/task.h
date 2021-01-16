#ifndef TASK_H
#define TASK_H

#include <stdbool.h>

#include <pt/pt.h>

#include "defines.h"

typedef struct
{
    pt_result_t (*func)(struct pt *, void *);
    void *data;
    bool enable;
    struct pt pt;
} task_t;

#endif//TASK_H
