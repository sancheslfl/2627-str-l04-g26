/**
  Generated Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This is the main file generated using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  Description:
    This header file provides implementations for driver APIs for all modules selected in the GUI.
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.81.6
        Device            :  PIC16F18875
        Driver Version    :  2.00
*/

/*
    (c) 2018 Microchip Technology Inc. and its subsidiaries. 
    
    Subject to your compliance with these terms, you may use Microchip software and any 
    derivatives exclusively with Microchip products. It is your responsibility to comply with third party 
    license terms applicable to your use of third party software (including open source software) that 
    may accompany Microchip software.
    
    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER 
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY 
    IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS 
    FOR A PARTICULAR PURPOSE.
    
    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND 
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP 
    HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO 
    THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL 
    CLAIMS IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT 
    OF FEES, IF ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS 
    SOFTWARE.
*/

#include "mcc_generated_files/mcc.h"
#include <xc.h>
#include <stdint.h>
#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>

extern uint8_t ALAL;          /* threshold (0..7)            */
extern uint8_t ALAF;          /* alarmes ativos (0/1)        */
extern uint8_t TALA;          /* duracao do sinal (s)        */

bool alarm_L_fired = false;   /* trinco: so limpa com S1     */
uint8_t alarm_cnt  = 0;       /* segundos restantes de sinal */

void lum_init(void)
{
    TRISAbits.TRISA0 = 1;     /* RA0 entrada analogica */
    ANSELAbits.ANSA0 = 1;
    TRISAbits.TRISA5 = 0;     /* LED D3 */
    ANSELAbits.ANSA5 = 0;
    TRISAbits.TRISA4 = 0;     /* LED D2 (sinal de alarme) */
    ANSELAbits.ANSA4 = 0;

    ADREF  = 0x00;            /* Vref+ = VDD, Vref- = VSS */
    ADCLK  = 0x00;
    ADPCH  = 0x00;            /* canal ANA0 */
    ADACQ  = 0x20;
    ADCON0 = 0x94;            /* ADON, clock FRC, resultado a direita */
}

uint8_t lum_read(void)        /* 0..7 */
{
    ADCON0bits.ADGO = 1;
    while (ADCON0bits.ADGO) { }
    uint16_t raw = ((uint16_t)ADRESH << 8) | ADRESL;   /* 0..1023 */
    return (uint8_t)(raw >> 7);
}

void lum_check(uint8_t lum)   /* chamar de PMON em PMON segundos */
{
    bool below = (lum < ALAL);          /* O TESTE */

    LATAbits.LATA5 = below;             /* D3 acompanha a condicao */

    if (below && ALAF && !alarm_L_fired) {
        alarm_L_fired = true;           /* mostrar 'L' no LCD */
        alarm_cnt = TALA;
        LATAbits.LATA4 = 1;             /* sinal (PWM no futuro) */
    }

}

void lum_tick_1s(void)        /* chamar 1x por segundo: desliga o sinal */
{
    if (alarm_cnt && --alarm_cnt == 0) 
    {
        LATAbits.LATA4 = 0;
    }
}

void lum_clear(void)          /* chamar quando S1 e premido */
{
    alarm_L_fired = false;
}


t1_isr()
{
    IO_RA7_Toggle();
    
}
/*
                         Main application
 */
void main(void)
{
    // initialize the device
    SYSTEM_Initialize();

    // When using interrupts, you need to set the Global and Peripheral Interrupt Enable bits
    // Use the following macros to:

    // Enable the Global Interrupts
    INTERRUPT_GlobalInterruptEnable();

    // Enable the Peripheral Interrupts
    INTERRUPT_PeripheralInterruptEnable();

    // Disable the Global Interrupts
    //INTERRUPT_GlobalInterruptDisable();

    // Disable the Peripheral Interrupts
    //INTERRUPT_PeripheralInterruptDisable();

    TMR1_SetInterruptHandler(t1_isr);
    
    IO_RA7_SetHigh();

    while (1)
    {
        // Add your application code
        NOP();
        sleep(1);
    }
    
}
/**
 End of File
*/