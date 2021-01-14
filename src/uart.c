#include <avr/io.h>
#include <avr/interrupt.h>

#include "defines.h"
#include "uart.h"
#include "queue.h"

static char _receiver_buffer[UART_BUFFERING_SIZE];
static queue_t _receiver_queue;

static char _transmitter_buffer[UART_BUFFERING_SIZE];
static queue_t _transmitter_queue;

void uart_init()
{
    queue_init(
        &_receiver_queue,
        &_receiver_buffer,
        sizeof(_receiver_buffer),
        sizeof(_receiver_buffer[0])
    );
    queue_init(
        &_transmitter_queue,
        &_transmitter_buffer,
        sizeof(_transmitter_buffer),
        sizeof(_transmitter_buffer[0])
    );
    // Setup boudrate
    UBRR0H = HI(UBRR(UART_BAUDRATE));
    UBRR0L = LO(UBRR(UART_BAUDRATE));

#if ENABLE_UART_DOUBLE_SPEEN
    UCSR0A |= _BV(U2X0);
#endif

    // Enable receiver, trasmitter and their interrupts
    UCSR0B |= _BV(RXEN0) | _BV(TXEN0) | _BV(RXCIE0) | _BV(TXCIE0);
    // Set 8N1
    UCSR0C |= _BV(UCSZ00) | _BV(UCSZ01);
}

PT_THREAD(uart_getc(struct pt *pt, char *c))
{
    PT_BEGIN(pt);
    PT_WAIT_WHILE(pt, queue_empty(&_receiver_queue));
    cli();
    queue_popc(&_receiver_queue, c);
    sei();
    PT_END(pt);
}

PT_THREAD(uart_putc(struct pt *pt, char c))
{
    PT_BEGIN(pt);
    PT_WAIT_WHILE(pt, queue_full(&_transmitter_queue));
    cli();
    queue_pushc(&_transmitter_queue, c);
    sei();
    UCSR0B |= _BV(UDRIE0);
    PT_END(pt);
}


ISR(USART_RX_vect)
{
    char c = UDR0;
    if((UCSR0A & ((1 << FE0) | (1 << DOR0) | (1 << UPE0))) == 0)
    {
        queue_pushc(&_receiver_queue, c);
    }
}

ISR(USART_TX_vect)
{

}

ISR(USART_UDRE_vect)
{
    char c;
    if (!queue_empty(&_transmitter_queue))
    {
        queue_popc(&_transmitter_queue, &c);
        UDR0 = c;
    }
    else
    {
        UCSR0B &= ~_BV(UDRIE0);
    }
}
