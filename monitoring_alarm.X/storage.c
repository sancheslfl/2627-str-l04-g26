
#include <xc.h>
#include <stdint.h>

#include "storage.h"
#include "clock.h"

extern uint8_t PMON;
extern uint8_t TALA;
extern uint8_t ALAF;
extern int8_t ALAT;
extern uint8_t ALAL;

#define MAGIC_WORD 0xA5
#define RECORDS_VALID_ADDRESS 12
#define RECORDS_START_ADDRESS 13

// each represents an EEPROM address starting at 0
enum {
    EE_MAGIC,
    EE_PMON,
    EE_TALA,
    EE_ALAF,
    EE_ALAH,
    EE_ALAM,
    EE_ALAS,
    EE_ALAT,
    EE_ALAL,
    EE_CLKH,
    EE_CLKM,
    EE_CHECKSUM,
    EE_CONFIG_SIZE
};

static void write_byte(uint8_t address, uint8_t value);
static uint8_t calculate_checksum(const uint8_t *data);
void validate_records(void);

static void write_byte(uint8_t address, uint8_t value)
{
    // avoid unnecessary EEPROM writes
    if (eeprom_read(address) == value)
        return;

    eeprom_write(address, value);

    while (NVMCON1bits.WR) {
    }
}

static uint8_t calculate_checksum(const uint8_t *data)
{
    uint8_t checksum = 0;

    // sum all configuration bytes except the checksum itself
    for (uint8_t i = 0; i < EE_CHECKSUM; i++)
        checksum += data[i];

    return checksum;
}

void storage_load_config(void)
{
    uint8_t data[EE_CONFIG_SIZE];

    for (uint8_t i = 0; i < EE_CONFIG_SIZE; i++)
        data[i] = eeprom_read(i);

    // use defaults if the saved configuration is invalid
    if (data[EE_MAGIC] != MAGIC_WORD ||
        data[EE_CHECKSUM] != calculate_checksum(data))
        return;

    if (data[EE_ALAF] > 1 ||
        data[EE_ALAH] > 23 ||
        data[EE_ALAM] > 59 ||
        data[EE_ALAS] > 59 ||
        data[EE_ALAT] > 50 ||
        data[EE_ALAL] > 7 ||
        data[EE_CLKH] > 23 ||
        data[EE_CLKM] > 59)
        return;

    PMON = data[EE_PMON];
    TALA = data[EE_TALA];
    ALAF = data[EE_ALAF];
    ALAT = (int8_t)data[EE_ALAT];
    ALAL = data[EE_ALAL];

    ClockTime alarm = {
        data[EE_ALAH],
        data[EE_ALAM],
        data[EE_ALAS]
    };

    // only hours and minutes are restored
    ClockTime time = {
        data[EE_CLKH],
        data[EE_CLKM],
        0
    };

    clock_set_alarm_time(alarm);
    clock_set_time(time);
}

void storage_save_config(void)
{
    ClockTime time = clock_get_time();
    ClockTime alarm = clock_get_alarm_time();

    // configuration values follow the EEPROM address order
    uint8_t data[EE_CONFIG_SIZE] = {
        MAGIC_WORD,
        PMON,
        TALA,
        ALAF,
        alarm.hours,
        alarm.minutes,
        alarm.seconds,
        (uint8_t)ALAT,
        ALAL,
        time.hours,
        time.minutes,
        0
    };

    data[EE_CHECKSUM] = calculate_checksum(data);

    for (uint8_t i = 1; i < EE_CONFIG_SIZE; i++)
        write_byte(i, data[i]);

    write_byte(EE_MAGIC, MAGIC_WORD);
}

bool storage_load_records(SensorRecord records[4])
{
    if (eeprom_read(RECORDS_VALID_ADDRESS) != MAGIC_WORD)
        return false;

    for (uint8_t i = 0; i < 4; i++)
    {
        // each record occupies 5 consecutive bytes
        uint8_t address = RECORDS_START_ADDRESS + i * 5;

        records[i].hours = eeprom_read(address);
        records[i].minutes = eeprom_read(address + 1);
        records[i].seconds = eeprom_read(address + 2);
        records[i].temperature = (int8_t)eeprom_read(address + 3);
        records[i].luminosity = eeprom_read(address + 4);

        if (records[i].hours > 23 ||
            records[i].minutes > 59 ||
            records[i].seconds > 59 ||
            records[i].luminosity > 7)
            return false;
    }

    return true;
}

void storage_save_records(const SensorRecord records[4])
{
    // invalidate records while writing
    write_byte(RECORDS_VALID_ADDRESS, 0);

    for (uint8_t i = 0; i < 4; i++)
    {
        uint8_t address = RECORDS_START_ADDRESS + i * 5;

        uint8_t data[5] = {
            records[i].hours,
            records[i].minutes,
            records[i].seconds,
            (uint8_t)records[i].temperature,
            records[i].luminosity
        };

        for (uint8_t j = 0; j < 5; j++)
            write_byte(address + j, data[j]);
    }

    // mark records as valid after saving
    validate_records();
}

void validate_records(void)
{
    write_byte(RECORDS_VALID_ADDRESS, MAGIC_WORD);
}

void storage_reset_records(void)
{
    write_byte(RECORDS_VALID_ADDRESS, 0);
}
