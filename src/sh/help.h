#ifndef SH_HELP_H
#define SH_HELP_H

#include "../shell.h"

typedef struct
{
    struct pt cpt;
    shell_program_t *p;
} sh_help_data_t;

extern PT_THREAD(sh_help(struct pt *pt, const shell_data_t *shell, void *data));

extern PGM_P sh_help_name(void);
extern PGM_P sh_help_description(void);

#endif//SH_HELP_H
