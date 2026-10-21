
#include "ui.h"
#include "clock.h"
#include "alarm.h"
#include "LCD/lcd.h"

static void write_two_digits(char *text, uint8_t position, uint8_t value)
{
    text[position] = '0' + value / 10;
    text[position + 1] = '0' + value % 10;
}

void ui_init(void)
{
    LCDinit();
    LCDcmd(0x0C);  // display ON, cursor OFF.
}

void ui_display_normal(int8_t temperature, uint8_t luminosity,
                    uint8_t alarm_flags, bool alarms_enabled)
{
    ClockTime time = clock_get_time();

    char line1[17] = "00:00:00        ";
    char line2[17] = "00 C        L 0 ";

    // Current clock
    write_two_digits(line1, 0, time.hours);
    write_two_digits(line1, 3, time.minutes);
    write_two_digits(line1, 6, time.seconds);

    // Alarm notifications
    if (alarm_flags & (1U << CLOCK_TIME))
        line1[9] = 'C';

    if (alarm_flags & (1U << TEMPERATURE))
        line1[10] = 'T';

    if (alarm_flags & (1U << LUMINOSITY))
        line1[11] = 'L';

    // Alarm enable status
    line1[13] = alarms_enabled ? 'A' : 'a';

    // Current temperature
    uint8_t magnitude = temperature < 0
        ? (uint8_t)(-(int16_t)temperature)
        : (uint8_t)temperature;

    if (temperature < 0) {
        line2[0] = '-';

        if (magnitude >= 10) {
            write_two_digits(line2, 1, magnitude);
        } else {
            line2[1] = '0' + magnitude;
        }
    } else if (magnitude >= 100) {
        line2[0] = '0' + magnitude / 100;
        write_two_digits(line2, 1, magnitude % 100);
    } else {
        write_two_digits(line2, 0, magnitude);
    }

    // Current luminosity level
    line2[14] = '0' + luminosity;

    // Display both LCD rows
    LCDpos(0, 0);
    LCDstr(line1);

    LCDpos(1, 0);
    LCDstr(line2);
}
