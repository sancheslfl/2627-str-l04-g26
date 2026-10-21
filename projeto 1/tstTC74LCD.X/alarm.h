#ifndef ALARM_H
#define ALARM_H

#include <stdbool.h>
#include <time.h>

typedef struct {
    time_t current_time;
    int temperature;
    int luminosity;
} System_Data;

// O 'extern' partilha as variáveis entre o alarm.c e o main.c
extern bool alarms_enabled; 
extern bool waiting_for_user;

void ALARM_Initialize(void);
// A assinatura TEM de ter os 8 argumentos, tal como no alarm.c
void trigger_alarm(System_Data data, char alarm_buffer[], char alarm_offon[], int alah, int alam, int alas, int alat, int alal);
void clean_alarm(char alarm_buffer[]);

#endif /* ALARM_H */
