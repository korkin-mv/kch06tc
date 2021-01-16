#ifndef EDITOR_H
#define EDITOR_H

#include <stddef.h>
#include <stdbool.h>

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
extern bool editor_append(editor_t *editor, char c);
extern bool editor_delete(editor_t *editor);

extern bool editor_cursor_move(editor_t *editor, editor_side_t side);

static inline bool editor_empty(const editor_t *editor)
{
    return editor->last == editor->begin;
}

static inline bool editor_cursor_at_end(const editor_t *editor)
{
    return editor->cursor >= editor->last;
}

static inline const char *editor_cursor(const editor_t *editor)
{
    return editor->cursor;
}

static inline size_t editor_length(const editor_t *editor)
{
    return editor->last - editor->begin;
}

static inline size_t editor_cursor_length(const editor_t *editor)
{
    return editor->last - editor->cursor;
}

static inline const char *editor_getstr(const editor_t *editor)
{
    return editor->begin;
}

#endif//EDITOR_H
