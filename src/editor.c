#include <string.h>
#include <assert.h>
#include <stdbool.h>

#include "editor.h"

void editor_init(editor_t *editor, char *buffer, size_t size)
{
    assert(editor != NULL && buffer != NULL && size > 0);
    memset(buffer, 0, size);
    editor->begin = buffer;
    editor->end = buffer + size;
    editor->cursor = buffer;
    editor->last = editor->begin;
}

void editor_clean(editor_t *editor)
{
    assert(editor != NULL);
    memset(editor->begin, 0, editor->end - editor->begin);
    editor->cursor = editor->begin;
    editor->last = editor->begin;
}

bool editor_append(editor_t *editor, char c)
{
    char *p;

    assert(editor != NULL);
    const bool cursor_not_at_end = editor->cursor < editor->last;
    if (editor->cursor >= editor->end - 1 ||
        (cursor_not_at_end && editor->last > editor->end - 2) ||
        c == '\0')
    {
        return false;
    }

    if (cursor_not_at_end)
        for (p = editor->last; p > editor->cursor; p--)
            *p = *(p-1);
    if (editor->last < editor->end - 1)
        *(++editor->last) = '\0';
    *(editor->cursor++) = c;

    return true;
}

bool editor_delete(editor_t *editor)
{
    char *p;
    assert(editor != NULL);
    if (editor->cursor <= editor->begin)
        return false;

    --editor->cursor;
    for (p = editor->cursor; p < editor->last - 1; p++)
        *p = *(p+1);
    *(--editor->last) = '\0';

    return true;
}

bool editor_cursor_move(editor_t *editor, editor_side_t side)
{
    assert(editor != NULL);
    switch (side)
    {
    case ED_LEFT:
        if (editor->cursor > editor->begin)
        {
            --editor->cursor;
            return true;
        }
        break;
    case ED_RIGHT:
        if (editor->cursor < editor->last)
        {
            ++editor->cursor;
            return true;
        }
        break;
    case ED_BEGIN:
        editor->cursor = editor->begin;
        return true;
    case ED_END:
        editor->cursor = editor->last;
        return true;
    }

    return false;
}
