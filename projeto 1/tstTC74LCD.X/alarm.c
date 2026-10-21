#include "alarm.h"
#include "mcc_generated_files/pwm6.h"

bool alarms_enabled = false;   
bool waiting_for_user = false; 
static bool alarm_active = false;
static time_t alarm_start_time = 0;

void ALARM_Initialize(void) {
    PWM6_LoadDutyValue(0); 
}

void trigger_alarm(System_Data data, char alarm_buffer[], char alarm_offon[], int alah, int alam, int alas, int alat, int alal) {
    if (alarms_enabled) {
        alarm_offon[0] = 'A';
    } else {
        alarm_offon[0] = 'a';
    }
    alarm_offon[1] = '\0';

    if (!alarms_enabled) {
        return; 
    }

    time_t alarm_target_time = ((time_t)alah * 3600) + ((time_t)alam * 60) + alas;; 

    bool is_danger = (data.current_time == alarm_target_time) || 
                     (data.temperature > alat) || 
                     (data.luminosity < alal);

    if (is_danger && !alarm_active && !waiting_for_user) {        
        PWM6_LoadDutyValue(500); 
        alarm_active = true;
        waiting_for_user = true; 
        alarm_start_time = data.current_time; 

        if (data.current_time == alarm_target_time) { alarm_buffer[0] = 'C'; }
        if (data.temperature > alat)                { alarm_buffer[1] = 'T'; }
        if (data.luminosity < alal)                 { alarm_buffer[2] = 'L'; }
    } 

    if (alarm_active) {
        if ((data.current_time - alarm_start_time) >= 3) {
            PWM6_LoadDutyValue(0); 
            alarm_active = false;  
        }
    }
}

void clean_alarm(char alarm_buffer[]) {
    alarm_buffer[0] = ' ';
    alarm_buffer[1] = ' ';
    alarm_buffer[2] = ' ';
    waiting_for_user = false; 
    alarm_active = false;
    PWM6_LoadDutyValue(0); 
}