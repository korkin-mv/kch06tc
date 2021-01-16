#ifndef SH_ECHO_H
#define SH_ECHO_H

#include "../shell.h"

typedef struct
{
    struct pt cpt;
    argc_t i;
} sh_echo_data_t;

extern PT_THREAD(sh_echo(struct pt *pt, const shell_data_t *shell, void *data));

extern PGM_P sh_echo_name(void);
extern PGM_P sh_echo_description(void);

#endif//SH_ECHO_H

