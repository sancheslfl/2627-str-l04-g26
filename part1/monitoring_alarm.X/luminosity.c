#include "mcc_generated_files/mcc.h"
#include <xc.h>
#include <stdint.h>
#include <stdbool.h>

#ifndef _XTAL_FREQ
#define _XTAL_FREQ 1000000UL          /* Fosc real = 1 MHz */
#endif

/* Fonte do Timer1 durante o sleep:
 *   1 = cristal 32.768 kHz em SOSC (RC0/RC1)  -> preciso (confirmar que a placa o tem)
 *   0 = LFINTOSC ~31 kHz interno              -> sem hardware extra, mas impreciso */
#define USE_SOSC 1

extern volatile uint16_t timer1ReloadVal;   /* variavel do driver MCC tmr1.c */

/* ---- parametros ---- */
uint8_t PMON = 5;
uint8_t ALAL = 3;
uint8_t ALAF = 1;
uint8_t TALA = 3;

/* ---- estado ---- */
volatile uint8_t ticks = 0;
uint8_t mon_cnt = 0;
bool    alarm_L_fired = false;
uint8_t alarm_cnt = 0;

/* ------------------------------------------------------------------ */
/* Timer1 assincrono, 1 s, a funcionar em SLEEP */
static void timer1_sleep_init(void)
{
    TMR1_StopTimer();

#if USE_SOSC
    OSCENbits.SOSCEN = 1;             /* oscilador secundario fica ativo em sleep */
    __delay_ms(500);                  /* arranque/estabilizacao do cristal */
    T1CLK = 0x06;                     /* SOSC */
    timer1ReloadVal = 0x8000;         /* 65536-32768 = 32768 contagens = 1 s */
#else
    OSCENbits.LFOEN = 1;              /* LFINTOSC ativo */
    T1CLK = 0x04;                     /* LFINTOSC (~31 kHz) */
    timer1ReloadVal = 0x86E8;         /* 65536-31000: 31000 contagens ~ 1 s (calibrar) */
#endif

    T1CON = 0x04;                     /* prescaler 1:1, nT1SYNC=1 (assincrono), OFF */
    TMR1_WriteTimer(timer1ReloadVal);
    PIR4bits.TMR1IF = 0;
    PIE4bits.TMR1IE = 1;              /* o TMR1 acorda o PIC */
    TMR1_StartTimer();
}

void t1_isr(void)
{
    IO_RA7_Toggle();                  /* LED D5: relogio */
    if (ticks < 255) ticks++;
}

/* ------------------------------------------------------------------ */
void lum_init(void)
{
    TRISAbits.TRISA0 = 1;  ANSELAbits.ANSA0 = 1;   /* potenciometro */
    TRISAbits.TRISA5 = 0;  ANSELAbits.ANSA5 = 0;   /* D3 */
    TRISAbits.TRISA4 = 0;  ANSELAbits.ANSA4 = 0;   /* D2 */

    ADREF  = 0x00;
    ADCLK  = 0x00;
    ADPCH  = 0x00;                    /* ANA0 */
    ADACQ  = 0x20;
    ADCON0 = 0x14;                    /* FRC, resultado a direita, ADC DESLIGADO */
}

uint8_t lum_read(void)
{
    ADCON0bits.ADON = 1;              /* liga o ADC so durante a leitura */
    ADCON0bits.ADGO = 1;
    while (ADCON0bits.ADGO) { }
    uint16_t raw = ((uint16_t)ADRESH << 8) | ADRESL;
    ADCON0bits.ADON = 0;              /* poupa energia */
    return (uint8_t)(raw >> 7);       /* 0..7 */
}

void lum_check(uint8_t lum)
{
    bool below = (lum < ALAL);
    LATAbits.LATA5 = below;
    if (below && ALAF && !alarm_L_fired) {
        alarm_L_fired = true;
        alarm_cnt = TALA;
        LATAbits.LATA4 = 1;
    }
}

void lum_tick_1s(void)
{
    if (alarm_cnt && --alarm_cnt == 0) LATAbits.LATA4 = 0;
}

void lum_clear(void) { alarm_L_fired = false; }

/* ------------------------------------------------------------------ */
void main(void)
{
    SYSTEM_Initialize();
    lum_init();
    timer1_sleep_init();
    TMR1_SetInterruptHandler(t1_isr);

    INTERRUPT_PeripheralInterruptEnable();   /* PEIE: necessario para acordar */
    INTERRUPT_GlobalInterruptEnable();

    while (1)
    {
        if (ticks) {
            INTERRUPT_GlobalInterruptDisable();
            ticks--;
            INTERRUPT_GlobalInterruptEnable();

            lum_tick_1s();
            if (PMON != 0 && ++mon_cnt >= PMON) {
                mon_cnt = 0;
                lum_check(lum_read());
            }
        }
        else {
            /* Sem trabalho: dormir. Com GIE=0 nao ha corrida entre o teste
             * de 'ticks' e o SLEEP: se o flag TMR1IF ja estiver a 1, o SLEEP
             * nao chega a parar; senao acorda no proximo overflow. */
            INTERRUPT_GlobalInterruptDisable();
            if (ticks == 0) {
                SLEEP();
                NOP();
            }
            INTERRUPT_GlobalInterruptEnable();   /* a ISR corre aqui */
        }
    }
}
