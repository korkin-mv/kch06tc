#include <string.h>

#include "queue.h"

void queue_init(
    queue_t *queue,
    void *array,
    size_t array_size,
    size_t item_size
)
{
    queue->begin = array;
    queue->end = array + array_size;
    queue->front = array;
    queue->back = array;
    queue->item_size = item_size;
    queue->store_size = 0;
}

static void *_increment_pointer(queue_t *queue, size_t item_size, void *pointer)
{
    pointer += item_size;
    if (pointer >= queue->end)
        pointer = queue->begin;

    return pointer;
}

bool queue_pushvp(queue_t *queue, const void *value)
{
    if (queue_full(queue))
        return false;

    memcpy(queue->back, value, queue->item_size);
    queue->store_size += queue->item_size;
    queue->back = _increment_pointer(queue, queue->item_size, queue->back);

    return true;
}

bool queue_popvp(queue_t *queue, void *value)
{
    if (queue_empty(queue))
        return false;

    memcpy(value, queue->front, queue->item_size);
    queue->store_size -= queue->item_size;
    queue->front = _increment_pointer(queue, queue->item_size, queue->front);

    return true;
}

bool queue_pushc(queue_t *queue, char c)
{
    if (queue_full(queue))
        return false;

    *((char *)(queue->back)) = c;
    queue->store_size += sizeof(char);
    queue->back = _increment_pointer(queue, sizeof(char), queue->back);

    return true;
}

bool queue_popc(queue_t *queue, char *c)
{
    if (queue_empty(queue))
        return false;

    *c = *((char *)(queue->front));
    queue->store_size -= sizeof(char);
    queue->front = _increment_pointer(queue, sizeof(char), queue->front);

    return true;
}

