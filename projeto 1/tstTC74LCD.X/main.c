#include "mcc_generated_files/mcc.h"
#include "mcc_generated_files/interrupt_manager.h"
#include "timer.h"
#include "leds.h"
#include "alarm.h"
#include "LCD/lcd.h"  
#include <stdio.h>
#include <time.h>

char lcd_linha1[20];
char lcd_linha2[20];
char alarm_buffer[4] = "   "; 
char alarm_offon[2]  = "a";   

int ALAH = 12, ALAM = 0, ALAS = 0; 
int ALAT = 25, ALAL = 3;           
int CLKH = 0,  CLKM = 0, CLKS = 0; 

int system_state = 0;  
int config_step = 0;   
time_t state1_start_time = 0;

void normalMode() {
    time_t t = TIMER_GetSeconds(); 
    System_Data sensor_data;
    
    sensor_data.current_time = t;
    sensor_data.temperature  = 22; 
    sensor_data.luminosity   = 5; 
        
    int segs = t % 60;
    int mins = (t / 60) % 60;
    int horas = (t / 3600) % 24;

    trigger_alarm(sensor_data, alarm_buffer, alarm_offon, ALAH, ALAM, ALAS, ALAT, ALAL);

    sprintf(lcd_linha1, "%02d:%02d:%02d  %s %s", horas, mins, segs, alarm_buffer, alarm_offon);
    sprintf(lcd_linha2, "%02d C      L %d", sensor_data.temperature, sensor_data.luminosity);

    LCDpos(0, 0); LCDstr(lcd_linha1);
    LCDpos(1, 0); LCDstr(lcd_linha2);
}

void ThresholdMode() {

    sprintf(lcd_linha1, "%02d:%02d:%02d  %s %s", ALAH, ALAM, ALAS, alarm_buffer, alarm_offon);
    

    sprintf(lcd_linha2, "%02d C         L %d", ALAT, ALAL);

    LCDpos(0, 0); LCDstr(lcd_linha1);
    LCDpos(1, 0); LCDstr(lcd_linha2);


    if ((TIMER_GetSeconds() - state1_start_time) >= 2) {
        system_state = 0; 
    }
}

void ConfigMode() {
    time_t t = TIMER_GetSeconds(); 
    int segs = t % 60;
    int mins = (t / 60) % 60;
    int horas = (t / 3600) % 24;

    //  "00:00:00  CTL aR"
    sprintf(lcd_linha1, "%02d:%02d:%02d  CTL %sR", horas, mins, segs, alarm_offon);
    
    if (config_step == 4) {
        sprintf(lcd_linha2, "%02d C            ", ALAT);
    } else if (config_step == 5) {
        sprintf(lcd_linha2, "             L %d", ALAL);
    } else {
        sprintf(lcd_linha2, "Config Mode     "); 
    }

    LCDpos(0, 0); LCDstr(lcd_linha1);
    LCDpos(1, 0); LCDstr(lcd_linha2);

    if (S2_GetValue() == 0) {
        switch(config_step) {
            case 0: break; 
            case 1: break;
            case 2: break;
            case 3: ALAH++; if(ALAH > 23) ALAH = 0; break; 
            case 4: ALAT++; if(ALAT > 50) ALAT = 0; break;
            case 5: ALAL++; if(ALAL > 7)  ALAL = 0; break;
            case 6: alarms_enabled = !alarms_enabled; break;
            case 7: break;
        }
        __delay_ms(250); 
    }

    // Posições exatas dentro das 16 colunas (0 a 15)
    switch (config_step) {
        case 0: LCDpos(0, 0); break;  // Horas
        case 1: LCDpos(0, 3); break;  // Minutos
        case 2: LCDpos(0, 6); break;  // Segundos
        case 3: LCDpos(0, 10); break; //  C
        case 4: LCDpos(0, 11); break; //  T
        case 5: LCDpos(0, 12); break; // L
        case 6: LCDpos(0, 14); break; // A/a
        case 7: LCDpos(0, 15); break; //  R
    }
}

void main(void) {
    SYSTEM_Initialize();
    TIMER_Initialize();
    LEDS_Initialize();
    ALARM_Initialize();

    INTERRUPT_GlobalInterruptEnable();
    INTERRUPT_PeripheralInterruptEnable();

    while (1) {
        if (S1_GetValue() == 0) {
            __delay_ms(50); 
            
            if (S1_GetValue() == 0) {
                if (system_state == 0) {
                    if (waiting_for_user) {
                        clean_alarm(alarm_buffer); 
                    } else {
                        system_state = 1; 
                        state1_start_time = TIMER_GetSeconds();
                    }
                } 
                else if (system_state == 1) {
                    system_state = 2; 
                    config_step = 0;
                } 
                else if (system_state == 2) {
                    config_step++; 
                    if (config_step > 7) {
                        system_state = 0; 
                    }
                }
                while(S1_GetValue() == 0); 
                __delay_ms(50);
            }
        }

        if (system_state == 0) {
            normalMode();
        } else if (system_state == 1) {
            ThresholdMode();
        } else if (system_state == 2) {
            ConfigMode();
        }
    }
}