#ifndef UART_H
#define UART_H

#include <pt/pt.h>

extern void uart_init(void);

extern PT_THREAD(uart_getc(struct pt *pt, char *c));
extern PT_THREAD(uart_putc(struct pt *pt, char c));

#endif//UART_H
