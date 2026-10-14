#include "mcc_generated_files/mcc.h"
#include <time.h>


volatile time_t system_seconds = 0;

void t1_isr(void) 
{
    IO_RA7_Toggle(); 
    system_seconds++;
}

void main(void)
{
    struct tm* ptr;
    time_t t;
    time_t x = 0;

    SYSTEM_Initialize();

    INTERRUPT_GlobalInterruptEnable();
    INTERRUPT_PeripheralInterruptEnable();

    TMR1_SetInterruptHandler(t1_isr);
    IO_RA7_SetHigh();
    
    while (1)
    {
      t = system_seconds;
        
      if (t != x) {
        x = t;
        ptr = localtime(&t);

        //por aqui o que LCD usa para atualizar as horas com o ptr
        sprintf(lcd_buffer, "%02d:%02d:%02d", ptr->tm_hour, ptr->tm_min, ptr->tm_sec);
        LCDpos(0, 0); 
        LCDstr(lcd_buffer);
      }
        NOP();    
    }
}