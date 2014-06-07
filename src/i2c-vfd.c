/*************************************************************************
Title:    I2C VFD Backpack
Authors:  Michael Petersen <railfan@drgw.net>
          Nathan D. Holmes <maverick@drgw.net>
File:     i2c-vfd.c
License:  GNU General Public License v3

LICENSE:
    Copyright (C) 2014 Michael Petersen

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

*************************************************************************/

#include <stdlib.h>
#include <stdint.h>
#include <avr/io.h>
#include <util/atomic.h>
#include <util/delay.h>
#include <string.h>

#include "avr-i2c-cmdslave.h"

// 7-bit I2C Address
#define I2C_ADDRESS 0x20

// Project specific I2C configuration
#include "i2c.h"

extern volatile uint8_t i2c_busy;

uint8_t vfd_buffer[VFD_BUFFER_SIZE];


#define SERIAL_UART_UBRR            UBRR0
#define SERIAL_UART_CSR_A           UCSR0A
#define SERIAL_UART_CSR_B           UCSR0B
#define SERIAL_UART_CSR_C           UCSR0C
#define SERIAL_UART_DATA            UDR0
#define SERIAL_UART_EMPTY           UDRE0
#define SERIAL_UART_RXCOMPLETE      RXC0
#define SERIAL_RXEN                 RXEN0
#define SERIAL_TXEN                 TXEN0

void serialInit(void)
{
	// VFD Serial Port
	#undef BAUD
	#define BAUD VFD_BAUD
	#include <util/setbaud.h>
	SERIAL_UART_UBRR = UBRR_VALUE;
	SERIAL_UART_CSR_A = (USE_2X)?_BV(U2X0):0;
	SERIAL_UART_CSR_B = 0;
	SERIAL_UART_CSR_C = _BV(UCSZ01) | _BV(UCSZ00);

	// Enable UART
	SERIAL_UART_CSR_B = _BV(SERIAL_RXEN) | _BV(SERIAL_TXEN);
}

void serialWrite(uint8_t c)
{
	while(!(SERIAL_UART_CSR_A & (1 << SERIAL_UART_EMPTY)));  // Wait until transmit buffer is empty
	SERIAL_UART_DATA = c;  // Send next byte
}



void processCommands(void)
{
	CmdBuffer cmd;
	uint8_t vfd_bytes, i;
	
	while(i2cCmdQueueDepth())
	{
		i2cCmdQueuePop(&cmd);

		// Process commands
		switch(cmd.code)
		{
			case 0x03:	// CLEAR_FAULTS
				// Clear any faults
				while(i2c_busy);  // Wait for any pending I2C read transactions to keep them atomic
				ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
				{
					// Write atomically to the register
					I2C_STATUS_CML[0] = 0;
				}
				break;
			case 0xDF:	// WRITE_VFD
				while(i2c_busy);  // Wait for any pending I2C read transactions to keep them atomic (and keep from missing something during the data transfer below)
				ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
				{
					vfd_bytes = *I2C_VFD_DATA;
					memcpy((void *)vfd_buffer, (void *)(I2C_VFD_DATA+1), VFD_BUFFER_SIZE);  // Copy just data
					I2C_STATUS[0] |= STATUS_BUSY;
				}
				for(i=0; i<vfd_bytes; i++)
				{
					serialWrite(vfd_buffer[i]);
				}
				while(i2c_busy);  // Wait for any pending I2C read transactions to keep them atomic
				ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
				{
					I2C_STATUS[0] &= ~STATUS_BUSY;
				}
				break;
			default:
				// Do nothing
				break;
		}
	}
}


void init(void)
{
	cli();  // Unset interrupts while configuring
	
#if defined(__AVR_ATmega328__) || defined(__AVR_ATmega328P__) 
	// Set Linduino DC590 connector mux to I2C
	DDRB |= _BV(PB0);
	PORTB |= _BV(PB0);
#endif

	// Generate I2C command lookup table
	uint8_t i = 0;
	int i2cNumCommands = sizeof(i2c_registerMap) / sizeof(i2cCommand);
	
	do {
		uint8_t j;
		i2c_registerIndex[i] = I2C_UNSUPPORTED;  // default
		for(j=0; j<i2cNumCommands; j++)
		{
			if(i == i2c_registerMap[j].cmdCode)
			{
				i2c_registerIndex[i] = j;
			}
		}
		i++;
	} while (i != 0);

	// Set defaults
	I2C_PAGE[0] = 0;
	I2C_STATUS_CML[0] = 0;
	I2C_STATUS[0] = 0;
	I2C_CONFIG_ALL[0] = 0;
	I2C_REV_ID[0] = 0xA000;

	for(i=0; i<I2C_NUMPAGES; i++)
	{
		// FIXME: reset counter registers
	}

	serialInit();

	// Initialize I2C last - after all registers are configured
	i2c_slave_init(I2C_ADDRESS, 0);
	
	sei();
}


int main(void)
{
	init();

	while(1)
	{
		processCommands();
	}
}

