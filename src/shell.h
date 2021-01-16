#ifndef SHELL_H
#define SHELL_H

#include <stdint.h>

#include <avr/pgmspace.h>

#include <pt/pt.h>

#include "defines.h"

typedef struct shell_program shell_program_t;
typedef struct shell_data shell_data_t;
typedef uint8_t argc_t;

struct shell_program
{
    pt_result_t (*func)(struct pt *, const shell_data_t *, void *);
    PGM_P (*name)(void);
    PGM_P (*description)(void);
    void *data;
};

struct shell_data
{
    struct pt cpt;
    char *argv[SHELL_TOKENS_MAX];
    argc_t argc, i;
    shell_program_t *pbegin, *pend, *pp;
};

extern void shell_init(shell_data_t *data, shell_program_t *programs, size_t programs_count);

extern PT_THREAD(shell_exec(struct pt *pt, shell_data_t *data, char *command));

extern PT_THREAD(shell_putc(struct pt *pt, char c));
extern PT_THREAD(shell_puts(struct pt *pt, const char *s));
extern PT_THREAD(shell_puts_P(struct pt *pt, PGM_P s));

static inline shell_program_t *shell_program_begin(const shell_data_t *data)
{
    return data->pbegin;
}

static inline shell_program_t *shell_program_end(const shell_data_t *data)
{
    return data->pend;
}

static inline argc_t shell_argc(const shell_data_t *data)
{
    return data->argc;
}

static inline char * const *shell_argv(const shell_data_t *data)
{
    return data->argv;
}

#endif//SHELL_H
