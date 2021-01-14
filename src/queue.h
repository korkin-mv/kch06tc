#ifndef QUEUE_H
#define QUEUE_H

#include <stdbool.h>
#include <stddef.h>

typedef struct
{
    void *begin, *end;
    void *front, *back;
    size_t item_size;
    size_t store_size;
} queue_t;

extern void queue_init(
    queue_t *queue,
    void *array,
    size_t array_size,
    size_t item_size
);

extern bool queue_empty(const queue_t *queue);
extern bool queue_full(const queue_t *queue);

extern bool queue_pushvp(queue_t *queue, const void *value);
extern bool queue_pushc(queue_t *queue, char c);
#define queue_push(q, v) _Generic((v), \
    char: queue_pushc, \
    default: queue_pushvp \
)(q, v)

extern bool queue_popvp(queue_t *queue, void *value);
extern bool queue_popc(queue_t *queue, char *c);
#define queue_pop(q, v) _Generic((v), \
    char *: queue_popc, \
    default: queue_popvp \
)(q, v)


#endif//QUEUE_H
