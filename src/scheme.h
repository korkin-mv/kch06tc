#ifndef SCHEME_H
#define SCHEME_H

#include <avr/io.h>

#define ONE_WIRE_PORT PORTB
#define ONE_WIRE_PIN  PINB
#define ONE_WIRE_DDR  DDRB
#define SCH_ONE_WIRE  PB1

#define UART_PORT PORTB
#define UART_DDR  DDRB
#define UART_PIN  PINB
#define SCH_MOSI  PB3
#define SCH_MISO  PB4
#define SCH_SCK   PB5

#define RELAYS_PORT PORTB
#define RELAYS_PIN  PINB
#define RELAYS_DDR  DDRB
#define SCH_RELAY0  PB6
#define SCH_RELAY1  PB7

#define DAC_PORT PORTC
#define DAC_PIN  PINC
#define DAC_DDR  DDRC
#define SCH_DAC0 PC0
#define SCH_DAC1 PC1
#define SCH_DAC2 PC2
#define SCH_DAC3 PC3

#define I2C_PORT PORTC
#define I2C_PIN  PINC
#define I2C_DDR  DDRC
#define SCH_SDA  PC4
#define SCH_SCL  PC5

#define USART_PORT  PORTD
#define USART_PIN   PIND
#define USART_DDR   DDRD
#define SCH_MCU_RXD PD0
#define SCH_MCU_TXD PD1

#define SQW_PORT PORTD
#define SQW_PIN  PIND
#define SQW_DDR  DDRD
#define SCH_SQW  PD2

#define SWITCHS_PORT PORTD
#define SWITCHS_PIN  PIND
#define SWITCHS_DDR  DDRD
#define SCH_ENABLE   PD5
#define SCH_FORCE0   PD6
#define SCH_FORCE1   PD7

#endif//SCHEME_H
