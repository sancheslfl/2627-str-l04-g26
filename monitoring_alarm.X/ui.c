
#include "ui.h"
#include "clock.h"
#include "alarm.h"
#include "LCD/lcd.h"

extern uint8_t ALAF;
extern int8_t ALAT;
extern uint8_t ALAL;

typedef enum {
    UI_NORMAL,
    UI_PREVIEW,
    UI_CLOCK_H,
    UI_CLOCK_M,
    UI_CLOCK_S,
    UI_SELECT_C,
    UI_ALARM_H,
    UI_ALARM_M,
    UI_ALARM_S,
    UI_SELECT_T,
    UI_EDIT_T,
    UI_SELECT_L,
    UI_EDIT_L,
    UI_ALARM_ENABLE,
    UI_RESET
} UIState;

static UIState state = UI_NORMAL;
static uint8_t preview_remaining = 0;

static void write_two_digits(char *text, uint8_t pos, uint8_t value)
{
    text[pos] = '0' + value / 10;
    text[pos + 1] = '0' + value % 10;
}

static void increment_time(ClockTime *time, uint8_t field)
{
    switch (field) {
        case 0:
            time->hours = (time->hours + 1) % 24;
            break;
        case 1:
            time->minutes = (time->minutes + 1) % 60;
            break;
        case 2:
            time->seconds = (time->seconds + 1) % 60;
            break;
    }
}

void ui_init(void)
{
    state = UI_NORMAL;
    LCDinit();
    LCDcmd(0x0C);
}

void ui_tick_1s(void)
{
    if (state == UI_PREVIEW && preview_remaining > 0) {
        if (--preview_remaining == 0)
            state = UI_NORMAL;
    }
}

void ui_press_s1(void)
{
    if (state == UI_NORMAL) {
        alarm_acknowledge();
        state = UI_PREVIEW;
        preview_remaining = 2;
        return;
    }

    if (state == UI_PREVIEW) {
        state = UI_CLOCK_H;
        return;
    }

    switch (state) {
        case UI_SELECT_C:
            state = UI_SELECT_T;
            break;
        case UI_SELECT_T:
            state = UI_SELECT_L;
            break;
        case UI_SELECT_L:
            state = UI_ALARM_ENABLE;
            break;
        case UI_RESET:
            state = UI_NORMAL;
            break;
        default:
            state = (UIState)(state + 1);
            break;
    }
}

void ui_press_s2(void)
{
    ClockTime time;

    switch (state) {
        case UI_CLOCK_H:
        case UI_CLOCK_M:
        case UI_CLOCK_S:
            time = clock_get_time();
            increment_time(&time, state - UI_CLOCK_H);
            clock_set_time(time);
            break;

        case UI_SELECT_C:
            state = UI_ALARM_H;
            break;

        case UI_ALARM_H:
        case UI_ALARM_M:
        case UI_ALARM_S:
            time = clock_get_alarm_time();
            increment_time(&time, state - UI_ALARM_H);
            clock_set_alarm_time(time);
            break;

        case UI_SELECT_T:
            state = UI_EDIT_T;
            break;

        case UI_EDIT_T:
            ALAT = (ALAT + 1) % 51;
            break;

        case UI_SELECT_L:
            state = UI_EDIT_L;
            break;

        case UI_EDIT_L:
            ALAL = (ALAL + 1) % 8;
            break;

        case UI_ALARM_ENABLE:
            ALAF = !ALAF;
            break;

        case UI_NORMAL:
            break;

        case UI_RESET:
            break;

        default:
            break;
    }
}

void ui_display(int8_t temperature, uint8_t luminosity)
{
    ClockTime time = clock_get_time();

    char line1[17] = "00:00:00        ";
    char line2[17] = "00 C        L 0 ";

    bool configuring = state >= UI_CLOCK_H;

    if (state == UI_PREVIEW ||
        (state >= UI_SELECT_C && state <= UI_ALARM_S))
    {
        time = clock_get_alarm_time();
    }

    if (state == UI_PREVIEW ||
        state == UI_SELECT_T ||
        state == UI_EDIT_T)
    {
        temperature = ALAT;
    }

    if (state == UI_PREVIEW ||
        state == UI_SELECT_L ||
        state == UI_EDIT_L)
    {
        luminosity = ALAL;
    }

    write_two_digits(line1, 0, time.hours);
    write_two_digits(line1, 3, time.minutes);
    write_two_digits(line1, 6, time.seconds);

    if (configuring) {
        line1[9] = 'C';
        line1[10] = 'T';
        line1[11] = 'L';
        line1[14] = 'R';
    } else {
        if (alarm_flags & (1U << CLOCK_TIME))
            line1[9] = 'C';
        if (alarm_flags & (1U << TEMPERATURE))
            line1[10] = 'T';
        if (alarm_flags & (1U << LUMINOSITY))
            line1[11] = 'L';
    }

    line1[13] = ALAF ? 'A' : 'a';

    if (temperature < 0) {
        uint8_t value = (uint8_t)(-(int16_t)temperature);
        line2[0] = '-';
        if (value >= 10)
            write_two_digits(line2, 1, value);
        else
            line2[1] = '0' + value;
    } else {
        write_two_digits(line2, 0, (uint8_t)temperature);
    }

    line2[14] = '0' + luminosity;

    LCDpos(0, 0);
    LCDstr(line1);
    LCDpos(1, 0);
    LCDstr(line2);

    if (!configuring) {
        LCDcmd(0x0C);
        return;
    }

    LCDcmd(0x0E);

    switch (state) {
        case UI_CLOCK_H:
        case UI_ALARM_H:
            LCDpos(0, 0);
            break;

        case UI_CLOCK_M:
        case UI_ALARM_M:
            LCDpos(0, 3);
            break;

        case UI_CLOCK_S:
        case UI_ALARM_S:
            LCDpos(0, 6);
            break;

        case UI_SELECT_C:
            LCDpos(0, 9);
            break;

        case UI_SELECT_T:
            LCDpos(0, 10);
            break;

        case UI_EDIT_T:
            LCDpos(1, 0);
            break;

        case UI_SELECT_L:
            LCDpos(0, 11);
            break;

        case UI_EDIT_L:
            LCDpos(1, 14);
            break;

        case UI_ALARM_ENABLE:
            LCDpos(0, 13);
            break;

        case UI_RESET:
            LCDpos(0, 14);
            break;

        default:
            break;
    }
}
