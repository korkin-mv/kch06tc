#ifndef TASK_H
#define TASK_H

#include <pt/pt.h>

#include "defines.h"

typedef struct
{
    pt_result_t (*func)(struct pt *, void *);
    void *data;
    struct pt pt;
} task_t;

#endif//TASK_H
