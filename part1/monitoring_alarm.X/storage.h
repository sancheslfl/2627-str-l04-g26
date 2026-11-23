
#ifndef STORAGE_H
#define STORAGE_H

#include <stdbool.h>
#include "records.h"

void storage_load_config(void);
void storage_save_config(void);

bool storage_load_records(SensorRecord records[4]);
void storage_save_records(const SensorRecord records[4]);
void storage_reset_records(void);

#endif