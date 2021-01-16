#ifndef SH_RELAY_H
#define SH_RELAY_H

#include "../shell.h"

typedef struct
{
    struct pt cpt;
} sh_relay_data_t;

extern PT_THREAD(sh_relay(struct pt *pt, const shell_data_t *shell, void *data));

extern PGM_P sh_relay_name(void);
extern PGM_P sh_relay_description(void);

#endif//SH_RELAY_H
