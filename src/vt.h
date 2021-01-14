#ifndef VT_H
#define VT_H

#include <avr/pgmspace.h>

#include <pt/pt.h>

extern const char vt_newline[] PROGMEM;

extern void vt_init(void);

extern PT_THREAD(vt_task(struct pt *pt, void *));

extern PT_THREAD(vt_puts(struct pt *pt, const char *s));
extern PT_THREAD(vt_puts_P(struct pt *pt, PGM_P s));

#endif//VT_H
