#include "mcc_generated_files/mcc.h"
#include <xc.h>
#include <stdint.h>
#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>


volatile uint8_t ticks = 0;   /* set by TMR1 interrupt */
uint8_t PMON = 5;             /* periodo de monitorizacao (s) */
uint8_t ALAL = 3;             /* threshold  = 3  */
uint8_t ALAF = 1;             /* alarmes ativos (0/1)     */
uint8_t TALA = 3;             /* duracao do sinal (s)     */


/*Por default o alarme se encontra desligado, e so liga quando a luminosidade cai abaixo Do limiar(3)*/
bool alarm_L_fired = false;   /* trinco: so limpa com S1     */
uint8_t alarm_cnt  = 0;  
uint8_t count_PMON = 0;      /* contador para PMON */

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

void t1_isr(void){

    IO_RA7_Toggle();
    if (ticks < 255){
        ticks++;

    } 
}

void main(void){

    // initialize the device and peripherals
    SYSTEM_Initialize();
    lum_init();

    // When using interrupts, you need to set the Global and Peripheral Interrupt Enable bits
    // Use the following macros to:
    TMR1_SetInterruptHandler(t1_isr);
    // Enable the Global Interrupts
    INTERRUPT_GlobalInterruptEnable();

    // Enable the Peripheral Interrupts
    INTERRUPT_PeripheralInterruptEnable();

    while (1)
    {
        if(ticks > 0){
            INTERRUPT_GlobalInterruptDisable();
            ticks--;
            INTERRUPT_GlobalInterruptEnable();
            lum_tick_1s();

          if (PMON != 0 && ++count_PMON >= PMON ){
                count_PMON = 0;
                lum_check(lum_read());
                _delay_ms(500);  /* aguardar 500ms para o sinal de alarme */
                 }
              }

              //Se o PMON for 0 o sistema não está ativo, o microcontrolador entra em sleep e so acorda com interrupcao do TMR1
              else 
                  {

                INTERRUPT_GlobalInterruptDisable();
                if(ticks == 0){
                SLEEP();
                NOP();
              }

              INTERRUPT_GlobalInterruptEnable();
              }
         }
    }



    
  
 