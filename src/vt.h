#ifndef VT_H
#define VT_H

#include <avr/pgmspace.h>

#include <pt/pt.h>

#include "config.h"
#include "editor.h"
#include "shell.h"

typedef enum
{
    VT_STATE_DEFAULT,
    VT_STATE_ESCAPE,
    VT_STATE_CSI,
    VT_STATE_ESCAPE_FINAL,
} vt_state_t;

typedef struct
{
    struct pt child_pt;
    char c;
    vt_state_t state;
    char esc_seq[VT_OUTPUT_ESC_SEQ_SIZE];
    char inbuf[VT_INPUT_BUFFER_SIZE];
    editor_t ed;
    shell_data_t *shell;
} vt_data_t;

extern void vt_init(vt_data_t *data, shell_data_t *shell);

extern PT_THREAD(vt_task(struct pt *pt, void *));

extern PT_THREAD(vt_puts(struct pt *pt, const char *s));
extern PT_THREAD(vt_puts_P(struct pt *pt, PGM_P s));
extern PT_THREAD(vt_putc(struct pt *pt, char c));

#endif//VT_H
