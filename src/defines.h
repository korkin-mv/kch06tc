#ifndef DEFINES_H
#define DEFINES_H

#include "config.h"

#define OS_MAIN __attribute__((OS_main))
#define ALWAYS_INLINE __attribute__((always_inline)) inline

#ifndef MAX
#   define MAX(x, y) (((x) > (y)) ? (x) : (y))
#endif

#ifndef MIN
#   define MIN(x, y) (((x) < (y)) ? (x) : (y))
#endif

#ifndef F_CPU
#   error F_CPU not defined.
#endif

#if ENABLE_UART_DOUBLE_SPEEN
#   define UBRR_DIVIDER (8UL)
#else
#   define UBRR_DIVIDER (16UL)
#endif

typedef char pt_result_t;

#define UBRR(baud) (F_CPU/(UBRR_DIVIDER*(baud))-1)

#define HI(x) ((x >> 8) & 0xFF)
#define LO(x) ((x) & 0xFF)

#define MEMBER_SIZE(type, member) (((type *)0)->member)
#define TEXT(x) XTEXT(x)
#define XTEXT(x) #x

#endif//DEFINES_H
