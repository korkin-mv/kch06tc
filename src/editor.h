#ifndef EDITOR_H
#define EDITOR_H

#include <stddef.h>

typedef struct
{
    char *begin, *end;
    char *cursor, *last;
} editor_t;

typedef enum
{
    ED_LEFT,
    ED_RIGHT,
    ED_BEGIN,
    ED_END
} editor_side_t;

extern void editor_init(editor_t *editor, char *buffer, size_t size);

extern void editor_clean(editor_t *editor);
extern void editor_append(editor_t *editor, char c);
extern void editor_delete(editor_t *editor);

extern void editor_cursor_move(editor_t *editor, editor_side_t side);

#endif//EDITOR_H
