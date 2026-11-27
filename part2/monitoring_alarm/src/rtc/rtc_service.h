
#ifndef RTC_SERVICE_H
#define RTC_SERVICE_H

struct DateTime {
    int year;
    int month;
    int day;

    int hours;
    int minutes;
    int seconds;
};

struct AlarmConfig {
    int hours;
    int minutes;
    int seconds;

    bool enabled;
};

DateTime clock_get_date_time(void);
int clock_set_date_time(DateTime dateTime);
AlarmConfig clock_get_alarm(void);
void clock_set_alarm(AlarmConfig config);

void clock_set_alarm_enabled(bool enabled);
#endif
