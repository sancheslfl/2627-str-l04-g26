# 1 "alarm.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 295 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "alarm.c" 2
# 1 "./alarm.h" 1



# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/stdbool.h" 1 3
# 5 "./alarm.h" 2
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/time.h" 1 3



# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/musl_xc8.h" 1 3
# 5 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/time.h" 2 3





# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/features.h" 1 3
# 11 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/time.h" 2 3
# 33 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/time.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 1 3
# 82 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 3
typedef unsigned long time_t;
# 128 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 3
typedef unsigned size_t;
# 174 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 3
typedef __int24 int24_t;
# 210 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 3
typedef __uint24 uint24_t;
# 303 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 3
typedef void * timer_t;




typedef int clockid_t;




typedef unsigned long clock_t;
# 323 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 3
struct timespec { time_t tv_sec; long tv_nsec; };





typedef int pid_t;
# 421 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 3
typedef struct __locale_struct * locale_t;
# 34 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/time.h" 2 3






struct tm {
 int tm_sec;
 int tm_min;
 int tm_hour;
 int tm_mday;
 int tm_mon;
 int tm_year;
 int tm_wday;
 int tm_yday;
 int tm_isdst;
 long __tm_gmtoff;
 const char *__tm_zone;
};

clock_t clock (void);
time_t time (time_t *);
double difftime (time_t, time_t);
time_t mktime (struct tm *);
size_t strftime (char *restrict, size_t, const char *restrict, const struct tm *restrict);
struct tm *gmtime (const time_t *);
struct tm *localtime (const time_t *);
char *asctime (const struct tm *);
char *ctime (const time_t *);
int timespec_get(struct timespec *, int);
# 73 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/time.h" 3
size_t strftime_l (char * restrict, size_t, const char * restrict, const struct tm * restrict, locale_t);

struct tm *gmtime_r (const time_t *restrict, struct tm *restrict);
struct tm *localtime_r (const time_t *restrict, struct tm *restrict);
char *asctime_r (const struct tm *restrict, char *restrict);
char *ctime_r (const time_t *, char *);

void tzset (void);

struct itimerspec {
 struct timespec it_interval;
 struct timespec it_value;
};
# 102 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/time.h" 3
int nanosleep (const struct timespec *, struct timespec *);
int clock_getres (clockid_t, struct timespec *);
int clock_gettime (clockid_t, struct timespec *);
int clock_settime (clockid_t, const struct timespec *);
int clock_nanosleep (clockid_t, int, const struct timespec *, struct timespec *);
int clock_getcpuclockid (pid_t, clockid_t *);

struct sigevent;
int timer_create (clockid_t, struct sigevent *restrict, timer_t *restrict);
int timer_delete (timer_t);
int timer_settime (timer_t, int, const struct itimerspec *restrict, struct itimerspec *restrict);
int timer_gettime (timer_t, struct itimerspec *);
int timer_getoverrun (timer_t);

extern char *tzname[2];





char *strptime (const char *restrict, const char *restrict, struct tm *restrict);
extern int daylight;
extern long timezone;
extern int getdate_err;
struct tm *getdate (const char *);
# 6 "./alarm.h" 2

typedef struct {
    time_t current_time;
    int temperature;
    int luminosity;
} System_Data;


extern _Bool alarms_enabled;
extern _Bool waiting_for_user;

void ALARM_Initialize(void);

void trigger_alarm(System_Data data, char alarm_buffer[], char alarm_offon[], int alah, int alam, int alas, int alat, int alal);
void clean_alarm(char alarm_buffer[]);
# 2 "alarm.c" 2
# 1 "./mcc_generated_files/pwm6.h" 1
# 54 "./mcc_generated_files/pwm6.h"
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/xc.h" 1 3
# 18 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/xc.h" 3
extern const char __xc8_OPTIM_SPEED;

extern double __fpnormalize(double);


# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/xc8debug.h" 1 3



# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/stdlib.h" 1 3
# 21 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/stdlib.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 1 3
# 24 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 3
typedef long int wchar_t;
# 22 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/stdlib.h" 2 3

int atoi (const char *);
long atol (const char *);

long long atoll (const char *);

double atof (const char *);


float strtof (const char *restrict, char **restrict);
double strtod (const char *restrict, char **restrict);
long double strtold (const char *restrict, char **restrict);



long strtol (const char *restrict, char **restrict, int);
unsigned long strtoul (const char *restrict, char **restrict, int);

long long strtoll (const char *restrict, char **restrict, int);
unsigned long long strtoull (const char *restrict, char **restrict, int);


unsigned long __strtoxl(const char * s, char ** endptr, int base, char is_signed);

unsigned long long __strtoxll(const char * s, char ** endptr, int base, char is_signed);
# 55 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/stdlib.h" 3
int rand (void);
void srand (unsigned);

void *malloc (size_t);
void *calloc (size_t, size_t);
void *realloc (void *, size_t);
void free (void *);

          void abort (void);
int atexit (void (*) (void));
          void exit (int);
          void _Exit (int);

void *bsearch (const void *, const void *, size_t, size_t, int (*)(const void *, const void *));







__attribute__((nonreentrant)) void qsort (void *, size_t, size_t, int (*)(const void *, const void *));

int abs (int);
long labs (long);

long long llabs (long long);


typedef struct { int quot, rem; } div_t;
typedef struct { long quot, rem; } ldiv_t;

typedef struct { long long quot, rem; } lldiv_t;


div_t div (int, int);
ldiv_t ldiv (long, long);

lldiv_t lldiv (long long, long long);


typedef struct { unsigned int quot, rem; } udiv_t;
typedef struct { unsigned long quot, rem; } uldiv_t;
udiv_t udiv (unsigned int, unsigned int);
uldiv_t uldiv (unsigned long, unsigned long);
# 5 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/xc8debug.h" 2 3







#pragma intrinsic(__builtin_software_breakpoint)
extern void __builtin_software_breakpoint(void);
# 24 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/xc.h" 2 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/builtins.h" 1 3



# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/stdint.h" 1 3
# 26 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/stdint.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 1 3
# 133 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 3
typedef unsigned short uintptr_t;
# 148 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 3
typedef short intptr_t;
# 164 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 3
typedef signed char int8_t;




typedef short int16_t;
# 179 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 3
typedef long int32_t;





typedef long long int64_t;
# 194 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 3
typedef long long intmax_t;





typedef unsigned char uint8_t;




typedef unsigned short uint16_t;
# 215 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 3
typedef unsigned long uint32_t;





typedef unsigned long long uint64_t;
# 235 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 3
typedef unsigned long long uintmax_t;
# 27 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/stdint.h" 2 3

typedef int8_t int_fast8_t;

typedef int64_t int_fast64_t;


typedef int8_t int_least8_t;
typedef int16_t int_least16_t;

typedef int24_t int_least24_t;
typedef int24_t int_fast24_t;

typedef int32_t int_least32_t;

typedef int64_t int_least64_t;


typedef uint8_t uint_fast8_t;

typedef uint64_t uint_fast64_t;


typedef uint8_t uint_least8_t;
typedef uint16_t uint_least16_t;

typedef uint24_t uint_least24_t;
typedef uint24_t uint_fast24_t;

typedef uint32_t uint_least32_t;

typedef uint64_t uint_least64_t;
# 148 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/stdint.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/stdint.h" 1 3
typedef int16_t int_fast16_t;
typedef int32_t int_fast32_t;
typedef uint16_t uint_fast16_t;
typedef uint32_t uint_fast32_t;
# 149 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/stdint.h" 2 3
# 5 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/builtins.h" 2 3


#pragma intrinsic(__nop)
extern void __nop(void);
# 19 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/builtins.h" 3
#pragma intrinsic(_delay)
extern __attribute__((nonreentrant)) void _delay(uint32_t);
#pragma intrinsic(_delaywdt)
extern __attribute__((nonreentrant)) void _delaywdt(uint32_t);

#pragma intrinsic(_delay3)
extern __attribute__((nonreentrant)) void _delay3(uint8_t);
# 25 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/xc.h" 2 3



# 1 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include/pic.h" 1 3



# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/xc.h" 1 3
# 5 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include/pic.h" 2 3






# 1 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include/pic_chip_select.h" 1 3
# 655 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include/pic_chip_select.h" 3
# 1 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 1 3
# 36 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char INDF0 __attribute__((address(0x000)));

__asm("INDF0 equ 00h");


typedef union {
    struct {
        unsigned int INDF0 :8;
    };
} INDF0bits_t;
extern volatile INDF0bits_t INDF0bits __attribute__((address(0x000)));
# 56 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char INDF1 __attribute__((address(0x001)));

__asm("INDF1 equ 01h");


typedef union {
    struct {
        unsigned int INDF1 :8;
    };
} INDF1bits_t;
extern volatile INDF1bits_t INDF1bits __attribute__((address(0x001)));
# 76 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char PCL __attribute__((address(0x002)));

__asm("PCL equ 02h");


typedef union {
    struct {
        unsigned int PCL :8;
    };
} PCLbits_t;
extern volatile PCLbits_t PCLbits __attribute__((address(0x002)));
# 96 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char STATUS __attribute__((address(0x003)));

__asm("STATUS equ 03h");


typedef union {
    struct {
        unsigned int C :1;
        unsigned int DC :1;
        unsigned int Z :1;
        unsigned int nPD :1;
        unsigned int nTO :1;
    };
    struct {
        unsigned int CARRY :1;
        unsigned int :1;
        unsigned int ZERO :1;
    };
} STATUSbits_t;
extern volatile STATUSbits_t STATUSbits __attribute__((address(0x003)));
# 155 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned short FSR0 __attribute__((address(0x004)));



extern volatile unsigned char FSR0L __attribute__((address(0x004)));

__asm("FSR0L equ 04h");


typedef union {
    struct {
        unsigned int FSR0L :8;
    };
} FSR0Lbits_t;
extern volatile FSR0Lbits_t FSR0Lbits __attribute__((address(0x004)));
# 179 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char FSR0H __attribute__((address(0x005)));

__asm("FSR0H equ 05h");


typedef union {
    struct {
        unsigned int FSR0H :8;
    };
} FSR0Hbits_t;
extern volatile FSR0Hbits_t FSR0Hbits __attribute__((address(0x005)));
# 199 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned short FSR1 __attribute__((address(0x006)));



extern volatile unsigned char FSR1L __attribute__((address(0x006)));

__asm("FSR1L equ 06h");


typedef union {
    struct {
        unsigned int FSR1L :8;
    };
} FSR1Lbits_t;
extern volatile FSR1Lbits_t FSR1Lbits __attribute__((address(0x006)));
# 223 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char FSR1H __attribute__((address(0x007)));

__asm("FSR1H equ 07h");


typedef union {
    struct {
        unsigned int FSR1H :8;
    };
} FSR1Hbits_t;
extern volatile FSR1Hbits_t FSR1Hbits __attribute__((address(0x007)));
# 243 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char BSR __attribute__((address(0x008)));

__asm("BSR equ 08h");


typedef union {
    struct {
        unsigned int BSR :5;
    };
    struct {
        unsigned int BSR0 :1;
        unsigned int BSR1 :1;
        unsigned int BSR2 :1;
        unsigned int BSR3 :1;
        unsigned int BSR4 :1;
    };
} BSRbits_t;
extern volatile BSRbits_t BSRbits __attribute__((address(0x008)));
# 295 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char WREG __attribute__((address(0x009)));

__asm("WREG equ 09h");


typedef union {
    struct {
        unsigned int WREG0 :8;
    };
} WREGbits_t;
extern volatile WREGbits_t WREGbits __attribute__((address(0x009)));
# 315 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char PCLATH __attribute__((address(0x00A)));

__asm("PCLATH equ 0Ah");


typedef union {
    struct {
        unsigned int PCLATH :7;
    };
} PCLATHbits_t;
extern volatile PCLATHbits_t PCLATHbits __attribute__((address(0x00A)));
# 335 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char INTCON __attribute__((address(0x00B)));

__asm("INTCON equ 0Bh");


typedef union {
    struct {
        unsigned int INTEDG :1;
        unsigned int :5;
        unsigned int PEIE :1;
        unsigned int GIE :1;
    };
} INTCONbits_t;
extern volatile INTCONbits_t INTCONbits __attribute__((address(0x00B)));
# 368 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char PORTA __attribute__((address(0x00C)));

__asm("PORTA equ 0Ch");


typedef union {
    struct {
        unsigned int RA0 :1;
        unsigned int RA1 :1;
        unsigned int RA2 :1;
        unsigned int RA3 :1;
        unsigned int RA4 :1;
        unsigned int RA5 :1;
        unsigned int RA6 :1;
        unsigned int RA7 :1;
    };
} PORTAbits_t;
extern volatile PORTAbits_t PORTAbits __attribute__((address(0x00C)));
# 430 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char PORTB __attribute__((address(0x00D)));

__asm("PORTB equ 0Dh");


typedef union {
    struct {
        unsigned int RB0 :1;
        unsigned int RB1 :1;
        unsigned int RB2 :1;
        unsigned int RB3 :1;
        unsigned int RB4 :1;
        unsigned int RB5 :1;
        unsigned int RB6 :1;
        unsigned int RB7 :1;
    };
} PORTBbits_t;
extern volatile PORTBbits_t PORTBbits __attribute__((address(0x00D)));
# 492 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char PORTC __attribute__((address(0x00E)));

__asm("PORTC equ 0Eh");


typedef union {
    struct {
        unsigned int RC0 :1;
        unsigned int RC1 :1;
        unsigned int RC2 :1;
        unsigned int RC3 :1;
        unsigned int RC4 :1;
        unsigned int RC5 :1;
        unsigned int RC6 :1;
        unsigned int RC7 :1;
    };
} PORTCbits_t;
extern volatile PORTCbits_t PORTCbits __attribute__((address(0x00E)));
# 554 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char PORTD __attribute__((address(0x00F)));

__asm("PORTD equ 0Fh");


typedef union {
    struct {
        unsigned int RD0 :1;
        unsigned int RD1 :1;
        unsigned int RD2 :1;
        unsigned int RD3 :1;
        unsigned int RD4 :1;
        unsigned int RD5 :1;
        unsigned int RD6 :1;
        unsigned int RD7 :1;
    };
} PORTDbits_t;
extern volatile PORTDbits_t PORTDbits __attribute__((address(0x00F)));
# 616 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char PORTE __attribute__((address(0x010)));

__asm("PORTE equ 010h");


typedef union {
    struct {
        unsigned int RE0 :1;
        unsigned int RE1 :1;
        unsigned int RE2 :1;
        unsigned int RE3 :1;
    };
} PORTEbits_t;
extern volatile PORTEbits_t PORTEbits __attribute__((address(0x010)));
# 654 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char TRISA __attribute__((address(0x011)));

__asm("TRISA equ 011h");


typedef union {
    struct {
        unsigned int TRISA0 :1;
        unsigned int TRISA1 :1;
        unsigned int TRISA2 :1;
        unsigned int TRISA3 :1;
        unsigned int TRISA4 :1;
        unsigned int TRISA5 :1;
        unsigned int TRISA6 :1;
        unsigned int TRISA7 :1;
    };
} TRISAbits_t;
extern volatile TRISAbits_t TRISAbits __attribute__((address(0x011)));
# 716 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char TRISB __attribute__((address(0x012)));

__asm("TRISB equ 012h");


typedef union {
    struct {
        unsigned int TRISB0 :1;
        unsigned int TRISB1 :1;
        unsigned int TRISB2 :1;
        unsigned int TRISB3 :1;
        unsigned int TRISB4 :1;
        unsigned int TRISB5 :1;
        unsigned int TRISB6 :1;
        unsigned int TRISB7 :1;
    };
} TRISBbits_t;
extern volatile TRISBbits_t TRISBbits __attribute__((address(0x012)));
# 778 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char TRISC __attribute__((address(0x013)));

__asm("TRISC equ 013h");


typedef union {
    struct {
        unsigned int TRISC0 :1;
        unsigned int TRISC1 :1;
        unsigned int TRISC2 :1;
        unsigned int TRISC3 :1;
        unsigned int TRISC4 :1;
        unsigned int TRISC5 :1;
        unsigned int TRISC6 :1;
        unsigned int TRISC7 :1;
    };
} TRISCbits_t;
extern volatile TRISCbits_t TRISCbits __attribute__((address(0x013)));
# 840 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char TRISD __attribute__((address(0x014)));

__asm("TRISD equ 014h");


typedef union {
    struct {
        unsigned int TRISD0 :1;
        unsigned int TRISD1 :1;
        unsigned int TRISD2 :1;
        unsigned int TRISD3 :1;
        unsigned int TRISD4 :1;
        unsigned int TRISD5 :1;
        unsigned int TRISD6 :1;
        unsigned int TRISD7 :1;
    };
} TRISDbits_t;
extern volatile TRISDbits_t TRISDbits __attribute__((address(0x014)));
# 902 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char TRISE __attribute__((address(0x015)));

__asm("TRISE equ 015h");


typedef union {
    struct {
        unsigned int TRISE0 :1;
        unsigned int TRISE1 :1;
        unsigned int TRISE2 :1;
    };
} TRISEbits_t;
extern volatile TRISEbits_t TRISEbits __attribute__((address(0x015)));
# 934 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char LATA __attribute__((address(0x016)));

__asm("LATA equ 016h");


typedef union {
    struct {
        unsigned int LATA0 :1;
        unsigned int LATA1 :1;
        unsigned int LATA2 :1;
        unsigned int LATA3 :1;
        unsigned int LATA4 :1;
        unsigned int LATA5 :1;
        unsigned int LATA6 :1;
        unsigned int LATA7 :1;
    };
} LATAbits_t;
extern volatile LATAbits_t LATAbits __attribute__((address(0x016)));
# 996 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char LATB __attribute__((address(0x017)));

__asm("LATB equ 017h");


typedef union {
    struct {
        unsigned int LATB0 :1;
        unsigned int LATB1 :1;
        unsigned int LATB2 :1;
        unsigned int LATB3 :1;
        unsigned int LATB4 :1;
        unsigned int LATB5 :1;
        unsigned int LATB6 :1;
        unsigned int LATB7 :1;
    };
} LATBbits_t;
extern volatile LATBbits_t LATBbits __attribute__((address(0x017)));
# 1058 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char LATC __attribute__((address(0x018)));

__asm("LATC equ 018h");


typedef union {
    struct {
        unsigned int LATC0 :1;
        unsigned int LATC1 :1;
        unsigned int LATC2 :1;
        unsigned int LATC3 :1;
        unsigned int LATC4 :1;
        unsigned int LATC5 :1;
        unsigned int LATC6 :1;
        unsigned int LATC7 :1;
    };
} LATCbits_t;
extern volatile LATCbits_t LATCbits __attribute__((address(0x018)));
# 1120 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char LATD __attribute__((address(0x019)));

__asm("LATD equ 019h");


typedef union {
    struct {
        unsigned int LATD0 :1;
        unsigned int LATD1 :1;
        unsigned int LATD2 :1;
        unsigned int LATD3 :1;
        unsigned int LATD4 :1;
        unsigned int LATD5 :1;
        unsigned int LATD6 :1;
        unsigned int LATD7 :1;
    };
} LATDbits_t;
extern volatile LATDbits_t LATDbits __attribute__((address(0x019)));
# 1182 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char LATE __attribute__((address(0x01A)));

__asm("LATE equ 01Ah");


typedef union {
    struct {
        unsigned int LATE0 :1;
        unsigned int LATE1 :1;
        unsigned int LATE2 :1;
    };
} LATEbits_t;
extern volatile LATEbits_t LATEbits __attribute__((address(0x01A)));
# 1214 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char TMR0L __attribute__((address(0x01C)));

__asm("TMR0L equ 01Ch");


extern volatile unsigned char TMR0 __attribute__((address(0x01C)));

__asm("TMR0 equ 01Ch");


typedef union {
    struct {
        unsigned int TMR0L :8;
    };
    struct {
        unsigned int TMR0L0 :1;
        unsigned int TMR0L1 :1;
        unsigned int TMR0L2 :1;
        unsigned int TMR0L3 :1;
        unsigned int TMR0L4 :1;
        unsigned int TMR0L5 :1;
        unsigned int TMR0L6 :1;
        unsigned int TMR0L7 :1;
    };
} TMR0Lbits_t;
extern volatile TMR0Lbits_t TMR0Lbits __attribute__((address(0x01C)));
# 1287 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
typedef union {
    struct {
        unsigned int TMR0L :8;
    };
    struct {
        unsigned int TMR0L0 :1;
        unsigned int TMR0L1 :1;
        unsigned int TMR0L2 :1;
        unsigned int TMR0L3 :1;
        unsigned int TMR0L4 :1;
        unsigned int TMR0L5 :1;
        unsigned int TMR0L6 :1;
        unsigned int TMR0L7 :1;
    };
} TMR0bits_t;
extern volatile TMR0bits_t TMR0bits __attribute__((address(0x01C)));
# 1352 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char TMR0H __attribute__((address(0x01D)));

__asm("TMR0H equ 01Dh");


extern volatile unsigned char PR0 __attribute__((address(0x01D)));

__asm("PR0 equ 01Dh");


typedef union {
    struct {
        unsigned int TMR0H :8;
    };
    struct {
        unsigned int T0PR :8;
    };
    struct {
        unsigned int TMR0H0 :1;
        unsigned int TMR0H1 :1;
        unsigned int TMR0H2 :1;
        unsigned int TMR0H3 :1;
        unsigned int TMR0H4 :1;
        unsigned int TMR0H5 :1;
        unsigned int TMR0H6 :1;
        unsigned int TMR0H7 :1;
    };
    struct {
        unsigned int T0PR0 :1;
        unsigned int T0PR1 :1;
        unsigned int T0PR2 :1;
        unsigned int T0PR3 :1;
        unsigned int T0PR4 :1;
        unsigned int T0PR5 :1;
        unsigned int T0PR6 :1;
        unsigned int T0PR7 :1;
    };
} TMR0Hbits_t;
extern volatile TMR0Hbits_t TMR0Hbits __attribute__((address(0x01D)));
# 1483 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
typedef union {
    struct {
        unsigned int TMR0H :8;
    };
    struct {
        unsigned int T0PR :8;
    };
    struct {
        unsigned int TMR0H0 :1;
        unsigned int TMR0H1 :1;
        unsigned int TMR0H2 :1;
        unsigned int TMR0H3 :1;
        unsigned int TMR0H4 :1;
        unsigned int TMR0H5 :1;
        unsigned int TMR0H6 :1;
        unsigned int TMR0H7 :1;
    };
    struct {
        unsigned int T0PR0 :1;
        unsigned int T0PR1 :1;
        unsigned int T0PR2 :1;
        unsigned int T0PR3 :1;
        unsigned int T0PR4 :1;
        unsigned int T0PR5 :1;
        unsigned int T0PR6 :1;
        unsigned int T0PR7 :1;
    };
} PR0bits_t;
extern volatile PR0bits_t PR0bits __attribute__((address(0x01D)));
# 1606 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char T0CON0 __attribute__((address(0x01E)));

__asm("T0CON0 equ 01Eh");


typedef union {
    struct {
        unsigned int T0OUTPS :4;
        unsigned int T016BIT :1;
        unsigned int T0OUT :1;
        unsigned int :1;
        unsigned int T0EN :1;
    };
    struct {
        unsigned int T0OUTPS0 :1;
        unsigned int T0OUTPS1 :1;
        unsigned int T0OUTPS2 :1;
        unsigned int T0OUTPS3 :1;
    };
} T0CON0bits_t;
extern volatile T0CON0bits_t T0CON0bits __attribute__((address(0x01E)));
# 1671 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char T0CON1 __attribute__((address(0x01F)));

__asm("T0CON1 equ 01Fh");


typedef union {
    struct {
        unsigned int T0CKPS :4;
        unsigned int T0ASYNC :1;
        unsigned int T0CS :3;
    };
    struct {
        unsigned int T0CKPS0 :1;
        unsigned int T0CKPS1 :1;
        unsigned int T0CKPS2 :1;
        unsigned int T0CKPS3 :1;
        unsigned int :1;
        unsigned int T0CS0 :1;
        unsigned int T0CS1 :1;
        unsigned int T0CS2 :1;
    };
    struct {
        unsigned int T0PS0 :1;
        unsigned int T0PS1 :1;
        unsigned int T0PS2 :1;
        unsigned int T0PS3 :1;
    };
    struct {
        unsigned int T0PS :4;
    };
} T0CON1bits_t;
extern volatile T0CON1bits_t T0CON1bits __attribute__((address(0x01F)));
# 1782 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned short ADRES __attribute__((address(0x08C)));

__asm("ADRES equ 08Ch");




extern volatile unsigned char ADRESL __attribute__((address(0x08C)));

__asm("ADRESL equ 08Ch");


typedef union {
    struct {
        unsigned int ADRESL :8;
    };
} ADRESLbits_t;
extern volatile ADRESLbits_t ADRESLbits __attribute__((address(0x08C)));
# 1809 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char ADRESH __attribute__((address(0x08D)));

__asm("ADRESH equ 08Dh");




extern volatile unsigned short ADPREV __attribute__((address(0x08E)));

__asm("ADPREV equ 08Eh");




extern volatile unsigned char ADPREVL __attribute__((address(0x08E)));

__asm("ADPREVL equ 08Eh");


typedef union {
    struct {
        unsigned int ADPREVL :8;
    };
    struct {
        unsigned int ADPREV0 :1;
        unsigned int ADPREV1 :1;
        unsigned int ADPREV2 :1;
        unsigned int ADPREV3 :1;
        unsigned int ADPREV4 :1;
        unsigned int ADPREV5 :1;
        unsigned int ADPREV6 :1;
        unsigned int ADPREV7 :1;
    };
} ADPREVLbits_t;
extern volatile ADPREVLbits_t ADPREVLbits __attribute__((address(0x08E)));
# 1893 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char ADPREVH __attribute__((address(0x08F)));

__asm("ADPREVH equ 08Fh");


typedef union {
    struct {
        unsigned int ADPREVH :8;
    };
    struct {
        unsigned int ADPREV8 :1;
        unsigned int ADPREV9 :1;
        unsigned int ADPREV10 :1;
        unsigned int ADPREV11 :1;
        unsigned int ADPREV12 :1;
        unsigned int ADPREV13 :1;
        unsigned int ADPREV14 :1;
        unsigned int ADPREV15 :1;
    };
} ADPREVHbits_t;
extern volatile ADPREVHbits_t ADPREVHbits __attribute__((address(0x08F)));
# 1963 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned short ADACC __attribute__((address(0x090)));

__asm("ADACC equ 090h");




extern volatile unsigned char ADACCL __attribute__((address(0x090)));

__asm("ADACCL equ 090h");


typedef union {
    struct {
        unsigned int ADACCL :8;
    };
    struct {
        unsigned int ADACC0 :1;
        unsigned int ADACC1 :1;
        unsigned int ADACC2 :1;
        unsigned int ADACC3 :1;
        unsigned int ADACC4 :1;
        unsigned int ADACC5 :1;
        unsigned int ADACC6 :1;
        unsigned int ADACC7 :1;
    };
} ADACCLbits_t;
extern volatile ADACCLbits_t ADACCLbits __attribute__((address(0x090)));
# 2040 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char ADACCH __attribute__((address(0x091)));

__asm("ADACCH equ 091h");


typedef union {
    struct {
        unsigned int ADACCH :8;
    };
    struct {
        unsigned int ADACC8 :1;
        unsigned int ADACC9 :1;
        unsigned int ADACC10 :1;
        unsigned int ADACC11 :1;
        unsigned int ADACC12 :1;
        unsigned int ADACC13 :1;
        unsigned int ADACC14 :1;
        unsigned int ADACC15 :1;
    };
} ADACCHbits_t;
extern volatile ADACCHbits_t ADACCHbits __attribute__((address(0x091)));
# 2110 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char ADCON0 __attribute__((address(0x093)));

__asm("ADCON0 equ 093h");


typedef union {
    struct {
        unsigned int ADGO :1;
        unsigned int :1;
        unsigned int ADFM :2;
        unsigned int ADCS :1;
        unsigned int :1;
        unsigned int ADCONT :1;
        unsigned int ADON :1;
    };
    struct {
        unsigned int DONE :1;
        unsigned int :1;
        unsigned int ADFRM :2;
    };
    struct {
        unsigned int nDONE :1;
    };
    struct {
        unsigned int GO :1;
        unsigned int :1;
        unsigned int ADFM0 :1;
        unsigned int ADFM1 :1;
    };
    struct {
        unsigned int GO_nDONE :1;
        unsigned int :1;
        unsigned int ADFRM0 :1;
        unsigned int ADFRM1 :1;
    };
} ADCON0bits_t;
extern volatile ADCON0bits_t ADCON0bits __attribute__((address(0x093)));
# 2221 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char ADCON1 __attribute__((address(0x094)));

__asm("ADCON1 equ 094h");


typedef union {
    struct {
        unsigned int ADDSEN :1;
        unsigned int :4;
        unsigned int ADGPOL :1;
        unsigned int ADIPEN :1;
        unsigned int ADPPOL :1;
    };
} ADCON1bits_t;
extern volatile ADCON1bits_t ADCON1bits __attribute__((address(0x094)));
# 2260 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char ADCON2 __attribute__((address(0x095)));

__asm("ADCON2 equ 095h");


typedef union {
    struct {
        unsigned int ADMD :3;
        unsigned int ADACLR :1;
        unsigned int ADCRS :3;
        unsigned int ADPSIS :1;
    };
    struct {
        unsigned int ADMD0 :1;
        unsigned int ADMD1 :1;
        unsigned int ADMD2 :1;
        unsigned int :1;
        unsigned int ADCRS0 :1;
        unsigned int ADCRS1 :1;
        unsigned int ADCRS2 :1;
    };
} ADCON2bits_t;
extern volatile ADCON2bits_t ADCON2bits __attribute__((address(0x095)));
# 2337 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char ADCON3 __attribute__((address(0x096)));

__asm("ADCON3 equ 096h");


typedef union {
    struct {
        unsigned int ADTMD0 :1;
        unsigned int ADTMD1 :1;
        unsigned int ADTMD2 :1;
        unsigned int :1;
        unsigned int ADCALC0 :1;
        unsigned int ADCALC1 :1;
        unsigned int ADCALC2 :1;
    };
    struct {
        unsigned int ADTMD :3;
        unsigned int ADSOI :1;
        unsigned int ADCALC :3;
    };
} ADCON3bits_t;
extern volatile ADCON3bits_t ADCON3bits __attribute__((address(0x096)));
# 2408 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char ADSTAT __attribute__((address(0x097)));

__asm("ADSTAT equ 097h");


typedef union {
    struct {
        unsigned int ADSTAT :3;
        unsigned int ADMACT :1;
        unsigned int ADMATH :1;
        unsigned int ADLTHR :1;
        unsigned int ADUTHR :1;
        unsigned int ADAOV :1;
    };
    struct {
        unsigned int ADSTAT0 :1;
        unsigned int ADSTAT1 :1;
        unsigned int ADSTAT2 :1;
    };
} ADSTATbits_t;
extern volatile ADSTATbits_t ADSTATbits __attribute__((address(0x097)));
# 2478 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char ADCLK __attribute__((address(0x098)));

__asm("ADCLK equ 098h");


typedef union {
    struct {
        unsigned int ADCCS :6;
    };
    struct {
        unsigned int ADCCS0 :1;
        unsigned int ADCCS1 :1;
        unsigned int ADCCS2 :1;
        unsigned int ADCCS3 :1;
        unsigned int ADCCS4 :1;
        unsigned int ADCCS5 :1;
    };
} ADCLKbits_t;
extern volatile ADCLKbits_t ADCLKbits __attribute__((address(0x098)));
# 2536 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char ADACT __attribute__((address(0x099)));

__asm("ADACT equ 099h");


typedef union {
    struct {
        unsigned int ADACT :5;
    };
    struct {
        unsigned int ADACT0 :1;
        unsigned int ADACT1 :1;
        unsigned int ADACT2 :1;
        unsigned int ADACT3 :1;
        unsigned int ADACT4 :1;
    };
} ADACTbits_t;
extern volatile ADACTbits_t ADACTbits __attribute__((address(0x099)));
# 2588 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char ADREF __attribute__((address(0x09A)));

__asm("ADREF equ 09Ah");


typedef union {
    struct {
        unsigned int ADPREF :2;
        unsigned int :2;
        unsigned int ADNREF :1;
    };
    struct {
        unsigned int ADPREF0 :1;
        unsigned int ADPREF1 :1;
    };
} ADREFbits_t;
extern volatile ADREFbits_t ADREFbits __attribute__((address(0x09A)));
# 2629 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char ADCAP __attribute__((address(0x09B)));

__asm("ADCAP equ 09Bh");


typedef union {
    struct {
        unsigned int ADCAP :5;
    };
    struct {
        unsigned int ADCAP0 :1;
        unsigned int ADCAP1 :1;
        unsigned int ADCAP2 :1;
        unsigned int ADCAP3 :1;
        unsigned int ADCAP4 :1;
    };
} ADCAPbits_t;
extern volatile ADCAPbits_t ADCAPbits __attribute__((address(0x09B)));
# 2681 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char ADPRE __attribute__((address(0x09C)));

__asm("ADPRE equ 09Ch");


typedef union {
    struct {
        unsigned int ADPRE :8;
    };
    struct {
        unsigned int ADPRE0 :1;
        unsigned int ADPRE1 :1;
        unsigned int ADPRE2 :1;
        unsigned int ADPRE3 :1;
        unsigned int ADPRE4 :1;
        unsigned int ADPRE5 :1;
        unsigned int ADPRE6 :1;
        unsigned int ADPRE7 :1;
    };
} ADPREbits_t;
extern volatile ADPREbits_t ADPREbits __attribute__((address(0x09C)));
# 2751 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char ADACQ __attribute__((address(0x09D)));

__asm("ADACQ equ 09Dh");


typedef union {
    struct {
        unsigned int ADACQ :8;
    };
    struct {
        unsigned int ADACQ0 :1;
        unsigned int ADACQ1 :1;
        unsigned int ADACQ2 :1;
        unsigned int ADACQ3 :1;
        unsigned int ADACQ4 :1;
        unsigned int ADACQ5 :1;
        unsigned int ADACQ6 :1;
        unsigned int ADACQ7 :1;
    };
} ADACQbits_t;
extern volatile ADACQbits_t ADACQbits __attribute__((address(0x09D)));
# 2821 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char ADPCH __attribute__((address(0x09E)));

__asm("ADPCH equ 09Eh");


typedef union {
    struct {
        unsigned int ADPCH :6;
    };
    struct {
        unsigned int ADPCH0 :1;
        unsigned int ADPCH1 :1;
        unsigned int ADPCH2 :1;
        unsigned int ADPCH3 :1;
        unsigned int ADPCH4 :1;
        unsigned int ADPCH5 :1;
    };
} ADPCHbits_t;
extern volatile ADPCHbits_t ADPCHbits __attribute__((address(0x09E)));
# 2879 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char ADCNT __attribute__((address(0x10C)));

__asm("ADCNT equ 010Ch");


typedef union {
    struct {
        unsigned int ADCNT :8;
    };
    struct {
        unsigned int ADCNT0 :1;
        unsigned int ADCNT1 :1;
        unsigned int ADCNT2 :1;
        unsigned int ADCNT3 :1;
        unsigned int ADCNT4 :1;
        unsigned int ADCNT5 :1;
        unsigned int ADCNT6 :1;
        unsigned int ADCNT7 :1;
    };
} ADCNTbits_t;
extern volatile ADCNTbits_t ADCNTbits __attribute__((address(0x10C)));
# 2949 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char ADRPT __attribute__((address(0x10D)));

__asm("ADRPT equ 010Dh");


typedef union {
    struct {
        unsigned int ADRPT :8;
    };
    struct {
        unsigned int ADRPT0 :1;
        unsigned int ADRPT1 :1;
        unsigned int ADRPT2 :1;
        unsigned int ADRPT3 :1;
        unsigned int ADRPT4 :1;
        unsigned int ADRPT5 :1;
        unsigned int ADRPT6 :1;
        unsigned int ADRPT7 :1;
    };
} ADRPTbits_t;
extern volatile ADRPTbits_t ADRPTbits __attribute__((address(0x10D)));
# 3019 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned short ADLTH __attribute__((address(0x10E)));

__asm("ADLTH equ 010Eh");




extern volatile unsigned char ADLTHL __attribute__((address(0x10E)));

__asm("ADLTHL equ 010Eh");


typedef union {
    struct {
        unsigned int ADLTHL :8;
    };
    struct {
        unsigned int ADLTH0 :1;
        unsigned int ADLTH1 :1;
        unsigned int ADLTH2 :1;
        unsigned int ADLTH3 :1;
        unsigned int ADLTH4 :1;
        unsigned int ADLTH5 :1;
        unsigned int ADLTH6 :1;
        unsigned int ADLTH7 :1;
    };
} ADLTHLbits_t;
extern volatile ADLTHLbits_t ADLTHLbits __attribute__((address(0x10E)));
# 3096 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char ADLTHH __attribute__((address(0x10F)));

__asm("ADLTHH equ 010Fh");


typedef union {
    struct {
        unsigned int ADLTHH :8;
    };
    struct {
        unsigned int ADLTH8 :1;
        unsigned int ADLTH9 :1;
        unsigned int ADLTH10 :1;
        unsigned int ADLTH11 :1;
        unsigned int ADLTH12 :1;
        unsigned int ADLTH13 :1;
        unsigned int ADLTH14 :1;
        unsigned int ADLTH15 :1;
    };
} ADLTHHbits_t;
extern volatile ADLTHHbits_t ADLTHHbits __attribute__((address(0x10F)));
# 3166 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned short ADUTH __attribute__((address(0x110)));

__asm("ADUTH equ 0110h");




extern volatile unsigned char ADUTHL __attribute__((address(0x110)));

__asm("ADUTHL equ 0110h");


typedef union {
    struct {
        unsigned int ADUTHL :8;
    };
    struct {
        unsigned int ADUTH0 :1;
        unsigned int ADUTH1 :1;
        unsigned int ADUTH2 :1;
        unsigned int ADUTH3 :1;
        unsigned int ADUTH4 :1;
        unsigned int ADUTH5 :1;
        unsigned int ADUTH6 :1;
        unsigned int ADUTH7 :1;
    };
} ADUTHLbits_t;
extern volatile ADUTHLbits_t ADUTHLbits __attribute__((address(0x110)));
# 3243 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char ADUTHH __attribute__((address(0x111)));

__asm("ADUTHH equ 0111h");


typedef union {
    struct {
        unsigned int ADUTHH :8;
    };
    struct {
        unsigned int ADUTH8 :1;
        unsigned int ADUTH9 :1;
        unsigned int ADUTH10 :1;
        unsigned int ADUTH11 :1;
        unsigned int ADUTH12 :1;
        unsigned int ADUTH13 :1;
        unsigned int ADUTH14 :1;
        unsigned int ADUTH15 :1;
    };
} ADUTHHbits_t;
extern volatile ADUTHHbits_t ADUTHHbits __attribute__((address(0x111)));
# 3313 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned short ADSTPT __attribute__((address(0x112)));

__asm("ADSTPT equ 0112h");




extern volatile unsigned char ADSTPTL __attribute__((address(0x112)));

__asm("ADSTPTL equ 0112h");


typedef union {
    struct {
        unsigned int ADSTPTL :8;
    };
    struct {
        unsigned int ADSTPT0 :1;
        unsigned int ADSTPT1 :1;
        unsigned int ADSTPT2 :1;
        unsigned int ADSTPT3 :1;
        unsigned int ADSTPT4 :1;
        unsigned int ADSTPT5 :1;
        unsigned int ADSTPT6 :1;
        unsigned int ADSTPT7 :1;
    };
} ADSTPTLbits_t;
extern volatile ADSTPTLbits_t ADSTPTLbits __attribute__((address(0x112)));
# 3390 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char ADSTPTH __attribute__((address(0x113)));

__asm("ADSTPTH equ 0113h");


typedef union {
    struct {
        unsigned int ADSTPTH :8;
    };
    struct {
        unsigned int ADSTPT8 :1;
        unsigned int ADSTPT9 :1;
        unsigned int ADSTPT10 :1;
        unsigned int ADSTPT11 :1;
        unsigned int ADSTPT12 :1;
        unsigned int ADSTPT13 :1;
        unsigned int ADSTPT14 :1;
        unsigned int ADSTPT15 :1;
    };
} ADSTPTHbits_t;
extern volatile ADSTPTHbits_t ADSTPTHbits __attribute__((address(0x113)));
# 3460 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned short ADFLTR __attribute__((address(0x114)));

__asm("ADFLTR equ 0114h");




extern volatile unsigned char ADFLTRL __attribute__((address(0x114)));

__asm("ADFLTRL equ 0114h");


typedef union {
    struct {
        unsigned int ADFLTRL :8;
    };
    struct {
        unsigned int ADFLTR0 :1;
        unsigned int ADFLTR1 :1;
        unsigned int ADFLTR2 :1;
        unsigned int ADFLTR3 :1;
        unsigned int ADFLTR4 :1;
        unsigned int ADFLTR5 :1;
        unsigned int ADFLTR6 :1;
        unsigned int ADFLTR7 :1;
    };
} ADFLTRLbits_t;
extern volatile ADFLTRLbits_t ADFLTRLbits __attribute__((address(0x114)));
# 3537 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char ADFLTRH __attribute__((address(0x115)));

__asm("ADFLTRH equ 0115h");


typedef union {
    struct {
        unsigned int ADFLTRH :8;
    };
    struct {
        unsigned int ADFLTR8 :1;
        unsigned int ADFLTR9 :1;
        unsigned int ADFLTR10 :1;
        unsigned int ADFLTR11 :1;
        unsigned int ADFLTR12 :1;
        unsigned int ADFLTR13 :1;
        unsigned int ADFLTR14 :1;
        unsigned int ADFLTR15 :1;
    };
} ADFLTRHbits_t;
extern volatile ADFLTRHbits_t ADFLTRHbits __attribute__((address(0x115)));
# 3607 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned short ADERR __attribute__((address(0x116)));

__asm("ADERR equ 0116h");




extern volatile unsigned char ADERRL __attribute__((address(0x116)));

__asm("ADERRL equ 0116h");


typedef union {
    struct {
        unsigned int ADERRL :8;
    };
    struct {
        unsigned int ADERR0 :1;
        unsigned int ADERR1 :1;
        unsigned int ADERR2 :1;
        unsigned int ADERR3 :1;
        unsigned int ADERR4 :1;
        unsigned int ADERR5 :1;
        unsigned int ADERR6 :1;
        unsigned int ADERR7 :1;
    };
} ADERRLbits_t;
extern volatile ADERRLbits_t ADERRLbits __attribute__((address(0x116)));
# 3684 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char ADERRH __attribute__((address(0x117)));

__asm("ADERRH equ 0117h");


typedef union {
    struct {
        unsigned int ADERRH :8;
    };
    struct {
        unsigned int ADERR8 :1;
        unsigned int ADERR9 :1;
        unsigned int ADERR10 :1;
        unsigned int ADERR11 :1;
        unsigned int ADERR12 :1;
        unsigned int ADERR13 :1;
        unsigned int ADERR14 :1;
        unsigned int ADERR15 :1;
    };
} ADERRHbits_t;
extern volatile ADERRHbits_t ADERRHbits __attribute__((address(0x117)));
# 3754 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char RC1REG __attribute__((address(0x119)));

__asm("RC1REG equ 0119h");


extern volatile unsigned char RCREG __attribute__((address(0x119)));

__asm("RCREG equ 0119h");

extern volatile unsigned char RCREG1 __attribute__((address(0x119)));

__asm("RCREG1 equ 0119h");


typedef union {
    struct {
        unsigned int RC1REG :8;
    };
} RC1REGbits_t;
extern volatile RC1REGbits_t RC1REGbits __attribute__((address(0x119)));







typedef union {
    struct {
        unsigned int RC1REG :8;
    };
} RCREGbits_t;
extern volatile RCREGbits_t RCREGbits __attribute__((address(0x119)));






typedef union {
    struct {
        unsigned int RC1REG :8;
    };
} RCREG1bits_t;
extern volatile RCREG1bits_t RCREG1bits __attribute__((address(0x119)));
# 3808 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char TX1REG __attribute__((address(0x11A)));

__asm("TX1REG equ 011Ah");


extern volatile unsigned char TXREG1 __attribute__((address(0x11A)));

__asm("TXREG1 equ 011Ah");

extern volatile unsigned char TXREG __attribute__((address(0x11A)));

__asm("TXREG equ 011Ah");


typedef union {
    struct {
        unsigned int TX1REG :8;
    };
} TX1REGbits_t;
extern volatile TX1REGbits_t TX1REGbits __attribute__((address(0x11A)));







typedef union {
    struct {
        unsigned int TX1REG :8;
    };
} TXREG1bits_t;
extern volatile TXREG1bits_t TXREG1bits __attribute__((address(0x11A)));






typedef union {
    struct {
        unsigned int TX1REG :8;
    };
} TXREGbits_t;
extern volatile TXREGbits_t TXREGbits __attribute__((address(0x11A)));
# 3862 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned short SP1BRG __attribute__((address(0x11B)));

__asm("SP1BRG equ 011Bh");


extern volatile unsigned short SPBRG __attribute__((address(0x11B)));

__asm("SPBRG equ 011Bh");




extern volatile unsigned char SP1BRGL __attribute__((address(0x11B)));

__asm("SP1BRGL equ 011Bh");


extern volatile unsigned char SPBRG1 __attribute__((address(0x11B)));

__asm("SPBRG1 equ 011Bh");

extern volatile unsigned char SPBRGL __attribute__((address(0x11B)));

__asm("SPBRGL equ 011Bh");


typedef union {
    struct {
        unsigned int SP1BRGL :8;
    };
} SP1BRGLbits_t;
extern volatile SP1BRGLbits_t SP1BRGLbits __attribute__((address(0x11B)));







typedef union {
    struct {
        unsigned int SP1BRGL :8;
    };
} SPBRG1bits_t;
extern volatile SPBRG1bits_t SPBRG1bits __attribute__((address(0x11B)));






typedef union {
    struct {
        unsigned int SP1BRGL :8;
    };
} SPBRGLbits_t;
extern volatile SPBRGLbits_t SPBRGLbits __attribute__((address(0x11B)));
# 3928 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SP1BRGH __attribute__((address(0x11C)));

__asm("SP1BRGH equ 011Ch");


extern volatile unsigned char SPBRGH __attribute__((address(0x11C)));

__asm("SPBRGH equ 011Ch");

extern volatile unsigned char SPBRGH1 __attribute__((address(0x11C)));

__asm("SPBRGH1 equ 011Ch");


typedef union {
    struct {
        unsigned int SP1BRGH :8;
    };
} SP1BRGHbits_t;
extern volatile SP1BRGHbits_t SP1BRGHbits __attribute__((address(0x11C)));







typedef union {
    struct {
        unsigned int SP1BRGH :8;
    };
} SPBRGHbits_t;
extern volatile SPBRGHbits_t SPBRGHbits __attribute__((address(0x11C)));






typedef union {
    struct {
        unsigned int SP1BRGH :8;
    };
} SPBRGH1bits_t;
extern volatile SPBRGH1bits_t SPBRGH1bits __attribute__((address(0x11C)));
# 3982 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char RC1STA __attribute__((address(0x11D)));

__asm("RC1STA equ 011Dh");


extern volatile unsigned char RCSTA1 __attribute__((address(0x11D)));

__asm("RCSTA1 equ 011Dh");

extern volatile unsigned char RCSTA __attribute__((address(0x11D)));

__asm("RCSTA equ 011Dh");


typedef union {
    struct {
        unsigned int RX9D :1;
        unsigned int OERR :1;
        unsigned int FERR :1;
        unsigned int ADDEN :1;
        unsigned int CREN :1;
        unsigned int SREN :1;
        unsigned int RX9 :1;
        unsigned int SPEN :1;
    };
} RC1STAbits_t;
extern volatile RC1STAbits_t RC1STAbits __attribute__((address(0x11D)));
# 4051 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
typedef union {
    struct {
        unsigned int RX9D :1;
        unsigned int OERR :1;
        unsigned int FERR :1;
        unsigned int ADDEN :1;
        unsigned int CREN :1;
        unsigned int SREN :1;
        unsigned int RX9 :1;
        unsigned int SPEN :1;
    };
} RCSTA1bits_t;
extern volatile RCSTA1bits_t RCSTA1bits __attribute__((address(0x11D)));
# 4105 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
typedef union {
    struct {
        unsigned int RX9D :1;
        unsigned int OERR :1;
        unsigned int FERR :1;
        unsigned int ADDEN :1;
        unsigned int CREN :1;
        unsigned int SREN :1;
        unsigned int RX9 :1;
        unsigned int SPEN :1;
    };
} RCSTAbits_t;
extern volatile RCSTAbits_t RCSTAbits __attribute__((address(0x11D)));
# 4162 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char TX1STA __attribute__((address(0x11E)));

__asm("TX1STA equ 011Eh");


extern volatile unsigned char TXSTA1 __attribute__((address(0x11E)));

__asm("TXSTA1 equ 011Eh");

extern volatile unsigned char TXSTA __attribute__((address(0x11E)));

__asm("TXSTA equ 011Eh");


typedef union {
    struct {
        unsigned int TX9D :1;
        unsigned int TRMT :1;
        unsigned int BRGH :1;
        unsigned int SENDB :1;
        unsigned int SYNC :1;
        unsigned int TXEN :1;
        unsigned int TX9 :1;
        unsigned int CSRC :1;
    };
} TX1STAbits_t;
extern volatile TX1STAbits_t TX1STAbits __attribute__((address(0x11E)));
# 4231 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
typedef union {
    struct {
        unsigned int TX9D :1;
        unsigned int TRMT :1;
        unsigned int BRGH :1;
        unsigned int SENDB :1;
        unsigned int SYNC :1;
        unsigned int TXEN :1;
        unsigned int TX9 :1;
        unsigned int CSRC :1;
    };
} TXSTA1bits_t;
extern volatile TXSTA1bits_t TXSTA1bits __attribute__((address(0x11E)));
# 4285 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
typedef union {
    struct {
        unsigned int TX9D :1;
        unsigned int TRMT :1;
        unsigned int BRGH :1;
        unsigned int SENDB :1;
        unsigned int SYNC :1;
        unsigned int TXEN :1;
        unsigned int TX9 :1;
        unsigned int CSRC :1;
    };
} TXSTAbits_t;
extern volatile TXSTAbits_t TXSTAbits __attribute__((address(0x11E)));
# 4342 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char BAUD1CON __attribute__((address(0x11F)));

__asm("BAUD1CON equ 011Fh");


extern volatile unsigned char BAUDCON1 __attribute__((address(0x11F)));

__asm("BAUDCON1 equ 011Fh");

extern volatile unsigned char BAUDCTL1 __attribute__((address(0x11F)));

__asm("BAUDCTL1 equ 011Fh");

extern volatile unsigned char BAUDCON __attribute__((address(0x11F)));

__asm("BAUDCON equ 011Fh");

extern volatile unsigned char BAUDCTL __attribute__((address(0x11F)));

__asm("BAUDCTL equ 011Fh");


typedef union {
    struct {
        unsigned int ABDEN :1;
        unsigned int WUE :1;
        unsigned int :1;
        unsigned int BRG16 :1;
        unsigned int SCKP :1;
        unsigned int :1;
        unsigned int RCIDL :1;
        unsigned int ABDOVF :1;
    };
} BAUD1CONbits_t;
extern volatile BAUD1CONbits_t BAUD1CONbits __attribute__((address(0x11F)));
# 4409 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
typedef union {
    struct {
        unsigned int ABDEN :1;
        unsigned int WUE :1;
        unsigned int :1;
        unsigned int BRG16 :1;
        unsigned int SCKP :1;
        unsigned int :1;
        unsigned int RCIDL :1;
        unsigned int ABDOVF :1;
    };
} BAUDCON1bits_t;
extern volatile BAUDCON1bits_t BAUDCON1bits __attribute__((address(0x11F)));
# 4453 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
typedef union {
    struct {
        unsigned int ABDEN :1;
        unsigned int WUE :1;
        unsigned int :1;
        unsigned int BRG16 :1;
        unsigned int SCKP :1;
        unsigned int :1;
        unsigned int RCIDL :1;
        unsigned int ABDOVF :1;
    };
} BAUDCTL1bits_t;
extern volatile BAUDCTL1bits_t BAUDCTL1bits __attribute__((address(0x11F)));
# 4497 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
typedef union {
    struct {
        unsigned int ABDEN :1;
        unsigned int WUE :1;
        unsigned int :1;
        unsigned int BRG16 :1;
        unsigned int SCKP :1;
        unsigned int :1;
        unsigned int RCIDL :1;
        unsigned int ABDOVF :1;
    };
} BAUDCONbits_t;
extern volatile BAUDCONbits_t BAUDCONbits __attribute__((address(0x11F)));
# 4541 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
typedef union {
    struct {
        unsigned int ABDEN :1;
        unsigned int WUE :1;
        unsigned int :1;
        unsigned int BRG16 :1;
        unsigned int SCKP :1;
        unsigned int :1;
        unsigned int RCIDL :1;
        unsigned int ABDOVF :1;
    };
} BAUDCTLbits_t;
extern volatile BAUDCTLbits_t BAUDCTLbits __attribute__((address(0x11F)));
# 4588 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SSP1BUF __attribute__((address(0x18C)));

__asm("SSP1BUF equ 018Ch");


typedef union {
    struct {
        unsigned int SSPBUF :8;
    };
} SSP1BUFbits_t;
extern volatile SSP1BUFbits_t SSP1BUFbits __attribute__((address(0x18C)));
# 4608 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SSP1ADD __attribute__((address(0x18D)));

__asm("SSP1ADD equ 018Dh");


typedef union {
    struct {
        unsigned int SSPADD :8;
    };
    struct {
        unsigned int MSK0 :1;
        unsigned int MSK1 :1;
        unsigned int MSK2 :1;
        unsigned int MSK3 :1;
        unsigned int MSK4 :1;
        unsigned int MSK5 :1;
        unsigned int MSK6 :1;
        unsigned int MSK7 :1;
    };
    struct {
        unsigned int MSK01 :1;
        unsigned int MSK11 :1;
        unsigned int MSK21 :1;
        unsigned int MSK31 :1;
        unsigned int MSK41 :1;
        unsigned int MSK51 :1;
        unsigned int MSK61 :1;
        unsigned int MSK71 :1;
    };
} SSP1ADDbits_t;
extern volatile SSP1ADDbits_t SSP1ADDbits __attribute__((address(0x18D)));
# 4728 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SSP1MSK __attribute__((address(0x18E)));

__asm("SSP1MSK equ 018Eh");


typedef union {
    struct {
        unsigned int SSPMSK :8;
    };
    struct {
        unsigned int MSK0 :1;
        unsigned int MSK1 :1;
        unsigned int MSK2 :1;
        unsigned int MSK3 :1;
        unsigned int MSK4 :1;
        unsigned int MSK5 :1;
        unsigned int MSK6 :1;
        unsigned int MSK7 :1;
    };
} SSP1MSKbits_t;
extern volatile SSP1MSKbits_t SSP1MSKbits __attribute__((address(0x18E)));
# 4798 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SSP1STAT __attribute__((address(0x18F)));

__asm("SSP1STAT equ 018Fh");


typedef union {
    struct {
        unsigned int BF :1;
        unsigned int UA :1;
        unsigned int R_nW :1;
        unsigned int S :1;
        unsigned int P :1;
        unsigned int D_nA :1;
        unsigned int CKE :1;
        unsigned int SMP :1;
    };
    struct {
        unsigned int :2;
        unsigned int R_W :1;
        unsigned int :2;
        unsigned int D_A :1;
    };
    struct {
        unsigned int :2;
        unsigned int nW :1;
        unsigned int :2;
        unsigned int nA :1;
    };
    struct {
        unsigned int :2;
        unsigned int nWRITE :1;
        unsigned int :2;
        unsigned int nADDRESS :1;
    };
    struct {
        unsigned int :2;
        unsigned int READ_WRITE :1;
        unsigned int :2;
        unsigned int DATA_ADDRESS :1;
    };
    struct {
        unsigned int :2;
        unsigned int I2C_READ :1;
        unsigned int I2C_START :1;
        unsigned int I2C_STOP :1;
        unsigned int I2C_DAT :1;
    };
    struct {
        unsigned int BF1 :1;
        unsigned int UA1 :1;
        unsigned int R :1;
        unsigned int START :1;
        unsigned int STOP :1;
        unsigned int D :1;
        unsigned int CKE1 :1;
        unsigned int SMP1 :1;
    };
    struct {
        unsigned int :2;
        unsigned int RW :1;
        unsigned int START1 :1;
        unsigned int STOP1 :1;
        unsigned int DA :1;
    };
    struct {
        unsigned int :2;
        unsigned int RW1 :1;
        unsigned int I2C_START1 :1;
        unsigned int I2C_STOP2 :1;
        unsigned int DA1 :1;
    };
    struct {
        unsigned int :2;
        unsigned int I2C_READ1 :1;
        unsigned int S2 :1;
        unsigned int P2 :1;
        unsigned int DATA_ADDRESS1 :1;
    };
    struct {
        unsigned int :2;
        unsigned int READ_WRITE1 :1;
        unsigned int :2;
        unsigned int D_A1 :1;
    };
    struct {
        unsigned int :2;
        unsigned int R_W1 :1;
        unsigned int :2;
        unsigned int D_nA1 :1;
    };
    struct {
        unsigned int :2;
        unsigned int R_nW1 :1;
        unsigned int :2;
        unsigned int I2C_DAT1 :1;
    };
    struct {
        unsigned int :2;
        unsigned int nW2 :1;
        unsigned int :2;
        unsigned int nA2 :1;
    };
    struct {
        unsigned int :2;
        unsigned int nWRITE1 :1;
        unsigned int :2;
        unsigned int nADDRESS1 :1;
    };
} SSP1STATbits_t;
extern volatile SSP1STATbits_t SSP1STATbits __attribute__((address(0x18F)));
# 5162 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SSP1CON1 __attribute__((address(0x190)));

__asm("SSP1CON1 equ 0190h");


typedef union {
    struct {
        unsigned int SSPM :4;
        unsigned int CKP :1;
        unsigned int SSPEN :1;
        unsigned int SSPOV :1;
        unsigned int WCOL :1;
    };
    struct {
        unsigned int SSPM0 :1;
        unsigned int SSPM1 :1;
        unsigned int SSPM2 :1;
        unsigned int SSPM3 :1;
    };
    struct {
        unsigned int SSPM01 :1;
        unsigned int SSPM11 :1;
        unsigned int SSPM21 :1;
        unsigned int SSPM31 :1;
        unsigned int CKP1 :1;
        unsigned int SSPEN1 :1;
        unsigned int SSPOV1 :1;
        unsigned int WCOL1 :1;
    };
} SSP1CON1bits_t;
extern volatile SSP1CON1bits_t SSP1CON1bits __attribute__((address(0x190)));
# 5282 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SSP1CON2 __attribute__((address(0x191)));

__asm("SSP1CON2 equ 0191h");


typedef union {
    struct {
        unsigned int SEN :1;
        unsigned int RSEN :1;
        unsigned int PEN :1;
        unsigned int RCEN :1;
        unsigned int ACKEN :1;
        unsigned int ACKDT :1;
        unsigned int ACKSTAT :1;
        unsigned int GCEN :1;
    };
    struct {
        unsigned int :1;
        unsigned int ADMSK :5;
    };
    struct {
        unsigned int :1;
        unsigned int ADMSK1 :1;
        unsigned int ADMSK2 :1;
        unsigned int ADMSK3 :1;
        unsigned int ADMSK4 :1;
        unsigned int ADMSK5 :1;
    };
    struct {
        unsigned int SEN1 :1;
        unsigned int ADMSK11 :1;
        unsigned int ADMSK21 :1;
        unsigned int ADMSK31 :1;
        unsigned int ACKEN1 :1;
        unsigned int ACKDT1 :1;
        unsigned int ACKSTAT1 :1;
        unsigned int GCEN1 :1;
    };
    struct {
        unsigned int :1;
        unsigned int RSEN1 :1;
        unsigned int PEN1 :1;
        unsigned int RCEN1 :1;
        unsigned int ADMSK41 :1;
        unsigned int ADMSK51 :1;
    };
} SSP1CON2bits_t;
extern volatile SSP1CON2bits_t SSP1CON2bits __attribute__((address(0x191)));
# 5469 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SSP1CON3 __attribute__((address(0x192)));

__asm("SSP1CON3 equ 0192h");


typedef union {
    struct {
        unsigned int DHEN :1;
        unsigned int AHEN :1;
        unsigned int SBCDE :1;
        unsigned int SDAHT :1;
        unsigned int BOEN :1;
        unsigned int SCIE :1;
        unsigned int PCIE :1;
        unsigned int ACKTIM :1;
    };
} SSP1CON3bits_t;
extern volatile SSP1CON3bits_t SSP1CON3bits __attribute__((address(0x192)));
# 5531 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SSP2BUF __attribute__((address(0x196)));

__asm("SSP2BUF equ 0196h");


typedef union {
    struct {
        unsigned int SSPBUF :8;
    };
} SSP2BUFbits_t;
extern volatile SSP2BUFbits_t SSP2BUFbits __attribute__((address(0x196)));
# 5551 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SSP2ADD __attribute__((address(0x197)));

__asm("SSP2ADD equ 0197h");


typedef union {
    struct {
        unsigned int SSPADD :8;
    };
    struct {
        unsigned int MSK0 :1;
        unsigned int MSK1 :1;
        unsigned int MSK2 :1;
        unsigned int MSK3 :1;
        unsigned int MSK4 :1;
        unsigned int MSK5 :1;
        unsigned int MSK6 :1;
        unsigned int MSK7 :1;
    };
    struct {
        unsigned int MSK02 :1;
        unsigned int MSK12 :1;
        unsigned int MSK22 :1;
        unsigned int MSK32 :1;
        unsigned int MSK42 :1;
        unsigned int MSK52 :1;
        unsigned int MSK62 :1;
        unsigned int MSK72 :1;
    };
} SSP2ADDbits_t;
extern volatile SSP2ADDbits_t SSP2ADDbits __attribute__((address(0x197)));
# 5671 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SSP2MSK __attribute__((address(0x198)));

__asm("SSP2MSK equ 0198h");


typedef union {
    struct {
        unsigned int SSPMSK :8;
    };
    struct {
        unsigned int MSK0 :1;
        unsigned int MSK1 :1;
        unsigned int MSK2 :1;
        unsigned int MSK3 :1;
        unsigned int MSK4 :1;
        unsigned int MSK5 :1;
        unsigned int MSK6 :1;
        unsigned int MSK7 :1;
    };
} SSP2MSKbits_t;
extern volatile SSP2MSKbits_t SSP2MSKbits __attribute__((address(0x198)));
# 5741 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SSP2STAT __attribute__((address(0x199)));

__asm("SSP2STAT equ 0199h");


typedef union {
    struct {
        unsigned int BF :1;
        unsigned int UA :1;
        unsigned int R_nW :1;
        unsigned int S :1;
        unsigned int P :1;
        unsigned int D_nA :1;
        unsigned int CKE :1;
        unsigned int SMP :1;
    };
    struct {
        unsigned int :2;
        unsigned int R_W :1;
        unsigned int :2;
        unsigned int D_A :1;
    };
    struct {
        unsigned int :2;
        unsigned int nW :1;
        unsigned int :2;
        unsigned int nA :1;
    };
    struct {
        unsigned int :2;
        unsigned int nWRITE :1;
        unsigned int :2;
        unsigned int nADDRESS :1;
    };
    struct {
        unsigned int :2;
        unsigned int READ_WRITE :1;
        unsigned int :2;
        unsigned int DATA_ADDRESS :1;
    };
    struct {
        unsigned int :2;
        unsigned int I2C_READ :1;
        unsigned int I2C_START :1;
        unsigned int I2C_STOP :1;
        unsigned int I2C_DAT :1;
    };
    struct {
        unsigned int BF2 :1;
        unsigned int UA2 :1;
        unsigned int R :1;
        unsigned int START :1;
        unsigned int STOP :1;
        unsigned int D :1;
        unsigned int CKE2 :1;
        unsigned int SMP2 :1;
    };
    struct {
        unsigned int :2;
        unsigned int RW :1;
        unsigned int START2 :1;
        unsigned int STOP2 :1;
        unsigned int DA :1;
    };
    struct {
        unsigned int :2;
        unsigned int RW2 :1;
        unsigned int I2C_START2 :1;
        unsigned int I2C_STOP2 :1;
        unsigned int DA2 :1;
    };
    struct {
        unsigned int :2;
        unsigned int I2C_READ2 :1;
        unsigned int S2 :1;
        unsigned int P2 :1;
        unsigned int DATA_ADDRESS2 :1;
    };
    struct {
        unsigned int :2;
        unsigned int READ_WRITE2 :1;
        unsigned int :2;
        unsigned int D_A2 :1;
    };
    struct {
        unsigned int :2;
        unsigned int R_W2 :1;
        unsigned int :2;
        unsigned int D_nA2 :1;
    };
    struct {
        unsigned int :2;
        unsigned int R_nW2 :1;
        unsigned int :2;
        unsigned int I2C_DAT2 :1;
    };
    struct {
        unsigned int :2;
        unsigned int nW2 :1;
        unsigned int :2;
        unsigned int nA2 :1;
    };
    struct {
        unsigned int :2;
        unsigned int nWRITE2 :1;
        unsigned int :2;
        unsigned int nADDRESS2 :1;
    };
} SSP2STATbits_t;
extern volatile SSP2STATbits_t SSP2STATbits __attribute__((address(0x199)));
# 6105 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SSP2CON1 __attribute__((address(0x19A)));

__asm("SSP2CON1 equ 019Ah");


typedef union {
    struct {
        unsigned int SSPM :4;
        unsigned int CKP :1;
        unsigned int SSPEN :1;
        unsigned int SSPOV :1;
        unsigned int WCOL :1;
    };
    struct {
        unsigned int SSPM0 :1;
        unsigned int SSPM1 :1;
        unsigned int SSPM2 :1;
        unsigned int SSPM3 :1;
    };
    struct {
        unsigned int SSPM02 :1;
        unsigned int SSPM12 :1;
        unsigned int SSPM22 :1;
        unsigned int SSPM32 :1;
        unsigned int CKP2 :1;
        unsigned int SSPEN2 :1;
        unsigned int SSPOV2 :1;
        unsigned int WCOL2 :1;
    };
} SSP2CON1bits_t;
extern volatile SSP2CON1bits_t SSP2CON1bits __attribute__((address(0x19A)));
# 6225 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SSP2CON2 __attribute__((address(0x19B)));

__asm("SSP2CON2 equ 019Bh");


typedef union {
    struct {
        unsigned int SEN :1;
        unsigned int RSEN :1;
        unsigned int PEN :1;
        unsigned int RCEN :1;
        unsigned int ACKEN :1;
        unsigned int ACKDT :1;
        unsigned int ACKSTAT :1;
        unsigned int GCEN :1;
    };
    struct {
        unsigned int :1;
        unsigned int ADMSK :5;
    };
    struct {
        unsigned int :1;
        unsigned int ADMSK1 :1;
        unsigned int ADMSK2 :1;
        unsigned int ADMSK3 :1;
        unsigned int ADMSK4 :1;
        unsigned int ADMSK5 :1;
    };
    struct {
        unsigned int SEN2 :1;
        unsigned int ADMSK12 :1;
        unsigned int ADMSK22 :1;
        unsigned int ADMSK32 :1;
        unsigned int ACKEN2 :1;
        unsigned int ACKDT2 :1;
        unsigned int ACKSTAT2 :1;
        unsigned int GCEN2 :1;
    };
    struct {
        unsigned int :1;
        unsigned int RSEN2 :1;
        unsigned int PEN2 :1;
        unsigned int RCEN2 :1;
        unsigned int ADMSK42 :1;
        unsigned int ADMSK52 :1;
    };
} SSP2CON2bits_t;
extern volatile SSP2CON2bits_t SSP2CON2bits __attribute__((address(0x19B)));
# 6412 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SSP2CON3 __attribute__((address(0x19C)));

__asm("SSP2CON3 equ 019Ch");


typedef union {
    struct {
        unsigned int DHEN :1;
        unsigned int AHEN :1;
        unsigned int SBCDE :1;
        unsigned int SDAHT :1;
        unsigned int BOEN :1;
        unsigned int SCIE :1;
        unsigned int PCIE :1;
        unsigned int ACKTIM :1;
    };
} SSP2CON3bits_t;
extern volatile SSP2CON3bits_t SSP2CON3bits __attribute__((address(0x19C)));
# 6474 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned short TMR1 __attribute__((address(0x20C)));

__asm("TMR1 equ 020Ch");




extern volatile unsigned char TMR1L __attribute__((address(0x20C)));

__asm("TMR1L equ 020Ch");


typedef union {
    struct {
        unsigned int TMR1L0 :1;
        unsigned int TMR1L1 :1;
        unsigned int TMR1L2 :1;
        unsigned int TMR1L3 :1;
        unsigned int TMR1L4 :1;
        unsigned int TMR1L5 :1;
        unsigned int TMR1L6 :1;
        unsigned int TMR1L7 :1;
    };
    struct {
        unsigned int TMR1L :8;
    };
    struct {
        unsigned int TMR10 :1;
        unsigned int TMR11 :1;
        unsigned int TMR12 :1;
        unsigned int TMR13 :1;
        unsigned int TMR14 :1;
        unsigned int TMR15 :1;
        unsigned int TMR16 :1;
        unsigned int TMR17 :1;
    };
    struct {
        unsigned int CAL01 :1;
        unsigned int CAL11 :1;
        unsigned int CAL21 :1;
        unsigned int CAL31 :1;
        unsigned int CAL41 :1;
        unsigned int CAL51 :1;
        unsigned int CAL61 :1;
        unsigned int CAL71 :1;
    };
} TMR1Lbits_t;
extern volatile TMR1Lbits_t TMR1Lbits __attribute__((address(0x20C)));
# 6651 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char TMR1H __attribute__((address(0x20D)));

__asm("TMR1H equ 020Dh");


typedef union {
    struct {
        unsigned int TMR1H0 :1;
        unsigned int TMR1H1 :1;
        unsigned int TMR1H2 :1;
        unsigned int TMR1H3 :1;
        unsigned int TMR1H4 :1;
        unsigned int TMR1H5 :1;
        unsigned int TMR1H6 :1;
        unsigned int TMR1H7 :1;
    };
    struct {
        unsigned int TMR1H :8;
    };
    struct {
        unsigned int TMR18 :1;
        unsigned int TMR19 :1;
        unsigned int TMR110 :1;
        unsigned int TMR111 :1;
        unsigned int TMR112 :1;
        unsigned int TMR113 :1;
        unsigned int TMR114 :1;
        unsigned int TMR115 :1;
    };
} TMR1Hbits_t;
extern volatile TMR1Hbits_t TMR1Hbits __attribute__((address(0x20D)));
# 6771 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char T1CON __attribute__((address(0x20E)));

__asm("T1CON equ 020Eh");


typedef union {
    struct {
        unsigned int ON :1;
        unsigned int RD16 :1;
        unsigned int nSYNC :1;
        unsigned int :1;
        unsigned int CKPS :2;
    };
    struct {
        unsigned int TMR1ON :1;
        unsigned int T1RD16 :1;
        unsigned int nT1SYNC :1;
        unsigned int :1;
        unsigned int T1CKPS0 :1;
        unsigned int T1CKPS1 :1;
    };
    struct {
        unsigned int :4;
        unsigned int CKPS0 :1;
        unsigned int CKPS1 :1;
    };
    struct {
        unsigned int :1;
        unsigned int RD161 :1;
    };
} T1CONbits_t;
extern volatile T1CONbits_t T1CONbits __attribute__((address(0x20E)));
# 6867 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char T1GCON __attribute__((address(0x20F)));

__asm("T1GCON equ 020Fh");


extern volatile unsigned char PR1 __attribute__((address(0x20F)));

__asm("PR1 equ 020Fh");


typedef union {
    struct {
        unsigned int :2;
        unsigned int GVAL :1;
        unsigned int GGO_nDONE :1;
        unsigned int GSPM :1;
        unsigned int GTM :1;
        unsigned int GPOL :1;
        unsigned int GE :1;
    };
    struct {
        unsigned int :2;
        unsigned int T1GVAL :1;
        unsigned int T1GGO_nDONE :1;
        unsigned int T1GSPM :1;
        unsigned int T1GTM :1;
        unsigned int T1GPOL :1;
        unsigned int T1GE :1;
    };
    struct {
        unsigned int :3;
        unsigned int T1GGO :1;
    };
} T1GCONbits_t;
extern volatile T1GCONbits_t T1GCONbits __attribute__((address(0x20F)));
# 6969 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
typedef union {
    struct {
        unsigned int :2;
        unsigned int GVAL :1;
        unsigned int GGO_nDONE :1;
        unsigned int GSPM :1;
        unsigned int GTM :1;
        unsigned int GPOL :1;
        unsigned int GE :1;
    };
    struct {
        unsigned int :2;
        unsigned int T1GVAL :1;
        unsigned int T1GGO_nDONE :1;
        unsigned int T1GSPM :1;
        unsigned int T1GTM :1;
        unsigned int T1GPOL :1;
        unsigned int T1GE :1;
    };
    struct {
        unsigned int :3;
        unsigned int T1GGO :1;
    };
} PR1bits_t;
extern volatile PR1bits_t PR1bits __attribute__((address(0x20F)));
# 7063 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char T1GATE __attribute__((address(0x210)));

__asm("T1GATE equ 0210h");


extern volatile unsigned char TMR1GATE __attribute__((address(0x210)));

__asm("TMR1GATE equ 0210h");


typedef union {
    struct {
        unsigned int GSS :5;
    };
    struct {
        unsigned int GSS0 :1;
        unsigned int GSS1 :1;
        unsigned int GSS2 :1;
        unsigned int GSS3 :1;
        unsigned int GSS4 :1;
    };
    struct {
        unsigned int T1GSS0 :1;
        unsigned int T1GSS1 :1;
        unsigned int T1GSS2 :1;
        unsigned int T1GSS3 :1;
        unsigned int T1GSS4 :1;
    };
} T1GATEbits_t;
extern volatile T1GATEbits_t T1GATEbits __attribute__((address(0x210)));
# 7150 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
typedef union {
    struct {
        unsigned int GSS :5;
    };
    struct {
        unsigned int GSS0 :1;
        unsigned int GSS1 :1;
        unsigned int GSS2 :1;
        unsigned int GSS3 :1;
        unsigned int GSS4 :1;
    };
    struct {
        unsigned int T1GSS0 :1;
        unsigned int T1GSS1 :1;
        unsigned int T1GSS2 :1;
        unsigned int T1GSS3 :1;
        unsigned int T1GSS4 :1;
    };
} TMR1GATEbits_t;
extern volatile TMR1GATEbits_t TMR1GATEbits __attribute__((address(0x210)));
# 7229 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char T1CLK __attribute__((address(0x211)));

__asm("T1CLK equ 0211h");


extern volatile unsigned char TMR1CLK __attribute__((address(0x211)));

__asm("TMR1CLK equ 0211h");


typedef union {
    struct {
        unsigned int CS :4;
    };
    struct {
        unsigned int T1CS0 :1;
        unsigned int T1CS1 :1;
        unsigned int T1CS2 :1;
        unsigned int T1CS3 :1;
    };
    struct {
        unsigned int CS0 :1;
        unsigned int CS1 :1;
        unsigned int CS2 :1;
        unsigned int CS3 :1;
    };
} T1CLKbits_t;
extern volatile T1CLKbits_t T1CLKbits __attribute__((address(0x211)));
# 7304 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
typedef union {
    struct {
        unsigned int CS :4;
    };
    struct {
        unsigned int T1CS0 :1;
        unsigned int T1CS1 :1;
        unsigned int T1CS2 :1;
        unsigned int T1CS3 :1;
    };
    struct {
        unsigned int CS0 :1;
        unsigned int CS1 :1;
        unsigned int CS2 :1;
        unsigned int CS3 :1;
    };
} TMR1CLKbits_t;
extern volatile TMR1CLKbits_t TMR1CLKbits __attribute__((address(0x211)));
# 7371 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned short TMR3 __attribute__((address(0x212)));

__asm("TMR3 equ 0212h");




extern volatile unsigned char TMR3L __attribute__((address(0x212)));

__asm("TMR3L equ 0212h");


typedef union {
    struct {
        unsigned int TMR3L0 :1;
        unsigned int TMR3L1 :1;
        unsigned int TMR3L2 :1;
        unsigned int TMR3L3 :1;
        unsigned int TMR3L4 :1;
        unsigned int TMR3L5 :1;
        unsigned int TMR3L6 :1;
        unsigned int TMR3L7 :1;
    };
    struct {
        unsigned int TMR3L :8;
    };
    struct {
        unsigned int TMR30 :1;
        unsigned int TMR31 :1;
        unsigned int TMR32 :1;
        unsigned int TMR33 :1;
        unsigned int TMR34 :1;
        unsigned int TMR35 :1;
        unsigned int TMR36 :1;
        unsigned int TMR37 :1;
    };
    struct {
        unsigned int CAL03 :1;
        unsigned int CAL13 :1;
        unsigned int CAL23 :1;
        unsigned int CAL33 :1;
        unsigned int CAL43 :1;
        unsigned int CAL53 :1;
        unsigned int CAL63 :1;
        unsigned int CAL73 :1;
    };
} TMR3Lbits_t;
extern volatile TMR3Lbits_t TMR3Lbits __attribute__((address(0x212)));
# 7548 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char TMR3H __attribute__((address(0x213)));

__asm("TMR3H equ 0213h");


typedef union {
    struct {
        unsigned int TMR3H0 :1;
        unsigned int TMR3H1 :1;
        unsigned int TMR3H2 :1;
        unsigned int TMR3H3 :1;
        unsigned int TMR3H4 :1;
        unsigned int TMR3H5 :1;
        unsigned int TMR3H6 :1;
        unsigned int TMR3H7 :1;
    };
    struct {
        unsigned int TMR3H :8;
    };
    struct {
        unsigned int TMR38 :1;
        unsigned int TMR39 :1;
        unsigned int TMR310 :1;
        unsigned int TMR311 :1;
        unsigned int TMR312 :1;
        unsigned int TMR313 :1;
        unsigned int TMR314 :1;
        unsigned int TMR315 :1;
    };
} TMR3Hbits_t;
extern volatile TMR3Hbits_t TMR3Hbits __attribute__((address(0x213)));
# 7668 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char T3CON __attribute__((address(0x214)));

__asm("T3CON equ 0214h");


typedef union {
    struct {
        unsigned int ON :1;
        unsigned int RD16 :1;
        unsigned int nSYNC :1;
        unsigned int :1;
        unsigned int CKPS :2;
    };
    struct {
        unsigned int TMR3ON :1;
        unsigned int T3RD16 :1;
        unsigned int nT3SYNC :1;
        unsigned int :1;
        unsigned int T3CKPS0 :1;
        unsigned int T3CKPS1 :1;
    };
    struct {
        unsigned int :4;
        unsigned int CKPS0 :1;
        unsigned int CKPS1 :1;
    };
    struct {
        unsigned int :1;
        unsigned int RD163 :1;
    };
} T3CONbits_t;
extern volatile T3CONbits_t T3CONbits __attribute__((address(0x214)));
# 7764 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char T3GCON __attribute__((address(0x215)));

__asm("T3GCON equ 0215h");


extern volatile unsigned char PR3 __attribute__((address(0x215)));

__asm("PR3 equ 0215h");


typedef union {
    struct {
        unsigned int :2;
        unsigned int GVAL :1;
        unsigned int GGO_nDONE :1;
        unsigned int GSPM :1;
        unsigned int GTM :1;
        unsigned int GPOL :1;
        unsigned int GE :1;
    };
    struct {
        unsigned int :2;
        unsigned int T3GVAL :1;
        unsigned int T3GGO_nDONE :1;
        unsigned int T3GSPM :1;
        unsigned int T3GTM :1;
        unsigned int T3GPOL :1;
        unsigned int T3GE :1;
    };
    struct {
        unsigned int :3;
        unsigned int T3GGO :1;
    };
} T3GCONbits_t;
extern volatile T3GCONbits_t T3GCONbits __attribute__((address(0x215)));
# 7866 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
typedef union {
    struct {
        unsigned int :2;
        unsigned int GVAL :1;
        unsigned int GGO_nDONE :1;
        unsigned int GSPM :1;
        unsigned int GTM :1;
        unsigned int GPOL :1;
        unsigned int GE :1;
    };
    struct {
        unsigned int :2;
        unsigned int T3GVAL :1;
        unsigned int T3GGO_nDONE :1;
        unsigned int T3GSPM :1;
        unsigned int T3GTM :1;
        unsigned int T3GPOL :1;
        unsigned int T3GE :1;
    };
    struct {
        unsigned int :3;
        unsigned int T3GGO :1;
    };
} PR3bits_t;
extern volatile PR3bits_t PR3bits __attribute__((address(0x215)));
# 7960 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char T3GATE __attribute__((address(0x216)));

__asm("T3GATE equ 0216h");


extern volatile unsigned char TMR3GATE __attribute__((address(0x216)));

__asm("TMR3GATE equ 0216h");


typedef union {
    struct {
        unsigned int GSS :5;
    };
    struct {
        unsigned int GSS0 :1;
        unsigned int GSS1 :1;
        unsigned int GSS2 :1;
        unsigned int GSS3 :1;
        unsigned int GSS4 :1;
    };
    struct {
        unsigned int T3GSS0 :1;
        unsigned int T3GSS1 :1;
        unsigned int T3GSS2 :1;
        unsigned int T3GSS3 :1;
        unsigned int T3GSS4 :1;
    };
} T3GATEbits_t;
extern volatile T3GATEbits_t T3GATEbits __attribute__((address(0x216)));
# 8047 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
typedef union {
    struct {
        unsigned int GSS :5;
    };
    struct {
        unsigned int GSS0 :1;
        unsigned int GSS1 :1;
        unsigned int GSS2 :1;
        unsigned int GSS3 :1;
        unsigned int GSS4 :1;
    };
    struct {
        unsigned int T3GSS0 :1;
        unsigned int T3GSS1 :1;
        unsigned int T3GSS2 :1;
        unsigned int T3GSS3 :1;
        unsigned int T3GSS4 :1;
    };
} TMR3GATEbits_t;
extern volatile TMR3GATEbits_t TMR3GATEbits __attribute__((address(0x216)));
# 8126 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char T3CLK __attribute__((address(0x217)));

__asm("T3CLK equ 0217h");


extern volatile unsigned char TMR3CLK __attribute__((address(0x217)));

__asm("TMR3CLK equ 0217h");


typedef union {
    struct {
        unsigned int CS :4;
    };
    struct {
        unsigned int T3CS0 :1;
        unsigned int T3CS1 :1;
        unsigned int T3CS2 :1;
        unsigned int T3CS3 :1;
    };
    struct {
        unsigned int CS0 :1;
        unsigned int CS1 :1;
        unsigned int CS2 :1;
        unsigned int CS3 :1;
    };
} T3CLKbits_t;
extern volatile T3CLKbits_t T3CLKbits __attribute__((address(0x217)));
# 8201 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
typedef union {
    struct {
        unsigned int CS :4;
    };
    struct {
        unsigned int T3CS0 :1;
        unsigned int T3CS1 :1;
        unsigned int T3CS2 :1;
        unsigned int T3CS3 :1;
    };
    struct {
        unsigned int CS0 :1;
        unsigned int CS1 :1;
        unsigned int CS2 :1;
        unsigned int CS3 :1;
    };
} TMR3CLKbits_t;
extern volatile TMR3CLKbits_t TMR3CLKbits __attribute__((address(0x217)));
# 8268 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned short TMR5 __attribute__((address(0x218)));

__asm("TMR5 equ 0218h");




extern volatile unsigned char TMR5L __attribute__((address(0x218)));

__asm("TMR5L equ 0218h");


typedef union {
    struct {
        unsigned int TMR5L0 :1;
        unsigned int TMR5L1 :1;
        unsigned int TMR5L2 :1;
        unsigned int TMR5L3 :1;
        unsigned int TMR5L4 :1;
        unsigned int TMR5L5 :1;
        unsigned int TMR5L6 :1;
        unsigned int TMR5L7 :1;
    };
    struct {
        unsigned int TMR5L :8;
    };
    struct {
        unsigned int TMR50 :1;
        unsigned int TMR51 :1;
        unsigned int TMR52 :1;
        unsigned int TMR53 :1;
        unsigned int TMR54 :1;
        unsigned int TMR55 :1;
        unsigned int TMR56 :1;
        unsigned int TMR57 :1;
    };
    struct {
        unsigned int CAL05 :1;
        unsigned int CAL15 :1;
        unsigned int CAL25 :1;
        unsigned int CAL35 :1;
        unsigned int CAL45 :1;
        unsigned int CAL55 :1;
        unsigned int CAL65 :1;
        unsigned int CAL75 :1;
    };
} TMR5Lbits_t;
extern volatile TMR5Lbits_t TMR5Lbits __attribute__((address(0x218)));
# 8445 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char TMR5H __attribute__((address(0x219)));

__asm("TMR5H equ 0219h");


typedef union {
    struct {
        unsigned int TMR5H0 :1;
        unsigned int TMR5H1 :1;
        unsigned int TMR5H2 :1;
        unsigned int TMR5H3 :1;
        unsigned int TMR5H4 :1;
        unsigned int TMR5H5 :1;
        unsigned int TMR5H6 :1;
        unsigned int TMR5H7 :1;
    };
    struct {
        unsigned int TMR5H :8;
    };
    struct {
        unsigned int TMR58 :1;
        unsigned int TMR59 :1;
        unsigned int TMR510 :1;
        unsigned int TMR511 :1;
        unsigned int TMR512 :1;
        unsigned int TMR513 :1;
        unsigned int TMR514 :1;
        unsigned int TMR515 :1;
    };
} TMR5Hbits_t;
extern volatile TMR5Hbits_t TMR5Hbits __attribute__((address(0x219)));
# 8565 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char T5CON __attribute__((address(0x21A)));

__asm("T5CON equ 021Ah");


typedef union {
    struct {
        unsigned int ON :1;
        unsigned int RD16 :1;
        unsigned int nSYNC :1;
        unsigned int :1;
        unsigned int CKPS :2;
    };
    struct {
        unsigned int TMR5ON :1;
        unsigned int T5RD16 :1;
        unsigned int nT5SYNC :1;
        unsigned int :1;
        unsigned int T5CKPS0 :1;
        unsigned int T5CKPS1 :1;
    };
    struct {
        unsigned int :4;
        unsigned int CKPS0 :1;
        unsigned int CKPS1 :1;
    };
    struct {
        unsigned int :1;
        unsigned int RD165 :1;
    };
} T5CONbits_t;
extern volatile T5CONbits_t T5CONbits __attribute__((address(0x21A)));
# 8661 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char T5GCON __attribute__((address(0x21B)));

__asm("T5GCON equ 021Bh");


extern volatile unsigned char PR5 __attribute__((address(0x21B)));

__asm("PR5 equ 021Bh");


typedef union {
    struct {
        unsigned int :2;
        unsigned int GVAL :1;
        unsigned int GGO_nDONE :1;
        unsigned int GSPM :1;
        unsigned int GTM :1;
        unsigned int GPOL :1;
        unsigned int GE :1;
    };
    struct {
        unsigned int :2;
        unsigned int T5GVAL :1;
        unsigned int T5GGO_nDONE :1;
        unsigned int T5GSPM :1;
        unsigned int T5GTM :1;
        unsigned int T5GPOL :1;
        unsigned int T5GE :1;
    };
    struct {
        unsigned int :3;
        unsigned int T5GGO :1;
    };
} T5GCONbits_t;
extern volatile T5GCONbits_t T5GCONbits __attribute__((address(0x21B)));
# 8763 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
typedef union {
    struct {
        unsigned int :2;
        unsigned int GVAL :1;
        unsigned int GGO_nDONE :1;
        unsigned int GSPM :1;
        unsigned int GTM :1;
        unsigned int GPOL :1;
        unsigned int GE :1;
    };
    struct {
        unsigned int :2;
        unsigned int T5GVAL :1;
        unsigned int T5GGO_nDONE :1;
        unsigned int T5GSPM :1;
        unsigned int T5GTM :1;
        unsigned int T5GPOL :1;
        unsigned int T5GE :1;
    };
    struct {
        unsigned int :3;
        unsigned int T5GGO :1;
    };
} PR5bits_t;
extern volatile PR5bits_t PR5bits __attribute__((address(0x21B)));
# 8857 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char T5GATE __attribute__((address(0x21C)));

__asm("T5GATE equ 021Ch");


extern volatile unsigned char TMR5GATE __attribute__((address(0x21C)));

__asm("TMR5GATE equ 021Ch");


typedef union {
    struct {
        unsigned int GSS :5;
    };
    struct {
        unsigned int GSS0 :1;
        unsigned int GSS1 :1;
        unsigned int GSS2 :1;
        unsigned int GSS3 :1;
        unsigned int GSS4 :1;
    };
    struct {
        unsigned int T5GSS0 :1;
        unsigned int T5GSS1 :1;
        unsigned int T5GSS2 :1;
        unsigned int T5GSS3 :1;
        unsigned int T5GSS4 :1;
    };
} T5GATEbits_t;
extern volatile T5GATEbits_t T5GATEbits __attribute__((address(0x21C)));
# 8944 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
typedef union {
    struct {
        unsigned int GSS :5;
    };
    struct {
        unsigned int GSS0 :1;
        unsigned int GSS1 :1;
        unsigned int GSS2 :1;
        unsigned int GSS3 :1;
        unsigned int GSS4 :1;
    };
    struct {
        unsigned int T5GSS0 :1;
        unsigned int T5GSS1 :1;
        unsigned int T5GSS2 :1;
        unsigned int T5GSS3 :1;
        unsigned int T5GSS4 :1;
    };
} TMR5GATEbits_t;
extern volatile TMR5GATEbits_t TMR5GATEbits __attribute__((address(0x21C)));
# 9023 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char T5CLK __attribute__((address(0x21D)));

__asm("T5CLK equ 021Dh");


extern volatile unsigned char TMR5CLK __attribute__((address(0x21D)));

__asm("TMR5CLK equ 021Dh");


typedef union {
    struct {
        unsigned int CS :4;
    };
    struct {
        unsigned int T5CS0 :1;
        unsigned int T5CS1 :1;
        unsigned int T5CS2 :1;
        unsigned int T5CS3 :1;
    };
    struct {
        unsigned int CS0 :1;
        unsigned int CS1 :1;
        unsigned int CS2 :1;
        unsigned int CS3 :1;
    };
} T5CLKbits_t;
extern volatile T5CLKbits_t T5CLKbits __attribute__((address(0x21D)));
# 9098 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
typedef union {
    struct {
        unsigned int CS :4;
    };
    struct {
        unsigned int T5CS0 :1;
        unsigned int T5CS1 :1;
        unsigned int T5CS2 :1;
        unsigned int T5CS3 :1;
    };
    struct {
        unsigned int CS0 :1;
        unsigned int CS1 :1;
        unsigned int CS2 :1;
        unsigned int CS3 :1;
    };
} TMR5CLKbits_t;
extern volatile TMR5CLKbits_t TMR5CLKbits __attribute__((address(0x21D)));
# 9165 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CCPTMRS0 __attribute__((address(0x21E)));

__asm("CCPTMRS0 equ 021Eh");


typedef union {
    struct {
        unsigned int C1TSEL :2;
        unsigned int C2TSEL :2;
        unsigned int C3TSEL :2;
        unsigned int C4TSEL :2;
    };
    struct {
        unsigned int C1TSEL0 :1;
        unsigned int C1TSEL1 :1;
        unsigned int C2TSEL0 :1;
        unsigned int C2TSEL1 :1;
        unsigned int C3TSEL0 :1;
        unsigned int C3TSEL1 :1;
        unsigned int C4TSEL0 :1;
        unsigned int C4TSEL1 :1;
    };
} CCPTMRS0bits_t;
extern volatile CCPTMRS0bits_t CCPTMRS0bits __attribute__((address(0x21E)));
# 9253 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CCPTMRS1 __attribute__((address(0x21F)));

__asm("CCPTMRS1 equ 021Fh");


typedef union {
    struct {
        unsigned int C5TSEL :2;
        unsigned int P6TSEL :2;
        unsigned int P7TSEL :2;
    };
    struct {
        unsigned int C5TSEL0 :1;
        unsigned int C5TSEL1 :1;
        unsigned int P6TSEL0 :1;
        unsigned int P6TSEL1 :1;
        unsigned int P7TSEL0 :1;
        unsigned int P7TSEL1 :1;
    };
} CCPTMRS1bits_t;
extern volatile CCPTMRS1bits_t CCPTMRS1bits __attribute__((address(0x21F)));
# 9323 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char T2TMR __attribute__((address(0x28C)));

__asm("T2TMR equ 028Ch");


extern volatile unsigned char TMR2 __attribute__((address(0x28C)));

__asm("TMR2 equ 028Ch");


typedef union {
    struct {
        unsigned int TMR2 :8;
    };
} T2TMRbits_t;
extern volatile T2TMRbits_t T2TMRbits __attribute__((address(0x28C)));







typedef union {
    struct {
        unsigned int TMR2 :8;
    };
} TMR2bits_t;
extern volatile TMR2bits_t TMR2bits __attribute__((address(0x28C)));
# 9361 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char T2PR __attribute__((address(0x28D)));

__asm("T2PR equ 028Dh");


extern volatile unsigned char PR2 __attribute__((address(0x28D)));

__asm("PR2 equ 028Dh");


typedef union {
    struct {
        unsigned int PR2 :8;
    };
} T2PRbits_t;
extern volatile T2PRbits_t T2PRbits __attribute__((address(0x28D)));







typedef union {
    struct {
        unsigned int PR2 :8;
    };
} PR2bits_t;
extern volatile PR2bits_t PR2bits __attribute__((address(0x28D)));
# 9399 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char T2CON __attribute__((address(0x28E)));

__asm("T2CON equ 028Eh");


typedef union {
    struct {
        unsigned int OUTPS :4;
        unsigned int CKPS :3;
        unsigned int ON :1;
    };
    struct {
        unsigned int T2OUTPS :4;
        unsigned int T2CKPS :3;
        unsigned int T2ON :1;
    };
    struct {
        unsigned int T2OUTPS0 :1;
        unsigned int T2OUTPS1 :1;
        unsigned int T2OUTPS2 :1;
        unsigned int T2OUTPS3 :1;
        unsigned int T2CKPS0 :1;
        unsigned int T2CKPS1 :1;
        unsigned int T2CKPS2 :1;
    };
    struct {
        unsigned int OUTPS0 :1;
        unsigned int OUTPS1 :1;
        unsigned int OUTPS2 :1;
        unsigned int OUTPS3 :1;
        unsigned int CKPS0 :1;
        unsigned int CKPS1 :1;
        unsigned int CKPS2 :1;
        unsigned int TMR2ON :1;
    };
} T2CONbits_t;
extern volatile T2CONbits_t T2CONbits __attribute__((address(0x28E)));
# 9545 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char T2HLT __attribute__((address(0x28F)));

__asm("T2HLT equ 028Fh");


typedef union {
    struct {
        unsigned int MODE :5;
        unsigned int CKSYNC :1;
        unsigned int CKPOL :1;
        unsigned int PSYNC :1;
    };
    struct {
        unsigned int MODE0 :1;
        unsigned int MODE1 :1;
        unsigned int MODE2 :1;
        unsigned int MODE3 :1;
        unsigned int MODE4 :1;
    };
    struct {
        unsigned int T2MODE :5;
        unsigned int T2CKSYNC :1;
        unsigned int T2CKPOL :1;
        unsigned int T2PSYNC :1;
    };
    struct {
        unsigned int T2MODE0 :1;
        unsigned int T2MODE1 :1;
        unsigned int T2MODE2 :1;
        unsigned int T2MODE3 :1;
        unsigned int T2MODE4 :1;
    };
} T2HLTbits_t;
extern volatile T2HLTbits_t T2HLTbits __attribute__((address(0x28F)));
# 9673 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char T2CLKCON __attribute__((address(0x290)));

__asm("T2CLKCON equ 0290h");


extern volatile unsigned char T2CLK __attribute__((address(0x290)));

__asm("T2CLK equ 0290h");


typedef union {
    struct {
        unsigned int CS :4;
    };
    struct {
        unsigned int CS0 :1;
        unsigned int CS1 :1;
        unsigned int CS2 :1;
        unsigned int CS3 :1;
    };
    struct {
        unsigned int T2CS :4;
    };
    struct {
        unsigned int T2CS0 :1;
        unsigned int T2CS1 :1;
        unsigned int T2CS2 :1;
        unsigned int T2CS3 :1;
    };
} T2CLKCONbits_t;
extern volatile T2CLKCONbits_t T2CLKCONbits __attribute__((address(0x290)));
# 9756 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
typedef union {
    struct {
        unsigned int CS :4;
    };
    struct {
        unsigned int CS0 :1;
        unsigned int CS1 :1;
        unsigned int CS2 :1;
        unsigned int CS3 :1;
    };
    struct {
        unsigned int T2CS :4;
    };
    struct {
        unsigned int T2CS0 :1;
        unsigned int T2CS1 :1;
        unsigned int T2CS2 :1;
        unsigned int T2CS3 :1;
    };
} T2CLKbits_t;
extern volatile T2CLKbits_t T2CLKbits __attribute__((address(0x290)));
# 9831 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char T2RST __attribute__((address(0x291)));

__asm("T2RST equ 0291h");


typedef union {
    struct {
        unsigned int RSEL :5;
    };
    struct {
        unsigned int RSEL0 :1;
        unsigned int RSEL1 :1;
        unsigned int RSEL2 :1;
        unsigned int RSEL3 :1;
        unsigned int RSEL4 :1;
    };
    struct {
        unsigned int T2RSEL :5;
    };
    struct {
        unsigned int T2RSEL0 :1;
        unsigned int T2RSEL1 :1;
        unsigned int T2RSEL2 :1;
        unsigned int T2RSEL3 :1;
        unsigned int T2RSEL4 :1;
    };
} T2RSTbits_t;
extern volatile T2RSTbits_t T2RSTbits __attribute__((address(0x291)));
# 9923 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char T4TMR __attribute__((address(0x292)));

__asm("T4TMR equ 0292h");


extern volatile unsigned char TMR4 __attribute__((address(0x292)));

__asm("TMR4 equ 0292h");


typedef union {
    struct {
        unsigned int TMR4 :8;
    };
} T4TMRbits_t;
extern volatile T4TMRbits_t T4TMRbits __attribute__((address(0x292)));







typedef union {
    struct {
        unsigned int TMR4 :8;
    };
} TMR4bits_t;
extern volatile TMR4bits_t TMR4bits __attribute__((address(0x292)));
# 9961 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char T4PR __attribute__((address(0x293)));

__asm("T4PR equ 0293h");


extern volatile unsigned char PR4 __attribute__((address(0x293)));

__asm("PR4 equ 0293h");


typedef union {
    struct {
        unsigned int PR4 :8;
    };
} T4PRbits_t;
extern volatile T4PRbits_t T4PRbits __attribute__((address(0x293)));







typedef union {
    struct {
        unsigned int PR4 :8;
    };
} PR4bits_t;
extern volatile PR4bits_t PR4bits __attribute__((address(0x293)));
# 9999 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char T4CON __attribute__((address(0x294)));

__asm("T4CON equ 0294h");


typedef union {
    struct {
        unsigned int OUTPS :4;
        unsigned int CKPS :3;
        unsigned int ON :1;
    };
    struct {
        unsigned int T4OUTPS :4;
        unsigned int T4CKPS :3;
        unsigned int T4ON :1;
    };
    struct {
        unsigned int T4OUTPS0 :1;
        unsigned int T4OUTPS1 :1;
        unsigned int T4OUTPS2 :1;
        unsigned int T4OUTPS3 :1;
        unsigned int T4CKPS0 :1;
        unsigned int T4CKPS1 :1;
        unsigned int T4CKPS2 :1;
    };
    struct {
        unsigned int OUTPS0 :1;
        unsigned int OUTPS1 :1;
        unsigned int OUTPS2 :1;
        unsigned int OUTPS3 :1;
        unsigned int CKPS0 :1;
        unsigned int CKPS1 :1;
        unsigned int CKPS2 :1;
        unsigned int TMR4ON :1;
    };
} T4CONbits_t;
extern volatile T4CONbits_t T4CONbits __attribute__((address(0x294)));
# 10145 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char T4HLT __attribute__((address(0x295)));

__asm("T4HLT equ 0295h");


typedef union {
    struct {
        unsigned int MODE :5;
        unsigned int CKSYNC :1;
        unsigned int CKPOL :1;
        unsigned int PSYNC :1;
    };
    struct {
        unsigned int MODE0 :1;
        unsigned int MODE1 :1;
        unsigned int MODE2 :1;
        unsigned int MODE3 :1;
        unsigned int MODE4 :1;
    };
    struct {
        unsigned int T4MODE :5;
        unsigned int T4CKSYNC :1;
        unsigned int T4CKPOL :1;
        unsigned int T4PSYNC :1;
    };
    struct {
        unsigned int T4MODE0 :1;
        unsigned int T4MODE1 :1;
        unsigned int T4MODE2 :1;
        unsigned int T4MODE3 :1;
        unsigned int T4MODE4 :1;
    };
} T4HLTbits_t;
extern volatile T4HLTbits_t T4HLTbits __attribute__((address(0x295)));
# 10273 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char T4CLKCON __attribute__((address(0x296)));

__asm("T4CLKCON equ 0296h");


extern volatile unsigned char T4CLK __attribute__((address(0x296)));

__asm("T4CLK equ 0296h");


typedef union {
    struct {
        unsigned int CS :4;
    };
    struct {
        unsigned int CS0 :1;
        unsigned int CS1 :1;
        unsigned int CS2 :1;
        unsigned int CS3 :1;
    };
    struct {
        unsigned int T4CS :4;
    };
    struct {
        unsigned int T4CS0 :1;
        unsigned int T4CS1 :1;
        unsigned int T4CS2 :1;
        unsigned int T4CS3 :1;
    };
} T4CLKCONbits_t;
extern volatile T4CLKCONbits_t T4CLKCONbits __attribute__((address(0x296)));
# 10356 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
typedef union {
    struct {
        unsigned int CS :4;
    };
    struct {
        unsigned int CS0 :1;
        unsigned int CS1 :1;
        unsigned int CS2 :1;
        unsigned int CS3 :1;
    };
    struct {
        unsigned int T4CS :4;
    };
    struct {
        unsigned int T4CS0 :1;
        unsigned int T4CS1 :1;
        unsigned int T4CS2 :1;
        unsigned int T4CS3 :1;
    };
} T4CLKbits_t;
extern volatile T4CLKbits_t T4CLKbits __attribute__((address(0x296)));
# 10431 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char T4RST __attribute__((address(0x297)));

__asm("T4RST equ 0297h");


typedef union {
    struct {
        unsigned int RSEL :5;
    };
    struct {
        unsigned int RSEL0 :1;
        unsigned int RSEL1 :1;
        unsigned int RSEL2 :1;
        unsigned int RSEL3 :1;
        unsigned int RSEL4 :1;
    };
    struct {
        unsigned int T4RSEL :5;
    };
    struct {
        unsigned int T4RSEL0 :1;
        unsigned int T4RSEL1 :1;
        unsigned int T4RSEL2 :1;
        unsigned int T4RSEL3 :1;
        unsigned int T4RSEL4 :1;
    };
} T4RSTbits_t;
extern volatile T4RSTbits_t T4RSTbits __attribute__((address(0x297)));
# 10523 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char T6TMR __attribute__((address(0x298)));

__asm("T6TMR equ 0298h");


extern volatile unsigned char TMR6 __attribute__((address(0x298)));

__asm("TMR6 equ 0298h");


typedef union {
    struct {
        unsigned int TMR6 :8;
    };
} T6TMRbits_t;
extern volatile T6TMRbits_t T6TMRbits __attribute__((address(0x298)));







typedef union {
    struct {
        unsigned int TMR6 :8;
    };
} TMR6bits_t;
extern volatile TMR6bits_t TMR6bits __attribute__((address(0x298)));
# 10561 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char T6PR __attribute__((address(0x299)));

__asm("T6PR equ 0299h");


extern volatile unsigned char PR6 __attribute__((address(0x299)));

__asm("PR6 equ 0299h");


typedef union {
    struct {
        unsigned int PR6 :8;
    };
} T6PRbits_t;
extern volatile T6PRbits_t T6PRbits __attribute__((address(0x299)));







typedef union {
    struct {
        unsigned int PR6 :8;
    };
} PR6bits_t;
extern volatile PR6bits_t PR6bits __attribute__((address(0x299)));
# 10599 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char T6CON __attribute__((address(0x29A)));

__asm("T6CON equ 029Ah");


typedef union {
    struct {
        unsigned int OUTPS :4;
        unsigned int CKPS :3;
        unsigned int ON :1;
    };
    struct {
        unsigned int T6OUTPS :4;
        unsigned int T6CKPS :3;
        unsigned int T6ON :1;
    };
    struct {
        unsigned int T6OUTPS0 :1;
        unsigned int T6OUTPS1 :1;
        unsigned int T6OUTPS2 :1;
        unsigned int T6OUTPS3 :1;
        unsigned int T6CKPS0 :1;
        unsigned int T6CKPS1 :1;
        unsigned int T6CKPS2 :1;
    };
    struct {
        unsigned int OUTPS0 :1;
        unsigned int OUTPS1 :1;
        unsigned int OUTPS2 :1;
        unsigned int OUTPS3 :1;
        unsigned int CKPS0 :1;
        unsigned int CKPS1 :1;
        unsigned int CKPS2 :1;
        unsigned int TMR6ON :1;
    };
} T6CONbits_t;
extern volatile T6CONbits_t T6CONbits __attribute__((address(0x29A)));
# 10745 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char T6HLT __attribute__((address(0x29B)));

__asm("T6HLT equ 029Bh");


typedef union {
    struct {
        unsigned int MODE :5;
        unsigned int CKSYNC :1;
        unsigned int CKPOL :1;
        unsigned int PSYNC :1;
    };
    struct {
        unsigned int MODE0 :1;
        unsigned int MODE1 :1;
        unsigned int MODE2 :1;
        unsigned int MODE3 :1;
        unsigned int MODE4 :1;
    };
    struct {
        unsigned int T6MODE :5;
        unsigned int T6CKSYNC :1;
        unsigned int T6CKPOL :1;
        unsigned int T6PSYNC :1;
    };
    struct {
        unsigned int T6MODE0 :1;
        unsigned int T6MODE1 :1;
        unsigned int T6MODE2 :1;
        unsigned int T6MODE3 :1;
        unsigned int T6MODE4 :1;
    };
} T6HLTbits_t;
extern volatile T6HLTbits_t T6HLTbits __attribute__((address(0x29B)));
# 10873 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char T6CLKCON __attribute__((address(0x29C)));

__asm("T6CLKCON equ 029Ch");


extern volatile unsigned char T6CLK __attribute__((address(0x29C)));

__asm("T6CLK equ 029Ch");


typedef union {
    struct {
        unsigned int CS :4;
    };
    struct {
        unsigned int CS0 :1;
        unsigned int CS1 :1;
        unsigned int CS2 :1;
        unsigned int CS3 :1;
    };
    struct {
        unsigned int T6CS :4;
    };
    struct {
        unsigned int T6CS0 :1;
        unsigned int T6CS1 :1;
        unsigned int T6CS2 :1;
        unsigned int T6CS3 :1;
    };
} T6CLKCONbits_t;
extern volatile T6CLKCONbits_t T6CLKCONbits __attribute__((address(0x29C)));
# 10956 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
typedef union {
    struct {
        unsigned int CS :4;
    };
    struct {
        unsigned int CS0 :1;
        unsigned int CS1 :1;
        unsigned int CS2 :1;
        unsigned int CS3 :1;
    };
    struct {
        unsigned int T6CS :4;
    };
    struct {
        unsigned int T6CS0 :1;
        unsigned int T6CS1 :1;
        unsigned int T6CS2 :1;
        unsigned int T6CS3 :1;
    };
} T6CLKbits_t;
extern volatile T6CLKbits_t T6CLKbits __attribute__((address(0x29C)));
# 11031 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char T6RST __attribute__((address(0x29D)));

__asm("T6RST equ 029Dh");


typedef union {
    struct {
        unsigned int RSEL :5;
    };
    struct {
        unsigned int RSEL0 :1;
        unsigned int RSEL1 :1;
        unsigned int RSEL2 :1;
        unsigned int RSEL3 :1;
        unsigned int RSEL4 :1;
    };
    struct {
        unsigned int T6RSEL :5;
    };
    struct {
        unsigned int T6RSEL0 :1;
        unsigned int T6RSEL1 :1;
        unsigned int T6RSEL2 :1;
        unsigned int T6RSEL3 :1;
        unsigned int T6RSEL4 :1;
    };
} T6RSTbits_t;
extern volatile T6RSTbits_t T6RSTbits __attribute__((address(0x29D)));
# 11123 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned short CCPR1 __attribute__((address(0x30C)));

__asm("CCPR1 equ 030Ch");




extern volatile unsigned char CCPR1L __attribute__((address(0x30C)));

__asm("CCPR1L equ 030Ch");


typedef union {
    struct {
        unsigned int RL :8;
    };
} CCPR1Lbits_t;
extern volatile CCPR1Lbits_t CCPR1Lbits __attribute__((address(0x30C)));
# 11150 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CCPR1H __attribute__((address(0x30D)));

__asm("CCPR1H equ 030Dh");


typedef union {
    struct {
        unsigned int RH :8;
    };
} CCPR1Hbits_t;
extern volatile CCPR1Hbits_t CCPR1Hbits __attribute__((address(0x30D)));
# 11170 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CCP1CON __attribute__((address(0x30E)));

__asm("CCP1CON equ 030Eh");


typedef union {
    struct {
        unsigned int MODE :4;
        unsigned int FMT :1;
        unsigned int OUT :1;
        unsigned int :1;
        unsigned int EN :1;
    };
    struct {
        unsigned int MODE0 :1;
        unsigned int MODE1 :1;
        unsigned int MODE2 :1;
        unsigned int MODE3 :1;
    };
    struct {
        unsigned int CCP1MODE :4;
        unsigned int CCP1FMT :1;
        unsigned int CCP1OUT :1;
        unsigned int :1;
        unsigned int CCP1EN :1;
    };
    struct {
        unsigned int CCP1MODE0 :1;
        unsigned int CCP1MODE1 :1;
        unsigned int CCP1MODE2 :1;
        unsigned int CCP1MODE3 :1;
    };
} CCP1CONbits_t;
extern volatile CCP1CONbits_t CCP1CONbits __attribute__((address(0x30E)));
# 11288 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CCP1CAP __attribute__((address(0x30F)));

__asm("CCP1CAP equ 030Fh");


typedef union {
    struct {
        unsigned int CTS :8;
    };
    struct {
        unsigned int CTS0 :1;
        unsigned int CTS1 :1;
        unsigned int CTS2 :1;
    };
    struct {
        unsigned int CCP1CTS :8;
    };
    struct {
        unsigned int CCP1CTS0 :1;
        unsigned int CCP1CTS1 :1;
        unsigned int CCP1CTS2 :1;
    };
} CCP1CAPbits_t;
extern volatile CCP1CAPbits_t CCP1CAPbits __attribute__((address(0x30F)));
# 11356 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned short CCPR2 __attribute__((address(0x310)));

__asm("CCPR2 equ 0310h");




extern volatile unsigned char CCPR2L __attribute__((address(0x310)));

__asm("CCPR2L equ 0310h");


typedef union {
    struct {
        unsigned int RL :8;
    };
} CCPR2Lbits_t;
extern volatile CCPR2Lbits_t CCPR2Lbits __attribute__((address(0x310)));
# 11383 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CCPR2H __attribute__((address(0x311)));

__asm("CCPR2H equ 0311h");


typedef union {
    struct {
        unsigned int RH :8;
    };
} CCPR2Hbits_t;
extern volatile CCPR2Hbits_t CCPR2Hbits __attribute__((address(0x311)));
# 11403 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CCP2CON __attribute__((address(0x312)));

__asm("CCP2CON equ 0312h");


typedef union {
    struct {
        unsigned int MODE :4;
        unsigned int FMT :1;
        unsigned int OUT :1;
        unsigned int :1;
        unsigned int EN :1;
    };
    struct {
        unsigned int MODE0 :1;
        unsigned int MODE1 :1;
        unsigned int MODE2 :1;
        unsigned int MODE3 :1;
    };
    struct {
        unsigned int CCP2MODE :4;
        unsigned int CCP2FMT :1;
        unsigned int CCP2OUT :1;
        unsigned int :1;
        unsigned int CCP2EN :1;
    };
    struct {
        unsigned int CCP2MODE0 :1;
        unsigned int CCP2MODE1 :1;
        unsigned int CCP2MODE2 :1;
        unsigned int CCP2MODE3 :1;
    };
} CCP2CONbits_t;
extern volatile CCP2CONbits_t CCP2CONbits __attribute__((address(0x312)));
# 11521 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CCP2CAP __attribute__((address(0x313)));

__asm("CCP2CAP equ 0313h");


typedef union {
    struct {
        unsigned int CTS :8;
    };
    struct {
        unsigned int CTS0 :1;
        unsigned int CTS1 :1;
        unsigned int CTS2 :1;
    };
    struct {
        unsigned int CCP2CTS :8;
    };
    struct {
        unsigned int CCP2CTS0 :1;
        unsigned int CCP2CTS1 :1;
        unsigned int CCP2CTS2 :1;
    };
} CCP2CAPbits_t;
extern volatile CCP2CAPbits_t CCP2CAPbits __attribute__((address(0x313)));
# 11589 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned short CCPR3 __attribute__((address(0x314)));

__asm("CCPR3 equ 0314h");




extern volatile unsigned char CCPR3L __attribute__((address(0x314)));

__asm("CCPR3L equ 0314h");


typedef union {
    struct {
        unsigned int RL :8;
    };
} CCPR3Lbits_t;
extern volatile CCPR3Lbits_t CCPR3Lbits __attribute__((address(0x314)));
# 11616 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CCPR3H __attribute__((address(0x315)));

__asm("CCPR3H equ 0315h");


typedef union {
    struct {
        unsigned int RH :8;
    };
} CCPR3Hbits_t;
extern volatile CCPR3Hbits_t CCPR3Hbits __attribute__((address(0x315)));
# 11636 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CCP3CON __attribute__((address(0x316)));

__asm("CCP3CON equ 0316h");


typedef union {
    struct {
        unsigned int MODE :4;
        unsigned int FMT :1;
        unsigned int OUT :1;
        unsigned int :1;
        unsigned int EN :1;
    };
    struct {
        unsigned int MODE0 :1;
        unsigned int MODE1 :1;
        unsigned int MODE2 :1;
        unsigned int MODE3 :1;
    };
    struct {
        unsigned int CCP3MODE :4;
        unsigned int CCP3FMT :1;
        unsigned int CCP3OUT :1;
        unsigned int :1;
        unsigned int CCP3EN :1;
    };
    struct {
        unsigned int CCP3MODE0 :1;
        unsigned int CCP3MODE1 :1;
        unsigned int CCP3MODE2 :1;
        unsigned int CCP3MODE3 :1;
    };
} CCP3CONbits_t;
extern volatile CCP3CONbits_t CCP3CONbits __attribute__((address(0x316)));
# 11754 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CCP3CAP __attribute__((address(0x317)));

__asm("CCP3CAP equ 0317h");


typedef union {
    struct {
        unsigned int CTS :8;
    };
    struct {
        unsigned int CTS0 :1;
        unsigned int CTS1 :1;
        unsigned int CTS2 :1;
    };
    struct {
        unsigned int CCP3CTS :8;
    };
    struct {
        unsigned int CCP3CTS0 :1;
        unsigned int CCP3CTS1 :1;
        unsigned int CCP3CTS2 :1;
    };
} CCP3CAPbits_t;
extern volatile CCP3CAPbits_t CCP3CAPbits __attribute__((address(0x317)));
# 11822 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned short CCPR4 __attribute__((address(0x318)));

__asm("CCPR4 equ 0318h");




extern volatile unsigned char CCPR4L __attribute__((address(0x318)));

__asm("CCPR4L equ 0318h");


typedef union {
    struct {
        unsigned int RL :8;
    };
} CCPR4Lbits_t;
extern volatile CCPR4Lbits_t CCPR4Lbits __attribute__((address(0x318)));
# 11849 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CCPR4H __attribute__((address(0x319)));

__asm("CCPR4H equ 0319h");


typedef union {
    struct {
        unsigned int RH :8;
    };
} CCPR4Hbits_t;
extern volatile CCPR4Hbits_t CCPR4Hbits __attribute__((address(0x319)));
# 11869 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CCP4CON __attribute__((address(0x31A)));

__asm("CCP4CON equ 031Ah");


typedef union {
    struct {
        unsigned int MODE :4;
        unsigned int FMT :1;
        unsigned int OUT :1;
        unsigned int :1;
        unsigned int EN :1;
    };
    struct {
        unsigned int MODE0 :1;
        unsigned int MODE1 :1;
        unsigned int MODE2 :1;
        unsigned int MODE3 :1;
    };
    struct {
        unsigned int CCP4MODE :4;
        unsigned int CCP4FMT :1;
        unsigned int CCP4OUT :1;
        unsigned int :1;
        unsigned int CCP4EN :1;
    };
    struct {
        unsigned int CCP4MODE0 :1;
        unsigned int CCP4MODE1 :1;
        unsigned int CCP4MODE2 :1;
        unsigned int CCP4MODE3 :1;
    };
} CCP4CONbits_t;
extern volatile CCP4CONbits_t CCP4CONbits __attribute__((address(0x31A)));
# 11987 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CCP4CAP __attribute__((address(0x31B)));

__asm("CCP4CAP equ 031Bh");


typedef union {
    struct {
        unsigned int CTS :8;
    };
    struct {
        unsigned int CTS0 :1;
        unsigned int CTS1 :1;
        unsigned int CTS2 :1;
    };
    struct {
        unsigned int CCP4CTS :8;
    };
    struct {
        unsigned int CCP4CTS0 :1;
        unsigned int CCP4CTS1 :1;
        unsigned int CCP4CTS2 :1;
    };
} CCP4CAPbits_t;
extern volatile CCP4CAPbits_t CCP4CAPbits __attribute__((address(0x31B)));
# 12055 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned short CCPR5 __attribute__((address(0x31C)));

__asm("CCPR5 equ 031Ch");




extern volatile unsigned char CCPR5L __attribute__((address(0x31C)));

__asm("CCPR5L equ 031Ch");


typedef union {
    struct {
        unsigned int RL :8;
    };
} CCPR5Lbits_t;
extern volatile CCPR5Lbits_t CCPR5Lbits __attribute__((address(0x31C)));
# 12082 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CCPR5H __attribute__((address(0x31D)));

__asm("CCPR5H equ 031Dh");


typedef union {
    struct {
        unsigned int RH :8;
    };
} CCPR5Hbits_t;
extern volatile CCPR5Hbits_t CCPR5Hbits __attribute__((address(0x31D)));
# 12102 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CCP5CON __attribute__((address(0x31E)));

__asm("CCP5CON equ 031Eh");


typedef union {
    struct {
        unsigned int MODE :4;
        unsigned int FMT :1;
        unsigned int OUT :1;
        unsigned int :1;
        unsigned int EN :1;
    };
    struct {
        unsigned int MODE0 :1;
        unsigned int MODE1 :1;
        unsigned int MODE2 :1;
        unsigned int MODE3 :1;
    };
    struct {
        unsigned int CCP5MODE :4;
        unsigned int CCP5FMT :1;
        unsigned int CCP5OUT :1;
        unsigned int :1;
        unsigned int CCP5EN :1;
    };
    struct {
        unsigned int CCP5MODE0 :1;
        unsigned int CCP5MODE1 :1;
        unsigned int CCP5MODE2 :1;
        unsigned int CCP5MODE3 :1;
    };
} CCP5CONbits_t;
extern volatile CCP5CONbits_t CCP5CONbits __attribute__((address(0x31E)));
# 12220 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CCP5CAP __attribute__((address(0x31F)));

__asm("CCP5CAP equ 031Fh");


typedef union {
    struct {
        unsigned int CTS :8;
    };
    struct {
        unsigned int CTS0 :1;
        unsigned int CTS1 :1;
        unsigned int CTS2 :1;
    };
    struct {
        unsigned int CCP5CTS :8;
    };
    struct {
        unsigned int CCP5CTS0 :1;
        unsigned int CCP5CTS1 :1;
        unsigned int CCP5CTS2 :1;
    };
} CCP5CAPbits_t;
extern volatile CCP5CAPbits_t CCP5CAPbits __attribute__((address(0x31F)));
# 12288 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned short PWM6DC __attribute__((address(0x38C)));

__asm("PWM6DC equ 038Ch");




extern volatile unsigned char PWM6DCL __attribute__((address(0x38C)));

__asm("PWM6DCL equ 038Ch");


typedef union {
    struct {
        unsigned int :6;
        unsigned int DC :2;
    };
    struct {
        unsigned int :6;
        unsigned int DC0 :1;
        unsigned int DC1 :1;
    };
    struct {
        unsigned int :6;
        unsigned int PWM6DC0 :1;
        unsigned int PWM6DC1 :1;
    };
    struct {
        unsigned int :6;
        unsigned int PWMPW0 :1;
        unsigned int PWMPW1 :1;
    };
} PWM6DCLbits_t;
extern volatile PWM6DCLbits_t PWM6DCLbits __attribute__((address(0x38C)));
# 12361 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char PWM6DCH __attribute__((address(0x38D)));

__asm("PWM6DCH equ 038Dh");


typedef union {
    struct {
        unsigned int DC :8;
    };
    struct {
        unsigned int DC2 :1;
        unsigned int DC3 :1;
        unsigned int DC4 :1;
        unsigned int DC5 :1;
        unsigned int DC6 :1;
        unsigned int DC7 :1;
        unsigned int DC8 :1;
        unsigned int DC9 :1;
    };
    struct {
        unsigned int PWM6DC2 :1;
        unsigned int PWM6DC3 :1;
        unsigned int PWM6DC4 :1;
        unsigned int PWM6DC5 :1;
        unsigned int PWM6DC6 :1;
        unsigned int PWM6DC7 :1;
        unsigned int PWM6DC8 :1;
        unsigned int PWM6DC9 :1;
    };
    struct {
        unsigned int PWMPW2 :1;
        unsigned int PWMPW3 :1;
        unsigned int PWMPW4 :1;
        unsigned int PWMPW5 :1;
        unsigned int PWMPW6 :1;
        unsigned int PWMPW7 :1;
        unsigned int PWMPW8 :1;
        unsigned int PWMPW9 :1;
    };
} PWM6DCHbits_t;
extern volatile PWM6DCHbits_t PWM6DCHbits __attribute__((address(0x38D)));
# 12531 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char PWM6CON __attribute__((address(0x38E)));

__asm("PWM6CON equ 038Eh");


typedef union {
    struct {
        unsigned int :4;
        unsigned int POL :1;
        unsigned int OUT :1;
        unsigned int :1;
        unsigned int EN :1;
    };
    struct {
        unsigned int :4;
        unsigned int PWM6POL :1;
        unsigned int PWM6OUT :1;
        unsigned int :1;
        unsigned int PWM6EN :1;
    };
} PWM6CONbits_t;
extern volatile PWM6CONbits_t PWM6CONbits __attribute__((address(0x38E)));
# 12587 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned short PWM7DC __attribute__((address(0x390)));

__asm("PWM7DC equ 0390h");




extern volatile unsigned char PWM7DCL __attribute__((address(0x390)));

__asm("PWM7DCL equ 0390h");


typedef union {
    struct {
        unsigned int :6;
        unsigned int DC :2;
    };
    struct {
        unsigned int :6;
        unsigned int DC0 :1;
        unsigned int DC1 :1;
    };
    struct {
        unsigned int :6;
        unsigned int PWM7DC0 :1;
        unsigned int PWM7DC1 :1;
    };
    struct {
        unsigned int :6;
        unsigned int PWMPW0 :1;
        unsigned int PWMPW1 :1;
    };
} PWM7DCLbits_t;
extern volatile PWM7DCLbits_t PWM7DCLbits __attribute__((address(0x390)));
# 12660 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char PWM7DCH __attribute__((address(0x391)));

__asm("PWM7DCH equ 0391h");


typedef union {
    struct {
        unsigned int DC :8;
    };
    struct {
        unsigned int DC2 :1;
        unsigned int DC3 :1;
        unsigned int DC4 :1;
        unsigned int DC5 :1;
        unsigned int DC6 :1;
        unsigned int DC7 :1;
        unsigned int DC8 :1;
        unsigned int DC9 :1;
    };
    struct {
        unsigned int PWM7DC2 :1;
        unsigned int PWM7DC3 :1;
        unsigned int PWM7DC4 :1;
        unsigned int PWM7DC5 :1;
        unsigned int PWM7DC6 :1;
        unsigned int PWM7DC7 :1;
        unsigned int PWM7DC8 :1;
        unsigned int PWM7DC9 :1;
    };
    struct {
        unsigned int PWMPW2 :1;
        unsigned int PWMPW3 :1;
        unsigned int PWMPW4 :1;
        unsigned int PWMPW5 :1;
        unsigned int PWMPW6 :1;
        unsigned int PWMPW7 :1;
        unsigned int PWMPW8 :1;
        unsigned int PWMPW9 :1;
    };
} PWM7DCHbits_t;
extern volatile PWM7DCHbits_t PWM7DCHbits __attribute__((address(0x391)));
# 12830 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char PWM7CON __attribute__((address(0x392)));

__asm("PWM7CON equ 0392h");


typedef union {
    struct {
        unsigned int :4;
        unsigned int POL :1;
        unsigned int OUT :1;
        unsigned int :1;
        unsigned int EN :1;
    };
    struct {
        unsigned int :4;
        unsigned int PWM7POL :1;
        unsigned int PWM7OUT :1;
        unsigned int :1;
        unsigned int PWM7EN :1;
    };
} PWM7CONbits_t;
extern volatile PWM7CONbits_t PWM7CONbits __attribute__((address(0x392)));
# 12886 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SCANLADRL __attribute__((address(0x40C)));

__asm("SCANLADRL equ 040Ch");


typedef union {
    struct {
        unsigned int LADRL :8;
    };
    struct {
        unsigned int LADR0 :1;
        unsigned int LADR1 :1;
        unsigned int LADR2 :1;
        unsigned int LADR3 :1;
        unsigned int LADR4 :1;
        unsigned int LADR5 :1;
        unsigned int LADR6 :1;
        unsigned int LADR7 :1;
    };
    struct {
        unsigned int SCANLADRL :8;
    };
    struct {
        unsigned int SCANLADR0 :1;
        unsigned int SCANLADR1 :1;
        unsigned int SCANLADR2 :1;
        unsigned int SCANLADR3 :1;
        unsigned int SCANLADR4 :1;
        unsigned int SCANLADR5 :1;
        unsigned int SCANLADR6 :1;
        unsigned int SCANLADR7 :1;
    };
} SCANLADRLbits_t;
extern volatile SCANLADRLbits_t SCANLADRLbits __attribute__((address(0x40C)));
# 13014 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SCANLADRH __attribute__((address(0x40D)));

__asm("SCANLADRH equ 040Dh");


typedef union {
    struct {
        unsigned int LADRH :8;
    };
    struct {
        unsigned int LADR8 :1;
        unsigned int LADR9 :1;
        unsigned int LADR10 :1;
        unsigned int LADR11 :1;
        unsigned int LADR12 :1;
        unsigned int LADR13 :1;
        unsigned int LADR14 :1;
        unsigned int LADR15 :1;
    };
    struct {
        unsigned int SCANLADRH :8;
    };
    struct {
        unsigned int SCANLADR8 :1;
        unsigned int SCANLADR9 :1;
        unsigned int SCANLADR10 :1;
        unsigned int SCANLADR11 :1;
        unsigned int SCANLADR12 :1;
        unsigned int SCANLADR13 :1;
        unsigned int SCANLADR14 :1;
        unsigned int SCANLADR15 :1;
    };
} SCANLADRHbits_t;
extern volatile SCANLADRHbits_t SCANLADRHbits __attribute__((address(0x40D)));
# 13142 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SCANHADRL __attribute__((address(0x40E)));

__asm("SCANHADRL equ 040Eh");


typedef union {
    struct {
        unsigned int HADRL :8;
    };
    struct {
        unsigned int HADR0 :1;
        unsigned int HADR1 :1;
        unsigned int HADR2 :1;
        unsigned int HADR3 :1;
        unsigned int HADR4 :1;
        unsigned int HADR5 :1;
        unsigned int HADR6 :1;
        unsigned int HADR7 :1;
    };
    struct {
        unsigned int SCANHADRL :8;
    };
    struct {
        unsigned int SCANHADR0 :1;
        unsigned int SCANHADR1 :1;
        unsigned int SCANHADR2 :1;
        unsigned int SCANHADR3 :1;
        unsigned int SCANHADR4 :1;
        unsigned int SCANHADR5 :1;
        unsigned int SCANHADR6 :1;
        unsigned int SCANHADR7 :1;
    };
} SCANHADRLbits_t;
extern volatile SCANHADRLbits_t SCANHADRLbits __attribute__((address(0x40E)));
# 13270 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SCANHADRH __attribute__((address(0x40F)));

__asm("SCANHADRH equ 040Fh");


typedef union {
    struct {
        unsigned int HADRH :8;
    };
    struct {
        unsigned int HADR8 :1;
        unsigned int HADR9 :1;
        unsigned int HADR10 :1;
        unsigned int HADR11 :1;
        unsigned int HADR12 :1;
        unsigned int HADR13 :1;
        unsigned int HADR14 :1;
        unsigned int HADR15 :1;
    };
    struct {
        unsigned int SCANHADRH :8;
    };
    struct {
        unsigned int SCANHADR8 :1;
        unsigned int SCANHADR9 :1;
        unsigned int SCANHADR10 :1;
        unsigned int SCANHADR11 :1;
        unsigned int SCANHADR12 :1;
        unsigned int SCANHADR13 :1;
        unsigned int SCANHADR14 :1;
        unsigned int SCANHADR15 :1;
    };
} SCANHADRHbits_t;
extern volatile SCANHADRHbits_t SCANHADRHbits __attribute__((address(0x40F)));
# 13398 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SCANCON0 __attribute__((address(0x410)));

__asm("SCANCON0 equ 0410h");


typedef union {
    struct {
        unsigned int MODE :2;
        unsigned int :1;
        unsigned int INTM :1;
        unsigned int INVALID :1;
        unsigned int BUSY :1;
        unsigned int SCANGO :1;
        unsigned int EN :1;
    };
    struct {
        unsigned int MODE0 :1;
        unsigned int MODE1 :1;
    };
    struct {
        unsigned int SCANMODE :2;
        unsigned int :1;
        unsigned int SCANINTM :1;
        unsigned int SCANINVALID :1;
        unsigned int SCANBUSY :1;
        unsigned int :1;
        unsigned int SCANEN :1;
    };
    struct {
        unsigned int SCANMODE0 :1;
        unsigned int SCANMODE1 :1;
    };
    struct {
        unsigned int :4;
        unsigned int DABORT :1;
    };
} SCANCON0bits_t;
extern volatile SCANCON0bits_t SCANCON0bits __attribute__((address(0x410)));
# 13520 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SCANTRIG __attribute__((address(0x411)));

__asm("SCANTRIG equ 0411h");


typedef union {
    struct {
        unsigned int TSEL :4;
    };
    struct {
        unsigned int TSEL0 :1;
        unsigned int TSEL1 :1;
        unsigned int TSEL2 :1;
        unsigned int TSEL3 :1;
    };
    struct {
        unsigned int SCANTSEL :4;
    };
    struct {
        unsigned int SCANTSEL0 :1;
        unsigned int SCANTSEL1 :1;
        unsigned int SCANTSEL2 :1;
        unsigned int SCANTSEL3 :1;
    };
} SCANTRIGbits_t;
extern volatile SCANTRIGbits_t SCANTRIGbits __attribute__((address(0x411)));
# 13600 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned short CRCDATA __attribute__((address(0x416)));

__asm("CRCDATA equ 0416h");




extern volatile unsigned char CRCDATL __attribute__((address(0x416)));

__asm("CRCDATL equ 0416h");


typedef union {
    struct {
        unsigned int DATA0 :1;
        unsigned int DATA1 :1;
        unsigned int DATA2 :1;
        unsigned int DATA3 :1;
        unsigned int DATA4 :1;
        unsigned int DATA5 :1;
        unsigned int DATA6 :1;
        unsigned int DATA7 :1;
    };
} CRCDATLbits_t;
extern volatile CRCDATLbits_t CRCDATLbits __attribute__((address(0x416)));
# 13669 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CRCDATH __attribute__((address(0x417)));

__asm("CRCDATH equ 0417h");


typedef union {
    struct {
        unsigned int DATA8 :1;
        unsigned int DATA9 :1;
        unsigned int DATA10 :1;
        unsigned int DATA11 :1;
        unsigned int DATA12 :1;
        unsigned int DATA13 :1;
        unsigned int DATA14 :1;
        unsigned int DATA15 :1;
    };
} CRCDATHbits_t;
extern volatile CRCDATHbits_t CRCDATHbits __attribute__((address(0x417)));
# 13731 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned short CRCACC __attribute__((address(0x418)));

__asm("CRCACC equ 0418h");




extern volatile unsigned char CRCACCL __attribute__((address(0x418)));

__asm("CRCACCL equ 0418h");


typedef union {
    struct {
        unsigned int ACC0 :1;
        unsigned int ACC1 :1;
        unsigned int ACC2 :1;
        unsigned int ACC3 :1;
        unsigned int ACC4 :1;
        unsigned int ACC5 :1;
        unsigned int ACC6 :1;
        unsigned int ACC7 :1;
    };
} CRCACCLbits_t;
extern volatile CRCACCLbits_t CRCACCLbits __attribute__((address(0x418)));
# 13800 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CRCACCH __attribute__((address(0x419)));

__asm("CRCACCH equ 0419h");


typedef union {
    struct {
        unsigned int ACC8 :1;
        unsigned int ACC9 :1;
        unsigned int ACC10 :1;
        unsigned int ACC11 :1;
        unsigned int ACC12 :1;
        unsigned int ACC13 :1;
        unsigned int ACC14 :1;
        unsigned int ACC15 :1;
    };
} CRCACCHbits_t;
extern volatile CRCACCHbits_t CRCACCHbits __attribute__((address(0x419)));
# 13862 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned short CRCSHFT __attribute__((address(0x41A)));

__asm("CRCSHFT equ 041Ah");




extern volatile unsigned char CRCSHIFTL __attribute__((address(0x41A)));

__asm("CRCSHIFTL equ 041Ah");


typedef union {
    struct {
        unsigned int SHFT0 :1;
        unsigned int SHFT1 :1;
        unsigned int SHFT2 :1;
        unsigned int SHFT3 :1;
        unsigned int SHFT4 :1;
        unsigned int SHFT5 :1;
        unsigned int SHFT6 :1;
        unsigned int SHFT7 :1;
    };
} CRCSHIFTLbits_t;
extern volatile CRCSHIFTLbits_t CRCSHIFTLbits __attribute__((address(0x41A)));
# 13931 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CRCSHIFTH __attribute__((address(0x41B)));

__asm("CRCSHIFTH equ 041Bh");


typedef union {
    struct {
        unsigned int SHFT8 :1;
        unsigned int SHFT9 :1;
        unsigned int SHFT10 :1;
        unsigned int SHFT11 :1;
        unsigned int SHFT12 :1;
        unsigned int SHFT13 :1;
        unsigned int SHFT14 :1;
        unsigned int SHFT15 :1;
    };
} CRCSHIFTHbits_t;
extern volatile CRCSHIFTHbits_t CRCSHIFTHbits __attribute__((address(0x41B)));
# 13993 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned short CRCXOR __attribute__((address(0x41C)));

__asm("CRCXOR equ 041Ch");




extern volatile unsigned char CRCXORL __attribute__((address(0x41C)));

__asm("CRCXORL equ 041Ch");


typedef union {
    struct {
        unsigned int :1;
        unsigned int X1 :1;
        unsigned int X2 :1;
        unsigned int X3 :1;
        unsigned int X4 :1;
        unsigned int X5 :1;
        unsigned int X6 :1;
        unsigned int X7 :1;
    };
} CRCXORLbits_t;
extern volatile CRCXORLbits_t CRCXORLbits __attribute__((address(0x41C)));
# 14057 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CRCXORH __attribute__((address(0x41D)));

__asm("CRCXORH equ 041Dh");


typedef union {
    struct {
        unsigned int X8 :1;
        unsigned int X9 :1;
        unsigned int X10 :1;
        unsigned int X11 :1;
        unsigned int X12 :1;
        unsigned int X13 :1;
        unsigned int X14 :1;
        unsigned int X15 :1;
    };
} CRCXORHbits_t;
extern volatile CRCXORHbits_t CRCXORHbits __attribute__((address(0x41D)));
# 14119 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CRCCON0 __attribute__((address(0x41E)));

__asm("CRCCON0 equ 041Eh");


typedef union {
    struct {
        unsigned int FULL :1;
        unsigned int SHIFTM :1;
        unsigned int :2;
        unsigned int ACCM :1;
        unsigned int BUSY :1;
        unsigned int CRCGO :1;
        unsigned int EN :1;
    };
    struct {
        unsigned int :7;
        unsigned int CRCEN :1;
    };
} CRCCON0bits_t;
extern volatile CRCCON0bits_t CRCCON0bits __attribute__((address(0x41E)));
# 14179 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CRCCON1 __attribute__((address(0x41F)));

__asm("CRCCON1 equ 041Fh");


typedef union {
    struct {
        unsigned int PLEN :4;
        unsigned int DLEN :4;
    };
    struct {
        unsigned int PLEN0 :1;
        unsigned int PLEN1 :1;
        unsigned int PLEN2 :1;
        unsigned int PLEN3 :1;
        unsigned int DLEN0 :1;
        unsigned int DLEN1 :1;
        unsigned int DLEN2 :1;
        unsigned int DLEN3 :1;
    };
} CRCCON1bits_t;
extern volatile CRCCON1bits_t CRCCON1bits __attribute__((address(0x41F)));
# 14256 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile __uint24 SMT1TMR __attribute__((address(0x48C)));


__asm("SMT1TMR equ 048Ch");




extern volatile unsigned char SMT1TMRL __attribute__((address(0x48C)));

__asm("SMT1TMRL equ 048Ch");


typedef union {
    struct {
        unsigned int TMR :8;
    };
    struct {
        unsigned int TMR0 :1;
        unsigned int TMR1 :1;
        unsigned int TMR2 :1;
        unsigned int TMR3 :1;
        unsigned int TMR4 :1;
        unsigned int TMR5 :1;
        unsigned int TMR6 :1;
        unsigned int TMR7 :1;
    };
    struct {
        unsigned int SMT1TMR :8;
    };
    struct {
        unsigned int SMT1TMR0 :1;
        unsigned int SMT1TMR1 :1;
        unsigned int SMT1TMR2 :1;
        unsigned int SMT1TMR3 :1;
        unsigned int SMT1TMR4 :1;
        unsigned int SMT1TMR5 :1;
        unsigned int SMT1TMR6 :1;
        unsigned int SMT1TMR7 :1;
    };
} SMT1TMRLbits_t;
extern volatile SMT1TMRLbits_t SMT1TMRLbits __attribute__((address(0x48C)));
# 14392 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SMT1TMRH __attribute__((address(0x48D)));

__asm("SMT1TMRH equ 048Dh");


typedef union {
    struct {
        unsigned int TMR :8;
    };
    struct {
        unsigned int TMR8 :1;
        unsigned int TMR9 :1;
        unsigned int TMR10 :1;
        unsigned int TMR11 :1;
        unsigned int TMR12 :1;
        unsigned int TMR13 :1;
        unsigned int TMR14 :1;
        unsigned int TMR15 :1;
    };
    struct {
        unsigned int SMT1TMR :8;
    };
    struct {
        unsigned int SMT1TMR8 :1;
        unsigned int SMT1TMR9 :1;
        unsigned int SMT1TMR10 :1;
        unsigned int SMT1TMR11 :1;
        unsigned int SMT1TMR12 :1;
        unsigned int SMT1TMR13 :1;
        unsigned int SMT1TMR14 :1;
        unsigned int SMT1TMR15 :1;
    };
} SMT1TMRHbits_t;
extern volatile SMT1TMRHbits_t SMT1TMRHbits __attribute__((address(0x48D)));
# 14520 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SMT1TMRU __attribute__((address(0x48E)));

__asm("SMT1TMRU equ 048Eh");


typedef union {
    struct {
        unsigned int TMR :8;
    };
    struct {
        unsigned int TMR16 :1;
        unsigned int TMR17 :1;
        unsigned int TMR18 :1;
        unsigned int TMR19 :1;
        unsigned int TMR20 :1;
        unsigned int TMR21 :1;
        unsigned int TMR22 :1;
        unsigned int TMR23 :1;
    };
    struct {
        unsigned int SMT1TMR :8;
    };
    struct {
        unsigned int SMT1TMR16 :1;
        unsigned int SMT1TMR17 :1;
        unsigned int SMT1TMR18 :1;
        unsigned int SMT1TMR19 :1;
        unsigned int SMT1TMR20 :1;
        unsigned int SMT1TMR21 :1;
        unsigned int SMT1TMR22 :1;
        unsigned int SMT1TMR23 :1;
    };
} SMT1TMRUbits_t;
extern volatile SMT1TMRUbits_t SMT1TMRUbits __attribute__((address(0x48E)));
# 14649 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile __uint24 SMT1CPR __attribute__((address(0x48F)));


__asm("SMT1CPR equ 048Fh");




extern volatile unsigned char SMT1CPRL __attribute__((address(0x48F)));

__asm("SMT1CPRL equ 048Fh");


typedef union {
    struct {
        unsigned int CPR :8;
    };
    struct {
        unsigned int CPR0 :1;
        unsigned int CPR1 :1;
        unsigned int CPR2 :1;
        unsigned int CPR3 :1;
        unsigned int CPR4 :1;
        unsigned int CPR5 :1;
        unsigned int CPR6 :1;
        unsigned int CPR7 :1;
    };
    struct {
        unsigned int SMT1CPR :8;
    };
    struct {
        unsigned int SMT1CPR0 :1;
        unsigned int SMT1CPR1 :1;
        unsigned int SMT1CPR2 :1;
        unsigned int SMT1CPR3 :1;
        unsigned int SMT1CPR4 :1;
        unsigned int SMT1CPR5 :1;
        unsigned int SMT1CPR6 :1;
        unsigned int SMT1CPR7 :1;
    };
} SMT1CPRLbits_t;
extern volatile SMT1CPRLbits_t SMT1CPRLbits __attribute__((address(0x48F)));
# 14785 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SMT1CPRH __attribute__((address(0x490)));

__asm("SMT1CPRH equ 0490h");


typedef union {
    struct {
        unsigned int CPR :8;
    };
    struct {
        unsigned int CPR8 :1;
        unsigned int CPR9 :1;
        unsigned int CPR10 :1;
        unsigned int CPR11 :1;
        unsigned int CPR12 :1;
        unsigned int CPR13 :1;
        unsigned int CPR14 :1;
        unsigned int CPR15 :1;
    };
    struct {
        unsigned int SMT1CPR8 :1;
        unsigned int SMT1CPR9 :1;
        unsigned int SMT1CPR10 :1;
        unsigned int SMT1CPR11 :1;
        unsigned int SMT1CPR12 :1;
        unsigned int SMT1CPR13 :1;
        unsigned int SMT1CPR14 :1;
        unsigned int SMT1CPR15 :1;
    };
    struct {
        unsigned int SMT1CPR :8;
    };
} SMT1CPRHbits_t;
extern volatile SMT1CPRHbits_t SMT1CPRHbits __attribute__((address(0x490)));
# 14913 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SMT1CPRU __attribute__((address(0x491)));

__asm("SMT1CPRU equ 0491h");


typedef union {
    struct {
        unsigned int CPR :8;
    };
    struct {
        unsigned int CPR16 :1;
        unsigned int CPR17 :1;
        unsigned int CPR18 :1;
        unsigned int CPR19 :1;
        unsigned int CPR20 :1;
        unsigned int CPR21 :1;
        unsigned int CPR22 :1;
        unsigned int CPR23 :1;
    };
    struct {
        unsigned int SMT1CPR16 :1;
        unsigned int SMT1CPR17 :1;
        unsigned int SMT1CPR18 :1;
        unsigned int SMT1CPR19 :1;
        unsigned int SMT1CPR20 :1;
        unsigned int SMT1CPR21 :1;
        unsigned int SMT1CPR22 :1;
        unsigned int SMT1CPR23 :1;
    };
    struct {
        unsigned int SMT1CPR :8;
    };
} SMT1CPRUbits_t;
extern volatile SMT1CPRUbits_t SMT1CPRUbits __attribute__((address(0x491)));
# 15042 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile __uint24 SMT1CPW __attribute__((address(0x492)));


__asm("SMT1CPW equ 0492h");




extern volatile unsigned char SMT1CPWL __attribute__((address(0x492)));

__asm("SMT1CPWL equ 0492h");


typedef union {
    struct {
        unsigned int CPW :8;
    };
    struct {
        unsigned int CPW0 :1;
        unsigned int CPW1 :1;
        unsigned int CPW2 :1;
        unsigned int CPW3 :1;
        unsigned int CPW4 :1;
        unsigned int CPW5 :1;
        unsigned int CPW6 :1;
        unsigned int CPW7 :1;
    };
    struct {
        unsigned int SMT1CPW :8;
    };
    struct {
        unsigned int SMT1CPW0 :1;
        unsigned int SMT1CPW1 :1;
        unsigned int SMT1CPW2 :1;
        unsigned int SMT1CPW3 :1;
        unsigned int SMT1CPW4 :1;
        unsigned int SMT1CPW5 :1;
        unsigned int SMT1CPW6 :1;
        unsigned int SMT1CPW7 :1;
    };
} SMT1CPWLbits_t;
extern volatile SMT1CPWLbits_t SMT1CPWLbits __attribute__((address(0x492)));
# 15178 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SMT1CPWH __attribute__((address(0x493)));

__asm("SMT1CPWH equ 0493h");


typedef union {
    struct {
        unsigned int CPW :8;
    };
    struct {
        unsigned int CPW8 :1;
        unsigned int CPW9 :1;
        unsigned int CPW10 :1;
        unsigned int CPW11 :1;
        unsigned int CPW12 :1;
        unsigned int CPW13 :1;
        unsigned int CPW14 :1;
        unsigned int CPW15 :1;
    };
    struct {
        unsigned int SMT1CPW :8;
    };
    struct {
        unsigned int SMT1CPW8 :1;
        unsigned int SMT1CPW9 :1;
        unsigned int SMT1CPW10 :1;
        unsigned int SMT1CPW11 :1;
        unsigned int SMT1CPW12 :1;
        unsigned int SMT1CPW13 :1;
        unsigned int SMT1CPW14 :1;
        unsigned int SMT1CPW15 :1;
    };
} SMT1CPWHbits_t;
extern volatile SMT1CPWHbits_t SMT1CPWHbits __attribute__((address(0x493)));
# 15306 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SMT1CPWU __attribute__((address(0x494)));

__asm("SMT1CPWU equ 0494h");


typedef union {
    struct {
        unsigned int CPW :8;
    };
    struct {
        unsigned int CPW16 :1;
        unsigned int CPW17 :1;
        unsigned int CPW18 :1;
        unsigned int CPW19 :1;
        unsigned int CPW20 :1;
        unsigned int CPW21 :1;
        unsigned int CPW22 :1;
        unsigned int CPW23 :1;
    };
    struct {
        unsigned int SMT1CPW :8;
    };
    struct {
        unsigned int SMT1CPW16 :1;
        unsigned int SMT1CPW17 :1;
        unsigned int SMT1CPW18 :1;
        unsigned int SMT1CPW19 :1;
        unsigned int SMT1CPW20 :1;
        unsigned int SMT1CPW21 :1;
        unsigned int SMT1CPW22 :1;
        unsigned int SMT1CPW23 :1;
    };
} SMT1CPWUbits_t;
extern volatile SMT1CPWUbits_t SMT1CPWUbits __attribute__((address(0x494)));
# 15435 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile __uint24 SMT1PR __attribute__((address(0x495)));


__asm("SMT1PR equ 0495h");




extern volatile unsigned char SMT1PRL __attribute__((address(0x495)));

__asm("SMT1PRL equ 0495h");


typedef union {
    struct {
        unsigned int PR :8;
    };
    struct {
        unsigned int PR0 :1;
        unsigned int PR1 :1;
        unsigned int PR2 :1;
        unsigned int PR3 :1;
        unsigned int PR4 :1;
        unsigned int PR5 :1;
        unsigned int PR6 :1;
        unsigned int PR7 :1;
    };
    struct {
        unsigned int SMT1PR :8;
    };
    struct {
        unsigned int SMT1PR0 :1;
        unsigned int SMT1PR1 :1;
        unsigned int SMT1PR2 :1;
        unsigned int SMT1PR3 :1;
        unsigned int SMT1PR4 :1;
        unsigned int SMT1PR5 :1;
        unsigned int SMT1PR6 :1;
        unsigned int SMT1PR7 :1;
    };
} SMT1PRLbits_t;
extern volatile SMT1PRLbits_t SMT1PRLbits __attribute__((address(0x495)));
# 15571 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SMT1PRH __attribute__((address(0x496)));

__asm("SMT1PRH equ 0496h");


typedef union {
    struct {
        unsigned int PR :8;
    };
    struct {
        unsigned int PR8 :1;
        unsigned int PR9 :1;
        unsigned int PR10 :1;
        unsigned int PR11 :1;
        unsigned int PR12 :1;
        unsigned int PR13 :1;
        unsigned int PR14 :1;
        unsigned int PR15 :1;
    };
    struct {
        unsigned int SMT1PR :8;
    };
    struct {
        unsigned int SMT1PR8 :1;
        unsigned int SMT1PR9 :1;
        unsigned int SMT1PR10 :1;
        unsigned int SMT1PR11 :1;
        unsigned int SMT1PR12 :1;
        unsigned int SMT1PR13 :1;
        unsigned int SMT1PR14 :1;
        unsigned int SMT1PR15 :1;
    };
} SMT1PRHbits_t;
extern volatile SMT1PRHbits_t SMT1PRHbits __attribute__((address(0x496)));
# 15699 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SMT1PRU __attribute__((address(0x497)));

__asm("SMT1PRU equ 0497h");


typedef union {
    struct {
        unsigned int PR :8;
    };
    struct {
        unsigned int PR16 :1;
        unsigned int PR17 :1;
        unsigned int PR18 :1;
        unsigned int PR19 :1;
        unsigned int PR20 :1;
        unsigned int PR21 :1;
        unsigned int PR22 :1;
        unsigned int PR23 :1;
    };
    struct {
        unsigned int SMT1PR :8;
    };
    struct {
        unsigned int SMT1PR16 :1;
        unsigned int SMT1PR17 :1;
        unsigned int SMT1PR18 :1;
        unsigned int SMT1PR19 :1;
        unsigned int SMT1PR20 :1;
        unsigned int SMT1PR21 :1;
        unsigned int SMT1PR22 :1;
        unsigned int SMT1PR23 :1;
    };
} SMT1PRUbits_t;
extern volatile SMT1PRUbits_t SMT1PRUbits __attribute__((address(0x497)));
# 15827 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SMT1CON0 __attribute__((address(0x498)));

__asm("SMT1CON0 equ 0498h");


typedef union {
    struct {
        unsigned int PS :2;
        unsigned int CPOL :1;
        unsigned int SPOL :1;
        unsigned int WPOL :1;
        unsigned int STP :1;
        unsigned int :1;
        unsigned int EN :1;
    };
    struct {
        unsigned int SMT1PS :2;
        unsigned int SMT1CPOL :1;
        unsigned int SMT1SPOL :1;
        unsigned int SMT1WOL :1;
        unsigned int SMT1STP :1;
        unsigned int :1;
        unsigned int SMT1EN :1;
    };
    struct {
        unsigned int PS0 :1;
        unsigned int PS1 :1;
    };
    struct {
        unsigned int SMT1PS0 :1;
        unsigned int SMT1PS1 :1;
    };
} SMT1CON0bits_t;
extern volatile SMT1CON0bits_t SMT1CON0bits __attribute__((address(0x498)));
# 15945 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SMT1CON1 __attribute__((address(0x499)));

__asm("SMT1CON1 equ 0499h");


typedef union {
    struct {
        unsigned int MODE :4;
        unsigned int :2;
        unsigned int REPEAT :1;
        unsigned int GO :1;
    };
    struct {
        unsigned int MODE0 :1;
        unsigned int MODE1 :1;
        unsigned int MODE2 :1;
        unsigned int MODE3 :1;
        unsigned int :2;
        unsigned int SMT1REPEAT :1;
        unsigned int SMT1GO :1;
    };
    struct {
        unsigned int SMT1MODE :4;
    };
} SMT1CON1bits_t;
extern volatile SMT1CON1bits_t SMT1CON1bits __attribute__((address(0x499)));
# 16025 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SMT1STAT __attribute__((address(0x49A)));

__asm("SMT1STAT equ 049Ah");


typedef union {
    struct {
        unsigned int AS :1;
        unsigned int WS :1;
        unsigned int TS :1;
        unsigned int :2;
        unsigned int RST :1;
        unsigned int CPWUP :1;
        unsigned int CPRUP :1;
    };
    struct {
        unsigned int SMT1AS :1;
        unsigned int SMT1WS :1;
        unsigned int SMT1TS :1;
        unsigned int :2;
        unsigned int SMT1RESET :1;
        unsigned int SMT1CPWUP :1;
        unsigned int SMT1CPRUP :1;
    };
    struct {
        unsigned int :5;
        unsigned int SMT1RST :1;
    };
} SMT1STATbits_t;
extern volatile SMT1STATbits_t SMT1STATbits __attribute__((address(0x49A)));
# 16124 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SMT1CLK __attribute__((address(0x49B)));

__asm("SMT1CLK equ 049Bh");


typedef union {
    struct {
        unsigned int CSEL :3;
    };
    struct {
        unsigned int CSEL0 :1;
        unsigned int CSEL1 :1;
        unsigned int CSEL2 :1;
    };
    struct {
        unsigned int SMT1CSEL :3;
    };
    struct {
        unsigned int SMT1CSEL0 :1;
        unsigned int SMT1CSEL1 :1;
        unsigned int SMT1CSEL2 :1;
    };
} SMT1CLKbits_t;
extern volatile SMT1CLKbits_t SMT1CLKbits __attribute__((address(0x49B)));
# 16192 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SMT1SIG __attribute__((address(0x49C)));

__asm("SMT1SIG equ 049Ch");


typedef union {
    struct {
        unsigned int SSEL :5;
    };
    struct {
        unsigned int SSEL0 :1;
        unsigned int SSEL1 :1;
        unsigned int SSEL2 :1;
        unsigned int SSEL3 :1;
        unsigned int SSEL4 :1;
    };
    struct {
        unsigned int SMT1SSEL :5;
    };
    struct {
        unsigned int SMT1SSEL0 :1;
        unsigned int SMT1SSEL1 :1;
        unsigned int SMT1SSEL2 :1;
        unsigned int SMT1SSEL3 :1;
        unsigned int SMT1SSEL4 :1;
    };
} SMT1SIGbits_t;
extern volatile SMT1SIGbits_t SMT1SIGbits __attribute__((address(0x49C)));
# 16284 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SMT1WIN __attribute__((address(0x49D)));

__asm("SMT1WIN equ 049Dh");


typedef union {
    struct {
        unsigned int WSEL :5;
    };
    struct {
        unsigned int WSEL0 :1;
        unsigned int WSEL1 :1;
        unsigned int WSEL2 :1;
        unsigned int WSEL3 :1;
        unsigned int WSEL4 :1;
    };
    struct {
        unsigned int SMT1WSEL :5;
    };
    struct {
        unsigned int SMT1WSEL0 :1;
        unsigned int SMT1WSEL1 :1;
        unsigned int SMT1WSEL2 :1;
        unsigned int SMT1WSEL3 :1;
        unsigned int SMT1WSEL4 :1;
    };
} SMT1WINbits_t;
extern volatile SMT1WINbits_t SMT1WINbits __attribute__((address(0x49D)));
# 16377 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile __uint24 SMT2TMR __attribute__((address(0x50C)));


__asm("SMT2TMR equ 050Ch");




extern volatile unsigned char SMT2TMRL __attribute__((address(0x50C)));

__asm("SMT2TMRL equ 050Ch");


typedef union {
    struct {
        unsigned int TMR :8;
    };
    struct {
        unsigned int TMR0 :1;
        unsigned int TMR1 :1;
        unsigned int TMR2 :1;
        unsigned int TMR3 :1;
        unsigned int TMR4 :1;
        unsigned int TMR5 :1;
        unsigned int TMR6 :1;
        unsigned int TMR7 :1;
    };
    struct {
        unsigned int SMT2TMR :8;
    };
    struct {
        unsigned int SMT2TMR0 :1;
        unsigned int SMT2TMR1 :1;
        unsigned int SMT2TMR2 :1;
        unsigned int SMT2TMR3 :1;
        unsigned int SMT2TMR4 :1;
        unsigned int SMT2TMR5 :1;
        unsigned int SMT2TMR6 :1;
        unsigned int SMT2TMR7 :1;
    };
} SMT2TMRLbits_t;
extern volatile SMT2TMRLbits_t SMT2TMRLbits __attribute__((address(0x50C)));
# 16513 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SMT2TMRH __attribute__((address(0x50D)));

__asm("SMT2TMRH equ 050Dh");


typedef union {
    struct {
        unsigned int TMR :8;
    };
    struct {
        unsigned int TMR8 :1;
        unsigned int TMR9 :1;
        unsigned int TMR10 :1;
        unsigned int TMR11 :1;
        unsigned int TMR12 :1;
        unsigned int TMR13 :1;
        unsigned int TMR14 :1;
        unsigned int TMR15 :1;
    };
    struct {
        unsigned int SMT2TMR :8;
    };
    struct {
        unsigned int SMT2TMR8 :1;
        unsigned int SMT2TMR9 :1;
        unsigned int SMT2TMR10 :1;
        unsigned int SMT2TMR11 :1;
        unsigned int SMT2TMR12 :1;
        unsigned int SMT2TMR13 :1;
        unsigned int SMT2TMR14 :1;
        unsigned int SMT2TMR15 :1;
    };
} SMT2TMRHbits_t;
extern volatile SMT2TMRHbits_t SMT2TMRHbits __attribute__((address(0x50D)));
# 16641 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SMT2TMRU __attribute__((address(0x50E)));

__asm("SMT2TMRU equ 050Eh");


typedef union {
    struct {
        unsigned int TMR :8;
    };
    struct {
        unsigned int TMR16 :1;
        unsigned int TMR17 :1;
        unsigned int TMR18 :1;
        unsigned int TMR19 :1;
        unsigned int TMR20 :1;
        unsigned int TMR21 :1;
        unsigned int TMR22 :1;
        unsigned int TMR23 :1;
    };
    struct {
        unsigned int SMT2TMR :8;
    };
    struct {
        unsigned int SMT2TMR16 :1;
        unsigned int SMT2TMR17 :1;
        unsigned int SMT2TMR18 :1;
        unsigned int SMT2TMR19 :1;
        unsigned int SMT2TMR20 :1;
        unsigned int SMT2TMR21 :1;
        unsigned int SMT2TMR22 :1;
        unsigned int SMT2TMR23 :1;
    };
} SMT2TMRUbits_t;
extern volatile SMT2TMRUbits_t SMT2TMRUbits __attribute__((address(0x50E)));
# 16770 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile __uint24 SMT2CPR __attribute__((address(0x50F)));


__asm("SMT2CPR equ 050Fh");




extern volatile unsigned char SMT2CPRL __attribute__((address(0x50F)));

__asm("SMT2CPRL equ 050Fh");


typedef union {
    struct {
        unsigned int CPR :8;
    };
    struct {
        unsigned int CPR0 :1;
        unsigned int CPR1 :1;
        unsigned int CPR2 :1;
        unsigned int CPR3 :1;
        unsigned int CPR4 :1;
        unsigned int CPR5 :1;
        unsigned int CPR6 :1;
        unsigned int CPR7 :1;
    };
    struct {
        unsigned int SMT2CPR :8;
    };
    struct {
        unsigned int SMT2CPR0 :1;
        unsigned int SMT2CPR1 :1;
        unsigned int SMT2CPR2 :1;
        unsigned int SMT2CPR3 :1;
        unsigned int SMT2CPR4 :1;
        unsigned int SMT2CPR5 :1;
        unsigned int SMT2CPR6 :1;
        unsigned int SMT2CPR7 :1;
    };
} SMT2CPRLbits_t;
extern volatile SMT2CPRLbits_t SMT2CPRLbits __attribute__((address(0x50F)));
# 16906 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SMT2CPRH __attribute__((address(0x510)));

__asm("SMT2CPRH equ 0510h");


typedef union {
    struct {
        unsigned int CPR :8;
    };
    struct {
        unsigned int CPR8 :1;
        unsigned int CPR9 :1;
        unsigned int CPR10 :1;
        unsigned int CPR11 :1;
        unsigned int CPR12 :1;
        unsigned int CPR13 :1;
        unsigned int CPR14 :1;
        unsigned int CPR15 :1;
    };
    struct {
        unsigned int SMT2CPR8 :1;
        unsigned int SMT2CPR9 :1;
        unsigned int SMT2CPR10 :1;
        unsigned int SMT2CPR11 :1;
        unsigned int SMT2CPR12 :1;
        unsigned int SMT2CPR13 :1;
        unsigned int SMT2CPR14 :1;
        unsigned int SMT2CPR15 :1;
    };
    struct {
        unsigned int SMT2CPR :8;
    };
} SMT2CPRHbits_t;
extern volatile SMT2CPRHbits_t SMT2CPRHbits __attribute__((address(0x510)));
# 17034 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SMT2CPRU __attribute__((address(0x511)));

__asm("SMT2CPRU equ 0511h");


typedef union {
    struct {
        unsigned int CPR :8;
    };
    struct {
        unsigned int CPR16 :1;
        unsigned int CPR17 :1;
        unsigned int CPR18 :1;
        unsigned int CPR19 :1;
        unsigned int CPR20 :1;
        unsigned int CPR21 :1;
        unsigned int CPR22 :1;
        unsigned int CPR23 :1;
    };
    struct {
        unsigned int SMT2CPR16 :1;
        unsigned int SMT2CPR17 :1;
        unsigned int SMT2CPR18 :1;
        unsigned int SMT2CPR19 :1;
        unsigned int SMT2CPR20 :1;
        unsigned int SMT2CPR21 :1;
        unsigned int SMT2CPR22 :1;
        unsigned int SMT2CPR23 :1;
    };
    struct {
        unsigned int SMT2CPR :8;
    };
} SMT2CPRUbits_t;
extern volatile SMT2CPRUbits_t SMT2CPRUbits __attribute__((address(0x511)));
# 17163 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile __uint24 SMT2CPW __attribute__((address(0x512)));


__asm("SMT2CPW equ 0512h");




extern volatile unsigned char SMT2CPWL __attribute__((address(0x512)));

__asm("SMT2CPWL equ 0512h");


typedef union {
    struct {
        unsigned int CPW :8;
    };
    struct {
        unsigned int CPW0 :1;
        unsigned int CPW1 :1;
        unsigned int CPW2 :1;
        unsigned int CPW3 :1;
        unsigned int CPW4 :1;
        unsigned int CPW5 :1;
        unsigned int CPW6 :1;
        unsigned int CPW7 :1;
    };
    struct {
        unsigned int SMT2CPW :8;
    };
    struct {
        unsigned int SMT2CPW0 :1;
        unsigned int SMT2CPW1 :1;
        unsigned int SMT2CPW2 :1;
        unsigned int SMT2CPW3 :1;
        unsigned int SMT2CPW4 :1;
        unsigned int SMT2CPW5 :1;
        unsigned int SMT2CPW6 :1;
        unsigned int SMT2CPW7 :1;
    };
} SMT2CPWLbits_t;
extern volatile SMT2CPWLbits_t SMT2CPWLbits __attribute__((address(0x512)));
# 17299 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SMT2CPWH __attribute__((address(0x513)));

__asm("SMT2CPWH equ 0513h");


typedef union {
    struct {
        unsigned int CPW :8;
    };
    struct {
        unsigned int CPW8 :1;
        unsigned int CPW9 :1;
        unsigned int CPW10 :1;
        unsigned int CPW11 :1;
        unsigned int CPW12 :1;
        unsigned int CPW13 :1;
        unsigned int CPW14 :1;
        unsigned int CPW15 :1;
    };
    struct {
        unsigned int SMT2CPW :8;
    };
    struct {
        unsigned int SMT2CPW8 :1;
        unsigned int SMT2CPW9 :1;
        unsigned int SMT2CPW10 :1;
        unsigned int SMT2CPW11 :1;
        unsigned int SMT2CPW12 :1;
        unsigned int SMT2CPW13 :1;
        unsigned int SMT2CPW14 :1;
        unsigned int SMT2CPW15 :1;
    };
} SMT2CPWHbits_t;
extern volatile SMT2CPWHbits_t SMT2CPWHbits __attribute__((address(0x513)));
# 17427 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SMT2CPWU __attribute__((address(0x514)));

__asm("SMT2CPWU equ 0514h");


typedef union {
    struct {
        unsigned int CPW :8;
    };
    struct {
        unsigned int CPW16 :1;
        unsigned int CPW17 :1;
        unsigned int CPW18 :1;
        unsigned int CPW19 :1;
        unsigned int CPW20 :1;
        unsigned int CPW21 :1;
        unsigned int CPW22 :1;
        unsigned int CPW23 :1;
    };
    struct {
        unsigned int SMT2CPW :8;
    };
    struct {
        unsigned int SMT2CPW16 :1;
        unsigned int SMT2CPW17 :1;
        unsigned int SMT2CPW18 :1;
        unsigned int SMT2CPW19 :1;
        unsigned int SMT2CPW20 :1;
        unsigned int SMT2CPW21 :1;
        unsigned int SMT2CPW22 :1;
        unsigned int SMT2CPW23 :1;
    };
} SMT2CPWUbits_t;
extern volatile SMT2CPWUbits_t SMT2CPWUbits __attribute__((address(0x514)));
# 17556 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile __uint24 SMT2PR __attribute__((address(0x515)));


__asm("SMT2PR equ 0515h");




extern volatile unsigned char SMT2PRL __attribute__((address(0x515)));

__asm("SMT2PRL equ 0515h");


typedef union {
    struct {
        unsigned int PR :8;
    };
    struct {
        unsigned int PR0 :1;
        unsigned int PR1 :1;
        unsigned int PR2 :1;
        unsigned int PR3 :1;
        unsigned int PR4 :1;
        unsigned int PR5 :1;
        unsigned int PR6 :1;
        unsigned int PR7 :1;
    };
    struct {
        unsigned int SMT2PR :8;
    };
    struct {
        unsigned int SMT2PR0 :1;
        unsigned int SMT2PR1 :1;
        unsigned int SMT2PR2 :1;
        unsigned int SMT2PR3 :1;
        unsigned int SMT2PR4 :1;
        unsigned int SMT2PR5 :1;
        unsigned int SMT2PR6 :1;
        unsigned int SMT2PR7 :1;
    };
} SMT2PRLbits_t;
extern volatile SMT2PRLbits_t SMT2PRLbits __attribute__((address(0x515)));
# 17692 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SMT2PRH __attribute__((address(0x516)));

__asm("SMT2PRH equ 0516h");


typedef union {
    struct {
        unsigned int PR :8;
    };
    struct {
        unsigned int PR8 :1;
        unsigned int PR9 :1;
        unsigned int PR10 :1;
        unsigned int PR11 :1;
        unsigned int PR12 :1;
        unsigned int PR13 :1;
        unsigned int PR14 :1;
        unsigned int PR15 :1;
    };
    struct {
        unsigned int SMT2PR :8;
    };
    struct {
        unsigned int SMT2PR8 :1;
        unsigned int SMT2PR9 :1;
        unsigned int SMT2PR10 :1;
        unsigned int SMT2PR11 :1;
        unsigned int SMT2PR12 :1;
        unsigned int SMT2PR13 :1;
        unsigned int SMT2PR14 :1;
        unsigned int SMT2PR15 :1;
    };
} SMT2PRHbits_t;
extern volatile SMT2PRHbits_t SMT2PRHbits __attribute__((address(0x516)));
# 17820 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SMT2PRU __attribute__((address(0x517)));

__asm("SMT2PRU equ 0517h");


typedef union {
    struct {
        unsigned int PR :8;
    };
    struct {
        unsigned int PR16 :1;
        unsigned int PR17 :1;
        unsigned int PR18 :1;
        unsigned int PR19 :1;
        unsigned int PR20 :1;
        unsigned int PR21 :1;
        unsigned int PR22 :1;
        unsigned int PR23 :1;
    };
    struct {
        unsigned int SMT2PR :8;
    };
    struct {
        unsigned int SMT2PR16 :1;
        unsigned int SMT2PR17 :1;
        unsigned int SMT2PR18 :1;
        unsigned int SMT2PR19 :1;
        unsigned int SMT2PR20 :1;
        unsigned int SMT2PR21 :1;
        unsigned int SMT2PR22 :1;
        unsigned int SMT2PR23 :1;
    };
} SMT2PRUbits_t;
extern volatile SMT2PRUbits_t SMT2PRUbits __attribute__((address(0x517)));
# 17948 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SMT2CON0 __attribute__((address(0x518)));

__asm("SMT2CON0 equ 0518h");


typedef union {
    struct {
        unsigned int PS :2;
        unsigned int CPOL :1;
        unsigned int SPOL :1;
        unsigned int WPOL :1;
        unsigned int STP :1;
        unsigned int :1;
        unsigned int EN :1;
    };
    struct {
        unsigned int SMT2PS :2;
        unsigned int SMT2CPOL :1;
        unsigned int SMT2SPOL :1;
        unsigned int SMT2WOL :1;
        unsigned int SMT2STP :1;
        unsigned int :1;
        unsigned int SMT2EN :1;
    };
    struct {
        unsigned int PS0 :1;
        unsigned int PS1 :1;
    };
    struct {
        unsigned int SMT2PS0 :1;
        unsigned int SMT2PS1 :1;
    };
} SMT2CON0bits_t;
extern volatile SMT2CON0bits_t SMT2CON0bits __attribute__((address(0x518)));
# 18066 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SMT2CON1 __attribute__((address(0x519)));

__asm("SMT2CON1 equ 0519h");


typedef union {
    struct {
        unsigned int MODE :4;
        unsigned int :2;
        unsigned int REPEAT :1;
        unsigned int GO :1;
    };
    struct {
        unsigned int MODE0 :1;
        unsigned int MODE1 :1;
        unsigned int MODE2 :1;
        unsigned int MODE3 :1;
        unsigned int :2;
        unsigned int SMT2REPEAT :1;
        unsigned int SMT2GO :1;
    };
    struct {
        unsigned int SMT2MODE :4;
    };
} SMT2CON1bits_t;
extern volatile SMT2CON1bits_t SMT2CON1bits __attribute__((address(0x519)));
# 18146 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SMT2STAT __attribute__((address(0x51A)));

__asm("SMT2STAT equ 051Ah");


typedef union {
    struct {
        unsigned int AS :1;
        unsigned int WS :1;
        unsigned int TS :1;
        unsigned int :2;
        unsigned int RST :1;
        unsigned int CPWUP :1;
        unsigned int CPRUP :1;
    };
    struct {
        unsigned int SMT2AS :1;
        unsigned int SMT2WS :1;
        unsigned int SMT2TS :1;
        unsigned int :2;
        unsigned int SMT2RESET :1;
        unsigned int SMT2CPWUP :1;
        unsigned int SMT2CPRUP :1;
    };
    struct {
        unsigned int :5;
        unsigned int SMT2RST :1;
    };
} SMT2STATbits_t;
extern volatile SMT2STATbits_t SMT2STATbits __attribute__((address(0x51A)));
# 18245 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SMT2CLK __attribute__((address(0x51B)));

__asm("SMT2CLK equ 051Bh");


typedef union {
    struct {
        unsigned int CSEL :3;
    };
    struct {
        unsigned int CSEL0 :1;
        unsigned int CSEL1 :1;
        unsigned int CSEL2 :1;
    };
    struct {
        unsigned int SMT2CSEL :3;
    };
    struct {
        unsigned int SMT2CSEL0 :1;
        unsigned int SMT2CSEL1 :1;
        unsigned int SMT2CSEL2 :1;
    };
} SMT2CLKbits_t;
extern volatile SMT2CLKbits_t SMT2CLKbits __attribute__((address(0x51B)));
# 18313 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SMT2SIG __attribute__((address(0x51C)));

__asm("SMT2SIG equ 051Ch");


typedef union {
    struct {
        unsigned int SSEL :5;
    };
    struct {
        unsigned int SSEL0 :1;
        unsigned int SSEL1 :1;
        unsigned int SSEL2 :1;
        unsigned int SSEL3 :1;
        unsigned int SSEL4 :1;
    };
    struct {
        unsigned int SMT2SSEL :5;
    };
    struct {
        unsigned int SMT2SSEL0 :1;
        unsigned int SMT2SSEL1 :1;
        unsigned int SMT2SSEL2 :1;
        unsigned int SMT2SSEL3 :1;
        unsigned int SMT2SSEL4 :1;
    };
} SMT2SIGbits_t;
extern volatile SMT2SIGbits_t SMT2SIGbits __attribute__((address(0x51C)));
# 18405 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SMT2WIN __attribute__((address(0x51D)));

__asm("SMT2WIN equ 051Dh");


typedef union {
    struct {
        unsigned int WSEL :5;
    };
    struct {
        unsigned int WSEL0 :1;
        unsigned int WSEL1 :1;
        unsigned int WSEL2 :1;
        unsigned int WSEL3 :1;
        unsigned int WSEL4 :1;
    };
    struct {
        unsigned int SMT2WSEL :5;
    };
    struct {
        unsigned int SMT2WSEL0 :1;
        unsigned int SMT2WSEL1 :1;
        unsigned int SMT2WSEL2 :1;
        unsigned int SMT2WSEL3 :1;
        unsigned int SMT2WSEL4 :1;
    };
} SMT2WINbits_t;
extern volatile SMT2WINbits_t SMT2WINbits __attribute__((address(0x51D)));
# 18498 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile __uint24 NCO1ACC __attribute__((address(0x58C)));


__asm("NCO1ACC equ 058Ch");




extern volatile unsigned char NCO1ACCL __attribute__((address(0x58C)));

__asm("NCO1ACCL equ 058Ch");


typedef union {
    struct {
        unsigned int NCO1ACC0 :1;
        unsigned int NCO1ACC1 :1;
        unsigned int NCO1ACC2 :1;
        unsigned int NCO1ACC3 :1;
        unsigned int NCO1ACC4 :1;
        unsigned int NCO1ACC5 :1;
        unsigned int NCO1ACC6 :1;
        unsigned int NCO1ACC7 :1;
    };
    struct {
        unsigned int NCO1ACC :8;
    };
} NCO1ACCLbits_t;
extern volatile NCO1ACCLbits_t NCO1ACCLbits __attribute__((address(0x58C)));
# 18576 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char NCO1ACCH __attribute__((address(0x58D)));

__asm("NCO1ACCH equ 058Dh");


typedef union {
    struct {
        unsigned int NCO1ACC8 :1;
        unsigned int NCO1ACC9 :1;
        unsigned int NCO1ACC10 :1;
        unsigned int NCO1ACC11 :1;
        unsigned int NCO1ACC12 :1;
        unsigned int NCO1ACC13 :1;
        unsigned int NCO1ACC14 :1;
        unsigned int NCO1ACC15 :1;
    };
    struct {
        unsigned int NCO1ACC :8;
    };
} NCO1ACCHbits_t;
extern volatile NCO1ACCHbits_t NCO1ACCHbits __attribute__((address(0x58D)));
# 18646 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char NCO1ACCU __attribute__((address(0x58E)));

__asm("NCO1ACCU equ 058Eh");


typedef union {
    struct {
        unsigned int NCO1ACC16 :1;
        unsigned int NCO1ACC17 :1;
        unsigned int NCO1ACC18 :1;
        unsigned int NCO1ACC19 :1;
    };
    struct {
        unsigned int NCO1ACC :8;
    };
} NCO1ACCUbits_t;
extern volatile NCO1ACCUbits_t NCO1ACCUbits __attribute__((address(0x58E)));
# 18693 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile __uint24 NCO1INC __attribute__((address(0x58F)));


__asm("NCO1INC equ 058Fh");




extern volatile unsigned char NCO1INCL __attribute__((address(0x58F)));

__asm("NCO1INCL equ 058Fh");


typedef union {
    struct {
        unsigned int NCO1INC0 :1;
        unsigned int NCO1INC1 :1;
        unsigned int NCO1INC2 :1;
        unsigned int NCO1INC3 :1;
        unsigned int NCO1INC4 :1;
        unsigned int NCO1INC5 :1;
        unsigned int NCO1INC6 :1;
        unsigned int NCO1INC7 :1;
    };
    struct {
        unsigned int NCO1INC :8;
    };
} NCO1INCLbits_t;
extern volatile NCO1INCLbits_t NCO1INCLbits __attribute__((address(0x58F)));
# 18771 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char NCO1INCH __attribute__((address(0x590)));

__asm("NCO1INCH equ 0590h");


typedef union {
    struct {
        unsigned int NCO1INC8 :1;
        unsigned int NCO1INC9 :1;
        unsigned int NCO1INC10 :1;
        unsigned int NCO1INC11 :1;
        unsigned int NCO1INC12 :1;
        unsigned int NCO1INC13 :1;
        unsigned int NCO1INC14 :1;
        unsigned int NCO1INC15 :1;
    };
    struct {
        unsigned int NCO1INC :8;
    };
} NCO1INCHbits_t;
extern volatile NCO1INCHbits_t NCO1INCHbits __attribute__((address(0x590)));
# 18841 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char NCO1INCU __attribute__((address(0x591)));

__asm("NCO1INCU equ 0591h");


typedef union {
    struct {
        unsigned int NCO1INC16 :1;
        unsigned int NCO1INC17 :1;
        unsigned int NCO1INC18 :1;
        unsigned int NCO1INC19 :1;
    };
    struct {
        unsigned int NCO1INC :8;
    };
} NCO1INCUbits_t;
extern volatile NCO1INCUbits_t NCO1INCUbits __attribute__((address(0x591)));
# 18887 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char NCO1CON __attribute__((address(0x592)));

__asm("NCO1CON equ 0592h");


typedef union {
    struct {
        unsigned int N1PFM :1;
        unsigned int :3;
        unsigned int N1POL :1;
        unsigned int N1OUT :1;
        unsigned int :1;
        unsigned int N1EN :1;
    };
} NCO1CONbits_t;
extern volatile NCO1CONbits_t NCO1CONbits __attribute__((address(0x592)));
# 18927 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char NCO1CLK __attribute__((address(0x593)));

__asm("NCO1CLK equ 0593h");


typedef union {
    struct {
        unsigned int N1CKS0 :1;
        unsigned int N1CKS1 :1;
        unsigned int N1CKS2 :1;
        unsigned int :2;
        unsigned int N1PWS0 :1;
        unsigned int N1PWS1 :1;
        unsigned int N1PWS2 :1;
    };
    struct {
        unsigned int N1CKS :4;
        unsigned int :1;
        unsigned int N1PWS :3;
    };
} NCO1CLKbits_t;
extern volatile NCO1CLKbits_t NCO1CLKbits __attribute__((address(0x593)));
# 18993 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CWG1CLKCON __attribute__((address(0x60C)));

__asm("CWG1CLKCON equ 060Ch");


typedef union {
    struct {
        unsigned int CS :1;
    };
    struct {
        unsigned int CWG1CS :1;
    };
} CWG1CLKCONbits_t;
extern volatile CWG1CLKCONbits_t CWG1CLKCONbits __attribute__((address(0x60C)));
# 19021 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CWG1ISM __attribute__((address(0x60D)));

__asm("CWG1ISM equ 060Dh");


typedef union {
    struct {
        unsigned int IS :4;
    };
    struct {
        unsigned int CWG1ISM0 :1;
        unsigned int CWG1ISM1 :1;
        unsigned int CWG1ISM2 :1;
        unsigned int CWG1ISM3 :1;
    };
} CWG1ISMbits_t;
extern volatile CWG1ISMbits_t CWG1ISMbits __attribute__((address(0x60D)));
# 19067 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CWG1DBR __attribute__((address(0x60E)));

__asm("CWG1DBR equ 060Eh");


typedef union {
    struct {
        unsigned int DBR :6;
    };
    struct {
        unsigned int DBR0 :1;
        unsigned int DBR1 :1;
        unsigned int DBR2 :1;
        unsigned int DBR3 :1;
        unsigned int DBR4 :1;
        unsigned int DBR5 :1;
    };
    struct {
        unsigned int CWG1DBR :6;
    };
    struct {
        unsigned int CWG1DBR0 :1;
        unsigned int CWG1DBR1 :1;
        unsigned int CWG1DBR2 :1;
        unsigned int CWG1DBR3 :1;
        unsigned int CWG1DBR4 :1;
        unsigned int CWG1DBR5 :1;
    };
} CWG1DBRbits_t;
extern volatile CWG1DBRbits_t CWG1DBRbits __attribute__((address(0x60E)));
# 19171 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CWG1DBF __attribute__((address(0x60F)));

__asm("CWG1DBF equ 060Fh");


typedef union {
    struct {
        unsigned int DBF :6;
    };
    struct {
        unsigned int DBF0 :1;
        unsigned int DBF1 :1;
        unsigned int DBF2 :1;
        unsigned int DBF3 :1;
        unsigned int DBF4 :1;
        unsigned int DBF5 :1;
    };
    struct {
        unsigned int CWG1DBF :6;
    };
    struct {
        unsigned int CWG1DBF0 :1;
        unsigned int CWG1DBF1 :1;
        unsigned int CWG1DBF2 :1;
        unsigned int CWG1DBF3 :1;
        unsigned int CWG1DBF4 :1;
        unsigned int CWG1DBF5 :1;
    };
} CWG1DBFbits_t;
extern volatile CWG1DBFbits_t CWG1DBFbits __attribute__((address(0x60F)));
# 19275 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CWG1CON0 __attribute__((address(0x610)));

__asm("CWG1CON0 equ 0610h");


typedef union {
    struct {
        unsigned int MODE :3;
        unsigned int :3;
        unsigned int LD :1;
        unsigned int EN :1;
    };
    struct {
        unsigned int MODE0 :1;
        unsigned int MODE1 :1;
        unsigned int MODE2 :1;
        unsigned int :4;
        unsigned int G1EN :1;
    };
    struct {
        unsigned int CWG1MODE :3;
        unsigned int :3;
        unsigned int CWG1LD :1;
        unsigned int CWG1EN :1;
    };
    struct {
        unsigned int CWG1MODE0 :1;
        unsigned int CWG1MODE1 :1;
        unsigned int CWG1MODE2 :1;
    };
} CWG1CON0bits_t;
extern volatile CWG1CON0bits_t CWG1CON0bits __attribute__((address(0x610)));
# 19376 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CWG1CON1 __attribute__((address(0x611)));

__asm("CWG1CON1 equ 0611h");


typedef union {
    struct {
        unsigned int POLA :1;
        unsigned int POLB :1;
        unsigned int POLC :1;
        unsigned int POLD :1;
        unsigned int :1;
        unsigned int IN :1;
    };
    struct {
        unsigned int CWG1POLA :1;
        unsigned int CWG1POLB :1;
        unsigned int CWG1POLC :1;
        unsigned int CWG1POLD :1;
        unsigned int :1;
        unsigned int CWG1IN :1;
    };
} CWG1CON1bits_t;
extern volatile CWG1CON1bits_t CWG1CON1bits __attribute__((address(0x611)));
# 19454 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CWG1AS0 __attribute__((address(0x612)));

__asm("CWG1AS0 equ 0612h");


typedef union {
    struct {
        unsigned int :2;
        unsigned int LSAC :2;
        unsigned int LSBD :2;
        unsigned int REN :1;
        unsigned int SHUTDOWN :1;
    };
    struct {
        unsigned int :2;
        unsigned int LSAC0 :1;
        unsigned int LSAC1 :1;
        unsigned int LSBD0 :1;
        unsigned int LSBD1 :1;
    };
    struct {
        unsigned int :2;
        unsigned int CWG1LSAC :2;
        unsigned int CWG1LSBD :2;
        unsigned int CWG1REN :1;
        unsigned int CWG1SHUTDOWN :1;
    };
    struct {
        unsigned int :2;
        unsigned int CWG1LSAC0 :1;
        unsigned int CWG1LSAC1 :1;
        unsigned int CWG1LSBD0 :1;
        unsigned int CWG1LSBD1 :1;
    };
} CWG1AS0bits_t;
extern volatile CWG1AS0bits_t CWG1AS0bits __attribute__((address(0x612)));
# 19574 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CWG1AS1 __attribute__((address(0x613)));

__asm("CWG1AS1 equ 0613h");


typedef union {
    struct {
        unsigned int AS0E :1;
        unsigned int AS1E :1;
        unsigned int AS2E :1;
        unsigned int AS3E :1;
        unsigned int AS4E :1;
        unsigned int AS5E :1;
        unsigned int AS6E :1;
    };
} CWG1AS1bits_t;
extern volatile CWG1AS1bits_t CWG1AS1bits __attribute__((address(0x613)));
# 19630 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CWG1STR __attribute__((address(0x614)));

__asm("CWG1STR equ 0614h");


typedef union {
    struct {
        unsigned int STRA :1;
        unsigned int STRB :1;
        unsigned int STRC :1;
        unsigned int STRD :1;
        unsigned int OVRA :1;
        unsigned int OVRB :1;
        unsigned int OVRC :1;
        unsigned int OVRD :1;
    };
    struct {
        unsigned int CWG1STRA :1;
        unsigned int CWG1STRB :1;
        unsigned int CWG1STRC :1;
        unsigned int CWG1STRD :1;
        unsigned int CWG1OVRA :1;
        unsigned int CWG1OVRB :1;
        unsigned int CWG1OVRC :1;
        unsigned int CWG1OVRD :1;
    };
} CWG1STRbits_t;
extern volatile CWG1STRbits_t CWG1STRbits __attribute__((address(0x614)));
# 19742 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CWG2CLKCON __attribute__((address(0x616)));

__asm("CWG2CLKCON equ 0616h");


typedef union {
    struct {
        unsigned int CS :1;
    };
    struct {
        unsigned int CWG2CS :1;
    };
} CWG2CLKCONbits_t;
extern volatile CWG2CLKCONbits_t CWG2CLKCONbits __attribute__((address(0x616)));
# 19770 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CWG2ISM __attribute__((address(0x617)));

__asm("CWG2ISM equ 0617h");


typedef union {
    struct {
        unsigned int IS :4;
    };
    struct {
        unsigned int CWG2ISM0 :1;
        unsigned int CWG2ISM1 :1;
        unsigned int CWG2ISM2 :1;
        unsigned int CWG2ISM3 :1;
    };
} CWG2ISMbits_t;
extern volatile CWG2ISMbits_t CWG2ISMbits __attribute__((address(0x617)));
# 19816 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CWG2DBR __attribute__((address(0x618)));

__asm("CWG2DBR equ 0618h");


typedef union {
    struct {
        unsigned int DBR :6;
    };
    struct {
        unsigned int DBR0 :1;
        unsigned int DBR1 :1;
        unsigned int DBR2 :1;
        unsigned int DBR3 :1;
        unsigned int DBR4 :1;
        unsigned int DBR5 :1;
    };
    struct {
        unsigned int CWG2DBR :6;
    };
    struct {
        unsigned int CWG2DBR0 :1;
        unsigned int CWG2DBR1 :1;
        unsigned int CWG2DBR2 :1;
        unsigned int CWG2DBR3 :1;
        unsigned int CWG2DBR4 :1;
        unsigned int CWG2DBR5 :1;
    };
} CWG2DBRbits_t;
extern volatile CWG2DBRbits_t CWG2DBRbits __attribute__((address(0x618)));
# 19920 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CWG2DBF __attribute__((address(0x619)));

__asm("CWG2DBF equ 0619h");


typedef union {
    struct {
        unsigned int DBF :6;
    };
    struct {
        unsigned int DBF0 :1;
        unsigned int DBF1 :1;
        unsigned int DBF2 :1;
        unsigned int DBF3 :1;
        unsigned int DBF4 :1;
        unsigned int DBF5 :1;
    };
    struct {
        unsigned int CWG2DBF :6;
    };
    struct {
        unsigned int CWG2DBF0 :1;
        unsigned int CWG2DBF1 :1;
        unsigned int CWG2DBF2 :1;
        unsigned int CWG2DBF3 :1;
        unsigned int CWG2DBF4 :1;
        unsigned int CWG2DBF5 :1;
    };
} CWG2DBFbits_t;
extern volatile CWG2DBFbits_t CWG2DBFbits __attribute__((address(0x619)));
# 20024 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CWG2CON0 __attribute__((address(0x61A)));

__asm("CWG2CON0 equ 061Ah");


typedef union {
    struct {
        unsigned int MODE :3;
        unsigned int :3;
        unsigned int LD :1;
        unsigned int EN :1;
    };
    struct {
        unsigned int MODE0 :1;
        unsigned int MODE1 :1;
        unsigned int MODE2 :1;
        unsigned int :4;
        unsigned int G2EN :1;
    };
    struct {
        unsigned int CWG2MODE :3;
        unsigned int :3;
        unsigned int CWG2LD :1;
        unsigned int CWG2EN :1;
    };
    struct {
        unsigned int CWG2MODE0 :1;
        unsigned int CWG2MODE1 :1;
        unsigned int CWG2MODE2 :1;
    };
} CWG2CON0bits_t;
extern volatile CWG2CON0bits_t CWG2CON0bits __attribute__((address(0x61A)));
# 20125 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CWG2CON1 __attribute__((address(0x61B)));

__asm("CWG2CON1 equ 061Bh");


typedef union {
    struct {
        unsigned int POLA :1;
        unsigned int POLB :1;
        unsigned int POLC :1;
        unsigned int POLD :1;
        unsigned int :1;
        unsigned int IN :1;
    };
    struct {
        unsigned int CWG2POLA :1;
        unsigned int CWG2POLB :1;
        unsigned int CWG2POLC :1;
        unsigned int CWG2POLD :1;
        unsigned int :1;
        unsigned int CWG2IN :1;
    };
} CWG2CON1bits_t;
extern volatile CWG2CON1bits_t CWG2CON1bits __attribute__((address(0x61B)));
# 20203 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CWG2AS0 __attribute__((address(0x61C)));

__asm("CWG2AS0 equ 061Ch");


typedef union {
    struct {
        unsigned int :2;
        unsigned int LSAC :2;
        unsigned int LSBD :2;
        unsigned int REN :1;
        unsigned int SHUTDOWN :1;
    };
    struct {
        unsigned int :2;
        unsigned int LSAC0 :1;
        unsigned int LSAC1 :1;
        unsigned int LSBD0 :1;
        unsigned int LSBD1 :1;
    };
    struct {
        unsigned int :2;
        unsigned int CWG2LSAC :2;
        unsigned int CWG2LSBD :2;
        unsigned int CWG2REN :1;
        unsigned int CWG2SHUTDOWN :1;
    };
    struct {
        unsigned int :2;
        unsigned int CWG2LSAC0 :1;
        unsigned int CWG2LSAC1 :1;
        unsigned int CWG2LSBD0 :1;
        unsigned int CWG2LSBD1 :1;
    };
} CWG2AS0bits_t;
extern volatile CWG2AS0bits_t CWG2AS0bits __attribute__((address(0x61C)));
# 20323 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CWG2AS1 __attribute__((address(0x61D)));

__asm("CWG2AS1 equ 061Dh");


typedef union {
    struct {
        unsigned int AS0E :1;
        unsigned int AS1E :1;
        unsigned int AS2E :1;
        unsigned int AS3E :1;
        unsigned int AS4E :1;
        unsigned int AS5E :1;
        unsigned int AS6E :1;
    };
} CWG2AS1bits_t;
extern volatile CWG2AS1bits_t CWG2AS1bits __attribute__((address(0x61D)));
# 20379 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CWG2STR __attribute__((address(0x61E)));

__asm("CWG2STR equ 061Eh");


typedef union {
    struct {
        unsigned int STRA :1;
        unsigned int STRB :1;
        unsigned int STRC :1;
        unsigned int STRD :1;
        unsigned int OVRA :1;
        unsigned int OVRB :1;
        unsigned int OVRC :1;
        unsigned int OVRD :1;
    };
    struct {
        unsigned int CWG2STRA :1;
        unsigned int CWG2STRB :1;
        unsigned int CWG2STRC :1;
        unsigned int CWG2STRD :1;
        unsigned int CWG2OVRA :1;
        unsigned int CWG2OVRB :1;
        unsigned int CWG2OVRC :1;
        unsigned int CWG2OVRD :1;
    };
} CWG2STRbits_t;
extern volatile CWG2STRbits_t CWG2STRbits __attribute__((address(0x61E)));
# 20491 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CWG3CLKCON __attribute__((address(0x68C)));

__asm("CWG3CLKCON equ 068Ch");


typedef union {
    struct {
        unsigned int CS :1;
    };
    struct {
        unsigned int CWG3CS :1;
    };
} CWG3CLKCONbits_t;
extern volatile CWG3CLKCONbits_t CWG3CLKCONbits __attribute__((address(0x68C)));
# 20519 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CWG3ISM __attribute__((address(0x68D)));

__asm("CWG3ISM equ 068Dh");


typedef union {
    struct {
        unsigned int IS :4;
    };
    struct {
        unsigned int CWG3ISM0 :1;
        unsigned int CWG3ISM1 :1;
        unsigned int CWG3ISM2 :1;
        unsigned int CWG3ISM3 :1;
    };
} CWG3ISMbits_t;
extern volatile CWG3ISMbits_t CWG3ISMbits __attribute__((address(0x68D)));
# 20565 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CWG3DBR __attribute__((address(0x68E)));

__asm("CWG3DBR equ 068Eh");


typedef union {
    struct {
        unsigned int DBR :6;
    };
    struct {
        unsigned int DBR0 :1;
        unsigned int DBR1 :1;
        unsigned int DBR2 :1;
        unsigned int DBR3 :1;
        unsigned int DBR4 :1;
        unsigned int DBR5 :1;
    };
    struct {
        unsigned int CWG3DBR :6;
    };
    struct {
        unsigned int CWG3DBR0 :1;
        unsigned int CWG3DBR1 :1;
        unsigned int CWG3DBR2 :1;
        unsigned int CWG3DBR3 :1;
        unsigned int CWG3DBR4 :1;
        unsigned int CWG3DBR5 :1;
    };
} CWG3DBRbits_t;
extern volatile CWG3DBRbits_t CWG3DBRbits __attribute__((address(0x68E)));
# 20669 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CWG3DBF __attribute__((address(0x68F)));

__asm("CWG3DBF equ 068Fh");


typedef union {
    struct {
        unsigned int DBF :6;
    };
    struct {
        unsigned int DBF0 :1;
        unsigned int DBF1 :1;
        unsigned int DBF2 :1;
        unsigned int DBF3 :1;
        unsigned int DBF4 :1;
        unsigned int DBF5 :1;
    };
    struct {
        unsigned int CWG3DBF :6;
    };
    struct {
        unsigned int CWG3DBF0 :1;
        unsigned int CWG3DBF1 :1;
        unsigned int CWG3DBF2 :1;
        unsigned int CWG3DBF3 :1;
        unsigned int CWG3DBF4 :1;
        unsigned int CWG3DBF5 :1;
    };
} CWG3DBFbits_t;
extern volatile CWG3DBFbits_t CWG3DBFbits __attribute__((address(0x68F)));
# 20773 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CWG3CON0 __attribute__((address(0x690)));

__asm("CWG3CON0 equ 0690h");


typedef union {
    struct {
        unsigned int MODE :3;
        unsigned int :3;
        unsigned int LD :1;
        unsigned int EN :1;
    };
    struct {
        unsigned int MODE0 :1;
        unsigned int MODE1 :1;
        unsigned int MODE2 :1;
        unsigned int :4;
        unsigned int G3EN :1;
    };
    struct {
        unsigned int CWG3MODE :3;
        unsigned int :3;
        unsigned int CWG3LD :1;
        unsigned int CWG3EN :1;
    };
    struct {
        unsigned int CWG3MODE0 :1;
        unsigned int CWG3MODE1 :1;
        unsigned int CWG3MODE2 :1;
    };
} CWG3CON0bits_t;
extern volatile CWG3CON0bits_t CWG3CON0bits __attribute__((address(0x690)));
# 20874 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CWG3CON1 __attribute__((address(0x691)));

__asm("CWG3CON1 equ 0691h");


typedef union {
    struct {
        unsigned int POLA :1;
        unsigned int POLB :1;
        unsigned int POLC :1;
        unsigned int POLD :1;
        unsigned int :1;
        unsigned int IN :1;
    };
    struct {
        unsigned int CWG3POLA :1;
        unsigned int CWG3POLB :1;
        unsigned int CWG3POLC :1;
        unsigned int CWG3POLD :1;
        unsigned int :1;
        unsigned int CWG3IN :1;
    };
} CWG3CON1bits_t;
extern volatile CWG3CON1bits_t CWG3CON1bits __attribute__((address(0x691)));
# 20952 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CWG3AS0 __attribute__((address(0x692)));

__asm("CWG3AS0 equ 0692h");


typedef union {
    struct {
        unsigned int :2;
        unsigned int LSAC :2;
        unsigned int LSBD :2;
        unsigned int REN :1;
        unsigned int SHUTDOWN :1;
    };
    struct {
        unsigned int :2;
        unsigned int LSAC0 :1;
        unsigned int LSAC1 :1;
        unsigned int LSBD0 :1;
        unsigned int LSBD1 :1;
    };
    struct {
        unsigned int :2;
        unsigned int CWG3LSAC :2;
        unsigned int CWG3LSBD :2;
        unsigned int CWG3REN :1;
        unsigned int CWG3SHUTDOWN :1;
    };
    struct {
        unsigned int :2;
        unsigned int CWG3LSAC0 :1;
        unsigned int CWG3LSAC1 :1;
        unsigned int CWG3LSBD0 :1;
        unsigned int CWG3LSBD1 :1;
    };
} CWG3AS0bits_t;
extern volatile CWG3AS0bits_t CWG3AS0bits __attribute__((address(0x692)));
# 21072 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CWG3AS1 __attribute__((address(0x693)));

__asm("CWG3AS1 equ 0693h");


typedef union {
    struct {
        unsigned int AS0E :1;
        unsigned int AS1E :1;
        unsigned int AS2E :1;
        unsigned int AS3E :1;
        unsigned int AS4E :1;
        unsigned int AS5E :1;
        unsigned int AS6E :1;
    };
} CWG3AS1bits_t;
extern volatile CWG3AS1bits_t CWG3AS1bits __attribute__((address(0x693)));
# 21128 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CWG3STR __attribute__((address(0x694)));

__asm("CWG3STR equ 0694h");


typedef union {
    struct {
        unsigned int STRA :1;
        unsigned int STRB :1;
        unsigned int STRC :1;
        unsigned int STRD :1;
        unsigned int OVRA :1;
        unsigned int OVRB :1;
        unsigned int OVRC :1;
        unsigned int OVRD :1;
    };
    struct {
        unsigned int CWG3STRA :1;
        unsigned int CWG3STRB :1;
        unsigned int CWG3STRC :1;
        unsigned int CWG3STRD :1;
        unsigned int CWG3OVRA :1;
        unsigned int CWG3OVRB :1;
        unsigned int CWG3OVRC :1;
        unsigned int CWG3OVRD :1;
    };
} CWG3STRbits_t;
extern volatile CWG3STRbits_t CWG3STRbits __attribute__((address(0x694)));
# 21240 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char PIR0 __attribute__((address(0x70C)));

__asm("PIR0 equ 070Ch");


typedef union {
    struct {
        unsigned int INTF :1;
        unsigned int :3;
        unsigned int IOCIF :1;
        unsigned int TMR0IF :1;
    };
} PIR0bits_t;
extern volatile PIR0bits_t PIR0bits __attribute__((address(0x70C)));
# 21273 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char PIR1 __attribute__((address(0x70D)));

__asm("PIR1 equ 070Dh");


typedef union {
    struct {
        unsigned int ADIF :1;
        unsigned int ADTIF :1;
        unsigned int :4;
        unsigned int CSWIF :1;
        unsigned int OSFIF :1;
    };
} PIR1bits_t;
extern volatile PIR1bits_t PIR1bits __attribute__((address(0x70D)));
# 21312 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char PIR2 __attribute__((address(0x70E)));

__asm("PIR2 equ 070Eh");


typedef union {
    struct {
        unsigned int C1IF :1;
        unsigned int C2IF :1;
        unsigned int :4;
        unsigned int ZCDIF :1;
    };
} PIR2bits_t;
extern volatile PIR2bits_t PIR2bits __attribute__((address(0x70E)));
# 21345 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char PIR3 __attribute__((address(0x70F)));

__asm("PIR3 equ 070Fh");


typedef union {
    struct {
        unsigned int SSP1IF :1;
        unsigned int BCL1IF :1;
        unsigned int SSP2IF :1;
        unsigned int BCL2IF :1;
        unsigned int TXIF :1;
        unsigned int RCIF :1;
    };
} PIR3bits_t;
extern volatile PIR3bits_t PIR3bits __attribute__((address(0x70F)));
# 21395 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char PIR4 __attribute__((address(0x710)));

__asm("PIR4 equ 0710h");


typedef union {
    struct {
        unsigned int TMR1IF :1;
        unsigned int TMR2IF :1;
        unsigned int TMR3IF :1;
        unsigned int TMR4IF :1;
        unsigned int TMR5IF :1;
        unsigned int TMR6IF :1;
    };
} PIR4bits_t;
extern volatile PIR4bits_t PIR4bits __attribute__((address(0x710)));
# 21445 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char PIR5 __attribute__((address(0x711)));

__asm("PIR5 equ 0711h");


typedef union {
    struct {
        unsigned int TMR1GIF :1;
        unsigned int TMR3GIF :1;
        unsigned int TMR5GIF :1;
        unsigned int :1;
        unsigned int CLC1IF :1;
        unsigned int CLC2IF :1;
        unsigned int CLC3IF :1;
        unsigned int CLC4IF :1;
    };
} PIR5bits_t;
extern volatile PIR5bits_t PIR5bits __attribute__((address(0x711)));
# 21502 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char PIR6 __attribute__((address(0x712)));

__asm("PIR6 equ 0712h");


typedef union {
    struct {
        unsigned int CCP1IF :1;
        unsigned int CCP2IF :1;
        unsigned int CCP3IF :1;
        unsigned int CCP4IF :1;
        unsigned int CCP5IF :1;
    };
} PIR6bits_t;
extern volatile PIR6bits_t PIR6bits __attribute__((address(0x712)));
# 21546 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char PIR7 __attribute__((address(0x713)));

__asm("PIR7 equ 0713h");


typedef union {
    struct {
        unsigned int CWG1IF :1;
        unsigned int CWG2IF :1;
        unsigned int CWG3IF :1;
        unsigned int :1;
        unsigned int NCO1IF :1;
        unsigned int NVMIF :1;
        unsigned int CRCIF :1;
        unsigned int SCANIF :1;
    };
    struct {
        unsigned int :4;
        unsigned int NCOIF :1;
    };
} PIR7bits_t;
extern volatile PIR7bits_t PIR7bits __attribute__((address(0x713)));
# 21612 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char PIR8 __attribute__((address(0x714)));

__asm("PIR8 equ 0714h");


typedef union {
    struct {
        unsigned int SMT1IF :1;
        unsigned int SMT1PRAIF :1;
        unsigned int SMT1PWAIF :1;
        unsigned int SMT2IF :1;
        unsigned int SMT2PRAIF :1;
        unsigned int SMT2PWAIF :1;
    };
} PIR8bits_t;
extern volatile PIR8bits_t PIR8bits __attribute__((address(0x714)));
# 21662 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char PIE0 __attribute__((address(0x716)));

__asm("PIE0 equ 0716h");


typedef union {
    struct {
        unsigned int INTE :1;
        unsigned int :3;
        unsigned int IOCIE :1;
        unsigned int TMR0IE :1;
    };
} PIE0bits_t;
extern volatile PIE0bits_t PIE0bits __attribute__((address(0x716)));
# 21695 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char PIE1 __attribute__((address(0x717)));

__asm("PIE1 equ 0717h");


typedef union {
    struct {
        unsigned int ADIE :1;
        unsigned int ADTIE :1;
        unsigned int :4;
        unsigned int CSWIE :1;
        unsigned int OSFIE :1;
    };
} PIE1bits_t;
extern volatile PIE1bits_t PIE1bits __attribute__((address(0x717)));
# 21734 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char PIE2 __attribute__((address(0x718)));

__asm("PIE2 equ 0718h");


typedef union {
    struct {
        unsigned int C1IE :1;
        unsigned int C2IE :1;
        unsigned int :4;
        unsigned int ZCDIE :1;
    };
} PIE2bits_t;
extern volatile PIE2bits_t PIE2bits __attribute__((address(0x718)));
# 21767 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char PIE3 __attribute__((address(0x719)));

__asm("PIE3 equ 0719h");


typedef union {
    struct {
        unsigned int SSP1IE :1;
        unsigned int BCL1IE :1;
        unsigned int SSP2IE :1;
        unsigned int BCL2IE :1;
        unsigned int TXIE :1;
        unsigned int RCIE :1;
    };
} PIE3bits_t;
extern volatile PIE3bits_t PIE3bits __attribute__((address(0x719)));
# 21817 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char PIE4 __attribute__((address(0x71A)));

__asm("PIE4 equ 071Ah");


typedef union {
    struct {
        unsigned int TMR1IE :1;
        unsigned int TMR2IE :1;
        unsigned int TMR3IE :1;
        unsigned int TMR4IE :1;
        unsigned int TMR5IE :1;
        unsigned int TMR6IE :1;
    };
} PIE4bits_t;
extern volatile PIE4bits_t PIE4bits __attribute__((address(0x71A)));
# 21867 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char PIE5 __attribute__((address(0x71B)));

__asm("PIE5 equ 071Bh");


typedef union {
    struct {
        unsigned int TMR1GIE :1;
        unsigned int TMR3GIE :1;
        unsigned int TMR5GIE :1;
        unsigned int :1;
        unsigned int CLC1IE :1;
        unsigned int CLC2IE :1;
        unsigned int CLC3IE :1;
        unsigned int CLC4IE :1;
    };
} PIE5bits_t;
extern volatile PIE5bits_t PIE5bits __attribute__((address(0x71B)));
# 21924 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char PIE6 __attribute__((address(0x71C)));

__asm("PIE6 equ 071Ch");


typedef union {
    struct {
        unsigned int CCP1IE :1;
        unsigned int CCP2IE :1;
        unsigned int CCP3IE :1;
        unsigned int CCP4IE :1;
        unsigned int CCP5IE :1;
    };
} PIE6bits_t;
extern volatile PIE6bits_t PIE6bits __attribute__((address(0x71C)));
# 21968 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char PIE7 __attribute__((address(0x71D)));

__asm("PIE7 equ 071Dh");


typedef union {
    struct {
        unsigned int CWG1IE :1;
        unsigned int CWG2IE :1;
        unsigned int CWG3IE :1;
        unsigned int :1;
        unsigned int NCO1IE :1;
        unsigned int NVMIE :1;
        unsigned int CRCIE :1;
        unsigned int SCANIE :1;
    };
    struct {
        unsigned int :4;
        unsigned int NCOIE :1;
    };
} PIE7bits_t;
extern volatile PIE7bits_t PIE7bits __attribute__((address(0x71D)));
# 22034 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char PIE8 __attribute__((address(0x71E)));

__asm("PIE8 equ 071Eh");


typedef union {
    struct {
        unsigned int SMT1IE :1;
        unsigned int SMT1PRAIE :1;
        unsigned int SMT1PWAIE :1;
        unsigned int SMT2IE :1;
        unsigned int SMT2PRAIE :1;
        unsigned int SMT2PWAIE :1;
    };
} PIE8bits_t;
extern volatile PIE8bits_t PIE8bits __attribute__((address(0x71E)));
# 22084 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char PMD0 __attribute__((address(0x796)));

__asm("PMD0 equ 0796h");


typedef union {
    struct {
        unsigned int IOCMD :1;
        unsigned int CLKRMD :1;
        unsigned int NVMMD :1;
        unsigned int SCANMD :1;
        unsigned int CRCMD :1;
        unsigned int :1;
        unsigned int FVRMD :1;
        unsigned int SYSCMD :1;
    };
} PMD0bits_t;
extern volatile PMD0bits_t PMD0bits __attribute__((address(0x796)));
# 22141 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char PMD1 __attribute__((address(0x797)));

__asm("PMD1 equ 0797h");


typedef union {
    struct {
        unsigned int TMR0MD :1;
        unsigned int TMR1MD :1;
        unsigned int TMR2MD :1;
        unsigned int TMR3MD :1;
        unsigned int TMR4MD :1;
        unsigned int TMR5MD :1;
        unsigned int TMR6MD :1;
        unsigned int NCOMD :1;
    };
    struct {
        unsigned int :7;
        unsigned int NCO1MD :1;
    };
} PMD1bits_t;
extern volatile PMD1bits_t PMD1bits __attribute__((address(0x797)));
# 22212 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char PMD2 __attribute__((address(0x798)));

__asm("PMD2 equ 0798h");


typedef union {
    struct {
        unsigned int ZCDMD :1;
        unsigned int CMP1MD :1;
        unsigned int CMP2MD :1;
        unsigned int :2;
        unsigned int ADCMD :1;
        unsigned int DACMD :1;
    };
} PMD2bits_t;
extern volatile PMD2bits_t PMD2bits __attribute__((address(0x798)));
# 22257 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char PMD3 __attribute__((address(0x799)));

__asm("PMD3 equ 0799h");


typedef union {
    struct {
        unsigned int CCP1MD :1;
        unsigned int CCP2MD :1;
        unsigned int CCP3MD :1;
        unsigned int CCP4MD :1;
        unsigned int CCP5MD :1;
        unsigned int PWM6MD :1;
        unsigned int PWM7MD :1;
    };
} PMD3bits_t;
extern volatile PMD3bits_t PMD3bits __attribute__((address(0x799)));
# 22313 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char PMD4 __attribute__((address(0x79A)));

__asm("PMD4 equ 079Ah");


typedef union {
    struct {
        unsigned int CWG1MD :1;
        unsigned int CWG2MD :1;
        unsigned int CWG3MD :1;
        unsigned int :1;
        unsigned int MSSP1MD :1;
        unsigned int MSSP2MD :1;
        unsigned int UART1MD :1;
    };
} PMD4bits_t;
extern volatile PMD4bits_t PMD4bits __attribute__((address(0x79A)));
# 22364 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char PMD5 __attribute__((address(0x79B)));

__asm("PMD5 equ 079Bh");


typedef union {
    struct {
        unsigned int DSMMD :1;
        unsigned int CLC1MD :1;
        unsigned int CLC2MD :1;
        unsigned int CLC3MD :1;
        unsigned int CLC4MD :1;
        unsigned int :1;
        unsigned int SMT1MD :1;
        unsigned int SMT2MD :1;
    };
} PMD5bits_t;
extern volatile PMD5bits_t PMD5bits __attribute__((address(0x79B)));
# 22421 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char WDTCON0 __attribute__((address(0x80C)));

__asm("WDTCON0 equ 080Ch");


typedef union {
    struct {
        unsigned int SEN :1;
        unsigned int WDTPS :5;
    };
    struct {
        unsigned int SWDTEN :1;
    };
    struct {
        unsigned int WDTSEN :1;
    };
    struct {
        unsigned int :1;
        unsigned int WDTPS0 :1;
        unsigned int WDTPS1 :1;
        unsigned int WDTPS2 :1;
        unsigned int WDTPS3 :1;
        unsigned int WDTPS4 :1;
    };
} WDTCON0bits_t;
extern volatile WDTCON0bits_t WDTCON0bits __attribute__((address(0x80C)));
# 22496 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char WDTCON1 __attribute__((address(0x80D)));

__asm("WDTCON1 equ 080Dh");


typedef union {
    struct {
        unsigned int WINDOW :3;
        unsigned int :1;
        unsigned int WDTCS :3;
    };
    struct {
        unsigned int WINDOW0 :1;
        unsigned int WINDOW1 :1;
        unsigned int WINDOW2 :1;
    };
    struct {
        unsigned int WDTWINDOW :3;
    };
    struct {
        unsigned int WDTWINDOW0 :1;
        unsigned int WDTWINDOW1 :1;
        unsigned int WDTWINDOW2 :1;
        unsigned int :1;
        unsigned int WDTCS0 :1;
        unsigned int WDTCS1 :1;
        unsigned int WDTCS2 :1;
    };
} WDTCON1bits_t;
extern volatile WDTCON1bits_t WDTCON1bits __attribute__((address(0x80D)));
# 22590 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char WDTPSL __attribute__((address(0x80E)));

__asm("WDTPSL equ 080Eh");


typedef union {
    struct {
        unsigned int PSCNT :8;
    };
    struct {
        unsigned int PSCNT0 :1;
        unsigned int PSCNT1 :1;
        unsigned int PSCNT2 :1;
        unsigned int PSCNT3 :1;
        unsigned int PSCNT4 :1;
        unsigned int PSCNT5 :1;
        unsigned int PSCNT6 :1;
        unsigned int PSCNT7 :1;
    };
    struct {
        unsigned int WDTPSCNT :8;
    };
    struct {
        unsigned int WDTPSCNT0 :1;
        unsigned int WDTPSCNT1 :1;
        unsigned int WDTPSCNT2 :1;
        unsigned int WDTPSCNT3 :1;
        unsigned int WDTPSCNT4 :1;
        unsigned int WDTPSCNT5 :1;
        unsigned int WDTPSCNT6 :1;
        unsigned int WDTPSCNT7 :1;
    };
} WDTPSLbits_t;
extern volatile WDTPSLbits_t WDTPSLbits __attribute__((address(0x80E)));
# 22718 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char WDTPSH __attribute__((address(0x80F)));

__asm("WDTPSH equ 080Fh");


typedef union {
    struct {
        unsigned int PSCNT :8;
    };
    struct {
        unsigned int PSCNT8 :1;
        unsigned int PSCNT9 :1;
        unsigned int PSCNT10 :1;
        unsigned int PSCNT11 :1;
        unsigned int PSCNT12 :1;
        unsigned int PSCNT13 :1;
        unsigned int PSCNT14 :1;
        unsigned int PSCNT15 :1;
    };
    struct {
        unsigned int WDTPSCNT :8;
    };
    struct {
        unsigned int WDTPSCNT8 :1;
        unsigned int WDTPSCNT9 :1;
        unsigned int WDTPSCNT10 :1;
        unsigned int WDTPSCNT11 :1;
        unsigned int WDTPSCNT12 :1;
        unsigned int WDTPSCNT13 :1;
        unsigned int WDTPSCNT14 :1;
        unsigned int WDTPSCNT15 :1;
    };
} WDTPSHbits_t;
extern volatile WDTPSHbits_t WDTPSHbits __attribute__((address(0x80F)));
# 22846 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char WDTTMR __attribute__((address(0x810)));

__asm("WDTTMR equ 0810h");


typedef union {
    struct {
        unsigned int PSCNT16 :1;
        unsigned int PSCNT17 :1;
        unsigned int STATE :1;
        unsigned int WDTTMR :5;
    };
    struct {
        unsigned int WDTPSCNT16 :1;
        unsigned int WDTPSCNT17 :1;
        unsigned int WDTSTATE :1;
        unsigned int WDTTMR0 :1;
        unsigned int WDTTMR1 :1;
        unsigned int WDTTMR2 :1;
        unsigned int WDTTMR3 :1;
    };
} WDTTMRbits_t;
extern volatile WDTTMRbits_t WDTTMRbits __attribute__((address(0x810)));
# 22928 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char BORCON __attribute__((address(0x811)));

__asm("BORCON equ 0811h");


typedef union {
    struct {
        unsigned int BORRDY :1;
        unsigned int :6;
        unsigned int SBOREN :1;
    };
} BORCONbits_t;
extern volatile BORCONbits_t BORCONbits __attribute__((address(0x811)));
# 22955 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char VREGCON __attribute__((address(0x812)));

__asm("VREGCON equ 0812h");


typedef union {
    struct {
        unsigned int VREGPM0 :1;
        unsigned int VREGPM1 :1;
    };
    struct {
        unsigned int :1;
        unsigned int VREGPM :1;
    };
} VREGCONbits_t;
extern volatile VREGCONbits_t VREGCONbits __attribute__((address(0x812)));
# 22990 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char PCON0 __attribute__((address(0x813)));

__asm("PCON0 equ 0813h");


typedef union {
    struct {
        unsigned int nBOR :1;
        unsigned int nPOR :1;
        unsigned int nRI :1;
        unsigned int nRMCLR :1;
        unsigned int nRWDT :1;
        unsigned int nWDTWV :1;
        unsigned int STKUNF :1;
        unsigned int STKOVF :1;
    };
} PCON0bits_t;
extern volatile PCON0bits_t PCON0bits __attribute__((address(0x813)));
# 23052 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CCDCON __attribute__((address(0x814)));

__asm("CCDCON equ 0814h");


typedef union {
    struct {
        unsigned int CCDS0 :1;
        unsigned int CCDS1 :1;
        unsigned int :5;
        unsigned int CCDEN :1;
    };
} CCDCONbits_t;
extern volatile CCDCONbits_t CCDCONbits __attribute__((address(0x814)));
# 23085 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char NVMADRL __attribute__((address(0x81A)));

__asm("NVMADRL equ 081Ah");


typedef union {
    struct {
        unsigned int NVMADR0 :1;
        unsigned int NVMADR1 :1;
        unsigned int NVMADR2 :1;
        unsigned int NVMADR3 :1;
        unsigned int NVMADR4 :1;
        unsigned int NVMADR5 :1;
        unsigned int NVMADR6 :1;
        unsigned int NVMADR7 :1;
    };
} NVMADRLbits_t;
extern volatile NVMADRLbits_t NVMADRLbits __attribute__((address(0x81A)));
# 23147 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char NVMADRH __attribute__((address(0x81B)));

__asm("NVMADRH equ 081Bh");


typedef union {
    struct {
        unsigned int NVMADR8 :1;
        unsigned int NVMADR9 :1;
        unsigned int NVMADR10 :1;
        unsigned int NVMADR11 :1;
        unsigned int NVMADR12 :1;
        unsigned int NVMADR13 :1;
        unsigned int NVMADR14 :1;
    };
} NVMADRHbits_t;
extern volatile NVMADRHbits_t NVMADRHbits __attribute__((address(0x81B)));
# 23203 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char NVMDATL __attribute__((address(0x81C)));

__asm("NVMDATL equ 081Ch");


typedef union {
    struct {
        unsigned int NVMDAT0 :1;
        unsigned int NVMDAT1 :1;
        unsigned int NVMDAT2 :1;
        unsigned int NVMDAT3 :1;
        unsigned int NVMDAT4 :1;
        unsigned int NVMDAT5 :1;
        unsigned int NVMDAT6 :1;
        unsigned int NVMDAT7 :1;
    };
} NVMDATLbits_t;
extern volatile NVMDATLbits_t NVMDATLbits __attribute__((address(0x81C)));
# 23265 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char NVMDATH __attribute__((address(0x81D)));

__asm("NVMDATH equ 081Dh");


typedef union {
    struct {
        unsigned int NVMDAT8 :1;
        unsigned int NVMDAT9 :1;
        unsigned int NVMDAT10 :1;
        unsigned int NVMDAT11 :1;
        unsigned int NVMDAT12 :1;
        unsigned int NVMDAT13 :1;
    };
} NVMDATHbits_t;
extern volatile NVMDATHbits_t NVMDATHbits __attribute__((address(0x81D)));
# 23315 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char NVMCON1 __attribute__((address(0x81E)));

__asm("NVMCON1 equ 081Eh");


typedef union {
    struct {
        unsigned int RD :1;
        unsigned int WR :1;
        unsigned int WREN :1;
        unsigned int WRERR :1;
        unsigned int FREE :1;
        unsigned int LWLO :1;
        unsigned int NVMREGS :1;
    };
} NVMCON1bits_t;
extern volatile NVMCON1bits_t NVMCON1bits __attribute__((address(0x81E)));
# 23371 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char NVMCON2 __attribute__((address(0x81F)));

__asm("NVMCON2 equ 081Fh");




extern volatile unsigned char CPUDOZE __attribute__((address(0x88C)));

__asm("CPUDOZE equ 088Ch");


typedef union {
    struct {
        unsigned int DOZE0 :1;
        unsigned int DOZE1 :1;
        unsigned int DOZE2 :1;
        unsigned int :1;
        unsigned int DOE :1;
        unsigned int ROI :1;
        unsigned int DOZEN :1;
        unsigned int IDLEN :1;
    };
} CPUDOZEbits_t;
extern volatile CPUDOZEbits_t CPUDOZEbits __attribute__((address(0x88C)));
# 23435 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char OSCCON1 __attribute__((address(0x88D)));

__asm("OSCCON1 equ 088Dh");


typedef union {
    struct {
        unsigned int NDIV :4;
        unsigned int NOSC :3;
    };
    struct {
        unsigned int NDIV0 :1;
        unsigned int NDIV1 :1;
        unsigned int NDIV2 :1;
        unsigned int NDIV3 :1;
        unsigned int NOSC0 :1;
        unsigned int NOSC1 :1;
        unsigned int NOSC2 :1;
    };
} OSCCON1bits_t;
extern volatile OSCCON1bits_t OSCCON1bits __attribute__((address(0x88D)));
# 23505 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char OSCCON2 __attribute__((address(0x88E)));

__asm("OSCCON2 equ 088Eh");


typedef union {
    struct {
        unsigned int CDIV :4;
        unsigned int COSC :3;
    };
    struct {
        unsigned int CDIV0 :1;
        unsigned int CDIV1 :1;
        unsigned int CDIV2 :1;
        unsigned int CDIV3 :1;
        unsigned int COSC0 :1;
        unsigned int COSC1 :1;
        unsigned int COSC2 :1;
    };
} OSCCON2bits_t;
extern volatile OSCCON2bits_t OSCCON2bits __attribute__((address(0x88E)));
# 23575 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char OSCCON3 __attribute__((address(0x88F)));

__asm("OSCCON3 equ 088Fh");


typedef union {
    struct {
        unsigned int :3;
        unsigned int NOSCR :1;
        unsigned int ORDY :1;
        unsigned int :1;
        unsigned int SOSCPWR :1;
        unsigned int CSWHOLD :1;
    };
} OSCCON3bits_t;
extern volatile OSCCON3bits_t OSCCON3bits __attribute__((address(0x88F)));
# 23615 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char OSCSTAT __attribute__((address(0x890)));

__asm("OSCSTAT equ 0890h");


typedef union {
    struct {
        unsigned int PLLR :1;
        unsigned int :1;
        unsigned int ADOR :1;
        unsigned int SOR :1;
        unsigned int LFOR :1;
        unsigned int MFOR :1;
        unsigned int HFOR :1;
        unsigned int EXTOR :1;
    };
} OSCSTATbits_t;
extern volatile OSCSTATbits_t OSCSTATbits __attribute__((address(0x890)));
# 23672 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char OSCEN __attribute__((address(0x891)));

__asm("OSCEN equ 0891h");


typedef union {
    struct {
        unsigned int :2;
        unsigned int ADOEN :1;
        unsigned int SOSCEN :1;
        unsigned int LFOEN :1;
        unsigned int MFOEN :1;
        unsigned int HFOEN :1;
        unsigned int EXTOEN :1;
    };
} OSCENbits_t;
extern volatile OSCENbits_t OSCENbits __attribute__((address(0x891)));
# 23723 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char OSCTUNE __attribute__((address(0x892)));

__asm("OSCTUNE equ 0892h");


typedef union {
    struct {
        unsigned int HFTUN :6;
    };
    struct {
        unsigned int HFTUN0 :1;
        unsigned int HFTUN1 :1;
        unsigned int HFTUN2 :1;
        unsigned int HFTUN3 :1;
        unsigned int HFTUN4 :1;
        unsigned int HFTUN5 :1;
    };
} OSCTUNEbits_t;
extern volatile OSCTUNEbits_t OSCTUNEbits __attribute__((address(0x892)));
# 23781 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char OSCFRQ __attribute__((address(0x893)));

__asm("OSCFRQ equ 0893h");


typedef union {
    struct {
        unsigned int HFFRQ :3;
    };
    struct {
        unsigned int HFFRQ0 :1;
        unsigned int HFFRQ1 :1;
        unsigned int HFFRQ2 :1;
    };
} OSCFRQbits_t;
extern volatile OSCFRQbits_t OSCFRQbits __attribute__((address(0x893)));
# 23821 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CLKRCON __attribute__((address(0x895)));

__asm("CLKRCON equ 0895h");


typedef union {
    struct {
        unsigned int CLKRDIV :3;
        unsigned int CLKRDC :2;
        unsigned int :2;
        unsigned int CLKREN :1;
    };
    struct {
        unsigned int CLKRDIV0 :1;
        unsigned int CLKRDIV1 :1;
        unsigned int CLKRDIV2 :1;
        unsigned int CLKRDC0 :1;
        unsigned int CLKRDC1 :1;
    };
} CLKRCONbits_t;
extern volatile CLKRCONbits_t CLKRCONbits __attribute__((address(0x895)));
# 23886 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CLKRCLK __attribute__((address(0x896)));

__asm("CLKRCLK equ 0896h");


typedef union {
    struct {
        unsigned int CLKRCLK :4;
    };
    struct {
        unsigned int CLKRCLK0 :1;
        unsigned int CLKRCLK1 :1;
        unsigned int CLKRCLK2 :1;
        unsigned int CLKRCLK3 :1;
    };
} CLKRCLKbits_t;
extern volatile CLKRCLKbits_t CLKRCLKbits __attribute__((address(0x896)));
# 23932 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char MDCON0 __attribute__((address(0x897)));

__asm("MDCON0 equ 0897h");


typedef union {
    struct {
        unsigned int MDBIT :1;
        unsigned int :3;
        unsigned int MDOPOL :1;
        unsigned int MDOUT :1;
        unsigned int :1;
        unsigned int MDEN :1;
    };
} MDCON0bits_t;
extern volatile MDCON0bits_t MDCON0bits __attribute__((address(0x897)));
# 23972 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char MDCON1 __attribute__((address(0x898)));

__asm("MDCON1 equ 0898h");


typedef union {
    struct {
        unsigned int MDCLSYNC :1;
        unsigned int MDCLPOL :1;
        unsigned int :2;
        unsigned int MDCHSYNC :1;
        unsigned int MDCHPOL :1;
    };
} MDCON1bits_t;
extern volatile MDCON1bits_t MDCON1bits __attribute__((address(0x898)));
# 24011 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char MDSRC __attribute__((address(0x899)));

__asm("MDSRC equ 0899h");


typedef union {
    struct {
        unsigned int MDMS :5;
    };
    struct {
        unsigned int MDMS0 :1;
        unsigned int MDMS1 :1;
        unsigned int MDMS2 :1;
        unsigned int MDMS3 :1;
        unsigned int MDMS4 :1;
    };
} MDSRCbits_t;
extern volatile MDSRCbits_t MDSRCbits __attribute__((address(0x899)));
# 24063 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char MDCARL __attribute__((address(0x89A)));

__asm("MDCARL equ 089Ah");


typedef union {
    struct {
        unsigned int MDCL :4;
    };
    struct {
        unsigned int MDCL0 :1;
        unsigned int MDCL1 :1;
        unsigned int MDCL2 :1;
        unsigned int MDCL3 :1;
    };
} MDCARLbits_t;
extern volatile MDCARLbits_t MDCARLbits __attribute__((address(0x89A)));
# 24109 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char MDCARH __attribute__((address(0x89B)));

__asm("MDCARH equ 089Bh");


typedef union {
    struct {
        unsigned int MDCH :4;
    };
    struct {
        unsigned int MDCH0 :1;
        unsigned int MDCH1 :1;
        unsigned int MDCH2 :1;
        unsigned int MDCH3 :1;
    };
} MDCARHbits_t;
extern volatile MDCARHbits_t MDCARHbits __attribute__((address(0x89B)));
# 24155 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char FVRCON __attribute__((address(0x90C)));

__asm("FVRCON equ 090Ch");


typedef union {
    struct {
        unsigned int ADFVR :2;
        unsigned int CDAFVR :2;
        unsigned int TSRNG :1;
        unsigned int TSEN :1;
        unsigned int FVRRDY :1;
        unsigned int FVREN :1;
    };
    struct {
        unsigned int ADFVR0 :1;
        unsigned int ADFVR1 :1;
        unsigned int CDAFVR0 :1;
        unsigned int CDAFVR1 :1;
    };
} FVRCONbits_t;
extern volatile FVRCONbits_t FVRCONbits __attribute__((address(0x90C)));
# 24231 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char DAC1CON0 __attribute__((address(0x90E)));

__asm("DAC1CON0 equ 090Eh");


typedef union {
    struct {
        unsigned int NSS :1;
        unsigned int :1;
        unsigned int PSS :2;
        unsigned int OE2 :1;
        unsigned int OE1 :1;
        unsigned int :1;
        unsigned int EN :1;
    };
    struct {
        unsigned int DAC1NSS :1;
        unsigned int :1;
        unsigned int DAC1PSS0 :1;
        unsigned int DAC1PSS1 :1;
        unsigned int DAC1OE2 :1;
        unsigned int DAC1OE1 :1;
        unsigned int :1;
        unsigned int DAC1EN :1;
    };
    struct {
        unsigned int :2;
        unsigned int PSS0 :1;
        unsigned int PSS1 :1;
    };
} DAC1CON0bits_t;
extern volatile DAC1CON0bits_t DAC1CON0bits __attribute__((address(0x90E)));
# 24332 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char DAC1CON1 __attribute__((address(0x90F)));

__asm("DAC1CON1 equ 090Fh");


typedef union {
    struct {
        unsigned int DAC1R :5;
    };
    struct {
        unsigned int DAC1R0 :1;
        unsigned int DAC1R1 :1;
        unsigned int DAC1R2 :1;
        unsigned int DAC1R3 :1;
        unsigned int DAC1R4 :1;
    };
} DAC1CON1bits_t;
extern volatile DAC1CON1bits_t DAC1CON1bits __attribute__((address(0x90F)));
# 24384 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char ZCD1CON __attribute__((address(0x91F)));

__asm("ZCD1CON equ 091Fh");


extern volatile unsigned char ZCDCON __attribute__((address(0x91F)));

__asm("ZCDCON equ 091Fh");


typedef union {
    struct {
        unsigned int INTN :1;
        unsigned int INTP :1;
        unsigned int :2;
        unsigned int POL :1;
        unsigned int OUT :1;
        unsigned int :1;
        unsigned int EN :1;
    };
    struct {
        unsigned int ZCD1INTN :1;
        unsigned int ZCD1INTP :1;
        unsigned int :2;
        unsigned int ZCD1POL :1;
        unsigned int ZCD1OUT :1;
        unsigned int :1;
        unsigned int ZCD1EN :1;
    };
    struct {
        unsigned int ZCDINTN :1;
        unsigned int ZCDINTP :1;
        unsigned int :2;
        unsigned int ZCDPOL :1;
        unsigned int ZCDOUT :1;
        unsigned int :1;
        unsigned int ZCDEN :1;
    };
} ZCD1CONbits_t;
extern volatile ZCD1CONbits_t ZCD1CONbits __attribute__((address(0x91F)));
# 24501 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
typedef union {
    struct {
        unsigned int INTN :1;
        unsigned int INTP :1;
        unsigned int :2;
        unsigned int POL :1;
        unsigned int OUT :1;
        unsigned int :1;
        unsigned int EN :1;
    };
    struct {
        unsigned int ZCD1INTN :1;
        unsigned int ZCD1INTP :1;
        unsigned int :2;
        unsigned int ZCD1POL :1;
        unsigned int ZCD1OUT :1;
        unsigned int :1;
        unsigned int ZCD1EN :1;
    };
    struct {
        unsigned int ZCDINTN :1;
        unsigned int ZCDINTP :1;
        unsigned int :2;
        unsigned int ZCDPOL :1;
        unsigned int ZCDOUT :1;
        unsigned int :1;
        unsigned int ZCDEN :1;
    };
} ZCDCONbits_t;
extern volatile ZCDCONbits_t ZCDCONbits __attribute__((address(0x91F)));
# 24610 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CMOUT __attribute__((address(0x98F)));

__asm("CMOUT equ 098Fh");


extern volatile unsigned char CMSTAT __attribute__((address(0x98F)));

__asm("CMSTAT equ 098Fh");


typedef union {
    struct {
        unsigned int MC1OUT :1;
        unsigned int MC2OUT :1;
    };
    struct {
        unsigned int C1OUT :1;
        unsigned int C2OUT :1;
    };
} CMOUTbits_t;
extern volatile CMOUTbits_t CMOUTbits __attribute__((address(0x98F)));
# 24653 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
typedef union {
    struct {
        unsigned int MC1OUT :1;
        unsigned int MC2OUT :1;
    };
    struct {
        unsigned int C1OUT :1;
        unsigned int C2OUT :1;
    };
} CMSTATbits_t;
extern volatile CMSTATbits_t CMSTATbits __attribute__((address(0x98F)));
# 24688 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CM1CON0 __attribute__((address(0x990)));

__asm("CM1CON0 equ 0990h");


typedef union {
    struct {
        unsigned int SYNC :1;
        unsigned int HYS :1;
        unsigned int :2;
        unsigned int POL :1;
        unsigned int :1;
        unsigned int OUT :1;
        unsigned int ON :1;
    };
    struct {
        unsigned int C1SYNC :1;
        unsigned int C1HYS :1;
        unsigned int C1SP :1;
        unsigned int :1;
        unsigned int C1POL :1;
        unsigned int :1;
        unsigned int C1OUT :1;
        unsigned int C1ON :1;
    };
} CM1CON0bits_t;
extern volatile CM1CON0bits_t CM1CON0bits __attribute__((address(0x990)));
# 24774 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CM1CON1 __attribute__((address(0x991)));

__asm("CM1CON1 equ 0991h");


typedef union {
    struct {
        unsigned int INTN :1;
        unsigned int INTP :1;
    };
    struct {
        unsigned int C1INTN :1;
        unsigned int C1INTP :1;
    };
} CM1CON1bits_t;
extern volatile CM1CON1bits_t CM1CON1bits __attribute__((address(0x991)));
# 24814 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CM1NSEL __attribute__((address(0x992)));

__asm("CM1NSEL equ 0992h");


typedef union {
    struct {
        unsigned int NCH :3;
    };
    struct {
        unsigned int NCH0 :1;
        unsigned int NCH1 :1;
        unsigned int NCH2 :1;
    };
    struct {
        unsigned int C1NCH :3;
    };
    struct {
        unsigned int C1NCH0 :1;
        unsigned int C1NCH1 :1;
        unsigned int C1NCH2 :1;
    };
} CM1NSELbits_t;
extern volatile CM1NSELbits_t CM1NSELbits __attribute__((address(0x992)));
# 24882 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CM1PSEL __attribute__((address(0x993)));

__asm("CM1PSEL equ 0993h");


typedef union {
    struct {
        unsigned int PCH :4;
    };
    struct {
        unsigned int PCH0 :1;
        unsigned int PCH1 :1;
        unsigned int PCH2 :1;
    };
    struct {
        unsigned int C1PCH :4;
    };
    struct {
        unsigned int C1PCH0 :1;
        unsigned int C1PCH1 :1;
        unsigned int C1PCH2 :1;
    };
} CM1PSELbits_t;
extern volatile CM1PSELbits_t CM1PSELbits __attribute__((address(0x993)));
# 24950 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CM2CON0 __attribute__((address(0x994)));

__asm("CM2CON0 equ 0994h");


typedef union {
    struct {
        unsigned int SYNC :1;
        unsigned int HYS :1;
        unsigned int :2;
        unsigned int POL :1;
        unsigned int :1;
        unsigned int OUT :1;
        unsigned int ON :1;
    };
    struct {
        unsigned int C2SYNC :1;
        unsigned int C2HYS :1;
        unsigned int C2SP :1;
        unsigned int :1;
        unsigned int C2POL :1;
        unsigned int :1;
        unsigned int C2OUT :1;
        unsigned int C2ON :1;
    };
} CM2CON0bits_t;
extern volatile CM2CON0bits_t CM2CON0bits __attribute__((address(0x994)));
# 25036 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CM2CON1 __attribute__((address(0x995)));

__asm("CM2CON1 equ 0995h");


typedef union {
    struct {
        unsigned int INTN :1;
        unsigned int INTP :1;
    };
    struct {
        unsigned int C2INTN :1;
        unsigned int C2INTP :1;
    };
} CM2CON1bits_t;
extern volatile CM2CON1bits_t CM2CON1bits __attribute__((address(0x995)));
# 25076 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CM2NSEL __attribute__((address(0x996)));

__asm("CM2NSEL equ 0996h");


typedef union {
    struct {
        unsigned int NCH :3;
    };
    struct {
        unsigned int NCH0 :1;
        unsigned int NCH1 :1;
        unsigned int NCH2 :1;
    };
    struct {
        unsigned int C2NCH :3;
    };
    struct {
        unsigned int C2NCH0 :1;
        unsigned int C2NCH1 :1;
        unsigned int C2NCH2 :1;
    };
} CM2NSELbits_t;
extern volatile CM2NSELbits_t CM2NSELbits __attribute__((address(0x996)));
# 25144 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CM2PSEL __attribute__((address(0x997)));

__asm("CM2PSEL equ 0997h");


typedef union {
    struct {
        unsigned int PCH :4;
    };
    struct {
        unsigned int PCH0 :1;
        unsigned int PCH1 :1;
        unsigned int PCH2 :1;
    };
    struct {
        unsigned int C2PCH :4;
    };
    struct {
        unsigned int C2PCH0 :1;
        unsigned int C2PCH1 :1;
        unsigned int C2PCH2 :1;
    };
} CM2PSELbits_t;
extern volatile CM2PSELbits_t CM2PSELbits __attribute__((address(0x997)));
# 25212 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CLCDATA __attribute__((address(0xE0F)));

__asm("CLCDATA equ 0E0Fh");


typedef union {
    struct {
        unsigned int MLC1OUT :1;
        unsigned int MLC2OUT :1;
        unsigned int MLC3OUT :1;
        unsigned int MLC4OUT :1;
    };
} CLCDATAbits_t;
extern volatile CLCDATAbits_t CLCDATAbits __attribute__((address(0xE0F)));
# 25250 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CLC1CON __attribute__((address(0xE10)));

__asm("CLC1CON equ 0E10h");


typedef union {
    struct {
        unsigned int LC1MODE :3;
        unsigned int LC1INTN :1;
        unsigned int LC1INTP :1;
        unsigned int LC1OUT :1;
        unsigned int :1;
        unsigned int LC1EN :1;
    };
    struct {
        unsigned int LC1MODE0 :1;
        unsigned int LC1MODE1 :1;
        unsigned int LC1MODE2 :1;
    };
    struct {
        unsigned int MODE :3;
        unsigned int INTN :1;
        unsigned int INTP :1;
        unsigned int OUT :1;
        unsigned int :1;
        unsigned int EN :1;
    };
    struct {
        unsigned int MODE0 :1;
        unsigned int MODE1 :1;
        unsigned int MODE2 :1;
    };
} CLC1CONbits_t;
extern volatile CLC1CONbits_t CLC1CONbits __attribute__((address(0xE10)));
# 25368 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CLC1POL __attribute__((address(0xE11)));

__asm("CLC1POL equ 0E11h");


typedef union {
    struct {
        unsigned int LC1G1POL :1;
        unsigned int LC1G2POL :1;
        unsigned int LC1G3POL :1;
        unsigned int LC1G4POL :1;
        unsigned int :3;
        unsigned int LC1POL :1;
    };
    struct {
        unsigned int G1POL :1;
        unsigned int G2POL :1;
        unsigned int G3POL :1;
        unsigned int G4POL :1;
        unsigned int :3;
        unsigned int POL :1;
    };
} CLC1POLbits_t;
extern volatile CLC1POLbits_t CLC1POLbits __attribute__((address(0xE11)));
# 25446 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CLC1SEL0 __attribute__((address(0xE12)));

__asm("CLC1SEL0 equ 0E12h");


typedef union {
    struct {
        unsigned int LC1D1S0 :1;
        unsigned int LC1D1S1 :1;
        unsigned int LC1D1S2 :1;
        unsigned int LC1D1S3 :1;
        unsigned int LC1D1S4 :1;
        unsigned int LC1D1S5 :1;
        unsigned int LC1D1S6 :1;
        unsigned int LC1D1S7 :1;
    };
    struct {
        unsigned int LC1D1S :8;
    };
    struct {
        unsigned int D1S :8;
    };
    struct {
        unsigned int D1S0 :1;
        unsigned int D1S1 :1;
        unsigned int D1S2 :1;
        unsigned int D1S3 :1;
        unsigned int D1S4 :1;
        unsigned int D1S5 :1;
        unsigned int D1S6 :1;
        unsigned int D1S7 :1;
    };
} CLC1SEL0bits_t;
extern volatile CLC1SEL0bits_t CLC1SEL0bits __attribute__((address(0xE12)));
# 25574 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CLC1SEL1 __attribute__((address(0xE13)));

__asm("CLC1SEL1 equ 0E13h");


typedef union {
    struct {
        unsigned int LC1D2S0 :1;
        unsigned int LC1D2S1 :1;
        unsigned int LC1D2S2 :1;
        unsigned int LC1D2S3 :1;
        unsigned int LC1D2S4 :1;
        unsigned int LC1D2S5 :1;
        unsigned int LC1D2S6 :1;
        unsigned int LC1D2S7 :1;
    };
    struct {
        unsigned int LC1D2S :8;
    };
    struct {
        unsigned int D2S :8;
    };
    struct {
        unsigned int D2S0 :1;
        unsigned int D2S1 :1;
        unsigned int D2S2 :1;
        unsigned int D2S3 :1;
        unsigned int D2S4 :1;
        unsigned int D2S5 :1;
        unsigned int D2S6 :1;
        unsigned int D2S7 :1;
    };
} CLC1SEL1bits_t;
extern volatile CLC1SEL1bits_t CLC1SEL1bits __attribute__((address(0xE13)));
# 25702 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CLC1SEL2 __attribute__((address(0xE14)));

__asm("CLC1SEL2 equ 0E14h");


typedef union {
    struct {
        unsigned int LC1D3S0 :1;
        unsigned int LC1D3S1 :1;
        unsigned int LC1D3S2 :1;
        unsigned int LC1D3S3 :1;
        unsigned int LC1D3S4 :1;
        unsigned int LC1D3S5 :1;
        unsigned int LC1D3S6 :1;
        unsigned int LC1D3S7 :1;
    };
    struct {
        unsigned int LC1D3S :8;
    };
    struct {
        unsigned int D3S :8;
    };
    struct {
        unsigned int D3S0 :1;
        unsigned int D3S1 :1;
        unsigned int D3S2 :1;
        unsigned int D3S3 :1;
        unsigned int D3S4 :1;
        unsigned int D3S5 :1;
        unsigned int D3S6 :1;
        unsigned int D3S7 :1;
    };
} CLC1SEL2bits_t;
extern volatile CLC1SEL2bits_t CLC1SEL2bits __attribute__((address(0xE14)));
# 25830 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CLC1SEL3 __attribute__((address(0xE15)));

__asm("CLC1SEL3 equ 0E15h");


typedef union {
    struct {
        unsigned int LC1D4S0 :1;
        unsigned int LC1D4S1 :1;
        unsigned int LC1D4S2 :1;
        unsigned int LC1D4S3 :1;
        unsigned int LC1D4S4 :1;
        unsigned int LC1D4S5 :1;
        unsigned int LC1D4S6 :1;
        unsigned int LC1D4S7 :1;
    };
    struct {
        unsigned int LC1D4S :8;
    };
    struct {
        unsigned int D4S :8;
    };
    struct {
        unsigned int D4S0 :1;
        unsigned int D4S1 :1;
        unsigned int D4S2 :1;
        unsigned int D4S3 :1;
        unsigned int D4S4 :1;
        unsigned int D4S5 :1;
        unsigned int D4S6 :1;
        unsigned int D4S7 :1;
    };
} CLC1SEL3bits_t;
extern volatile CLC1SEL3bits_t CLC1SEL3bits __attribute__((address(0xE15)));
# 25958 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CLC1GLS0 __attribute__((address(0xE16)));

__asm("CLC1GLS0 equ 0E16h");


typedef union {
    struct {
        unsigned int LC1G1D1N :1;
        unsigned int LC1G1D1T :1;
        unsigned int LC1G1D2N :1;
        unsigned int LC1G1D2T :1;
        unsigned int LC1G1D3N :1;
        unsigned int LC1G1D3T :1;
        unsigned int LC1G1D4N :1;
        unsigned int LC1G1D4T :1;
    };
    struct {
        unsigned int D1N :1;
        unsigned int D1T :1;
        unsigned int D2N :1;
        unsigned int D2T :1;
        unsigned int D3N :1;
        unsigned int D3T :1;
        unsigned int D4N :1;
        unsigned int D4T :1;
    };
} CLC1GLS0bits_t;
extern volatile CLC1GLS0bits_t CLC1GLS0bits __attribute__((address(0xE16)));
# 26070 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CLC1GLS1 __attribute__((address(0xE17)));

__asm("CLC1GLS1 equ 0E17h");


typedef union {
    struct {
        unsigned int LC1G2D1N :1;
        unsigned int LC1G2D1T :1;
        unsigned int LC1G2D2N :1;
        unsigned int LC1G2D2T :1;
        unsigned int LC1G2D3N :1;
        unsigned int LC1G2D3T :1;
        unsigned int LC1G2D4N :1;
        unsigned int LC1G2D4T :1;
    };
    struct {
        unsigned int D1N :1;
        unsigned int D1T :1;
        unsigned int D2N :1;
        unsigned int D2T :1;
        unsigned int D3N :1;
        unsigned int D3T :1;
        unsigned int D4N :1;
        unsigned int D4T :1;
    };
} CLC1GLS1bits_t;
extern volatile CLC1GLS1bits_t CLC1GLS1bits __attribute__((address(0xE17)));
# 26182 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CLC1GLS2 __attribute__((address(0xE18)));

__asm("CLC1GLS2 equ 0E18h");


typedef union {
    struct {
        unsigned int LC1G3D1N :1;
        unsigned int LC1G3D1T :1;
        unsigned int LC1G3D2N :1;
        unsigned int LC1G3D2T :1;
        unsigned int LC1G3D3N :1;
        unsigned int LC1G3D3T :1;
        unsigned int LC1G3D4N :1;
        unsigned int LC1G3D4T :1;
    };
    struct {
        unsigned int D1N :1;
        unsigned int D1T :1;
        unsigned int D2N :1;
        unsigned int D2T :1;
        unsigned int D3N :1;
        unsigned int D3T :1;
        unsigned int D4N :1;
        unsigned int D4T :1;
    };
} CLC1GLS2bits_t;
extern volatile CLC1GLS2bits_t CLC1GLS2bits __attribute__((address(0xE18)));
# 26294 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CLC1GLS3 __attribute__((address(0xE19)));

__asm("CLC1GLS3 equ 0E19h");


typedef union {
    struct {
        unsigned int LC1G4D1N :1;
        unsigned int LC1G4D1T :1;
        unsigned int LC1G4D2N :1;
        unsigned int LC1G4D2T :1;
        unsigned int LC1G4D3N :1;
        unsigned int LC1G4D3T :1;
        unsigned int LC1G4D4N :1;
        unsigned int LC1G4D4T :1;
    };
    struct {
        unsigned int G4D1N :1;
        unsigned int G4D1T :1;
        unsigned int G4D2N :1;
        unsigned int G4D2T :1;
        unsigned int G4D3N :1;
        unsigned int G4D3T :1;
        unsigned int G4D4N :1;
        unsigned int G4D4T :1;
    };
} CLC1GLS3bits_t;
extern volatile CLC1GLS3bits_t CLC1GLS3bits __attribute__((address(0xE19)));
# 26406 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CLC2CON __attribute__((address(0xE1A)));

__asm("CLC2CON equ 0E1Ah");


typedef union {
    struct {
        unsigned int LC2MODE :3;
        unsigned int LC2INTN :1;
        unsigned int LC2INTP :1;
        unsigned int LC2OUT :1;
        unsigned int :1;
        unsigned int LC2EN :1;
    };
    struct {
        unsigned int LC2MODE0 :1;
        unsigned int LC2MODE1 :1;
        unsigned int LC2MODE2 :1;
    };
    struct {
        unsigned int MODE :3;
        unsigned int INTN :1;
        unsigned int INTP :1;
        unsigned int OUT :1;
        unsigned int :1;
        unsigned int EN :1;
    };
    struct {
        unsigned int MODE0 :1;
        unsigned int MODE1 :1;
        unsigned int MODE2 :1;
    };
} CLC2CONbits_t;
extern volatile CLC2CONbits_t CLC2CONbits __attribute__((address(0xE1A)));
# 26524 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CLC2POL __attribute__((address(0xE1B)));

__asm("CLC2POL equ 0E1Bh");


typedef union {
    struct {
        unsigned int LC2G1POL :1;
        unsigned int LC2G2POL :1;
        unsigned int LC2G3POL :1;
        unsigned int LC2G4POL :1;
        unsigned int :3;
        unsigned int LC2POL :1;
    };
    struct {
        unsigned int G1POL :1;
        unsigned int G2POL :1;
        unsigned int G3POL :1;
        unsigned int G4POL :1;
        unsigned int :3;
        unsigned int POL :1;
    };
} CLC2POLbits_t;
extern volatile CLC2POLbits_t CLC2POLbits __attribute__((address(0xE1B)));
# 26602 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CLC2SEL0 __attribute__((address(0xE1C)));

__asm("CLC2SEL0 equ 0E1Ch");


typedef union {
    struct {
        unsigned int LC2D1S0 :1;
        unsigned int LC2D1S1 :1;
        unsigned int LC2D1S2 :1;
        unsigned int LC2D1S3 :1;
        unsigned int LC2D1S4 :1;
        unsigned int LC2D1S5 :1;
        unsigned int LC2D1S6 :1;
        unsigned int LC2D1S7 :1;
    };
    struct {
        unsigned int LC2D1S :8;
    };
    struct {
        unsigned int D1S :8;
    };
    struct {
        unsigned int D1S0 :1;
        unsigned int D1S1 :1;
        unsigned int D1S2 :1;
        unsigned int D1S3 :1;
        unsigned int D1S4 :1;
        unsigned int D1S5 :1;
        unsigned int D1S6 :1;
        unsigned int D1S7 :1;
    };
} CLC2SEL0bits_t;
extern volatile CLC2SEL0bits_t CLC2SEL0bits __attribute__((address(0xE1C)));
# 26730 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CLC2SEL1 __attribute__((address(0xE1D)));

__asm("CLC2SEL1 equ 0E1Dh");


typedef union {
    struct {
        unsigned int LC2D2S0 :1;
        unsigned int LC2D2S1 :1;
        unsigned int LC2D2S2 :1;
        unsigned int LC2D2S3 :1;
        unsigned int LC2D2S4 :1;
        unsigned int LC2D2S5 :1;
        unsigned int LC2D2S6 :1;
        unsigned int LC2D2S7 :1;
    };
    struct {
        unsigned int LC2D2S :8;
    };
    struct {
        unsigned int D2S :8;
    };
    struct {
        unsigned int D2S0 :1;
        unsigned int D2S1 :1;
        unsigned int D2S2 :1;
        unsigned int D2S3 :1;
        unsigned int D2S4 :1;
        unsigned int D2S5 :1;
        unsigned int D2S6 :1;
        unsigned int D2S7 :1;
    };
} CLC2SEL1bits_t;
extern volatile CLC2SEL1bits_t CLC2SEL1bits __attribute__((address(0xE1D)));
# 26858 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CLC2SEL2 __attribute__((address(0xE1E)));

__asm("CLC2SEL2 equ 0E1Eh");


typedef union {
    struct {
        unsigned int LC2D3S0 :1;
        unsigned int LC2D3S1 :1;
        unsigned int LC2D3S2 :1;
        unsigned int LC2D3S3 :1;
        unsigned int LC2D3S4 :1;
        unsigned int LC2D3S5 :1;
        unsigned int LC2D3S6 :1;
        unsigned int LC2D3S7 :1;
    };
    struct {
        unsigned int LC2D3S :8;
    };
    struct {
        unsigned int D3S :8;
    };
    struct {
        unsigned int D3S0 :1;
        unsigned int D3S1 :1;
        unsigned int D3S2 :1;
        unsigned int D3S3 :1;
        unsigned int D3S4 :1;
        unsigned int D3S5 :1;
        unsigned int D3S6 :1;
        unsigned int D3S7 :1;
    };
} CLC2SEL2bits_t;
extern volatile CLC2SEL2bits_t CLC2SEL2bits __attribute__((address(0xE1E)));
# 26986 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CLC2SEL3 __attribute__((address(0xE1F)));

__asm("CLC2SEL3 equ 0E1Fh");


typedef union {
    struct {
        unsigned int LC2D4S0 :1;
        unsigned int LC2D4S1 :1;
        unsigned int LC2D4S2 :1;
        unsigned int LC2D4S3 :1;
        unsigned int LC2D4S4 :1;
        unsigned int LC2D4S5 :1;
        unsigned int LC2D4S6 :1;
        unsigned int LC2D4S7 :1;
    };
    struct {
        unsigned int LC2D4S :8;
    };
    struct {
        unsigned int D4S :8;
    };
    struct {
        unsigned int D4S0 :1;
        unsigned int D4S1 :1;
        unsigned int D4S2 :1;
        unsigned int D4S3 :1;
        unsigned int D4S4 :1;
        unsigned int D4S5 :1;
        unsigned int D4S6 :1;
        unsigned int D4S7 :1;
    };
} CLC2SEL3bits_t;
extern volatile CLC2SEL3bits_t CLC2SEL3bits __attribute__((address(0xE1F)));
# 27114 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CLC2GLS0 __attribute__((address(0xE20)));

__asm("CLC2GLS0 equ 0E20h");


typedef union {
    struct {
        unsigned int LC2G1D1N :1;
        unsigned int LC2G1D1T :1;
        unsigned int LC2G1D2N :1;
        unsigned int LC2G1D2T :1;
        unsigned int LC2G1D3N :1;
        unsigned int LC2G1D3T :1;
        unsigned int LC2G1D4N :1;
        unsigned int LC2G1D4T :1;
    };
    struct {
        unsigned int D1N :1;
        unsigned int D1T :1;
        unsigned int D2N :1;
        unsigned int D2T :1;
        unsigned int D3N :1;
        unsigned int D3T :1;
        unsigned int D4N :1;
        unsigned int D4T :1;
    };
} CLC2GLS0bits_t;
extern volatile CLC2GLS0bits_t CLC2GLS0bits __attribute__((address(0xE20)));
# 27226 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CLC2GLS1 __attribute__((address(0xE21)));

__asm("CLC2GLS1 equ 0E21h");


typedef union {
    struct {
        unsigned int LC2G2D1N :1;
        unsigned int LC2G2D1T :1;
        unsigned int LC2G2D2N :1;
        unsigned int LC2G2D2T :1;
        unsigned int LC2G2D3N :1;
        unsigned int LC2G2D3T :1;
        unsigned int LC2G2D4N :1;
        unsigned int LC2G2D4T :1;
    };
    struct {
        unsigned int D1N :1;
        unsigned int D1T :1;
        unsigned int D2N :1;
        unsigned int D2T :1;
        unsigned int D3N :1;
        unsigned int D3T :1;
        unsigned int D4N :1;
        unsigned int D4T :1;
    };
} CLC2GLS1bits_t;
extern volatile CLC2GLS1bits_t CLC2GLS1bits __attribute__((address(0xE21)));
# 27338 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CLC2GLS2 __attribute__((address(0xE22)));

__asm("CLC2GLS2 equ 0E22h");


typedef union {
    struct {
        unsigned int LC2G3D1N :1;
        unsigned int LC2G3D1T :1;
        unsigned int LC2G3D2N :1;
        unsigned int LC2G3D2T :1;
        unsigned int LC2G3D3N :1;
        unsigned int LC2G3D3T :1;
        unsigned int LC2G3D4N :1;
        unsigned int LC2G3D4T :1;
    };
    struct {
        unsigned int D1N :1;
        unsigned int D1T :1;
        unsigned int D2N :1;
        unsigned int D2T :1;
        unsigned int D3N :1;
        unsigned int D3T :1;
        unsigned int D4N :1;
        unsigned int D4T :1;
    };
} CLC2GLS2bits_t;
extern volatile CLC2GLS2bits_t CLC2GLS2bits __attribute__((address(0xE22)));
# 27450 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CLC2GLS3 __attribute__((address(0xE23)));

__asm("CLC2GLS3 equ 0E23h");


typedef union {
    struct {
        unsigned int LC2G4D1N :1;
        unsigned int LC2G4D1T :1;
        unsigned int LC2G4D2N :1;
        unsigned int LC2G4D2T :1;
        unsigned int LC2G4D3N :1;
        unsigned int LC2G4D3T :1;
        unsigned int LC2G4D4N :1;
        unsigned int LC2G4D4T :1;
    };
    struct {
        unsigned int G4D1N :1;
        unsigned int G4D1T :1;
        unsigned int G4D2N :1;
        unsigned int G4D2T :1;
        unsigned int G4D3N :1;
        unsigned int G4D3T :1;
        unsigned int G4D4N :1;
        unsigned int G4D4T :1;
    };
} CLC2GLS3bits_t;
extern volatile CLC2GLS3bits_t CLC2GLS3bits __attribute__((address(0xE23)));
# 27562 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CLC3CON __attribute__((address(0xE24)));

__asm("CLC3CON equ 0E24h");


typedef union {
    struct {
        unsigned int LC3MODE :3;
        unsigned int LC3INTN :1;
        unsigned int LC3INTP :1;
        unsigned int LC3OUT :1;
        unsigned int :1;
        unsigned int LC3EN :1;
    };
    struct {
        unsigned int LC3MODE0 :1;
        unsigned int LC3MODE1 :1;
        unsigned int LC3MODE2 :1;
    };
    struct {
        unsigned int MODE :3;
        unsigned int INTN :1;
        unsigned int INTP :1;
        unsigned int OUT :1;
        unsigned int :1;
        unsigned int EN :1;
    };
    struct {
        unsigned int MODE0 :1;
        unsigned int MODE1 :1;
        unsigned int MODE2 :1;
    };
} CLC3CONbits_t;
extern volatile CLC3CONbits_t CLC3CONbits __attribute__((address(0xE24)));
# 27680 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CLC3POL __attribute__((address(0xE25)));

__asm("CLC3POL equ 0E25h");


typedef union {
    struct {
        unsigned int LC3G1POL :1;
        unsigned int LC3G2POL :1;
        unsigned int LC3G3POL :1;
        unsigned int LC3G4POL :1;
        unsigned int :3;
        unsigned int LC3POL :1;
    };
    struct {
        unsigned int G1POL :1;
        unsigned int G2POL :1;
        unsigned int G3POL :1;
        unsigned int G4POL :1;
        unsigned int :3;
        unsigned int POL :1;
    };
} CLC3POLbits_t;
extern volatile CLC3POLbits_t CLC3POLbits __attribute__((address(0xE25)));
# 27758 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CLC3SEL0 __attribute__((address(0xE26)));

__asm("CLC3SEL0 equ 0E26h");


typedef union {
    struct {
        unsigned int LC3D1S0 :1;
        unsigned int LC3D1S1 :1;
        unsigned int LC3D1S2 :1;
        unsigned int LC3D1S3 :1;
        unsigned int LC3D1S4 :1;
        unsigned int LC3D1S5 :1;
        unsigned int LC3D1S6 :1;
        unsigned int LC3D1S7 :1;
    };
    struct {
        unsigned int LC3D1S :8;
    };
    struct {
        unsigned int D1S :8;
    };
    struct {
        unsigned int D1S0 :1;
        unsigned int D1S1 :1;
        unsigned int D1S2 :1;
        unsigned int D1S3 :1;
        unsigned int D1S4 :1;
        unsigned int D1S5 :1;
        unsigned int D1S6 :1;
        unsigned int D1S7 :1;
    };
} CLC3SEL0bits_t;
extern volatile CLC3SEL0bits_t CLC3SEL0bits __attribute__((address(0xE26)));
# 27886 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CLC3SEL1 __attribute__((address(0xE27)));

__asm("CLC3SEL1 equ 0E27h");


typedef union {
    struct {
        unsigned int LC3D2S0 :1;
        unsigned int LC3D2S1 :1;
        unsigned int LC3D2S2 :1;
        unsigned int LC3D2S3 :1;
        unsigned int LC3D2S4 :1;
        unsigned int LC3D2S5 :1;
        unsigned int LC3D2S6 :1;
        unsigned int LC3D2S7 :1;
    };
    struct {
        unsigned int LC3D2S :8;
    };
    struct {
        unsigned int D2S :8;
    };
    struct {
        unsigned int D2S0 :1;
        unsigned int D2S1 :1;
        unsigned int D2S2 :1;
        unsigned int D2S3 :1;
        unsigned int D2S4 :1;
        unsigned int D2S5 :1;
        unsigned int D2S6 :1;
        unsigned int D2S7 :1;
    };
} CLC3SEL1bits_t;
extern volatile CLC3SEL1bits_t CLC3SEL1bits __attribute__((address(0xE27)));
# 28014 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CLC3SEL2 __attribute__((address(0xE28)));

__asm("CLC3SEL2 equ 0E28h");


typedef union {
    struct {
        unsigned int LC3D3S0 :1;
        unsigned int LC3D3S1 :1;
        unsigned int LC3D3S2 :1;
        unsigned int LC3D3S3 :1;
        unsigned int LC3D3S4 :1;
        unsigned int LC3D3S5 :1;
        unsigned int LC3D3S6 :1;
        unsigned int LC3D3S7 :1;
    };
    struct {
        unsigned int LC3D3S :8;
    };
    struct {
        unsigned int D3S :8;
    };
    struct {
        unsigned int D3S0 :1;
        unsigned int D3S1 :1;
        unsigned int D3S2 :1;
        unsigned int D3S3 :1;
        unsigned int D3S4 :1;
        unsigned int D3S5 :1;
        unsigned int D3S6 :1;
        unsigned int D3S7 :1;
    };
} CLC3SEL2bits_t;
extern volatile CLC3SEL2bits_t CLC3SEL2bits __attribute__((address(0xE28)));
# 28142 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CLC3SEL3 __attribute__((address(0xE29)));

__asm("CLC3SEL3 equ 0E29h");


typedef union {
    struct {
        unsigned int LC3D4S0 :1;
        unsigned int LC3D4S1 :1;
        unsigned int LC3D4S2 :1;
        unsigned int LC3D4S3 :1;
        unsigned int LC3D4S4 :1;
        unsigned int LC3D4S5 :1;
        unsigned int LC3D4S6 :1;
        unsigned int LC3D4S7 :1;
    };
    struct {
        unsigned int LC3D4S :8;
    };
    struct {
        unsigned int D4S :8;
    };
    struct {
        unsigned int D4S0 :1;
        unsigned int D4S1 :1;
        unsigned int D4S2 :1;
        unsigned int D4S3 :1;
        unsigned int D4S4 :1;
        unsigned int D4S5 :1;
        unsigned int D4S6 :1;
        unsigned int D4S7 :1;
    };
} CLC3SEL3bits_t;
extern volatile CLC3SEL3bits_t CLC3SEL3bits __attribute__((address(0xE29)));
# 28270 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CLC3GLS0 __attribute__((address(0xE2A)));

__asm("CLC3GLS0 equ 0E2Ah");


typedef union {
    struct {
        unsigned int LC3G1D1N :1;
        unsigned int LC3G1D1T :1;
        unsigned int LC3G1D2N :1;
        unsigned int LC3G1D2T :1;
        unsigned int LC3G1D3N :1;
        unsigned int LC3G1D3T :1;
        unsigned int LC3G1D4N :1;
        unsigned int LC3G1D4T :1;
    };
    struct {
        unsigned int D1N :1;
        unsigned int D1T :1;
        unsigned int D2N :1;
        unsigned int D2T :1;
        unsigned int D3N :1;
        unsigned int D3T :1;
        unsigned int D4N :1;
        unsigned int D4T :1;
    };
} CLC3GLS0bits_t;
extern volatile CLC3GLS0bits_t CLC3GLS0bits __attribute__((address(0xE2A)));
# 28382 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CLC3GLS1 __attribute__((address(0xE2B)));

__asm("CLC3GLS1 equ 0E2Bh");


typedef union {
    struct {
        unsigned int LC3G2D1N :1;
        unsigned int LC3G2D1T :1;
        unsigned int LC3G2D2N :1;
        unsigned int LC3G2D2T :1;
        unsigned int LC3G2D3N :1;
        unsigned int LC3G2D3T :1;
        unsigned int LC3G2D4N :1;
        unsigned int LC3G2D4T :1;
    };
    struct {
        unsigned int D1N :1;
        unsigned int D1T :1;
        unsigned int D2N :1;
        unsigned int D2T :1;
        unsigned int D3N :1;
        unsigned int D3T :1;
        unsigned int D4N :1;
        unsigned int D4T :1;
    };
} CLC3GLS1bits_t;
extern volatile CLC3GLS1bits_t CLC3GLS1bits __attribute__((address(0xE2B)));
# 28494 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CLC3GLS2 __attribute__((address(0xE2C)));

__asm("CLC3GLS2 equ 0E2Ch");


typedef union {
    struct {
        unsigned int LC3G3D1N :1;
        unsigned int LC3G3D1T :1;
        unsigned int LC3G3D2N :1;
        unsigned int LC3G3D2T :1;
        unsigned int LC3G3D3N :1;
        unsigned int LC3G3D3T :1;
        unsigned int LC3G3D4N :1;
        unsigned int LC3G3D4T :1;
    };
    struct {
        unsigned int D1N :1;
        unsigned int D1T :1;
        unsigned int D2N :1;
        unsigned int D2T :1;
        unsigned int D3N :1;
        unsigned int D3T :1;
        unsigned int D4N :1;
        unsigned int D4T :1;
    };
} CLC3GLS2bits_t;
extern volatile CLC3GLS2bits_t CLC3GLS2bits __attribute__((address(0xE2C)));
# 28606 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CLC3GLS3 __attribute__((address(0xE2D)));

__asm("CLC3GLS3 equ 0E2Dh");


typedef union {
    struct {
        unsigned int LC3G4D1N :1;
        unsigned int LC3G4D1T :1;
        unsigned int LC3G4D2N :1;
        unsigned int LC3G4D2T :1;
        unsigned int LC3G4D3N :1;
        unsigned int LC3G4D3T :1;
        unsigned int LC3G4D4N :1;
        unsigned int LC3G4D4T :1;
    };
    struct {
        unsigned int G4D1N :1;
        unsigned int G4D1T :1;
        unsigned int G4D2N :1;
        unsigned int G4D2T :1;
        unsigned int G4D3N :1;
        unsigned int G4D3T :1;
        unsigned int G4D4N :1;
        unsigned int G4D4T :1;
    };
} CLC3GLS3bits_t;
extern volatile CLC3GLS3bits_t CLC3GLS3bits __attribute__((address(0xE2D)));
# 28718 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CLC4CON __attribute__((address(0xE2E)));

__asm("CLC4CON equ 0E2Eh");


typedef union {
    struct {
        unsigned int LC4MODE :3;
        unsigned int LC4INTN :1;
        unsigned int LC4INTP :1;
        unsigned int LC4OUT :1;
        unsigned int :1;
        unsigned int LC4EN :1;
    };
    struct {
        unsigned int LC4MODE0 :1;
        unsigned int LC4MODE1 :1;
        unsigned int LC4MODE2 :1;
    };
    struct {
        unsigned int MODE :3;
        unsigned int INTN :1;
        unsigned int INTP :1;
        unsigned int OUT :1;
        unsigned int :1;
        unsigned int EN :1;
    };
    struct {
        unsigned int MODE0 :1;
        unsigned int MODE1 :1;
        unsigned int MODE2 :1;
    };
} CLC4CONbits_t;
extern volatile CLC4CONbits_t CLC4CONbits __attribute__((address(0xE2E)));
# 28836 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CLC4POL __attribute__((address(0xE2F)));

__asm("CLC4POL equ 0E2Fh");


typedef union {
    struct {
        unsigned int LC4G1POL :1;
        unsigned int LC4G2POL :1;
        unsigned int LC4G3POL :1;
        unsigned int LC4G4POL :1;
        unsigned int :3;
        unsigned int LC4POL :1;
    };
    struct {
        unsigned int G1POL :1;
        unsigned int G2POL :1;
        unsigned int G3POL :1;
        unsigned int G4POL :1;
        unsigned int :3;
        unsigned int POL :1;
    };
} CLC4POLbits_t;
extern volatile CLC4POLbits_t CLC4POLbits __attribute__((address(0xE2F)));
# 28914 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CLC4SEL0 __attribute__((address(0xE30)));

__asm("CLC4SEL0 equ 0E30h");


typedef union {
    struct {
        unsigned int LC4D1S0 :1;
        unsigned int LC4D1S1 :1;
        unsigned int LC4D1S2 :1;
        unsigned int LC4D1S3 :1;
        unsigned int LC4D1S4 :1;
        unsigned int LC4D1S5 :1;
        unsigned int LC4D1S6 :1;
        unsigned int LC4D1S7 :1;
    };
    struct {
        unsigned int LC4D1S :8;
    };
    struct {
        unsigned int D1S :8;
    };
    struct {
        unsigned int D1S0 :1;
        unsigned int D1S1 :1;
        unsigned int D1S2 :1;
        unsigned int D1S3 :1;
        unsigned int D1S4 :1;
        unsigned int D1S5 :1;
        unsigned int D1S6 :1;
        unsigned int D1S7 :1;
    };
} CLC4SEL0bits_t;
extern volatile CLC4SEL0bits_t CLC4SEL0bits __attribute__((address(0xE30)));
# 29042 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CLC4SEL1 __attribute__((address(0xE31)));

__asm("CLC4SEL1 equ 0E31h");


typedef union {
    struct {
        unsigned int LC4D2S0 :1;
        unsigned int LC4D2S1 :1;
        unsigned int LC4D2S2 :1;
        unsigned int LC4D2S3 :1;
        unsigned int LC4D2S4 :1;
        unsigned int LC4D2S5 :1;
        unsigned int LC4D2S6 :1;
        unsigned int LC4D2S7 :1;
    };
    struct {
        unsigned int LC4D2S :8;
    };
    struct {
        unsigned int D2S :8;
    };
    struct {
        unsigned int D2S0 :1;
        unsigned int D2S1 :1;
        unsigned int D2S2 :1;
        unsigned int D2S3 :1;
        unsigned int D2S4 :1;
        unsigned int D2S5 :1;
        unsigned int D2S6 :1;
        unsigned int D2S7 :1;
    };
} CLC4SEL1bits_t;
extern volatile CLC4SEL1bits_t CLC4SEL1bits __attribute__((address(0xE31)));
# 29170 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CLC4SEL2 __attribute__((address(0xE32)));

__asm("CLC4SEL2 equ 0E32h");


typedef union {
    struct {
        unsigned int LC4D3S0 :1;
        unsigned int LC4D3S1 :1;
        unsigned int LC4D3S2 :1;
        unsigned int LC4D3S3 :1;
        unsigned int LC4D3S4 :1;
        unsigned int LC4D3S5 :1;
        unsigned int LC4D3S6 :1;
        unsigned int LC4D3S7 :1;
    };
    struct {
        unsigned int LC4D3S :8;
    };
    struct {
        unsigned int D3S :8;
    };
    struct {
        unsigned int D3S0 :1;
        unsigned int D3S1 :1;
        unsigned int D3S2 :1;
        unsigned int D3S3 :1;
        unsigned int D3S4 :1;
        unsigned int D3S5 :1;
        unsigned int D3S6 :1;
        unsigned int D3S7 :1;
    };
} CLC4SEL2bits_t;
extern volatile CLC4SEL2bits_t CLC4SEL2bits __attribute__((address(0xE32)));
# 29298 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CLC4SEL3 __attribute__((address(0xE33)));

__asm("CLC4SEL3 equ 0E33h");


typedef union {
    struct {
        unsigned int LC4D4S0 :1;
        unsigned int LC4D4S1 :1;
        unsigned int LC4D4S2 :1;
        unsigned int LC4D4S3 :1;
        unsigned int LC4D4S4 :1;
        unsigned int LC4D4S5 :1;
        unsigned int LC4D4S6 :1;
        unsigned int LC4D4S7 :1;
    };
    struct {
        unsigned int LC4D4S :8;
    };
    struct {
        unsigned int D4S :8;
    };
    struct {
        unsigned int D4S0 :1;
        unsigned int D4S1 :1;
        unsigned int D4S2 :1;
        unsigned int D4S3 :1;
        unsigned int D4S4 :1;
        unsigned int D4S5 :1;
        unsigned int D4S6 :1;
        unsigned int D4S7 :1;
    };
} CLC4SEL3bits_t;
extern volatile CLC4SEL3bits_t CLC4SEL3bits __attribute__((address(0xE33)));
# 29426 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CLC4GLS0 __attribute__((address(0xE34)));

__asm("CLC4GLS0 equ 0E34h");


typedef union {
    struct {
        unsigned int LC4G1D1N :1;
        unsigned int LC4G1D1T :1;
        unsigned int LC4G1D2N :1;
        unsigned int LC4G1D2T :1;
        unsigned int LC4G1D3N :1;
        unsigned int LC4G1D3T :1;
        unsigned int LC4G1D4N :1;
        unsigned int LC4G1D4T :1;
    };
    struct {
        unsigned int D1N :1;
        unsigned int D1T :1;
        unsigned int D2N :1;
        unsigned int D2T :1;
        unsigned int D3N :1;
        unsigned int D3T :1;
        unsigned int D4N :1;
        unsigned int D4T :1;
    };
} CLC4GLS0bits_t;
extern volatile CLC4GLS0bits_t CLC4GLS0bits __attribute__((address(0xE34)));
# 29538 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CLC4GLS1 __attribute__((address(0xE35)));

__asm("CLC4GLS1 equ 0E35h");


typedef union {
    struct {
        unsigned int LC4G2D1N :1;
        unsigned int LC4G2D1T :1;
        unsigned int LC4G2D2N :1;
        unsigned int LC4G2D2T :1;
        unsigned int LC4G2D3N :1;
        unsigned int LC4G2D3T :1;
        unsigned int LC4G2D4N :1;
        unsigned int LC4G2D4T :1;
    };
    struct {
        unsigned int D1N :1;
        unsigned int D1T :1;
        unsigned int D2N :1;
        unsigned int D2T :1;
        unsigned int D3N :1;
        unsigned int D3T :1;
        unsigned int D4N :1;
        unsigned int D4T :1;
    };
} CLC4GLS1bits_t;
extern volatile CLC4GLS1bits_t CLC4GLS1bits __attribute__((address(0xE35)));
# 29650 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CLC4GLS2 __attribute__((address(0xE36)));

__asm("CLC4GLS2 equ 0E36h");


typedef union {
    struct {
        unsigned int LC4G3D1N :1;
        unsigned int LC4G3D1T :1;
        unsigned int LC4G3D2N :1;
        unsigned int LC4G3D2T :1;
        unsigned int LC4G3D3N :1;
        unsigned int LC4G3D3T :1;
        unsigned int LC4G3D4N :1;
        unsigned int LC4G3D4T :1;
    };
    struct {
        unsigned int D1N :1;
        unsigned int D1T :1;
        unsigned int D2N :1;
        unsigned int D2T :1;
        unsigned int D3N :1;
        unsigned int D3T :1;
        unsigned int D4N :1;
        unsigned int D4T :1;
    };
} CLC4GLS2bits_t;
extern volatile CLC4GLS2bits_t CLC4GLS2bits __attribute__((address(0xE36)));
# 29762 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CLC4GLS3 __attribute__((address(0xE37)));

__asm("CLC4GLS3 equ 0E37h");


typedef union {
    struct {
        unsigned int LC4G4D1N :1;
        unsigned int LC4G4D1T :1;
        unsigned int LC4G4D2N :1;
        unsigned int LC4G4D2T :1;
        unsigned int LC4G4D3N :1;
        unsigned int LC4G4D3T :1;
        unsigned int LC4G4D4N :1;
        unsigned int LC4G4D4T :1;
    };
    struct {
        unsigned int G4D1N :1;
        unsigned int G4D1T :1;
        unsigned int G4D2N :1;
        unsigned int G4D2T :1;
        unsigned int G4D3N :1;
        unsigned int G4D3T :1;
        unsigned int G4D4N :1;
        unsigned int G4D4T :1;
    };
} CLC4GLS3bits_t;
extern volatile CLC4GLS3bits_t CLC4GLS3bits __attribute__((address(0xE37)));
# 29874 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char PPSLOCK __attribute__((address(0xE8F)));

__asm("PPSLOCK equ 0E8Fh");


typedef union {
    struct {
        unsigned int PPSLOCKED :1;
    };
} PPSLOCKbits_t;
extern volatile PPSLOCKbits_t PPSLOCKbits __attribute__((address(0xE8F)));
# 29894 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char INTPPS __attribute__((address(0xE90)));

__asm("INTPPS equ 0E90h");


typedef union {
    struct {
        unsigned int INTPPS :4;
    };
    struct {
        unsigned int INTPPS0 :1;
        unsigned int INTPPS1 :1;
        unsigned int INTPPS2 :1;
        unsigned int INTPPS3 :1;
    };
} INTPPSbits_t;
extern volatile INTPPSbits_t INTPPSbits __attribute__((address(0xE90)));
# 29940 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char T0CKIPPS __attribute__((address(0xE91)));

__asm("T0CKIPPS equ 0E91h");


typedef union {
    struct {
        unsigned int T0CKIPPS :4;
    };
    struct {
        unsigned int T0CKIPPS0 :1;
        unsigned int T0CKIPPS1 :1;
        unsigned int T0CKIPPS2 :1;
        unsigned int T0CKIPPS3 :1;
    };
} T0CKIPPSbits_t;
extern volatile T0CKIPPSbits_t T0CKIPPSbits __attribute__((address(0xE91)));
# 29986 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char T1CKIPPS __attribute__((address(0xE92)));

__asm("T1CKIPPS equ 0E92h");


typedef union {
    struct {
        unsigned int T1CKIPPS :5;
    };
    struct {
        unsigned int T1CKIPPS0 :1;
        unsigned int T1CKIPPS1 :1;
        unsigned int T1CKIPPS2 :1;
        unsigned int T1CKIPPS3 :1;
        unsigned int T1CKIPPS4 :1;
    };
} T1CKIPPSbits_t;
extern volatile T1CKIPPSbits_t T1CKIPPSbits __attribute__((address(0xE92)));
# 30038 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char T1GPPS __attribute__((address(0xE93)));

__asm("T1GPPS equ 0E93h");


typedef union {
    struct {
        unsigned int T1GPPS :5;
    };
    struct {
        unsigned int T1GPPS0 :1;
        unsigned int T1GPPS1 :1;
        unsigned int T1GPPS2 :1;
        unsigned int T1GPPS3 :1;
        unsigned int T1GPPS4 :1;
    };
} T1GPPSbits_t;
extern volatile T1GPPSbits_t T1GPPSbits __attribute__((address(0xE93)));
# 30090 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char T3CKIPPS __attribute__((address(0xE94)));

__asm("T3CKIPPS equ 0E94h");


typedef union {
    struct {
        unsigned int T3CKIPPS :5;
    };
    struct {
        unsigned int T3CKIPPS0 :1;
        unsigned int T3CKIPPS1 :1;
        unsigned int T3CKIPPS2 :1;
        unsigned int T3CKIPPS3 :1;
        unsigned int T3CKIPPS4 :1;
    };
} T3CKIPPSbits_t;
extern volatile T3CKIPPSbits_t T3CKIPPSbits __attribute__((address(0xE94)));
# 30142 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char T3GPPS __attribute__((address(0xE95)));

__asm("T3GPPS equ 0E95h");


typedef union {
    struct {
        unsigned int T3GPPS :5;
    };
    struct {
        unsigned int T3GPPS0 :1;
        unsigned int T3GPPS1 :1;
        unsigned int T3GPPS2 :1;
        unsigned int T3GPPS3 :1;
        unsigned int T3GPPS4 :1;
    };
} T3GPPSbits_t;
extern volatile T3GPPSbits_t T3GPPSbits __attribute__((address(0xE95)));
# 30194 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char T5CKIPPS __attribute__((address(0xE96)));

__asm("T5CKIPPS equ 0E96h");


typedef union {
    struct {
        unsigned int T5CKIPPS :5;
    };
    struct {
        unsigned int T5CKIPPS0 :1;
        unsigned int T5CKIPPS1 :1;
        unsigned int T5CKIPPS2 :1;
        unsigned int T5CKIPPS3 :1;
        unsigned int T5CKIPPS4 :1;
    };
} T5CKIPPSbits_t;
extern volatile T5CKIPPSbits_t T5CKIPPSbits __attribute__((address(0xE96)));
# 30246 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char T5GPPS __attribute__((address(0xE97)));

__asm("T5GPPS equ 0E97h");


typedef union {
    struct {
        unsigned int T5GPPS :5;
    };
    struct {
        unsigned int T5GPPS0 :1;
        unsigned int T5GPPS1 :1;
        unsigned int T5GPPS2 :1;
        unsigned int T5GPPS3 :1;
        unsigned int T5GPPS4 :1;
    };
} T5GPPSbits_t;
extern volatile T5GPPSbits_t T5GPPSbits __attribute__((address(0xE97)));
# 30298 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char T2AINPPS __attribute__((address(0xE9C)));

__asm("T2AINPPS equ 0E9Ch");


typedef union {
    struct {
        unsigned int T2AINPPS :5;
    };
    struct {
        unsigned int T2AINPPS0 :1;
        unsigned int T2AINPPS1 :1;
        unsigned int T2AINPPS2 :1;
        unsigned int T2AINPPS3 :1;
        unsigned int T2AINPPS4 :1;
    };
} T2AINPPSbits_t;
extern volatile T2AINPPSbits_t T2AINPPSbits __attribute__((address(0xE9C)));
# 30350 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char T4AINPPS __attribute__((address(0xE9D)));

__asm("T4AINPPS equ 0E9Dh");


typedef union {
    struct {
        unsigned int T4AINPPS :5;
    };
    struct {
        unsigned int T4AINPPS0 :1;
        unsigned int T4AINPPS1 :1;
        unsigned int T4AINPPS2 :1;
        unsigned int T4AINPPS3 :1;
        unsigned int T4AINPPS4 :1;
    };
} T4AINPPSbits_t;
extern volatile T4AINPPSbits_t T4AINPPSbits __attribute__((address(0xE9D)));
# 30402 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char T6AINPPS __attribute__((address(0xE9E)));

__asm("T6AINPPS equ 0E9Eh");


typedef union {
    struct {
        unsigned int T6AINPPS :5;
    };
    struct {
        unsigned int T6AINPPS0 :1;
        unsigned int T6AINPPS1 :1;
        unsigned int T6AINPPS2 :1;
        unsigned int T6AINPPS3 :1;
        unsigned int T6AINPPS4 :1;
    };
} T6AINPPSbits_t;
extern volatile T6AINPPSbits_t T6AINPPSbits __attribute__((address(0xE9E)));
# 30454 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CCP1PPS __attribute__((address(0xEA1)));

__asm("CCP1PPS equ 0EA1h");


typedef union {
    struct {
        unsigned int CCP1PPS :5;
    };
    struct {
        unsigned int CCP1PPS0 :1;
        unsigned int CCP1PPS1 :1;
        unsigned int CCP1PPS2 :1;
        unsigned int CCP1PPS3 :1;
        unsigned int CCP1PPS4 :1;
    };
} CCP1PPSbits_t;
extern volatile CCP1PPSbits_t CCP1PPSbits __attribute__((address(0xEA1)));
# 30506 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CCP2PPS __attribute__((address(0xEA2)));

__asm("CCP2PPS equ 0EA2h");


typedef union {
    struct {
        unsigned int CCP2PPS :5;
    };
    struct {
        unsigned int CCP2PPS0 :1;
        unsigned int CCP2PPS1 :1;
        unsigned int CCP2PPS2 :1;
        unsigned int CCP2PPS3 :1;
        unsigned int CCP2PPS4 :1;
    };
} CCP2PPSbits_t;
extern volatile CCP2PPSbits_t CCP2PPSbits __attribute__((address(0xEA2)));
# 30558 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CCP3PPS __attribute__((address(0xEA3)));

__asm("CCP3PPS equ 0EA3h");


typedef union {
    struct {
        unsigned int CCP3PPS :5;
    };
    struct {
        unsigned int CCP3PPS0 :1;
        unsigned int CCP3PPS1 :1;
        unsigned int CCP3PPS2 :1;
        unsigned int CCP3PPS3 :1;
        unsigned int CCP3PPS4 :1;
    };
} CCP3PPSbits_t;
extern volatile CCP3PPSbits_t CCP3PPSbits __attribute__((address(0xEA3)));
# 30610 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CCP4PPS __attribute__((address(0xEA4)));

__asm("CCP4PPS equ 0EA4h");


typedef union {
    struct {
        unsigned int CCP4PPS :5;
    };
    struct {
        unsigned int CCP4PPS0 :1;
        unsigned int CCP4PPS1 :1;
        unsigned int CCP4PPS2 :1;
        unsigned int CCP4PPS3 :1;
        unsigned int CCP4PPS4 :1;
    };
} CCP4PPSbits_t;
extern volatile CCP4PPSbits_t CCP4PPSbits __attribute__((address(0xEA4)));
# 30662 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CCP5PPS __attribute__((address(0xEA5)));

__asm("CCP5PPS equ 0EA5h");


typedef union {
    struct {
        unsigned int CCP5PPS :6;
    };
    struct {
        unsigned int CCP5PPS0 :1;
        unsigned int CCP5PPS1 :1;
        unsigned int CCP5PPS2 :1;
        unsigned int CCP5PPS3 :1;
        unsigned int CCP5PPS4 :1;
        unsigned int CCP5PPS5 :1;
    };
} CCP5PPSbits_t;
extern volatile CCP5PPSbits_t CCP5PPSbits __attribute__((address(0xEA5)));
# 30720 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SMT1WINPPS __attribute__((address(0xEA9)));

__asm("SMT1WINPPS equ 0EA9h");


typedef union {
    struct {
        unsigned int SMT1WINPPS :5;
    };
    struct {
        unsigned int SMU1WINPPS0 :1;
        unsigned int SMU1WINPPS1 :1;
        unsigned int SMU1WINPPS2 :1;
        unsigned int SMU1WINPPS3 :1;
        unsigned int SMU1WINPPS4 :1;
    };
} SMT1WINPPSbits_t;
extern volatile SMT1WINPPSbits_t SMT1WINPPSbits __attribute__((address(0xEA9)));
# 30772 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SMT1SIGPPS __attribute__((address(0xEAA)));

__asm("SMT1SIGPPS equ 0EAAh");


typedef union {
    struct {
        unsigned int SMT1SIGPPS :5;
    };
    struct {
        unsigned int SMU1SIGPPS0 :1;
        unsigned int SMU1SIGPPS1 :1;
        unsigned int SMU1SIGPPS2 :1;
        unsigned int SMU1SIGPPS3 :1;
        unsigned int SMU1SIGPPS4 :1;
    };
} SMT1SIGPPSbits_t;
extern volatile SMT1SIGPPSbits_t SMT1SIGPPSbits __attribute__((address(0xEAA)));
# 30824 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SMT2WINPPS __attribute__((address(0xEAB)));

__asm("SMT2WINPPS equ 0EABh");


typedef union {
    struct {
        unsigned int SMT2WINPPS :5;
    };
    struct {
        unsigned int SMU2WINPPS0 :1;
        unsigned int SMU2WINPPS1 :1;
        unsigned int SMU2WINPPS2 :1;
        unsigned int SMU2WINPPS3 :1;
        unsigned int SMU2WINPPS4 :1;
    };
} SMT2WINPPSbits_t;
extern volatile SMT2WINPPSbits_t SMT2WINPPSbits __attribute__((address(0xEAB)));
# 30876 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SMT2SIGPPS __attribute__((address(0xEAC)));

__asm("SMT2SIGPPS equ 0EACh");


typedef union {
    struct {
        unsigned int SMT2SIGPPS :5;
    };
    struct {
        unsigned int SMU2SIGPPS0 :1;
        unsigned int SMU2SIGPPS1 :1;
        unsigned int SMU2SIGPPS2 :1;
        unsigned int SMU2SIGPPS3 :1;
        unsigned int SMU2SIGPPS4 :1;
    };
} SMT2SIGPPSbits_t;
extern volatile SMT2SIGPPSbits_t SMT2SIGPPSbits __attribute__((address(0xEAC)));
# 30928 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CWG1PPS __attribute__((address(0xEB1)));

__asm("CWG1PPS equ 0EB1h");


typedef union {
    struct {
        unsigned int CWG1PPS :5;
    };
    struct {
        unsigned int CWG1PPS0 :1;
        unsigned int CWG1PPS1 :1;
        unsigned int CWG1PPS2 :1;
        unsigned int CWG1PPS3 :1;
        unsigned int CWG1PPS4 :1;
    };
} CWG1PPSbits_t;
extern volatile CWG1PPSbits_t CWG1PPSbits __attribute__((address(0xEB1)));
# 30980 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CWG2PPS __attribute__((address(0xEB2)));

__asm("CWG2PPS equ 0EB2h");


typedef union {
    struct {
        unsigned int CWG2PPS :5;
    };
    struct {
        unsigned int CWG2PPS0 :1;
        unsigned int CWG2PPS1 :1;
        unsigned int CWG2PPS2 :1;
        unsigned int CWG2PPS3 :1;
        unsigned int CWG2PPS4 :1;
    };
} CWG2PPSbits_t;
extern volatile CWG2PPSbits_t CWG2PPSbits __attribute__((address(0xEB2)));
# 31032 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CWG3PPS __attribute__((address(0xEB3)));

__asm("CWG3PPS equ 0EB3h");


typedef union {
    struct {
        unsigned int CWG3PPS :5;
    };
    struct {
        unsigned int CWG3PPS0 :1;
        unsigned int CWG3PPS1 :1;
        unsigned int CWG3PPS2 :1;
        unsigned int CWG3PPS3 :1;
        unsigned int CWG3PPS4 :1;
    };
} CWG3PPSbits_t;
extern volatile CWG3PPSbits_t CWG3PPSbits __attribute__((address(0xEB3)));
# 31084 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char MDCARLPPS __attribute__((address(0xEB8)));

__asm("MDCARLPPS equ 0EB8h");


typedef union {
    struct {
        unsigned int MDCARLPPS :5;
    };
    struct {
        unsigned int MDCARLPPS0 :1;
        unsigned int MDCARLPPS1 :1;
        unsigned int MDCARLPPS2 :1;
        unsigned int MDCARLPPS3 :1;
        unsigned int MDCARLPPS4 :1;
    };
} MDCARLPPSbits_t;
extern volatile MDCARLPPSbits_t MDCARLPPSbits __attribute__((address(0xEB8)));
# 31136 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char MDCARHPPS __attribute__((address(0xEB9)));

__asm("MDCARHPPS equ 0EB9h");


typedef union {
    struct {
        unsigned int MDCARHPPS :5;
    };
    struct {
        unsigned int MDCARHPPS0 :1;
        unsigned int MDCARHPPS1 :1;
        unsigned int MDCARHPPS2 :1;
        unsigned int MDCARHPPS3 :1;
        unsigned int MDCARHPPS4 :1;
    };
} MDCARHPPSbits_t;
extern volatile MDCARHPPSbits_t MDCARHPPSbits __attribute__((address(0xEB9)));
# 31188 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char MDSRCPPS __attribute__((address(0xEBA)));

__asm("MDSRCPPS equ 0EBAh");


typedef union {
    struct {
        unsigned int MDSRCPPS :5;
    };
    struct {
        unsigned int MDSRCPPS0 :1;
        unsigned int MDSRCPPS1 :1;
        unsigned int MDSRCPPS2 :1;
        unsigned int MDSRCPPS3 :1;
        unsigned int MDSRCPPS4 :1;
    };
} MDSRCPPSbits_t;
extern volatile MDSRCPPSbits_t MDSRCPPSbits __attribute__((address(0xEBA)));
# 31240 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CLCIN0PPS __attribute__((address(0xEBB)));

__asm("CLCIN0PPS equ 0EBBh");


typedef union {
    struct {
        unsigned int CLCIN0PPS0 :1;
        unsigned int CLCIN0PPS1 :1;
        unsigned int CLCIN0PPS2 :1;
        unsigned int CLCIN0PPS3 :1;
        unsigned int CLCIN0PPS4 :1;
    };
    struct {
        unsigned int CLCIN0PPS :5;
    };
} CLCIN0PPSbits_t;
extern volatile CLCIN0PPSbits_t CLCIN0PPSbits __attribute__((address(0xEBB)));
# 31292 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CLCIN1PPS __attribute__((address(0xEBC)));

__asm("CLCIN1PPS equ 0EBCh");


typedef union {
    struct {
        unsigned int CLCIN1PPS0 :1;
        unsigned int CLCIN1PPS1 :1;
        unsigned int CLCIN1PPS2 :1;
        unsigned int CLCIN1PPS3 :1;
        unsigned int CLCIN1PPS4 :1;
    };
    struct {
        unsigned int CLCIN1PPS :5;
    };
} CLCIN1PPSbits_t;
extern volatile CLCIN1PPSbits_t CLCIN1PPSbits __attribute__((address(0xEBC)));
# 31344 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CLCIN2PPS __attribute__((address(0xEBD)));

__asm("CLCIN2PPS equ 0EBDh");


typedef union {
    struct {
        unsigned int CLCIN2PPS0 :1;
        unsigned int CLCIN2PPS1 :1;
        unsigned int CLCIN2PPS2 :1;
        unsigned int CLCIN2PPS3 :1;
        unsigned int CLCIN2PPS4 :1;
    };
    struct {
        unsigned int CLCIN2PPS :5;
    };
} CLCIN2PPSbits_t;
extern volatile CLCIN2PPSbits_t CLCIN2PPSbits __attribute__((address(0xEBD)));
# 31396 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CLCIN3PPS __attribute__((address(0xEBE)));

__asm("CLCIN3PPS equ 0EBEh");


typedef union {
    struct {
        unsigned int CLCIN3PPS0 :1;
        unsigned int CLCIN3PPS1 :1;
        unsigned int CLCIN3PPS2 :1;
        unsigned int CLCIN3PPS3 :1;
        unsigned int CLCIN3PPS4 :1;
    };
    struct {
        unsigned int CLCIN3PPS :5;
    };
} CLCIN3PPSbits_t;
extern volatile CLCIN3PPSbits_t CLCIN3PPSbits __attribute__((address(0xEBE)));
# 31448 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char ADCACTPPS __attribute__((address(0xEC3)));

__asm("ADCACTPPS equ 0EC3h");


typedef union {
    struct {
        unsigned int ADCACTPPS0 :1;
        unsigned int ADCACTPPS1 :1;
        unsigned int ADCACTPPS2 :1;
        unsigned int ADCACTPPS3 :1;
        unsigned int ADCACTPPS4 :1;
    };
    struct {
        unsigned int ADCACTPPS :5;
    };
} ADCACTPPSbits_t;
extern volatile ADCACTPPSbits_t ADCACTPPSbits __attribute__((address(0xEC3)));
# 31500 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SSP1CLKPPS __attribute__((address(0xEC5)));

__asm("SSP1CLKPPS equ 0EC5h");


typedef union {
    struct {
        unsigned int SSP1CLKPPS0 :1;
        unsigned int SSP1CLKPPS1 :1;
        unsigned int SSP1CLKPPS2 :1;
        unsigned int SSP1CLKPPS3 :1;
        unsigned int SSP1CLKPPS4 :1;
    };
    struct {
        unsigned int SSP1CLKPPS :5;
    };
} SSP1CLKPPSbits_t;
extern volatile SSP1CLKPPSbits_t SSP1CLKPPSbits __attribute__((address(0xEC5)));
# 31552 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SSP1DATPPS __attribute__((address(0xEC6)));

__asm("SSP1DATPPS equ 0EC6h");


typedef union {
    struct {
        unsigned int SSP1DATPPS0 :1;
        unsigned int SSP1DATPPS1 :1;
        unsigned int SSP1DATPPS2 :1;
        unsigned int SSP1DATPPS3 :1;
        unsigned int SSP1DATPPS4 :1;
    };
    struct {
        unsigned int SSP1DATPPS :5;
    };
} SSP1DATPPSbits_t;
extern volatile SSP1DATPPSbits_t SSP1DATPPSbits __attribute__((address(0xEC6)));
# 31604 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SSP1SSPPS __attribute__((address(0xEC7)));

__asm("SSP1SSPPS equ 0EC7h");


typedef union {
    struct {
        unsigned int SSP1SSPPS0 :1;
        unsigned int SSP1SSPPS1 :1;
        unsigned int SSP1SSPPS2 :1;
        unsigned int SSP1SSPPS3 :1;
        unsigned int SSP1SSPPS4 :1;
    };
    struct {
        unsigned int SSP1SSPPS :5;
    };
} SSP1SSPPSbits_t;
extern volatile SSP1SSPPSbits_t SSP1SSPPSbits __attribute__((address(0xEC7)));
# 31656 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SSP2CLKPPS __attribute__((address(0xEC8)));

__asm("SSP2CLKPPS equ 0EC8h");


typedef union {
    struct {
        unsigned int SSP2CLKPPS0 :1;
        unsigned int SSP2CLKPPS1 :1;
        unsigned int SSP2CLKPPS2 :1;
        unsigned int SSP2CLKPPS3 :1;
        unsigned int SSP2CLKPPS4 :1;
    };
    struct {
        unsigned int SSP2CLKPPS :5;
    };
} SSP2CLKPPSbits_t;
extern volatile SSP2CLKPPSbits_t SSP2CLKPPSbits __attribute__((address(0xEC8)));
# 31708 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SSP2DATPPS __attribute__((address(0xEC9)));

__asm("SSP2DATPPS equ 0EC9h");


typedef union {
    struct {
        unsigned int SSP2DATPPS0 :1;
        unsigned int SSP2DATPPS1 :1;
        unsigned int SSP2DATPPS2 :1;
        unsigned int SSP2DATPPS3 :1;
        unsigned int SSP2DATPPS4 :1;
    };
    struct {
        unsigned int SSP2DATPPS :5;
    };
} SSP2DATPPSbits_t;
extern volatile SSP2DATPPSbits_t SSP2DATPPSbits __attribute__((address(0xEC9)));
# 31760 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SSP2SSPPS __attribute__((address(0xECA)));

__asm("SSP2SSPPS equ 0ECAh");


typedef union {
    struct {
        unsigned int SSP2SSPPS0 :1;
        unsigned int SSP2SSPPS1 :1;
        unsigned int SSP2SSPPS2 :1;
        unsigned int SSP2SSPPS3 :1;
        unsigned int SSP2SSPPS4 :1;
    };
    struct {
        unsigned int SSP2SSPPS :5;
    };
} SSP2SSPPSbits_t;
extern volatile SSP2SSPPSbits_t SSP2SSPPSbits __attribute__((address(0xECA)));
# 31812 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char RXPPS __attribute__((address(0xECB)));

__asm("RXPPS equ 0ECBh");


typedef union {
    struct {
        unsigned int RXPPS0 :1;
        unsigned int RXPPS1 :1;
        unsigned int RXPPS2 :1;
        unsigned int RXPPS3 :1;
        unsigned int RXPPS4 :1;
    };
    struct {
        unsigned int RXPPS :5;
    };
} RXPPSbits_t;
extern volatile RXPPSbits_t RXPPSbits __attribute__((address(0xECB)));
# 31864 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char TXPPS __attribute__((address(0xECC)));

__asm("TXPPS equ 0ECCh");


typedef union {
    struct {
        unsigned int TXPPS0 :1;
        unsigned int TXPPS1 :1;
        unsigned int TXPPS2 :1;
        unsigned int TXPPS3 :1;
        unsigned int TXPPS4 :1;
    };
    struct {
        unsigned int TXPPS :5;
    };
} TXPPSbits_t;
extern volatile TXPPSbits_t TXPPSbits __attribute__((address(0xECC)));
# 31916 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char RA0PPS __attribute__((address(0xF10)));

__asm("RA0PPS equ 0F10h");


typedef union {
    struct {
        unsigned int RA0PPS0 :1;
        unsigned int RA0PPS1 :1;
        unsigned int RA0PPS2 :1;
        unsigned int RA0PPS3 :1;
        unsigned int RA0PPS4 :1;
        unsigned int RA0PPS5 :1;
    };
} RA0PPSbits_t;
extern volatile RA0PPSbits_t RA0PPSbits __attribute__((address(0xF10)));
# 31966 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char RA1PPS __attribute__((address(0xF11)));

__asm("RA1PPS equ 0F11h");


typedef union {
    struct {
        unsigned int RA1PPS0 :1;
        unsigned int RA1PPS1 :1;
        unsigned int RA1PPS2 :1;
        unsigned int RA1PPS3 :1;
        unsigned int RA1PPS4 :1;
        unsigned int RA1PPS5 :1;
    };
} RA1PPSbits_t;
extern volatile RA1PPSbits_t RA1PPSbits __attribute__((address(0xF11)));
# 32016 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char RA2PPS __attribute__((address(0xF12)));

__asm("RA2PPS equ 0F12h");


typedef union {
    struct {
        unsigned int RA2PPS0 :1;
        unsigned int RA2PPS1 :1;
        unsigned int RA2PPS2 :1;
        unsigned int RA2PPS3 :1;
        unsigned int RA2PPS4 :1;
        unsigned int RA2PPS5 :1;
    };
} RA2PPSbits_t;
extern volatile RA2PPSbits_t RA2PPSbits __attribute__((address(0xF12)));
# 32066 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char RA3PPS __attribute__((address(0xF13)));

__asm("RA3PPS equ 0F13h");


typedef union {
    struct {
        unsigned int RA3PPS0 :1;
        unsigned int RA3PPS1 :1;
        unsigned int RA3PPS2 :1;
        unsigned int RA3PPS3 :1;
        unsigned int RA3PPS4 :1;
        unsigned int RA3PPS5 :1;
    };
} RA3PPSbits_t;
extern volatile RA3PPSbits_t RA3PPSbits __attribute__((address(0xF13)));
# 32116 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char RA4PPS __attribute__((address(0xF14)));

__asm("RA4PPS equ 0F14h");


typedef union {
    struct {
        unsigned int RA4PPS0 :1;
        unsigned int RA4PPS1 :1;
        unsigned int RA4PPS2 :1;
        unsigned int RA4PPS3 :1;
        unsigned int RA4PPS4 :1;
        unsigned int RA4PPS5 :1;
    };
} RA4PPSbits_t;
extern volatile RA4PPSbits_t RA4PPSbits __attribute__((address(0xF14)));
# 32166 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char RA5PPS __attribute__((address(0xF15)));

__asm("RA5PPS equ 0F15h");


typedef union {
    struct {
        unsigned int RA5PPS0 :1;
        unsigned int RA5PPS1 :1;
        unsigned int RA5PPS2 :1;
        unsigned int RA5PPS3 :1;
        unsigned int RA5PPS4 :1;
        unsigned int RA5PPS5 :1;
    };
} RA5PPSbits_t;
extern volatile RA5PPSbits_t RA5PPSbits __attribute__((address(0xF15)));
# 32216 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char RA6PPS __attribute__((address(0xF16)));

__asm("RA6PPS equ 0F16h");


typedef union {
    struct {
        unsigned int RA6PPS0 :1;
        unsigned int RA6PPS1 :1;
        unsigned int RA6PPS2 :1;
        unsigned int RA6PPS3 :1;
        unsigned int RA6PPS4 :1;
        unsigned int RA6PPS5 :1;
    };
} RA6PPSbits_t;
extern volatile RA6PPSbits_t RA6PPSbits __attribute__((address(0xF16)));
# 32266 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char RA7PPS __attribute__((address(0xF17)));

__asm("RA7PPS equ 0F17h");


typedef union {
    struct {
        unsigned int RA7PPS0 :1;
        unsigned int RA7PPS1 :1;
        unsigned int RA7PPS2 :1;
        unsigned int RA7PPS3 :1;
        unsigned int RA7PPS4 :1;
        unsigned int RA7PPS5 :1;
    };
} RA7PPSbits_t;
extern volatile RA7PPSbits_t RA7PPSbits __attribute__((address(0xF17)));
# 32316 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char RB0PPS __attribute__((address(0xF18)));

__asm("RB0PPS equ 0F18h");


typedef union {
    struct {
        unsigned int RB0PPS0 :1;
        unsigned int RB0PPS1 :1;
        unsigned int RB0PPS2 :1;
        unsigned int RB0PPS3 :1;
        unsigned int RB0PPS4 :1;
        unsigned int RB0PPS5 :1;
    };
} RB0PPSbits_t;
extern volatile RB0PPSbits_t RB0PPSbits __attribute__((address(0xF18)));
# 32366 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char RB1PPS __attribute__((address(0xF19)));

__asm("RB1PPS equ 0F19h");


typedef union {
    struct {
        unsigned int RB1PPS0 :1;
        unsigned int RB1PPS1 :1;
        unsigned int RB1PPS2 :1;
        unsigned int RB1PPS3 :1;
        unsigned int RB1PPS4 :1;
        unsigned int RB1PPS5 :1;
    };
} RB1PPSbits_t;
extern volatile RB1PPSbits_t RB1PPSbits __attribute__((address(0xF19)));
# 32416 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char RB2PPS __attribute__((address(0xF1A)));

__asm("RB2PPS equ 0F1Ah");


typedef union {
    struct {
        unsigned int RB2PPS0 :1;
        unsigned int RB2PPS1 :1;
        unsigned int RB2PPS2 :1;
        unsigned int RB2PPS3 :1;
        unsigned int RB2PPS4 :1;
        unsigned int RB2PPS5 :1;
    };
} RB2PPSbits_t;
extern volatile RB2PPSbits_t RB2PPSbits __attribute__((address(0xF1A)));
# 32466 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char RB3PPS __attribute__((address(0xF1B)));

__asm("RB3PPS equ 0F1Bh");


typedef union {
    struct {
        unsigned int RB3PPS0 :1;
        unsigned int RB3PPS1 :1;
        unsigned int RB3PPS2 :1;
        unsigned int RB3PPS3 :1;
        unsigned int RB3PPS4 :1;
        unsigned int RB3PPS5 :1;
    };
} RB3PPSbits_t;
extern volatile RB3PPSbits_t RB3PPSbits __attribute__((address(0xF1B)));
# 32516 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char RB4PPS __attribute__((address(0xF1C)));

__asm("RB4PPS equ 0F1Ch");


typedef union {
    struct {
        unsigned int RB4PPS0 :1;
        unsigned int RB4PPS1 :1;
        unsigned int RB4PPS2 :1;
        unsigned int RB4PPS3 :1;
        unsigned int RB4PPS4 :1;
        unsigned int RB4PPS5 :1;
    };
} RB4PPSbits_t;
extern volatile RB4PPSbits_t RB4PPSbits __attribute__((address(0xF1C)));
# 32566 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char RB5PPS __attribute__((address(0xF1D)));

__asm("RB5PPS equ 0F1Dh");


typedef union {
    struct {
        unsigned int RB5PPS0 :1;
        unsigned int RB5PPS1 :1;
        unsigned int RB5PPS2 :1;
        unsigned int RB5PPS3 :1;
        unsigned int RB5PPS4 :1;
        unsigned int RB5PPS5 :1;
    };
} RB5PPSbits_t;
extern volatile RB5PPSbits_t RB5PPSbits __attribute__((address(0xF1D)));
# 32616 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char RB6PPS __attribute__((address(0xF1E)));

__asm("RB6PPS equ 0F1Eh");


typedef union {
    struct {
        unsigned int RB6PPS0 :1;
        unsigned int RB6PPS1 :1;
        unsigned int RB6PPS2 :1;
        unsigned int RB6PPS3 :1;
        unsigned int RB6PPS4 :1;
        unsigned int RB6PPS5 :1;
    };
} RB6PPSbits_t;
extern volatile RB6PPSbits_t RB6PPSbits __attribute__((address(0xF1E)));
# 32666 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char RB7PPS __attribute__((address(0xF1F)));

__asm("RB7PPS equ 0F1Fh");


typedef union {
    struct {
        unsigned int RB7PPS0 :1;
        unsigned int RB7PPS1 :1;
        unsigned int RB7PPS2 :1;
        unsigned int RB7PPS3 :1;
        unsigned int RB7PPS4 :1;
        unsigned int RB7PPS5 :1;
    };
} RB7PPSbits_t;
extern volatile RB7PPSbits_t RB7PPSbits __attribute__((address(0xF1F)));
# 32716 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char RC0PPS __attribute__((address(0xF20)));

__asm("RC0PPS equ 0F20h");


typedef union {
    struct {
        unsigned int RC0PPS0 :1;
        unsigned int RC0PPS1 :1;
        unsigned int RC0PPS2 :1;
        unsigned int RC0PPS3 :1;
        unsigned int RC0PPS4 :1;
        unsigned int RC0PPS5 :1;
    };
} RC0PPSbits_t;
extern volatile RC0PPSbits_t RC0PPSbits __attribute__((address(0xF20)));
# 32766 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char RC1PPS __attribute__((address(0xF21)));

__asm("RC1PPS equ 0F21h");


typedef union {
    struct {
        unsigned int RC1PPS0 :1;
        unsigned int RC1PPS1 :1;
        unsigned int RC1PPS2 :1;
        unsigned int RC1PPS3 :1;
        unsigned int RC1PPS4 :1;
        unsigned int RC1PPS5 :1;
    };
} RC1PPSbits_t;
extern volatile RC1PPSbits_t RC1PPSbits __attribute__((address(0xF21)));
# 32816 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char RC2PPS __attribute__((address(0xF22)));

__asm("RC2PPS equ 0F22h");


typedef union {
    struct {
        unsigned int RC2PPS0 :1;
        unsigned int RC2PPS1 :1;
        unsigned int RC2PPS2 :1;
        unsigned int RC2PPS3 :1;
        unsigned int RC2PPS4 :1;
        unsigned int RC2PPS5 :1;
    };
} RC2PPSbits_t;
extern volatile RC2PPSbits_t RC2PPSbits __attribute__((address(0xF22)));
# 32866 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char RC3PPS __attribute__((address(0xF23)));

__asm("RC3PPS equ 0F23h");


typedef union {
    struct {
        unsigned int RC3PPS0 :1;
        unsigned int RC3PPS1 :1;
        unsigned int RC3PPS2 :1;
        unsigned int RC3PPS3 :1;
        unsigned int RC3PPS4 :1;
        unsigned int RC3PPS5 :1;
    };
} RC3PPSbits_t;
extern volatile RC3PPSbits_t RC3PPSbits __attribute__((address(0xF23)));
# 32916 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char RC4PPS __attribute__((address(0xF24)));

__asm("RC4PPS equ 0F24h");


typedef union {
    struct {
        unsigned int RC4PPS0 :1;
        unsigned int RC4PPS1 :1;
        unsigned int RC4PPS2 :1;
        unsigned int RC4PPS3 :1;
        unsigned int RC4PPS4 :1;
        unsigned int RC4PPS5 :1;
    };
} RC4PPSbits_t;
extern volatile RC4PPSbits_t RC4PPSbits __attribute__((address(0xF24)));
# 32966 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char RC5PPS __attribute__((address(0xF25)));

__asm("RC5PPS equ 0F25h");


typedef union {
    struct {
        unsigned int RC5PPS0 :1;
        unsigned int RC5PPS1 :1;
        unsigned int RC5PPS2 :1;
        unsigned int RC5PPS3 :1;
        unsigned int RC5PPS4 :1;
        unsigned int RC5PPS5 :1;
    };
} RC5PPSbits_t;
extern volatile RC5PPSbits_t RC5PPSbits __attribute__((address(0xF25)));
# 33016 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char RC6PPS __attribute__((address(0xF26)));

__asm("RC6PPS equ 0F26h");


typedef union {
    struct {
        unsigned int RC6PPS0 :1;
        unsigned int RC6PPS1 :1;
        unsigned int RC6PPS2 :1;
        unsigned int RC6PPS3 :1;
        unsigned int RC6PPS4 :1;
        unsigned int RC6PPS5 :1;
    };
} RC6PPSbits_t;
extern volatile RC6PPSbits_t RC6PPSbits __attribute__((address(0xF26)));
# 33066 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char RC7PPS __attribute__((address(0xF27)));

__asm("RC7PPS equ 0F27h");


typedef union {
    struct {
        unsigned int RC7PPS0 :1;
        unsigned int RC7PPS1 :1;
        unsigned int RC7PPS2 :1;
        unsigned int RC7PPS3 :1;
        unsigned int RC7PPS4 :1;
        unsigned int RC7PPS5 :1;
    };
} RC7PPSbits_t;
extern volatile RC7PPSbits_t RC7PPSbits __attribute__((address(0xF27)));
# 33116 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char RD0PPS __attribute__((address(0xF28)));

__asm("RD0PPS equ 0F28h");


typedef union {
    struct {
        unsigned int RD0PPS0 :1;
        unsigned int RD0PPS1 :1;
        unsigned int RD0PPS2 :1;
        unsigned int RD0PPS3 :1;
        unsigned int RD0PPS4 :1;
        unsigned int RD0PPS5 :1;
    };
} RD0PPSbits_t;
extern volatile RD0PPSbits_t RD0PPSbits __attribute__((address(0xF28)));
# 33166 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char RD1PPS __attribute__((address(0xF29)));

__asm("RD1PPS equ 0F29h");


typedef union {
    struct {
        unsigned int RD1PPS0 :1;
        unsigned int RD1PPS1 :1;
        unsigned int RD1PPS2 :1;
        unsigned int RD1PPS3 :1;
        unsigned int RD1PPS4 :1;
        unsigned int RD1PPS5 :1;
    };
} RD1PPSbits_t;
extern volatile RD1PPSbits_t RD1PPSbits __attribute__((address(0xF29)));
# 33216 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char RD2PPS __attribute__((address(0xF2A)));

__asm("RD2PPS equ 0F2Ah");


typedef union {
    struct {
        unsigned int RD2PPS0 :1;
        unsigned int RD2PPS1 :1;
        unsigned int RD2PPS2 :1;
        unsigned int RD2PPS3 :1;
        unsigned int RD2PPS4 :1;
        unsigned int RD2PPS5 :1;
    };
} RD2PPSbits_t;
extern volatile RD2PPSbits_t RD2PPSbits __attribute__((address(0xF2A)));
# 33266 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char RD3PPS __attribute__((address(0xF2B)));

__asm("RD3PPS equ 0F2Bh");


typedef union {
    struct {
        unsigned int RD3PPS0 :1;
        unsigned int RD3PPS1 :1;
        unsigned int RD3PPS2 :1;
        unsigned int RD3PPS3 :1;
        unsigned int RD3PPS4 :1;
        unsigned int RD3PPS5 :1;
    };
} RD3PPSbits_t;
extern volatile RD3PPSbits_t RD3PPSbits __attribute__((address(0xF2B)));
# 33316 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char RD4PPS __attribute__((address(0xF2C)));

__asm("RD4PPS equ 0F2Ch");


typedef union {
    struct {
        unsigned int RD4PPS0 :1;
        unsigned int RD4PPS1 :1;
        unsigned int RD4PPS2 :1;
        unsigned int RD4PPS3 :1;
        unsigned int RD4PPS4 :1;
        unsigned int RD4PPS5 :1;
    };
} RD4PPSbits_t;
extern volatile RD4PPSbits_t RD4PPSbits __attribute__((address(0xF2C)));
# 33366 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char RD5PPS __attribute__((address(0xF2D)));

__asm("RD5PPS equ 0F2Dh");


typedef union {
    struct {
        unsigned int RD5PPS0 :1;
        unsigned int RD5PPS1 :1;
        unsigned int RD5PPS2 :1;
        unsigned int RD5PPS3 :1;
        unsigned int RD5PPS4 :1;
        unsigned int RD5PPS5 :1;
    };
} RD5PPSbits_t;
extern volatile RD5PPSbits_t RD5PPSbits __attribute__((address(0xF2D)));
# 33416 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char RD6PPS __attribute__((address(0xF2E)));

__asm("RD6PPS equ 0F2Eh");


typedef union {
    struct {
        unsigned int RD6PPS0 :1;
        unsigned int RD6PPS1 :1;
        unsigned int RD6PPS2 :1;
        unsigned int RD6PPS3 :1;
        unsigned int RD6PPS4 :1;
        unsigned int RD6PPS5 :1;
    };
} RD6PPSbits_t;
extern volatile RD6PPSbits_t RD6PPSbits __attribute__((address(0xF2E)));
# 33466 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char RD7PPS __attribute__((address(0xF2F)));

__asm("RD7PPS equ 0F2Fh");


typedef union {
    struct {
        unsigned int RD7PPS0 :1;
        unsigned int RD7PPS1 :1;
        unsigned int RD7PPS2 :1;
        unsigned int RD7PPS3 :1;
        unsigned int RD7PPS4 :1;
        unsigned int RD7PPS5 :1;
    };
} RD7PPSbits_t;
extern volatile RD7PPSbits_t RD7PPSbits __attribute__((address(0xF2F)));
# 33516 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char RE0PPS __attribute__((address(0xF30)));

__asm("RE0PPS equ 0F30h");


typedef union {
    struct {
        unsigned int RE0PPS0 :1;
        unsigned int RE0PPS1 :1;
        unsigned int RE0PPS2 :1;
        unsigned int RE0PPS3 :1;
        unsigned int RE0PPS4 :1;
        unsigned int RE0PPS5 :1;
    };
} RE0PPSbits_t;
extern volatile RE0PPSbits_t RE0PPSbits __attribute__((address(0xF30)));
# 33566 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char RE1PPS __attribute__((address(0xF31)));

__asm("RE1PPS equ 0F31h");


typedef union {
    struct {
        unsigned int RE1PPS0 :1;
        unsigned int RE1PPS1 :1;
        unsigned int RE1PPS2 :1;
        unsigned int RE1PPS3 :1;
        unsigned int RE1PPS4 :1;
        unsigned int RE1PPS5 :1;
    };
} RE1PPSbits_t;
extern volatile RE1PPSbits_t RE1PPSbits __attribute__((address(0xF31)));
# 33616 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char RE2PPS __attribute__((address(0xF32)));

__asm("RE2PPS equ 0F32h");


typedef union {
    struct {
        unsigned int RE2PPS0 :1;
        unsigned int RE2PPS1 :1;
        unsigned int RE2PPS2 :1;
        unsigned int RE2PPS3 :1;
        unsigned int RE2PPS4 :1;
        unsigned int RE2PPS5 :1;
    };
} RE2PPSbits_t;
extern volatile RE2PPSbits_t RE2PPSbits __attribute__((address(0xF32)));
# 33666 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char ANSELA __attribute__((address(0xF38)));

__asm("ANSELA equ 0F38h");


typedef union {
    struct {
        unsigned int ANSA0 :1;
        unsigned int ANSA1 :1;
        unsigned int ANSA2 :1;
        unsigned int ANSA3 :1;
        unsigned int ANSA4 :1;
        unsigned int ANSA5 :1;
        unsigned int ANSA6 :1;
        unsigned int ANSA7 :1;
    };
} ANSELAbits_t;
extern volatile ANSELAbits_t ANSELAbits __attribute__((address(0xF38)));
# 33728 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char WPUA __attribute__((address(0xF39)));

__asm("WPUA equ 0F39h");


typedef union {
    struct {
        unsigned int WPUA0 :1;
        unsigned int WPUA1 :1;
        unsigned int WPUA2 :1;
        unsigned int WPUA3 :1;
        unsigned int WPUA4 :1;
        unsigned int WPUA5 :1;
        unsigned int WPUA6 :1;
        unsigned int WPUA7 :1;
    };
} WPUAbits_t;
extern volatile WPUAbits_t WPUAbits __attribute__((address(0xF39)));
# 33790 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char ODCONA __attribute__((address(0xF3A)));

__asm("ODCONA equ 0F3Ah");


typedef union {
    struct {
        unsigned int ODCA0 :1;
        unsigned int ODCA1 :1;
        unsigned int ODCA2 :1;
        unsigned int ODCA3 :1;
        unsigned int ODCA4 :1;
        unsigned int ODCA5 :1;
        unsigned int ODCA6 :1;
        unsigned int ODCA7 :1;
    };
} ODCONAbits_t;
extern volatile ODCONAbits_t ODCONAbits __attribute__((address(0xF3A)));
# 33852 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SLRCONA __attribute__((address(0xF3B)));

__asm("SLRCONA equ 0F3Bh");


typedef union {
    struct {
        unsigned int SLRA0 :1;
        unsigned int SLRA1 :1;
        unsigned int SLRA2 :1;
        unsigned int SLRA3 :1;
        unsigned int SLRA4 :1;
        unsigned int SLRA5 :1;
        unsigned int SLRA6 :1;
        unsigned int SLRA7 :1;
    };
} SLRCONAbits_t;
extern volatile SLRCONAbits_t SLRCONAbits __attribute__((address(0xF3B)));
# 33914 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char INLVLA __attribute__((address(0xF3C)));

__asm("INLVLA equ 0F3Ch");


typedef union {
    struct {
        unsigned int INLVLA0 :1;
        unsigned int INLVLA1 :1;
        unsigned int INLVLA2 :1;
        unsigned int INLVLA3 :1;
        unsigned int INLVLA4 :1;
        unsigned int INLVLA5 :1;
        unsigned int INLVLA6 :1;
        unsigned int INLVLA7 :1;
    };
} INLVLAbits_t;
extern volatile INLVLAbits_t INLVLAbits __attribute__((address(0xF3C)));
# 33976 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char IOCAP __attribute__((address(0xF3D)));

__asm("IOCAP equ 0F3Dh");


typedef union {
    struct {
        unsigned int IOCAP0 :1;
        unsigned int IOCAP1 :1;
        unsigned int IOCAP2 :1;
        unsigned int IOCAP3 :1;
        unsigned int IOCAP4 :1;
        unsigned int IOCAP5 :1;
        unsigned int IOCAP6 :1;
        unsigned int IOCAP7 :1;
    };
} IOCAPbits_t;
extern volatile IOCAPbits_t IOCAPbits __attribute__((address(0xF3D)));
# 34038 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char IOCAN __attribute__((address(0xF3E)));

__asm("IOCAN equ 0F3Eh");


typedef union {
    struct {
        unsigned int IOCAN0 :1;
        unsigned int IOCAN1 :1;
        unsigned int IOCAN2 :1;
        unsigned int IOCAN3 :1;
        unsigned int IOCAN4 :1;
        unsigned int IOCAN5 :1;
        unsigned int IOCAN6 :1;
        unsigned int IOCAN7 :1;
    };
} IOCANbits_t;
extern volatile IOCANbits_t IOCANbits __attribute__((address(0xF3E)));
# 34100 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char IOCAF __attribute__((address(0xF3F)));

__asm("IOCAF equ 0F3Fh");


typedef union {
    struct {
        unsigned int IOCAF0 :1;
        unsigned int IOCAF1 :1;
        unsigned int IOCAF2 :1;
        unsigned int IOCAF3 :1;
        unsigned int IOCAF4 :1;
        unsigned int IOCAF5 :1;
        unsigned int IOCAF6 :1;
        unsigned int IOCAF7 :1;
    };
} IOCAFbits_t;
extern volatile IOCAFbits_t IOCAFbits __attribute__((address(0xF3F)));
# 34162 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CCDNA __attribute__((address(0xF40)));

__asm("CCDNA equ 0F40h");


typedef union {
    struct {
        unsigned int CCDNA0 :1;
        unsigned int CCDNA1 :1;
        unsigned int CCDNA2 :1;
        unsigned int CCDNA3 :1;
        unsigned int CCDNA4 :1;
        unsigned int CCDNA5 :1;
        unsigned int CCDNA6 :1;
        unsigned int CCDNA7 :1;
    };
} CCDNAbits_t;
extern volatile CCDNAbits_t CCDNAbits __attribute__((address(0xF40)));
# 34224 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CCDPA __attribute__((address(0xF41)));

__asm("CCDPA equ 0F41h");


typedef union {
    struct {
        unsigned int CCDPA0 :1;
        unsigned int CCDPA1 :1;
        unsigned int CCDPA2 :1;
        unsigned int CCDPA3 :1;
        unsigned int CCDPA4 :1;
        unsigned int CCDPA5 :1;
        unsigned int CCDPA6 :1;
        unsigned int CCDPA7 :1;
    };
} CCDPAbits_t;
extern volatile CCDPAbits_t CCDPAbits __attribute__((address(0xF41)));
# 34286 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char ANSELB __attribute__((address(0xF43)));

__asm("ANSELB equ 0F43h");


typedef union {
    struct {
        unsigned int ANSB0 :1;
        unsigned int ANSB1 :1;
        unsigned int ANSB2 :1;
        unsigned int ANSB3 :1;
        unsigned int ANSB4 :1;
        unsigned int ANSB5 :1;
        unsigned int ANSB6 :1;
        unsigned int ANSB7 :1;
    };
} ANSELBbits_t;
extern volatile ANSELBbits_t ANSELBbits __attribute__((address(0xF43)));
# 34348 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char WPUB __attribute__((address(0xF44)));

__asm("WPUB equ 0F44h");


typedef union {
    struct {
        unsigned int WPUB0 :1;
        unsigned int WPUB1 :1;
        unsigned int WPUB2 :1;
        unsigned int WPUB3 :1;
        unsigned int WPUB4 :1;
        unsigned int WPUB5 :1;
        unsigned int WPUB6 :1;
        unsigned int WPUB7 :1;
    };
} WPUBbits_t;
extern volatile WPUBbits_t WPUBbits __attribute__((address(0xF44)));
# 34410 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char ODCONB __attribute__((address(0xF45)));

__asm("ODCONB equ 0F45h");


typedef union {
    struct {
        unsigned int ODCB0 :1;
        unsigned int ODCB1 :1;
        unsigned int ODCB2 :1;
        unsigned int ODCB3 :1;
        unsigned int ODCB4 :1;
        unsigned int ODCB5 :1;
        unsigned int ODCB6 :1;
        unsigned int ODCB7 :1;
    };
} ODCONBbits_t;
extern volatile ODCONBbits_t ODCONBbits __attribute__((address(0xF45)));
# 34472 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SLRCONB __attribute__((address(0xF46)));

__asm("SLRCONB equ 0F46h");


typedef union {
    struct {
        unsigned int SLRB0 :1;
        unsigned int SLRB1 :1;
        unsigned int SLRB2 :1;
        unsigned int SLRB3 :1;
        unsigned int SLRB4 :1;
        unsigned int SLRB5 :1;
        unsigned int SLRB6 :1;
        unsigned int SLRB7 :1;
    };
} SLRCONBbits_t;
extern volatile SLRCONBbits_t SLRCONBbits __attribute__((address(0xF46)));
# 34534 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char INLVLB __attribute__((address(0xF47)));

__asm("INLVLB equ 0F47h");


typedef union {
    struct {
        unsigned int INLVLB0 :1;
        unsigned int INLVLB1 :1;
        unsigned int INLVLB2 :1;
        unsigned int INLVLB3 :1;
        unsigned int INLVLB4 :1;
        unsigned int INLVLB5 :1;
        unsigned int INLVLB6 :1;
        unsigned int INLVLB7 :1;
    };
} INLVLBbits_t;
extern volatile INLVLBbits_t INLVLBbits __attribute__((address(0xF47)));
# 34596 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char IOCBP __attribute__((address(0xF48)));

__asm("IOCBP equ 0F48h");


typedef union {
    struct {
        unsigned int IOCBP0 :1;
        unsigned int IOCBP1 :1;
        unsigned int IOCBP2 :1;
        unsigned int IOCBP3 :1;
        unsigned int IOCBP4 :1;
        unsigned int IOCBP5 :1;
        unsigned int IOCBP6 :1;
        unsigned int IOCBP7 :1;
    };
} IOCBPbits_t;
extern volatile IOCBPbits_t IOCBPbits __attribute__((address(0xF48)));
# 34658 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char IOCBN __attribute__((address(0xF49)));

__asm("IOCBN equ 0F49h");


typedef union {
    struct {
        unsigned int IOCBN0 :1;
        unsigned int IOCBN1 :1;
        unsigned int IOCBN2 :1;
        unsigned int IOCBN3 :1;
        unsigned int IOCBN4 :1;
        unsigned int IOCBN5 :1;
        unsigned int IOCBN6 :1;
        unsigned int IOCBN7 :1;
    };
} IOCBNbits_t;
extern volatile IOCBNbits_t IOCBNbits __attribute__((address(0xF49)));
# 34720 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char IOCBF __attribute__((address(0xF4A)));

__asm("IOCBF equ 0F4Ah");


typedef union {
    struct {
        unsigned int IOCBF0 :1;
        unsigned int IOCBF1 :1;
        unsigned int IOCBF2 :1;
        unsigned int IOCBF3 :1;
        unsigned int IOCBF4 :1;
        unsigned int IOCBF5 :1;
        unsigned int IOCBF6 :1;
        unsigned int IOCBF7 :1;
    };
} IOCBFbits_t;
extern volatile IOCBFbits_t IOCBFbits __attribute__((address(0xF4A)));
# 34782 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CCDNB __attribute__((address(0xF4B)));

__asm("CCDNB equ 0F4Bh");


typedef union {
    struct {
        unsigned int CCDNB0 :1;
        unsigned int CCDNB1 :1;
        unsigned int CCDNB2 :1;
        unsigned int CCDNB3 :1;
        unsigned int CCDNB4 :1;
        unsigned int CCDNB5 :1;
        unsigned int CCDNB6 :1;
        unsigned int CCDNB7 :1;
    };
} CCDNBbits_t;
extern volatile CCDNBbits_t CCDNBbits __attribute__((address(0xF4B)));
# 34844 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CCDPB __attribute__((address(0xF4C)));

__asm("CCDPB equ 0F4Ch");


typedef union {
    struct {
        unsigned int CCDPB0 :1;
        unsigned int CCDPB1 :1;
        unsigned int CCDPB2 :1;
        unsigned int CCDPB3 :1;
        unsigned int CCDPB4 :1;
        unsigned int CCDPB5 :1;
        unsigned int CCDPB6 :1;
        unsigned int CCDPB7 :1;
    };
} CCDPBbits_t;
extern volatile CCDPBbits_t CCDPBbits __attribute__((address(0xF4C)));
# 34906 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char ANSELC __attribute__((address(0xF4E)));

__asm("ANSELC equ 0F4Eh");


typedef union {
    struct {
        unsigned int ANSC0 :1;
        unsigned int ANSC1 :1;
        unsigned int ANSC2 :1;
        unsigned int ANSC3 :1;
        unsigned int ANSC4 :1;
        unsigned int ANSC5 :1;
        unsigned int ANSC6 :1;
        unsigned int ANSC7 :1;
    };
} ANSELCbits_t;
extern volatile ANSELCbits_t ANSELCbits __attribute__((address(0xF4E)));
# 34968 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char WPUC __attribute__((address(0xF4F)));

__asm("WPUC equ 0F4Fh");


typedef union {
    struct {
        unsigned int WPUC0 :1;
        unsigned int WPUC1 :1;
        unsigned int WPUC2 :1;
        unsigned int WPUC3 :1;
        unsigned int WPUC4 :1;
        unsigned int WPUC5 :1;
        unsigned int WPUC6 :1;
        unsigned int WPUC7 :1;
    };
} WPUCbits_t;
extern volatile WPUCbits_t WPUCbits __attribute__((address(0xF4F)));
# 35030 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char ODCONC __attribute__((address(0xF50)));

__asm("ODCONC equ 0F50h");


typedef union {
    struct {
        unsigned int ODCC0 :1;
        unsigned int ODCC1 :1;
        unsigned int ODCC2 :1;
        unsigned int ODCC3 :1;
        unsigned int ODCC4 :1;
        unsigned int ODCC5 :1;
        unsigned int ODCC6 :1;
        unsigned int ODCC7 :1;
    };
} ODCONCbits_t;
extern volatile ODCONCbits_t ODCONCbits __attribute__((address(0xF50)));
# 35092 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SLRCONC __attribute__((address(0xF51)));

__asm("SLRCONC equ 0F51h");


typedef union {
    struct {
        unsigned int SLRC0 :1;
        unsigned int SLRC1 :1;
        unsigned int SLRC2 :1;
        unsigned int SLRC3 :1;
        unsigned int SLRC4 :1;
        unsigned int SLRC5 :1;
        unsigned int SLRC6 :1;
        unsigned int SLRC7 :1;
    };
} SLRCONCbits_t;
extern volatile SLRCONCbits_t SLRCONCbits __attribute__((address(0xF51)));
# 35154 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char INLVLC __attribute__((address(0xF52)));

__asm("INLVLC equ 0F52h");


typedef union {
    struct {
        unsigned int INLVLC0 :1;
        unsigned int INLVLC1 :1;
        unsigned int INLVLC2 :1;
        unsigned int INLVLC3 :1;
        unsigned int INLVLC4 :1;
        unsigned int INLVLC5 :1;
        unsigned int INLVLC6 :1;
        unsigned int INLVLC7 :1;
    };
} INLVLCbits_t;
extern volatile INLVLCbits_t INLVLCbits __attribute__((address(0xF52)));
# 35216 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char IOCCP __attribute__((address(0xF53)));

__asm("IOCCP equ 0F53h");


typedef union {
    struct {
        unsigned int IOCCP0 :1;
        unsigned int IOCCP1 :1;
        unsigned int IOCCP2 :1;
        unsigned int IOCCP3 :1;
        unsigned int IOCCP4 :1;
        unsigned int IOCCP5 :1;
        unsigned int IOCCP6 :1;
        unsigned int IOCCP7 :1;
    };
} IOCCPbits_t;
extern volatile IOCCPbits_t IOCCPbits __attribute__((address(0xF53)));
# 35278 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char IOCCN __attribute__((address(0xF54)));

__asm("IOCCN equ 0F54h");


typedef union {
    struct {
        unsigned int IOCCN0 :1;
        unsigned int IOCCN1 :1;
        unsigned int IOCCN2 :1;
        unsigned int IOCCN3 :1;
        unsigned int IOCCN4 :1;
        unsigned int IOCCN5 :1;
        unsigned int IOCCN6 :1;
        unsigned int IOCCN7 :1;
    };
} IOCCNbits_t;
extern volatile IOCCNbits_t IOCCNbits __attribute__((address(0xF54)));
# 35340 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char IOCCF __attribute__((address(0xF55)));

__asm("IOCCF equ 0F55h");


typedef union {
    struct {
        unsigned int IOCCF0 :1;
        unsigned int IOCCF1 :1;
        unsigned int IOCCF2 :1;
        unsigned int IOCCF3 :1;
        unsigned int IOCCF4 :1;
        unsigned int IOCCF5 :1;
        unsigned int IOCCF6 :1;
        unsigned int IOCCF7 :1;
    };
} IOCCFbits_t;
extern volatile IOCCFbits_t IOCCFbits __attribute__((address(0xF55)));
# 35402 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CCDNC __attribute__((address(0xF56)));

__asm("CCDNC equ 0F56h");


typedef union {
    struct {
        unsigned int CCDNC0 :1;
        unsigned int CCDNC1 :1;
        unsigned int CCDNC2 :1;
        unsigned int CCDNC3 :1;
        unsigned int CCDNC4 :1;
        unsigned int CCDNC5 :1;
        unsigned int CCDNC6 :1;
        unsigned int CCDNC7 :1;
    };
} CCDNCbits_t;
extern volatile CCDNCbits_t CCDNCbits __attribute__((address(0xF56)));
# 35464 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CCDPC __attribute__((address(0xF57)));

__asm("CCDPC equ 0F57h");


typedef union {
    struct {
        unsigned int CCDPC0 :1;
        unsigned int CCDPC1 :1;
        unsigned int CCDPC2 :1;
        unsigned int CCDPC3 :1;
        unsigned int CCDPC4 :1;
        unsigned int CCDPC5 :1;
        unsigned int CCDPC6 :1;
        unsigned int CCDPC7 :1;
    };
} CCDPCbits_t;
extern volatile CCDPCbits_t CCDPCbits __attribute__((address(0xF57)));
# 35526 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char ANSELD __attribute__((address(0xF59)));

__asm("ANSELD equ 0F59h");


typedef union {
    struct {
        unsigned int ANSD0 :1;
        unsigned int ANSD1 :1;
        unsigned int ANSD2 :1;
        unsigned int ANSD3 :1;
        unsigned int ANSD4 :1;
        unsigned int ANSD5 :1;
        unsigned int ANSD6 :1;
        unsigned int ANSD7 :1;
    };
} ANSELDbits_t;
extern volatile ANSELDbits_t ANSELDbits __attribute__((address(0xF59)));
# 35588 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char WPUD __attribute__((address(0xF5A)));

__asm("WPUD equ 0F5Ah");


typedef union {
    struct {
        unsigned int WPUD0 :1;
        unsigned int WPUD1 :1;
        unsigned int WPUD2 :1;
        unsigned int WPUD3 :1;
        unsigned int WPUD4 :1;
        unsigned int WPUD5 :1;
        unsigned int WPUD6 :1;
        unsigned int WPUD7 :1;
    };
} WPUDbits_t;
extern volatile WPUDbits_t WPUDbits __attribute__((address(0xF5A)));
# 35650 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char ODCOND __attribute__((address(0xF5B)));

__asm("ODCOND equ 0F5Bh");


typedef union {
    struct {
        unsigned int ODCD0 :1;
        unsigned int ODCD1 :1;
        unsigned int ODCD2 :1;
        unsigned int ODCD3 :1;
        unsigned int ODCD4 :1;
        unsigned int ODCD5 :1;
        unsigned int ODCD6 :1;
        unsigned int ODCD7 :1;
    };
} ODCONDbits_t;
extern volatile ODCONDbits_t ODCONDbits __attribute__((address(0xF5B)));
# 35712 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SLRCOND __attribute__((address(0xF5C)));

__asm("SLRCOND equ 0F5Ch");


typedef union {
    struct {
        unsigned int SLRD0 :1;
        unsigned int SLRD1 :1;
        unsigned int SLRD2 :1;
        unsigned int SLRD3 :1;
        unsigned int SLRD4 :1;
        unsigned int SLRD5 :1;
        unsigned int SLRD6 :1;
        unsigned int SLRD7 :1;
    };
} SLRCONDbits_t;
extern volatile SLRCONDbits_t SLRCONDbits __attribute__((address(0xF5C)));
# 35774 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char INLVLD __attribute__((address(0xF5D)));

__asm("INLVLD equ 0F5Dh");


typedef union {
    struct {
        unsigned int INLVLD0 :1;
        unsigned int INLVLD1 :1;
        unsigned int INLVLD2 :1;
        unsigned int INLVLD3 :1;
        unsigned int INLVLD4 :1;
        unsigned int INLVLD5 :1;
        unsigned int INLVLD6 :1;
        unsigned int INLVLD7 :1;
    };
} INLVLDbits_t;
extern volatile INLVLDbits_t INLVLDbits __attribute__((address(0xF5D)));
# 35836 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CCDND __attribute__((address(0xF61)));

__asm("CCDND equ 0F61h");


typedef union {
    struct {
        unsigned int CCDND0 :1;
        unsigned int CCDND1 :1;
        unsigned int CCDND2 :1;
        unsigned int CCDND3 :1;
        unsigned int CCDND4 :1;
        unsigned int CCDND5 :1;
        unsigned int CCDND6 :1;
        unsigned int CCDND7 :1;
    };
} CCDNDbits_t;
extern volatile CCDNDbits_t CCDNDbits __attribute__((address(0xF61)));
# 35898 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CCDPD __attribute__((address(0xF62)));

__asm("CCDPD equ 0F62h");


typedef union {
    struct {
        unsigned int CCDPD0 :1;
        unsigned int CCDPD1 :1;
        unsigned int CCDPD2 :1;
        unsigned int CCDPD3 :1;
        unsigned int CCDPD4 :1;
        unsigned int CCDPD5 :1;
        unsigned int CCDPD6 :1;
        unsigned int CCDPD7 :1;
    };
} CCDPDbits_t;
extern volatile CCDPDbits_t CCDPDbits __attribute__((address(0xF62)));
# 35960 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char ANSELE __attribute__((address(0xF64)));

__asm("ANSELE equ 0F64h");


typedef union {
    struct {
        unsigned int ANSE0 :1;
        unsigned int ANSE1 :1;
        unsigned int ANSE2 :1;
    };
} ANSELEbits_t;
extern volatile ANSELEbits_t ANSELEbits __attribute__((address(0xF64)));
# 35992 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char WPUE __attribute__((address(0xF65)));

__asm("WPUE equ 0F65h");


typedef union {
    struct {
        unsigned int WPUE0 :1;
        unsigned int WPUE1 :1;
        unsigned int WPUE2 :1;
        unsigned int WPUE3 :1;
    };
} WPUEbits_t;
extern volatile WPUEbits_t WPUEbits __attribute__((address(0xF65)));
# 36030 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char ODCONE __attribute__((address(0xF66)));

__asm("ODCONE equ 0F66h");


typedef union {
    struct {
        unsigned int ODCE0 :1;
        unsigned int ODCE1 :1;
        unsigned int ODCE2 :1;
    };
} ODCONEbits_t;
extern volatile ODCONEbits_t ODCONEbits __attribute__((address(0xF66)));
# 36062 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char SLRCONE __attribute__((address(0xF67)));

__asm("SLRCONE equ 0F67h");


typedef union {
    struct {
        unsigned int SLRE0 :1;
        unsigned int SLRE1 :1;
        unsigned int SLRE2 :1;
    };
} SLRCONEbits_t;
extern volatile SLRCONEbits_t SLRCONEbits __attribute__((address(0xF67)));
# 36094 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char INLVLE __attribute__((address(0xF68)));

__asm("INLVLE equ 0F68h");


typedef union {
    struct {
        unsigned int INLVLE0 :1;
        unsigned int INLVLE1 :1;
        unsigned int INLVLE2 :1;
        unsigned int INLVLE3 :1;
    };
} INLVLEbits_t;
extern volatile INLVLEbits_t INLVLEbits __attribute__((address(0xF68)));
# 36132 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char IOCEP __attribute__((address(0xF69)));

__asm("IOCEP equ 0F69h");


typedef union {
    struct {
        unsigned int :3;
        unsigned int IOCEP3 :1;
    };
} IOCEPbits_t;
extern volatile IOCEPbits_t IOCEPbits __attribute__((address(0xF69)));
# 36153 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char IOCEN __attribute__((address(0xF6A)));

__asm("IOCEN equ 0F6Ah");


typedef union {
    struct {
        unsigned int :3;
        unsigned int IOCEN3 :1;
    };
} IOCENbits_t;
extern volatile IOCENbits_t IOCENbits __attribute__((address(0xF6A)));
# 36174 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char IOCEF __attribute__((address(0xF6B)));

__asm("IOCEF equ 0F6Bh");


typedef union {
    struct {
        unsigned int :3;
        unsigned int IOCEF3 :1;
    };
} IOCEFbits_t;
extern volatile IOCEFbits_t IOCEFbits __attribute__((address(0xF6B)));
# 36195 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CCDNE __attribute__((address(0xF6C)));

__asm("CCDNE equ 0F6Ch");


typedef union {
    struct {
        unsigned int CCDNE0 :1;
        unsigned int CCDNE1 :1;
        unsigned int CCDNE2 :1;
    };
} CCDNEbits_t;
extern volatile CCDNEbits_t CCDNEbits __attribute__((address(0xF6C)));
# 36227 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char CCDPE __attribute__((address(0xF6D)));

__asm("CCDPE equ 0F6Dh");


typedef union {
    struct {
        unsigned int CCDPE0 :1;
        unsigned int CCDPE1 :1;
        unsigned int CCDPE2 :1;
    };
} CCDPEbits_t;
extern volatile CCDPEbits_t CCDPEbits __attribute__((address(0xF6D)));
# 36259 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char STATUS_SHAD __attribute__((address(0xFE4)));

__asm("STATUS_SHAD equ 0FE4h");


typedef union {
    struct {
        unsigned int C_SHAD :1;
        unsigned int DC_SHAD :1;
        unsigned int Z_SHAD :1;
    };
} STATUS_SHADbits_t;
extern volatile STATUS_SHADbits_t STATUS_SHADbits __attribute__((address(0xFE4)));
# 36291 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char WREG_SHAD __attribute__((address(0xFE5)));

__asm("WREG_SHAD equ 0FE5h");


typedef union {
    struct {
        unsigned int WREG_SHAD :8;
    };
} WREG_SHADbits_t;
extern volatile WREG_SHADbits_t WREG_SHADbits __attribute__((address(0xFE5)));
# 36311 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char BSR_SHAD __attribute__((address(0xFE6)));

__asm("BSR_SHAD equ 0FE6h");


typedef union {
    struct {
        unsigned int BSR_SHAD :5;
    };
} BSR_SHADbits_t;
extern volatile BSR_SHADbits_t BSR_SHADbits __attribute__((address(0xFE6)));
# 36331 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char PCLATH_SHAD __attribute__((address(0xFE7)));

__asm("PCLATH_SHAD equ 0FE7h");


typedef union {
    struct {
        unsigned int PCLATH_SHAD :7;
    };
} PCLATH_SHADbits_t;
extern volatile PCLATH_SHADbits_t PCLATH_SHADbits __attribute__((address(0xFE7)));
# 36351 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char FSR0L_SHAD __attribute__((address(0xFE8)));

__asm("FSR0L_SHAD equ 0FE8h");


typedef union {
    struct {
        unsigned int FSR0L_SHAD :8;
    };
} FSR0L_SHADbits_t;
extern volatile FSR0L_SHADbits_t FSR0L_SHADbits __attribute__((address(0xFE8)));
# 36371 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char FSR0H_SHAD __attribute__((address(0xFE9)));

__asm("FSR0H_SHAD equ 0FE9h");


typedef union {
    struct {
        unsigned int FSR0H_SHAD :8;
    };
} FSR0H_SHADbits_t;
extern volatile FSR0H_SHADbits_t FSR0H_SHADbits __attribute__((address(0xFE9)));
# 36391 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char FSR1L_SHAD __attribute__((address(0xFEA)));

__asm("FSR1L_SHAD equ 0FEAh");


typedef union {
    struct {
        unsigned int FSR1L_SHAD :8;
    };
} FSR1L_SHADbits_t;
extern volatile FSR1L_SHADbits_t FSR1L_SHADbits __attribute__((address(0xFEA)));
# 36411 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char FSR1H_SHAD __attribute__((address(0xFEB)));

__asm("FSR1H_SHAD equ 0FEBh");


typedef union {
    struct {
        unsigned int FSR1H_SHAD :8;
    };
} FSR1H_SHADbits_t;
extern volatile FSR1H_SHADbits_t FSR1H_SHADbits __attribute__((address(0xFEB)));
# 36431 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char STKPTR __attribute__((address(0xFED)));

__asm("STKPTR equ 0FEDh");


typedef union {
    struct {
        unsigned int STKPTR :5;
    };
} STKPTRbits_t;
extern volatile STKPTRbits_t STKPTRbits __attribute__((address(0xFED)));
# 36451 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char TOSL __attribute__((address(0xFEE)));

__asm("TOSL equ 0FEEh");


typedef union {
    struct {
        unsigned int TOSL :8;
    };
} TOSLbits_t;
extern volatile TOSLbits_t TOSLbits __attribute__((address(0xFEE)));
# 36471 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile unsigned char TOSH __attribute__((address(0xFEF)));

__asm("TOSH equ 0FEFh");


typedef union {
    struct {
        unsigned int TOSH :7;
    };
} TOSHbits_t;
extern volatile TOSHbits_t TOSHbits __attribute__((address(0xFEF)));
# 36501 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include\\proc/pic16f18875.h" 3
extern volatile __bit ABDEN __attribute__((address(0x8F8)));


extern volatile __bit ABDOVF __attribute__((address(0x8FF)));


extern volatile __bit ACC0 __attribute__((address(0x20C0)));


extern volatile __bit ACC1 __attribute__((address(0x20C1)));


extern volatile __bit ACC10 __attribute__((address(0x20CA)));


extern volatile __bit ACC11 __attribute__((address(0x20CB)));


extern volatile __bit ACC12 __attribute__((address(0x20CC)));


extern volatile __bit ACC13 __attribute__((address(0x20CD)));


extern volatile __bit ACC14 __attribute__((address(0x20CE)));


extern volatile __bit ACC15 __attribute__((address(0x20CF)));


extern volatile __bit ACC2 __attribute__((address(0x20C2)));


extern volatile __bit ACC3 __attribute__((address(0x20C3)));


extern volatile __bit ACC4 __attribute__((address(0x20C4)));


extern volatile __bit ACC5 __attribute__((address(0x20C5)));


extern volatile __bit ACC6 __attribute__((address(0x20C6)));


extern volatile __bit ACC7 __attribute__((address(0x20C7)));


extern volatile __bit ACC8 __attribute__((address(0x20C8)));


extern volatile __bit ACC9 __attribute__((address(0x20C9)));


extern volatile __bit ACCM __attribute__((address(0x20F4)));


extern volatile __bit ACKDT1 __attribute__((address(0xC8D)));


extern volatile __bit ACKDT2 __attribute__((address(0xCDD)));


extern volatile __bit ACKEN1 __attribute__((address(0xC8C)));


extern volatile __bit ACKEN2 __attribute__((address(0xCDC)));


extern volatile __bit ACKSTAT1 __attribute__((address(0xC8E)));


extern volatile __bit ACKSTAT2 __attribute__((address(0xCDE)));


extern volatile __bit ADACC0 __attribute__((address(0x480)));


extern volatile __bit ADACC1 __attribute__((address(0x481)));


extern volatile __bit ADACC10 __attribute__((address(0x48A)));


extern volatile __bit ADACC11 __attribute__((address(0x48B)));


extern volatile __bit ADACC12 __attribute__((address(0x48C)));


extern volatile __bit ADACC13 __attribute__((address(0x48D)));


extern volatile __bit ADACC14 __attribute__((address(0x48E)));


extern volatile __bit ADACC15 __attribute__((address(0x48F)));


extern volatile __bit ADACC2 __attribute__((address(0x482)));


extern volatile __bit ADACC3 __attribute__((address(0x483)));


extern volatile __bit ADACC4 __attribute__((address(0x484)));


extern volatile __bit ADACC5 __attribute__((address(0x485)));


extern volatile __bit ADACC6 __attribute__((address(0x486)));


extern volatile __bit ADACC7 __attribute__((address(0x487)));


extern volatile __bit ADACC8 __attribute__((address(0x488)));


extern volatile __bit ADACC9 __attribute__((address(0x489)));


extern volatile __bit ADACLR __attribute__((address(0x4AB)));


extern volatile __bit ADACQ0 __attribute__((address(0x4E8)));


extern volatile __bit ADACQ1 __attribute__((address(0x4E9)));


extern volatile __bit ADACQ2 __attribute__((address(0x4EA)));


extern volatile __bit ADACQ3 __attribute__((address(0x4EB)));


extern volatile __bit ADACQ4 __attribute__((address(0x4EC)));


extern volatile __bit ADACQ5 __attribute__((address(0x4ED)));


extern volatile __bit ADACQ6 __attribute__((address(0x4EE)));


extern volatile __bit ADACQ7 __attribute__((address(0x4EF)));


extern volatile __bit ADACT0 __attribute__((address(0x4C8)));


extern volatile __bit ADACT1 __attribute__((address(0x4C9)));


extern volatile __bit ADACT2 __attribute__((address(0x4CA)));


extern volatile __bit ADACT3 __attribute__((address(0x4CB)));


extern volatile __bit ADACT4 __attribute__((address(0x4CC)));


extern volatile __bit ADAOV __attribute__((address(0x4BF)));


extern volatile __bit ADCACTPPS0 __attribute__((address(0x7618)));


extern volatile __bit ADCACTPPS1 __attribute__((address(0x7619)));


extern volatile __bit ADCACTPPS2 __attribute__((address(0x761A)));


extern volatile __bit ADCACTPPS3 __attribute__((address(0x761B)));


extern volatile __bit ADCACTPPS4 __attribute__((address(0x761C)));


extern volatile __bit ADCALC0 __attribute__((address(0x4B4)));


extern volatile __bit ADCALC1 __attribute__((address(0x4B5)));


extern volatile __bit ADCALC2 __attribute__((address(0x4B6)));


extern volatile __bit ADCAP0 __attribute__((address(0x4D8)));


extern volatile __bit ADCAP1 __attribute__((address(0x4D9)));


extern volatile __bit ADCAP2 __attribute__((address(0x4DA)));


extern volatile __bit ADCAP3 __attribute__((address(0x4DB)));


extern volatile __bit ADCAP4 __attribute__((address(0x4DC)));


extern volatile __bit ADCCS0 __attribute__((address(0x4C0)));


extern volatile __bit ADCCS1 __attribute__((address(0x4C1)));


extern volatile __bit ADCCS2 __attribute__((address(0x4C2)));


extern volatile __bit ADCCS3 __attribute__((address(0x4C3)));


extern volatile __bit ADCCS4 __attribute__((address(0x4C4)));


extern volatile __bit ADCCS5 __attribute__((address(0x4C5)));


extern volatile __bit ADCMD __attribute__((address(0x3CC5)));


extern volatile __bit ADCNT0 __attribute__((address(0x860)));


extern volatile __bit ADCNT1 __attribute__((address(0x861)));


extern volatile __bit ADCNT2 __attribute__((address(0x862)));


extern volatile __bit ADCNT3 __attribute__((address(0x863)));


extern volatile __bit ADCNT4 __attribute__((address(0x864)));


extern volatile __bit ADCNT5 __attribute__((address(0x865)));


extern volatile __bit ADCNT6 __attribute__((address(0x866)));


extern volatile __bit ADCNT7 __attribute__((address(0x867)));


extern volatile __bit ADCONT __attribute__((address(0x49E)));


extern volatile __bit ADCRS0 __attribute__((address(0x4AC)));


extern volatile __bit ADCRS1 __attribute__((address(0x4AD)));


extern volatile __bit ADCRS2 __attribute__((address(0x4AE)));


extern volatile __bit ADCS __attribute__((address(0x49C)));


extern volatile __bit ADDEN __attribute__((address(0x8EB)));


extern volatile __bit ADDSEN __attribute__((address(0x4A0)));


extern volatile __bit ADERR0 __attribute__((address(0x8B0)));


extern volatile __bit ADERR1 __attribute__((address(0x8B1)));


extern volatile __bit ADERR10 __attribute__((address(0x8BA)));


extern volatile __bit ADERR11 __attribute__((address(0x8BB)));


extern volatile __bit ADERR12 __attribute__((address(0x8BC)));


extern volatile __bit ADERR13 __attribute__((address(0x8BD)));


extern volatile __bit ADERR14 __attribute__((address(0x8BE)));


extern volatile __bit ADERR15 __attribute__((address(0x8BF)));


extern volatile __bit ADERR2 __attribute__((address(0x8B2)));


extern volatile __bit ADERR3 __attribute__((address(0x8B3)));


extern volatile __bit ADERR4 __attribute__((address(0x8B4)));


extern volatile __bit ADERR5 __attribute__((address(0x8B5)));


extern volatile __bit ADERR6 __attribute__((address(0x8B6)));


extern volatile __bit ADERR7 __attribute__((address(0x8B7)));


extern volatile __bit ADERR8 __attribute__((address(0x8B8)));


extern volatile __bit ADERR9 __attribute__((address(0x8B9)));


extern volatile __bit ADFLTR0 __attribute__((address(0x8A0)));


extern volatile __bit ADFLTR1 __attribute__((address(0x8A1)));


extern volatile __bit ADFLTR10 __attribute__((address(0x8AA)));


extern volatile __bit ADFLTR11 __attribute__((address(0x8AB)));


extern volatile __bit ADFLTR12 __attribute__((address(0x8AC)));


extern volatile __bit ADFLTR13 __attribute__((address(0x8AD)));


extern volatile __bit ADFLTR14 __attribute__((address(0x8AE)));


extern volatile __bit ADFLTR15 __attribute__((address(0x8AF)));


extern volatile __bit ADFLTR2 __attribute__((address(0x8A2)));


extern volatile __bit ADFLTR3 __attribute__((address(0x8A3)));


extern volatile __bit ADFLTR4 __attribute__((address(0x8A4)));


extern volatile __bit ADFLTR5 __attribute__((address(0x8A5)));


extern volatile __bit ADFLTR6 __attribute__((address(0x8A6)));


extern volatile __bit ADFLTR7 __attribute__((address(0x8A7)));


extern volatile __bit ADFLTR8 __attribute__((address(0x8A8)));


extern volatile __bit ADFLTR9 __attribute__((address(0x8A9)));


extern volatile __bit ADFM0 __attribute__((address(0x49A)));


extern volatile __bit ADFM1 __attribute__((address(0x49B)));


extern volatile __bit ADFRM0 __attribute__((address(0x49A)));


extern volatile __bit ADFRM1 __attribute__((address(0x49B)));


extern volatile __bit ADFVR0 __attribute__((address(0x4860)));


extern volatile __bit ADFVR1 __attribute__((address(0x4861)));


extern volatile __bit ADGO __attribute__((address(0x498)));


extern volatile __bit ADGPOL __attribute__((address(0x4A5)));


extern volatile __bit ADIE __attribute__((address(0x38B8)));


extern volatile __bit ADIF __attribute__((address(0x3868)));


extern volatile __bit ADIPEN __attribute__((address(0x4A6)));


extern volatile __bit ADLTH0 __attribute__((address(0x870)));


extern volatile __bit ADLTH1 __attribute__((address(0x871)));


extern volatile __bit ADLTH10 __attribute__((address(0x87A)));


extern volatile __bit ADLTH11 __attribute__((address(0x87B)));


extern volatile __bit ADLTH12 __attribute__((address(0x87C)));


extern volatile __bit ADLTH13 __attribute__((address(0x87D)));


extern volatile __bit ADLTH14 __attribute__((address(0x87E)));


extern volatile __bit ADLTH15 __attribute__((address(0x87F)));


extern volatile __bit ADLTH2 __attribute__((address(0x872)));


extern volatile __bit ADLTH3 __attribute__((address(0x873)));


extern volatile __bit ADLTH4 __attribute__((address(0x874)));


extern volatile __bit ADLTH5 __attribute__((address(0x875)));


extern volatile __bit ADLTH6 __attribute__((address(0x876)));


extern volatile __bit ADLTH7 __attribute__((address(0x877)));


extern volatile __bit ADLTH8 __attribute__((address(0x878)));


extern volatile __bit ADLTH9 __attribute__((address(0x879)));


extern volatile __bit ADLTHR __attribute__((address(0x4BD)));


extern volatile __bit ADMACT __attribute__((address(0x4BB)));


extern volatile __bit ADMATH __attribute__((address(0x4BC)));


extern volatile __bit ADMD0 __attribute__((address(0x4A8)));


extern volatile __bit ADMD1 __attribute__((address(0x4A9)));


extern volatile __bit ADMD2 __attribute__((address(0x4AA)));


extern volatile __bit ADMSK11 __attribute__((address(0xC89)));


extern volatile __bit ADMSK12 __attribute__((address(0xCD9)));


extern volatile __bit ADMSK21 __attribute__((address(0xC8A)));


extern volatile __bit ADMSK22 __attribute__((address(0xCDA)));


extern volatile __bit ADMSK31 __attribute__((address(0xC8B)));


extern volatile __bit ADMSK32 __attribute__((address(0xCDB)));


extern volatile __bit ADMSK41 __attribute__((address(0xC8C)));


extern volatile __bit ADMSK42 __attribute__((address(0xCDC)));


extern volatile __bit ADMSK51 __attribute__((address(0xC8D)));


extern volatile __bit ADMSK52 __attribute__((address(0xCDD)));


extern volatile __bit ADNREF __attribute__((address(0x4D4)));


extern volatile __bit ADOEN __attribute__((address(0x448A)));


extern volatile __bit ADON __attribute__((address(0x49F)));


extern volatile __bit ADOR __attribute__((address(0x4482)));


extern volatile __bit ADPCH0 __attribute__((address(0x4F0)));


extern volatile __bit ADPCH1 __attribute__((address(0x4F1)));


extern volatile __bit ADPCH2 __attribute__((address(0x4F2)));


extern volatile __bit ADPCH3 __attribute__((address(0x4F3)));


extern volatile __bit ADPCH4 __attribute__((address(0x4F4)));


extern volatile __bit ADPCH5 __attribute__((address(0x4F5)));


extern volatile __bit ADPPOL __attribute__((address(0x4A7)));


extern volatile __bit ADPRE0 __attribute__((address(0x4E0)));


extern volatile __bit ADPRE1 __attribute__((address(0x4E1)));


extern volatile __bit ADPRE2 __attribute__((address(0x4E2)));


extern volatile __bit ADPRE3 __attribute__((address(0x4E3)));


extern volatile __bit ADPRE4 __attribute__((address(0x4E4)));


extern volatile __bit ADPRE5 __attribute__((address(0x4E5)));


extern volatile __bit ADPRE6 __attribute__((address(0x4E6)));


extern volatile __bit ADPRE7 __attribute__((address(0x4E7)));


extern volatile __bit ADPREF0 __attribute__((address(0x4D0)));


extern volatile __bit ADPREF1 __attribute__((address(0x4D1)));


extern volatile __bit ADPREV0 __attribute__((address(0x470)));


extern volatile __bit ADPREV1 __attribute__((address(0x471)));


extern volatile __bit ADPREV10 __attribute__((address(0x47A)));


extern volatile __bit ADPREV11 __attribute__((address(0x47B)));


extern volatile __bit ADPREV12 __attribute__((address(0x47C)));


extern volatile __bit ADPREV13 __attribute__((address(0x47D)));


extern volatile __bit ADPREV14 __attribute__((address(0x47E)));


extern volatile __bit ADPREV15 __attribute__((address(0x47F)));


extern volatile __bit ADPREV2 __attribute__((address(0x472)));


extern volatile __bit ADPREV3 __attribute__((address(0x473)));


extern volatile __bit ADPREV4 __attribute__((address(0x474)));


extern volatile __bit ADPREV5 __attribute__((address(0x475)));


extern volatile __bit ADPREV6 __attribute__((address(0x476)));


extern volatile __bit ADPREV7 __attribute__((address(0x477)));


extern volatile __bit ADPREV8 __attribute__((address(0x478)));


extern volatile __bit ADPREV9 __attribute__((address(0x479)));


extern volatile __bit ADPSIS __attribute__((address(0x4AF)));


extern volatile __bit ADRPT0 __attribute__((address(0x868)));


extern volatile __bit ADRPT1 __attribute__((address(0x869)));


extern volatile __bit ADRPT2 __attribute__((address(0x86A)));


extern volatile __bit ADRPT3 __attribute__((address(0x86B)));


extern volatile __bit ADRPT4 __attribute__((address(0x86C)));


extern volatile __bit ADRPT5 __attribute__((address(0x86D)));


extern volatile __bit ADRPT6 __attribute__((address(0x86E)));


extern volatile __bit ADRPT7 __attribute__((address(0x86F)));


extern volatile __bit ADSOI __attribute__((address(0x4B3)));


extern volatile __bit ADSTAT0 __attribute__((address(0x4B8)));


extern volatile __bit ADSTAT1 __attribute__((address(0x4B9)));


extern volatile __bit ADSTAT2 __attribute__((address(0x4BA)));


extern volatile __bit ADSTPT0 __attribute__((address(0x890)));


extern volatile __bit ADSTPT1 __attribute__((address(0x891)));


extern volatile __bit ADSTPT10 __attribute__((address(0x89A)));


extern volatile __bit ADSTPT11 __attribute__((address(0x89B)));


extern volatile __bit ADSTPT12 __attribute__((address(0x89C)));


extern volatile __bit ADSTPT13 __attribute__((address(0x89D)));


extern volatile __bit ADSTPT14 __attribute__((address(0x89E)));


extern volatile __bit ADSTPT15 __attribute__((address(0x89F)));


extern volatile __bit ADSTPT2 __attribute__((address(0x892)));


extern volatile __bit ADSTPT3 __attribute__((address(0x893)));


extern volatile __bit ADSTPT4 __attribute__((address(0x894)));


extern volatile __bit ADSTPT5 __attribute__((address(0x895)));


extern volatile __bit ADSTPT6 __attribute__((address(0x896)));


extern volatile __bit ADSTPT7 __attribute__((address(0x897)));


extern volatile __bit ADSTPT8 __attribute__((address(0x898)));


extern volatile __bit ADSTPT9 __attribute__((address(0x899)));


extern volatile __bit ADTIE __attribute__((address(0x38B9)));


extern volatile __bit ADTIF __attribute__((address(0x3869)));


extern volatile __bit ADTMD0 __attribute__((address(0x4B0)));


extern volatile __bit ADTMD1 __attribute__((address(0x4B1)));


extern volatile __bit ADTMD2 __attribute__((address(0x4B2)));


extern volatile __bit ADUTH0 __attribute__((address(0x880)));


extern volatile __bit ADUTH1 __attribute__((address(0x881)));


extern volatile __bit ADUTH10 __attribute__((address(0x88A)));


extern volatile __bit ADUTH11 __attribute__((address(0x88B)));


extern volatile __bit ADUTH12 __attribute__((address(0x88C)));


extern volatile __bit ADUTH13 __attribute__((address(0x88D)));


extern volatile __bit ADUTH14 __attribute__((address(0x88E)));


extern volatile __bit ADUTH15 __attribute__((address(0x88F)));


extern volatile __bit ADUTH2 __attribute__((address(0x882)));


extern volatile __bit ADUTH3 __attribute__((address(0x883)));


extern volatile __bit ADUTH4 __attribute__((address(0x884)));


extern volatile __bit ADUTH5 __attribute__((address(0x885)));


extern volatile __bit ADUTH6 __attribute__((address(0x886)));


extern volatile __bit ADUTH7 __attribute__((address(0x887)));


extern volatile __bit ADUTH8 __attribute__((address(0x888)));


extern volatile __bit ADUTH9 __attribute__((address(0x889)));


extern volatile __bit ADUTHR __attribute__((address(0x4BE)));


extern volatile __bit ANSA0 __attribute__((address(0x79C0)));


extern volatile __bit ANSA1 __attribute__((address(0x79C1)));


extern volatile __bit ANSA2 __attribute__((address(0x79C2)));


extern volatile __bit ANSA3 __attribute__((address(0x79C3)));


extern volatile __bit ANSA4 __attribute__((address(0x79C4)));


extern volatile __bit ANSA5 __attribute__((address(0x79C5)));


extern volatile __bit ANSA6 __attribute__((address(0x79C6)));


extern volatile __bit ANSA7 __attribute__((address(0x79C7)));


extern volatile __bit ANSB0 __attribute__((address(0x7A18)));


extern volatile __bit ANSB1 __attribute__((address(0x7A19)));


extern volatile __bit ANSB2 __attribute__((address(0x7A1A)));


extern volatile __bit ANSB3 __attribute__((address(0x7A1B)));


extern volatile __bit ANSB4 __attribute__((address(0x7A1C)));


extern volatile __bit ANSB5 __attribute__((address(0x7A1D)));


extern volatile __bit ANSB6 __attribute__((address(0x7A1E)));


extern volatile __bit ANSB7 __attribute__((address(0x7A1F)));


extern volatile __bit ANSC0 __attribute__((address(0x7A70)));


extern volatile __bit ANSC1 __attribute__((address(0x7A71)));


extern volatile __bit ANSC2 __attribute__((address(0x7A72)));


extern volatile __bit ANSC3 __attribute__((address(0x7A73)));


extern volatile __bit ANSC4 __attribute__((address(0x7A74)));


extern volatile __bit ANSC5 __attribute__((address(0x7A75)));


extern volatile __bit ANSC6 __attribute__((address(0x7A76)));


extern volatile __bit ANSC7 __attribute__((address(0x7A77)));


extern volatile __bit ANSD0 __attribute__((address(0x7AC8)));


extern volatile __bit ANSD1 __attribute__((address(0x7AC9)));


extern volatile __bit ANSD2 __attribute__((address(0x7ACA)));


extern volatile __bit ANSD3 __attribute__((address(0x7ACB)));


extern volatile __bit ANSD4 __attribute__((address(0x7ACC)));


extern volatile __bit ANSD5 __attribute__((address(0x7ACD)));


extern volatile __bit ANSD6 __attribute__((address(0x7ACE)));


extern volatile __bit ANSD7 __attribute__((address(0x7ACF)));


extern volatile __bit ANSE0 __attribute__((address(0x7B20)));


extern volatile __bit ANSE1 __attribute__((address(0x7B21)));


extern volatile __bit ANSE2 __attribute__((address(0x7B22)));


extern volatile __bit BCL1IE __attribute__((address(0x38C9)));


extern volatile __bit BCL1IF __attribute__((address(0x3879)));


extern volatile __bit BCL2IE __attribute__((address(0x38CB)));


extern volatile __bit BCL2IF __attribute__((address(0x387B)));


extern volatile __bit BF1 __attribute__((address(0xC78)));


extern volatile __bit BF2 __attribute__((address(0xCC8)));


extern volatile __bit BORRDY __attribute__((address(0x4088)));


extern volatile __bit BRG16 __attribute__((address(0x8FB)));


extern volatile __bit BRGH __attribute__((address(0x8F2)));


extern volatile __bit BSR0 __attribute__((address(0x40)));


extern volatile __bit BSR1 __attribute__((address(0x41)));


extern volatile __bit BSR2 __attribute__((address(0x42)));


extern volatile __bit BSR3 __attribute__((address(0x43)));


extern volatile __bit BSR4 __attribute__((address(0x44)));


extern volatile __bit C1HYS __attribute__((address(0x4C81)));


extern volatile __bit C1IE __attribute__((address(0x38C0)));


extern volatile __bit C1IF __attribute__((address(0x3870)));


extern volatile __bit C1INTN __attribute__((address(0x4C88)));


extern volatile __bit C1INTP __attribute__((address(0x4C89)));


extern volatile __bit C1NCH0 __attribute__((address(0x4C90)));


extern volatile __bit C1NCH1 __attribute__((address(0x4C91)));


extern volatile __bit C1NCH2 __attribute__((address(0x4C92)));


extern volatile __bit C1ON __attribute__((address(0x4C87)));


extern volatile __bit C1PCH0 __attribute__((address(0x4C98)));


extern volatile __bit C1PCH1 __attribute__((address(0x4C99)));


extern volatile __bit C1PCH2 __attribute__((address(0x4C9A)));


extern volatile __bit C1POL __attribute__((address(0x4C84)));


extern volatile __bit C1SP __attribute__((address(0x4C82)));


extern volatile __bit C1SYNC __attribute__((address(0x4C80)));


extern volatile __bit C1TSEL0 __attribute__((address(0x10F0)));


extern volatile __bit C1TSEL1 __attribute__((address(0x10F1)));


extern volatile __bit C2HYS __attribute__((address(0x4CA1)));


extern volatile __bit C2IE __attribute__((address(0x38C1)));


extern volatile __bit C2IF __attribute__((address(0x3871)));


extern volatile __bit C2INTN __attribute__((address(0x4CA8)));


extern volatile __bit C2INTP __attribute__((address(0x4CA9)));


extern volatile __bit C2NCH0 __attribute__((address(0x4CB0)));


extern volatile __bit C2NCH1 __attribute__((address(0x4CB1)));


extern volatile __bit C2NCH2 __attribute__((address(0x4CB2)));


extern volatile __bit C2ON __attribute__((address(0x4CA7)));


extern volatile __bit C2PCH0 __attribute__((address(0x4CB8)));


extern volatile __bit C2PCH1 __attribute__((address(0x4CB9)));


extern volatile __bit C2PCH2 __attribute__((address(0x4CBA)));


extern volatile __bit C2POL __attribute__((address(0x4CA4)));


extern volatile __bit C2SP __attribute__((address(0x4CA2)));


extern volatile __bit C2SYNC __attribute__((address(0x4CA0)));


extern volatile __bit C2TSEL0 __attribute__((address(0x10F2)));


extern volatile __bit C2TSEL1 __attribute__((address(0x10F3)));


extern volatile __bit C3TSEL0 __attribute__((address(0x10F4)));


extern volatile __bit C3TSEL1 __attribute__((address(0x10F5)));


extern volatile __bit C4TSEL0 __attribute__((address(0x10F6)));


extern volatile __bit C4TSEL1 __attribute__((address(0x10F7)));


extern volatile __bit C5TSEL0 __attribute__((address(0x10F8)));


extern volatile __bit C5TSEL1 __attribute__((address(0x10F9)));


extern volatile __bit CAL01 __attribute__((address(0x1060)));


extern volatile __bit CAL03 __attribute__((address(0x1090)));


extern volatile __bit CAL05 __attribute__((address(0x10C0)));


extern volatile __bit CAL11 __attribute__((address(0x1061)));


extern volatile __bit CAL13 __attribute__((address(0x1091)));


extern volatile __bit CAL15 __attribute__((address(0x10C1)));


extern volatile __bit CAL21 __attribute__((address(0x1062)));


extern volatile __bit CAL23 __attribute__((address(0x1092)));


extern volatile __bit CAL25 __attribute__((address(0x10C2)));


extern volatile __bit CAL31 __attribute__((address(0x1063)));


extern volatile __bit CAL33 __attribute__((address(0x1093)));


extern volatile __bit CAL35 __attribute__((address(0x10C3)));


extern volatile __bit CAL41 __attribute__((address(0x1064)));


extern volatile __bit CAL43 __attribute__((address(0x1094)));


extern volatile __bit CAL45 __attribute__((address(0x10C4)));


extern volatile __bit CAL51 __attribute__((address(0x1065)));


extern volatile __bit CAL53 __attribute__((address(0x1095)));


extern volatile __bit CAL55 __attribute__((address(0x10C5)));


extern volatile __bit CAL61 __attribute__((address(0x1066)));


extern volatile __bit CAL63 __attribute__((address(0x1096)));


extern volatile __bit CAL65 __attribute__((address(0x10C6)));


extern volatile __bit CAL71 __attribute__((address(0x1067)));


extern volatile __bit CAL73 __attribute__((address(0x1097)));


extern volatile __bit CAL75 __attribute__((address(0x10C7)));


extern volatile __bit CARRY __attribute__((address(0x18)));


extern volatile __bit CCDEN __attribute__((address(0x40A7)));


extern volatile __bit CCDNA0 __attribute__((address(0x7A00)));


extern volatile __bit CCDNA1 __attribute__((address(0x7A01)));


extern volatile __bit CCDNA2 __attribute__((address(0x7A02)));


extern volatile __bit CCDNA3 __attribute__((address(0x7A03)));


extern volatile __bit CCDNA4 __attribute__((address(0x7A04)));


extern volatile __bit CCDNA5 __attribute__((address(0x7A05)));


extern volatile __bit CCDNA6 __attribute__((address(0x7A06)));


extern volatile __bit CCDNA7 __attribute__((address(0x7A07)));


extern volatile __bit CCDNB0 __attribute__((address(0x7A58)));


extern volatile __bit CCDNB1 __attribute__((address(0x7A59)));


extern volatile __bit CCDNB2 __attribute__((address(0x7A5A)));


extern volatile __bit CCDNB3 __attribute__((address(0x7A5B)));


extern volatile __bit CCDNB4 __attribute__((address(0x7A5C)));


extern volatile __bit CCDNB5 __attribute__((address(0x7A5D)));


extern volatile __bit CCDNB6 __attribute__((address(0x7A5E)));


extern volatile __bit CCDNB7 __attribute__((address(0x7A5F)));


extern volatile __bit CCDNC0 __attribute__((address(0x7AB0)));


extern volatile __bit CCDNC1 __attribute__((address(0x7AB1)));


extern volatile __bit CCDNC2 __attribute__((address(0x7AB2)));


extern volatile __bit CCDNC3 __attribute__((address(0x7AB3)));


extern volatile __bit CCDNC4 __attribute__((address(0x7AB4)));


extern volatile __bit CCDNC5 __attribute__((address(0x7AB5)));


extern volatile __bit CCDNC6 __attribute__((address(0x7AB6)));


extern volatile __bit CCDNC7 __attribute__((address(0x7AB7)));


extern volatile __bit CCDND0 __attribute__((address(0x7B08)));


extern volatile __bit CCDND1 __attribute__((address(0x7B09)));


extern volatile __bit CCDND2 __attribute__((address(0x7B0A)));


extern volatile __bit CCDND3 __attribute__((address(0x7B0B)));


extern volatile __bit CCDND4 __attribute__((address(0x7B0C)));


extern volatile __bit CCDND5 __attribute__((address(0x7B0D)));


extern volatile __bit CCDND6 __attribute__((address(0x7B0E)));


extern volatile __bit CCDND7 __attribute__((address(0x7B0F)));


extern volatile __bit CCDNE0 __attribute__((address(0x7B60)));


extern volatile __bit CCDNE1 __attribute__((address(0x7B61)));


extern volatile __bit CCDNE2 __attribute__((address(0x7B62)));


extern volatile __bit CCDPA0 __attribute__((address(0x7A08)));


extern volatile __bit CCDPA1 __attribute__((address(0x7A09)));


extern volatile __bit CCDPA2 __attribute__((address(0x7A0A)));


extern volatile __bit CCDPA3 __attribute__((address(0x7A0B)));


extern volatile __bit CCDPA4 __attribute__((address(0x7A0C)));


extern volatile __bit CCDPA5 __attribute__((address(0x7A0D)));


extern volatile __bit CCDPA6 __attribute__((address(0x7A0E)));


extern volatile __bit CCDPA7 __attribute__((address(0x7A0F)));


extern volatile __bit CCDPB0 __attribute__((address(0x7A60)));


extern volatile __bit CCDPB1 __attribute__((address(0x7A61)));


extern volatile __bit CCDPB2 __attribute__((address(0x7A62)));


extern volatile __bit CCDPB3 __attribute__((address(0x7A63)));


extern volatile __bit CCDPB4 __attribute__((address(0x7A64)));


extern volatile __bit CCDPB5 __attribute__((address(0x7A65)));


extern volatile __bit CCDPB6 __attribute__((address(0x7A66)));


extern volatile __bit CCDPB7 __attribute__((address(0x7A67)));


extern volatile __bit CCDPC0 __attribute__((address(0x7AB8)));


extern volatile __bit CCDPC1 __attribute__((address(0x7AB9)));


extern volatile __bit CCDPC2 __attribute__((address(0x7ABA)));


extern volatile __bit CCDPC3 __attribute__((address(0x7ABB)));


extern volatile __bit CCDPC4 __attribute__((address(0x7ABC)));


extern volatile __bit CCDPC5 __attribute__((address(0x7ABD)));


extern volatile __bit CCDPC6 __attribute__((address(0x7ABE)));


extern volatile __bit CCDPC7 __attribute__((address(0x7ABF)));


extern volatile __bit CCDPD0 __attribute__((address(0x7B10)));


extern volatile __bit CCDPD1 __attribute__((address(0x7B11)));


extern volatile __bit CCDPD2 __attribute__((address(0x7B12)));


extern volatile __bit CCDPD3 __attribute__((address(0x7B13)));


extern volatile __bit CCDPD4 __attribute__((address(0x7B14)));


extern volatile __bit CCDPD5 __attribute__((address(0x7B15)));


extern volatile __bit CCDPD6 __attribute__((address(0x7B16)));


extern volatile __bit CCDPD7 __attribute__((address(0x7B17)));


extern volatile __bit CCDPE0 __attribute__((address(0x7B68)));


extern volatile __bit CCDPE1 __attribute__((address(0x7B69)));


extern volatile __bit CCDPE2 __attribute__((address(0x7B6A)));


extern volatile __bit CCDS0 __attribute__((address(0x40A0)));


extern volatile __bit CCDS1 __attribute__((address(0x40A1)));


extern volatile __bit CCP1CTS0 __attribute__((address(0x1878)));


extern volatile __bit CCP1CTS1 __attribute__((address(0x1879)));


extern volatile __bit CCP1CTS2 __attribute__((address(0x187A)));


extern volatile __bit CCP1EN __attribute__((address(0x1877)));


extern volatile __bit CCP1FMT __attribute__((address(0x1874)));


extern volatile __bit CCP1IE __attribute__((address(0x38E0)));


extern volatile __bit CCP1IF __attribute__((address(0x3890)));


extern volatile __bit CCP1MD __attribute__((address(0x3CC8)));


extern volatile __bit CCP1MODE0 __attribute__((address(0x1870)));


extern volatile __bit CCP1MODE1 __attribute__((address(0x1871)));


extern volatile __bit CCP1MODE2 __attribute__((address(0x1872)));


extern volatile __bit CCP1MODE3 __attribute__((address(0x1873)));


extern volatile __bit CCP1OUT __attribute__((address(0x1875)));


extern volatile __bit CCP1PPS0 __attribute__((address(0x7508)));


extern volatile __bit CCP1PPS1 __attribute__((address(0x7509)));


extern volatile __bit CCP1PPS2 __attribute__((address(0x750A)));


extern volatile __bit CCP1PPS3 __attribute__((address(0x750B)));


extern volatile __bit CCP1PPS4 __attribute__((address(0x750C)));


extern volatile __bit CCP2CTS0 __attribute__((address(0x1898)));


extern volatile __bit CCP2CTS1 __attribute__((address(0x1899)));


extern volatile __bit CCP2CTS2 __attribute__((address(0x189A)));


extern volatile __bit CCP2EN __attribute__((address(0x1897)));


extern volatile __bit CCP2FMT __attribute__((address(0x1894)));


extern volatile __bit CCP2IE __attribute__((address(0x38E1)));


extern volatile __bit CCP2IF __attribute__((address(0x3891)));


extern volatile __bit CCP2MD __attribute__((address(0x3CC9)));


extern volatile __bit CCP2MODE0 __attribute__((address(0x1890)));


extern volatile __bit CCP2MODE1 __attribute__((address(0x1891)));


extern volatile __bit CCP2MODE2 __attribute__((address(0x1892)));


extern volatile __bit CCP2MODE3 __attribute__((address(0x1893)));


extern volatile __bit CCP2OUT __attribute__((address(0x1895)));


extern volatile __bit CCP2PPS0 __attribute__((address(0x7510)));


extern volatile __bit CCP2PPS1 __attribute__((address(0x7511)));


extern volatile __bit CCP2PPS2 __attribute__((address(0x7512)));


extern volatile __bit CCP2PPS3 __attribute__((address(0x7513)));


extern volatile __bit CCP2PPS4 __attribute__((address(0x7514)));


extern volatile __bit CCP3CTS0 __attribute__((address(0x18B8)));


extern volatile __bit CCP3CTS1 __attribute__((address(0x18B9)));


extern volatile __bit CCP3CTS2 __attribute__((address(0x18BA)));


extern volatile __bit CCP3EN __attribute__((address(0x18B7)));


extern volatile __bit CCP3FMT __attribute__((address(0x18B4)));


extern volatile __bit CCP3IE __attribute__((address(0x38E2)));


extern volatile __bit CCP3IF __attribute__((address(0x3892)));


extern volatile __bit CCP3MD __attribute__((address(0x3CCA)));


extern volatile __bit CCP3MODE0 __attribute__((address(0x18B0)));


extern volatile __bit CCP3MODE1 __attribute__((address(0x18B1)));


extern volatile __bit CCP3MODE2 __attribute__((address(0x18B2)));


extern volatile __bit CCP3MODE3 __attribute__((address(0x18B3)));


extern volatile __bit CCP3OUT __attribute__((address(0x18B5)));


extern volatile __bit CCP3PPS0 __attribute__((address(0x7518)));


extern volatile __bit CCP3PPS1 __attribute__((address(0x7519)));


extern volatile __bit CCP3PPS2 __attribute__((address(0x751A)));


extern volatile __bit CCP3PPS3 __attribute__((address(0x751B)));


extern volatile __bit CCP3PPS4 __attribute__((address(0x751C)));


extern volatile __bit CCP4CTS0 __attribute__((address(0x18D8)));


extern volatile __bit CCP4CTS1 __attribute__((address(0x18D9)));


extern volatile __bit CCP4CTS2 __attribute__((address(0x18DA)));


extern volatile __bit CCP4EN __attribute__((address(0x18D7)));


extern volatile __bit CCP4FMT __attribute__((address(0x18D4)));


extern volatile __bit CCP4IE __attribute__((address(0x38E3)));


extern volatile __bit CCP4IF __attribute__((address(0x3893)));


extern volatile __bit CCP4MD __attribute__((address(0x3CCB)));


extern volatile __bit CCP4MODE0 __attribute__((address(0x18D0)));


extern volatile __bit CCP4MODE1 __attribute__((address(0x18D1)));


extern volatile __bit CCP4MODE2 __attribute__((address(0x18D2)));


extern volatile __bit CCP4MODE3 __attribute__((address(0x18D3)));


extern volatile __bit CCP4OUT __attribute__((address(0x18D5)));


extern volatile __bit CCP4PPS0 __attribute__((address(0x7520)));


extern volatile __bit CCP4PPS1 __attribute__((address(0x7521)));


extern volatile __bit CCP4PPS2 __attribute__((address(0x7522)));


extern volatile __bit CCP4PPS3 __attribute__((address(0x7523)));


extern volatile __bit CCP4PPS4 __attribute__((address(0x7524)));


extern volatile __bit CCP5CTS0 __attribute__((address(0x18F8)));


extern volatile __bit CCP5CTS1 __attribute__((address(0x18F9)));


extern volatile __bit CCP5CTS2 __attribute__((address(0x18FA)));


extern volatile __bit CCP5EN __attribute__((address(0x18F7)));


extern volatile __bit CCP5FMT __attribute__((address(0x18F4)));


extern volatile __bit CCP5IE __attribute__((address(0x38E4)));


extern volatile __bit CCP5IF __attribute__((address(0x3894)));


extern volatile __bit CCP5MD __attribute__((address(0x3CCC)));


extern volatile __bit CCP5MODE0 __attribute__((address(0x18F0)));


extern volatile __bit CCP5MODE1 __attribute__((address(0x18F1)));


extern volatile __bit CCP5MODE2 __attribute__((address(0x18F2)));


extern volatile __bit CCP5MODE3 __attribute__((address(0x18F3)));


extern volatile __bit CCP5OUT __attribute__((address(0x18F5)));


extern volatile __bit CCP5PPS0 __attribute__((address(0x7528)));


extern volatile __bit CCP5PPS1 __attribute__((address(0x7529)));


extern volatile __bit CCP5PPS2 __attribute__((address(0x752A)));


extern volatile __bit CCP5PPS3 __attribute__((address(0x752B)));


extern volatile __bit CCP5PPS4 __attribute__((address(0x752C)));


extern volatile __bit CCP5PPS5 __attribute__((address(0x752D)));


extern volatile __bit CDAFVR0 __attribute__((address(0x4862)));


extern volatile __bit CDAFVR1 __attribute__((address(0x4863)));


extern volatile __bit CDIV0 __attribute__((address(0x4470)));


extern volatile __bit CDIV1 __attribute__((address(0x4471)));


extern volatile __bit CDIV2 __attribute__((address(0x4472)));


extern volatile __bit CDIV3 __attribute__((address(0x4473)));


extern volatile __bit CKE1 __attribute__((address(0xC7E)));


extern volatile __bit CKE2 __attribute__((address(0xCCE)));


extern volatile __bit CKP1 __attribute__((address(0xC84)));


extern volatile __bit CKP2 __attribute__((address(0xCD4)));


extern volatile __bit CLC1IE __attribute__((address(0x38DC)));


extern volatile __bit CLC1IF __attribute__((address(0x388C)));


extern volatile __bit CLC1MD __attribute__((address(0x3CD9)));


extern volatile __bit CLC2IE __attribute__((address(0x38DD)));


extern volatile __bit CLC2IF __attribute__((address(0x388D)));


extern volatile __bit CLC2MD __attribute__((address(0x3CDA)));


extern volatile __bit CLC3IE __attribute__((address(0x38DE)));


extern volatile __bit CLC3IF __attribute__((address(0x388E)));


extern volatile __bit CLC3MD __attribute__((address(0x3CDB)));


extern volatile __bit CLC4IE __attribute__((address(0x38DF)));


extern volatile __bit CLC4IF __attribute__((address(0x388F)));


extern volatile __bit CLC4MD __attribute__((address(0x3CDC)));


extern volatile __bit CLCIN0PPS0 __attribute__((address(0x75D8)));


extern volatile __bit CLCIN0PPS1 __attribute__((address(0x75D9)));


extern volatile __bit CLCIN0PPS2 __attribute__((address(0x75DA)));


extern volatile __bit CLCIN0PPS3 __attribute__((address(0x75DB)));


extern volatile __bit CLCIN0PPS4 __attribute__((address(0x75DC)));


extern volatile __bit CLCIN1PPS0 __attribute__((address(0x75E0)));


extern volatile __bit CLCIN1PPS1 __attribute__((address(0x75E1)));


extern volatile __bit CLCIN1PPS2 __attribute__((address(0x75E2)));


extern volatile __bit CLCIN1PPS3 __attribute__((address(0x75E3)));


extern volatile __bit CLCIN1PPS4 __attribute__((address(0x75E4)));


extern volatile __bit CLCIN2PPS0 __attribute__((address(0x75E8)));


extern volatile __bit CLCIN2PPS1 __attribute__((address(0x75E9)));


extern volatile __bit CLCIN2PPS2 __attribute__((address(0x75EA)));


extern volatile __bit CLCIN2PPS3 __attribute__((address(0x75EB)));


extern volatile __bit CLCIN2PPS4 __attribute__((address(0x75EC)));


extern volatile __bit CLCIN3PPS0 __attribute__((address(0x75F0)));


extern volatile __bit CLCIN3PPS1 __attribute__((address(0x75F1)));


extern volatile __bit CLCIN3PPS2 __attribute__((address(0x75F2)));


extern volatile __bit CLCIN3PPS3 __attribute__((address(0x75F3)));


extern volatile __bit CLCIN3PPS4 __attribute__((address(0x75F4)));


extern volatile __bit CLKRCLK0 __attribute__((address(0x44B0)));


extern volatile __bit CLKRCLK1 __attribute__((address(0x44B1)));


extern volatile __bit CLKRCLK2 __attribute__((address(0x44B2)));


extern volatile __bit CLKRCLK3 __attribute__((address(0x44B3)));


extern volatile __bit CLKRDC0 __attribute__((address(0x44AB)));


extern volatile __bit CLKRDC1 __attribute__((address(0x44AC)));


extern volatile __bit CLKRDIV0 __attribute__((address(0x44A8)));


extern volatile __bit CLKRDIV1 __attribute__((address(0x44A9)));


extern volatile __bit CLKRDIV2 __attribute__((address(0x44AA)));


extern volatile __bit CLKREN __attribute__((address(0x44AF)));


extern volatile __bit CLKRMD __attribute__((address(0x3CB1)));


extern volatile __bit CMP1MD __attribute__((address(0x3CC1)));


extern volatile __bit CMP2MD __attribute__((address(0x3CC2)));


extern volatile __bit COSC0 __attribute__((address(0x4474)));


extern volatile __bit COSC1 __attribute__((address(0x4475)));


extern volatile __bit COSC2 __attribute__((address(0x4476)));


extern volatile __bit CRCEN __attribute__((address(0x20F7)));


extern volatile __bit CRCGO __attribute__((address(0x20F6)));


extern volatile __bit CRCIE __attribute__((address(0x38EE)));


extern volatile __bit CRCIF __attribute__((address(0x389E)));


extern volatile __bit CRCMD __attribute__((address(0x3CB4)));


extern volatile __bit CREN __attribute__((address(0x8EC)));


extern volatile __bit CSRC __attribute__((address(0x8F7)));


extern volatile __bit CSWHOLD __attribute__((address(0x447F)));


extern volatile __bit CSWIE __attribute__((address(0x38BE)));


extern volatile __bit CSWIF __attribute__((address(0x386E)));


extern volatile __bit CWG1CS __attribute__((address(0x3060)));


extern volatile __bit CWG1DBF0 __attribute__((address(0x3078)));


extern volatile __bit CWG1DBF1 __attribute__((address(0x3079)));


extern volatile __bit CWG1DBF2 __attribute__((address(0x307A)));


extern volatile __bit CWG1DBF3 __attribute__((address(0x307B)));


extern volatile __bit CWG1DBF4 __attribute__((address(0x307C)));


extern volatile __bit CWG1DBF5 __attribute__((address(0x307D)));


extern volatile __bit CWG1DBR0 __attribute__((address(0x3070)));


extern volatile __bit CWG1DBR1 __attribute__((address(0x3071)));


extern volatile __bit CWG1DBR2 __attribute__((address(0x3072)));


extern volatile __bit CWG1DBR3 __attribute__((address(0x3073)));


extern volatile __bit CWG1DBR4 __attribute__((address(0x3074)));


extern volatile __bit CWG1DBR5 __attribute__((address(0x3075)));


extern volatile __bit CWG1EN __attribute__((address(0x3087)));


extern volatile __bit CWG1IE __attribute__((address(0x38E8)));


extern volatile __bit CWG1IF __attribute__((address(0x3898)));


extern volatile __bit CWG1IN __attribute__((address(0x308D)));


extern volatile __bit CWG1ISM0 __attribute__((address(0x3068)));


extern volatile __bit CWG1ISM1 __attribute__((address(0x3069)));


extern volatile __bit CWG1ISM2 __attribute__((address(0x306A)));


extern volatile __bit CWG1ISM3 __attribute__((address(0x306B)));


extern volatile __bit CWG1LD __attribute__((address(0x3086)));


extern volatile __bit CWG1LSAC0 __attribute__((address(0x3092)));


extern volatile __bit CWG1LSAC1 __attribute__((address(0x3093)));


extern volatile __bit CWG1LSBD0 __attribute__((address(0x3094)));


extern volatile __bit CWG1LSBD1 __attribute__((address(0x3095)));


extern volatile __bit CWG1MD __attribute__((address(0x3CD0)));


extern volatile __bit CWG1MODE0 __attribute__((address(0x3080)));


extern volatile __bit CWG1MODE1 __attribute__((address(0x3081)));


extern volatile __bit CWG1MODE2 __attribute__((address(0x3082)));


extern volatile __bit CWG1OVRA __attribute__((address(0x30A4)));


extern volatile __bit CWG1OVRB __attribute__((address(0x30A5)));


extern volatile __bit CWG1OVRC __attribute__((address(0x30A6)));


extern volatile __bit CWG1OVRD __attribute__((address(0x30A7)));


extern volatile __bit CWG1POLA __attribute__((address(0x3088)));


extern volatile __bit CWG1POLB __attribute__((address(0x3089)));


extern volatile __bit CWG1POLC __attribute__((address(0x308A)));


extern volatile __bit CWG1POLD __attribute__((address(0x308B)));


extern volatile __bit CWG1PPS0 __attribute__((address(0x7588)));


extern volatile __bit CWG1PPS1 __attribute__((address(0x7589)));


extern volatile __bit CWG1PPS2 __attribute__((address(0x758A)));


extern volatile __bit CWG1PPS3 __attribute__((address(0x758B)));


extern volatile __bit CWG1PPS4 __attribute__((address(0x758C)));


extern volatile __bit CWG1REN __attribute__((address(0x3096)));


extern volatile __bit CWG1SHUTDOWN __attribute__((address(0x3097)));


extern volatile __bit CWG1STRA __attribute__((address(0x30A0)));


extern volatile __bit CWG1STRB __attribute__((address(0x30A1)));


extern volatile __bit CWG1STRC __attribute__((address(0x30A2)));


extern volatile __bit CWG1STRD __attribute__((address(0x30A3)));


extern volatile __bit CWG2CS __attribute__((address(0x30B0)));


extern volatile __bit CWG2DBF0 __attribute__((address(0x30C8)));


extern volatile __bit CWG2DBF1 __attribute__((address(0x30C9)));


extern volatile __bit CWG2DBF2 __attribute__((address(0x30CA)));


extern volatile __bit CWG2DBF3 __attribute__((address(0x30CB)));


extern volatile __bit CWG2DBF4 __attribute__((address(0x30CC)));


extern volatile __bit CWG2DBF5 __attribute__((address(0x30CD)));


extern volatile __bit CWG2DBR0 __attribute__((address(0x30C0)));


extern volatile __bit CWG2DBR1 __attribute__((address(0x30C1)));


extern volatile __bit CWG2DBR2 __attribute__((address(0x30C2)));


extern volatile __bit CWG2DBR3 __attribute__((address(0x30C3)));


extern volatile __bit CWG2DBR4 __attribute__((address(0x30C4)));


extern volatile __bit CWG2DBR5 __attribute__((address(0x30C5)));


extern volatile __bit CWG2EN __attribute__((address(0x30D7)));


extern volatile __bit CWG2IE __attribute__((address(0x38E9)));


extern volatile __bit CWG2IF __attribute__((address(0x3899)));


extern volatile __bit CWG2IN __attribute__((address(0x30DD)));


extern volatile __bit CWG2ISM0 __attribute__((address(0x30B8)));


extern volatile __bit CWG2ISM1 __attribute__((address(0x30B9)));


extern volatile __bit CWG2ISM2 __attribute__((address(0x30BA)));


extern volatile __bit CWG2ISM3 __attribute__((address(0x30BB)));


extern volatile __bit CWG2LD __attribute__((address(0x30D6)));


extern volatile __bit CWG2LSAC0 __attribute__((address(0x30E2)));


extern volatile __bit CWG2LSAC1 __attribute__((address(0x30E3)));


extern volatile __bit CWG2LSBD0 __attribute__((address(0x30E4)));


extern volatile __bit CWG2LSBD1 __attribute__((address(0x30E5)));


extern volatile __bit CWG2MD __attribute__((address(0x3CD1)));


extern volatile __bit CWG2MODE0 __attribute__((address(0x30D0)));


extern volatile __bit CWG2MODE1 __attribute__((address(0x30D1)));


extern volatile __bit CWG2MODE2 __attribute__((address(0x30D2)));


extern volatile __bit CWG2OVRA __attribute__((address(0x30F4)));


extern volatile __bit CWG2OVRB __attribute__((address(0x30F5)));


extern volatile __bit CWG2OVRC __attribute__((address(0x30F6)));


extern volatile __bit CWG2OVRD __attribute__((address(0x30F7)));


extern volatile __bit CWG2POLA __attribute__((address(0x30D8)));


extern volatile __bit CWG2POLB __attribute__((address(0x30D9)));


extern volatile __bit CWG2POLC __attribute__((address(0x30DA)));


extern volatile __bit CWG2POLD __attribute__((address(0x30DB)));


extern volatile __bit CWG2PPS0 __attribute__((address(0x7590)));


extern volatile __bit CWG2PPS1 __attribute__((address(0x7591)));


extern volatile __bit CWG2PPS2 __attribute__((address(0x7592)));


extern volatile __bit CWG2PPS3 __attribute__((address(0x7593)));


extern volatile __bit CWG2PPS4 __attribute__((address(0x7594)));


extern volatile __bit CWG2REN __attribute__((address(0x30E6)));


extern volatile __bit CWG2SHUTDOWN __attribute__((address(0x30E7)));


extern volatile __bit CWG2STRA __attribute__((address(0x30F0)));


extern volatile __bit CWG2STRB __attribute__((address(0x30F1)));


extern volatile __bit CWG2STRC __attribute__((address(0x30F2)));


extern volatile __bit CWG2STRD __attribute__((address(0x30F3)));


extern volatile __bit CWG3CS __attribute__((address(0x3460)));


extern volatile __bit CWG3DBF0 __attribute__((address(0x3478)));


extern volatile __bit CWG3DBF1 __attribute__((address(0x3479)));


extern volatile __bit CWG3DBF2 __attribute__((address(0x347A)));


extern volatile __bit CWG3DBF3 __attribute__((address(0x347B)));


extern volatile __bit CWG3DBF4 __attribute__((address(0x347C)));


extern volatile __bit CWG3DBF5 __attribute__((address(0x347D)));


extern volatile __bit CWG3DBR0 __attribute__((address(0x3470)));


extern volatile __bit CWG3DBR1 __attribute__((address(0x3471)));


extern volatile __bit CWG3DBR2 __attribute__((address(0x3472)));


extern volatile __bit CWG3DBR3 __attribute__((address(0x3473)));


extern volatile __bit CWG3DBR4 __attribute__((address(0x3474)));


extern volatile __bit CWG3DBR5 __attribute__((address(0x3475)));


extern volatile __bit CWG3EN __attribute__((address(0x3487)));


extern volatile __bit CWG3IE __attribute__((address(0x38EA)));


extern volatile __bit CWG3IF __attribute__((address(0x389A)));


extern volatile __bit CWG3IN __attribute__((address(0x348D)));


extern volatile __bit CWG3ISM0 __attribute__((address(0x3468)));


extern volatile __bit CWG3ISM1 __attribute__((address(0x3469)));


extern volatile __bit CWG3ISM2 __attribute__((address(0x346A)));


extern volatile __bit CWG3ISM3 __attribute__((address(0x346B)));


extern volatile __bit CWG3LD __attribute__((address(0x3486)));


extern volatile __bit CWG3LSAC0 __attribute__((address(0x3492)));


extern volatile __bit CWG3LSAC1 __attribute__((address(0x3493)));


extern volatile __bit CWG3LSBD0 __attribute__((address(0x3494)));


extern volatile __bit CWG3LSBD1 __attribute__((address(0x3495)));


extern volatile __bit CWG3MD __attribute__((address(0x3CD2)));


extern volatile __bit CWG3MODE0 __attribute__((address(0x3480)));


extern volatile __bit CWG3MODE1 __attribute__((address(0x3481)));


extern volatile __bit CWG3MODE2 __attribute__((address(0x3482)));


extern volatile __bit CWG3OVRA __attribute__((address(0x34A4)));


extern volatile __bit CWG3OVRB __attribute__((address(0x34A5)));


extern volatile __bit CWG3OVRC __attribute__((address(0x34A6)));


extern volatile __bit CWG3OVRD __attribute__((address(0x34A7)));


extern volatile __bit CWG3POLA __attribute__((address(0x3488)));


extern volatile __bit CWG3POLB __attribute__((address(0x3489)));


extern volatile __bit CWG3POLC __attribute__((address(0x348A)));


extern volatile __bit CWG3POLD __attribute__((address(0x348B)));


extern volatile __bit CWG3PPS0 __attribute__((address(0x7598)));


extern volatile __bit CWG3PPS1 __attribute__((address(0x7599)));


extern volatile __bit CWG3PPS2 __attribute__((address(0x759A)));


extern volatile __bit CWG3PPS3 __attribute__((address(0x759B)));


extern volatile __bit CWG3PPS4 __attribute__((address(0x759C)));


extern volatile __bit CWG3REN __attribute__((address(0x3496)));


extern volatile __bit CWG3SHUTDOWN __attribute__((address(0x3497)));


extern volatile __bit CWG3STRA __attribute__((address(0x34A0)));


extern volatile __bit CWG3STRB __attribute__((address(0x34A1)));


extern volatile __bit CWG3STRC __attribute__((address(0x34A2)));


extern volatile __bit CWG3STRD __attribute__((address(0x34A3)));


extern volatile __bit C_SHAD __attribute__((address(0x7F20)));


extern volatile __bit DA1 __attribute__((address(0xC7D)));


extern volatile __bit DA2 __attribute__((address(0xCCD)));


extern volatile __bit DABORT __attribute__((address(0x2084)));


extern volatile __bit DAC1EN __attribute__((address(0x4877)));


extern volatile __bit DAC1NSS __attribute__((address(0x4870)));


extern volatile __bit DAC1OE1 __attribute__((address(0x4875)));


extern volatile __bit DAC1OE2 __attribute__((address(0x4874)));


extern volatile __bit DAC1PSS0 __attribute__((address(0x4872)));


extern volatile __bit DAC1PSS1 __attribute__((address(0x4873)));


extern volatile __bit DAC1R0 __attribute__((address(0x4878)));


extern volatile __bit DAC1R1 __attribute__((address(0x4879)));


extern volatile __bit DAC1R2 __attribute__((address(0x487A)));


extern volatile __bit DAC1R3 __attribute__((address(0x487B)));


extern volatile __bit DAC1R4 __attribute__((address(0x487C)));


extern volatile __bit DACMD __attribute__((address(0x3CC6)));


extern volatile __bit DATA0 __attribute__((address(0x20B0)));


extern volatile __bit DATA1 __attribute__((address(0x20B1)));


extern volatile __bit DATA10 __attribute__((address(0x20BA)));


extern volatile __bit DATA11 __attribute__((address(0x20BB)));


extern volatile __bit DATA12 __attribute__((address(0x20BC)));


extern volatile __bit DATA13 __attribute__((address(0x20BD)));


extern volatile __bit DATA14 __attribute__((address(0x20BE)));


extern volatile __bit DATA15 __attribute__((address(0x20BF)));


extern volatile __bit DATA2 __attribute__((address(0x20B2)));


extern volatile __bit DATA3 __attribute__((address(0x20B3)));


extern volatile __bit DATA4 __attribute__((address(0x20B4)));


extern volatile __bit DATA5 __attribute__((address(0x20B5)));


extern volatile __bit DATA6 __attribute__((address(0x20B6)));


extern volatile __bit DATA7 __attribute__((address(0x20B7)));


extern volatile __bit DATA8 __attribute__((address(0x20B8)));


extern volatile __bit DATA9 __attribute__((address(0x20B9)));


extern volatile __bit DATA_ADDRESS1 __attribute__((address(0xC7D)));


extern volatile __bit DATA_ADDRESS2 __attribute__((address(0xCCD)));


extern volatile __bit DC __attribute__((address(0x19)));


extern volatile __bit DC_SHAD __attribute__((address(0x7F21)));


extern volatile __bit DLEN0 __attribute__((address(0x20FC)));


extern volatile __bit DLEN1 __attribute__((address(0x20FD)));


extern volatile __bit DLEN2 __attribute__((address(0x20FE)));


extern volatile __bit DLEN3 __attribute__((address(0x20FF)));


extern volatile __bit DOE __attribute__((address(0x4464)));


extern volatile __bit DONE __attribute__((address(0x498)));


extern volatile __bit DOZE0 __attribute__((address(0x4460)));


extern volatile __bit DOZE1 __attribute__((address(0x4461)));


extern volatile __bit DOZE2 __attribute__((address(0x4462)));


extern volatile __bit DOZEN __attribute__((address(0x4466)));


extern volatile __bit DSMMD __attribute__((address(0x3CD8)));


extern volatile __bit D_A1 __attribute__((address(0xC7D)));


extern volatile __bit D_A2 __attribute__((address(0xCCD)));


extern volatile __bit D_nA1 __attribute__((address(0xC7D)));


extern volatile __bit D_nA2 __attribute__((address(0xCCD)));


extern volatile __bit EXTOEN __attribute__((address(0x448F)));


extern volatile __bit EXTOR __attribute__((address(0x4487)));


extern volatile __bit FERR __attribute__((address(0x8EA)));


extern volatile __bit FREE __attribute__((address(0x40F4)));


extern volatile __bit FULL __attribute__((address(0x20F0)));


extern volatile __bit FVREN __attribute__((address(0x4867)));


extern volatile __bit FVRMD __attribute__((address(0x3CB6)));


extern volatile __bit FVRRDY __attribute__((address(0x4866)));


extern volatile __bit G1EN __attribute__((address(0x3087)));


extern volatile __bit G2EN __attribute__((address(0x30D7)));


extern volatile __bit G3EN __attribute__((address(0x3487)));


extern volatile __bit GCEN1 __attribute__((address(0xC8F)));


extern volatile __bit GCEN2 __attribute__((address(0xCDF)));


extern volatile __bit GIE __attribute__((address(0x5F)));


extern volatile __bit GO_nDONE __attribute__((address(0x498)));


extern volatile __bit HADR0 __attribute__((address(0x2070)));


extern volatile __bit HADR1 __attribute__((address(0x2071)));


extern volatile __bit HADR10 __attribute__((address(0x207A)));


extern volatile __bit HADR11 __attribute__((address(0x207B)));


extern volatile __bit HADR12 __attribute__((address(0x207C)));


extern volatile __bit HADR13 __attribute__((address(0x207D)));


extern volatile __bit HADR14 __attribute__((address(0x207E)));


extern volatile __bit HADR15 __attribute__((address(0x207F)));


extern volatile __bit HADR2 __attribute__((address(0x2072)));


extern volatile __bit HADR3 __attribute__((address(0x2073)));


extern volatile __bit HADR4 __attribute__((address(0x2074)));


extern volatile __bit HADR5 __attribute__((address(0x2075)));


extern volatile __bit HADR6 __attribute__((address(0x2076)));


extern volatile __bit HADR7 __attribute__((address(0x2077)));


extern volatile __bit HADR8 __attribute__((address(0x2078)));


extern volatile __bit HADR9 __attribute__((address(0x2079)));


extern volatile __bit HFFRQ0 __attribute__((address(0x4498)));


extern volatile __bit HFFRQ1 __attribute__((address(0x4499)));


extern volatile __bit HFFRQ2 __attribute__((address(0x449A)));


extern volatile __bit HFOEN __attribute__((address(0x448E)));


extern volatile __bit HFOR __attribute__((address(0x4486)));


extern volatile __bit HFTUN0 __attribute__((address(0x4490)));


extern volatile __bit HFTUN1 __attribute__((address(0x4491)));


extern volatile __bit HFTUN2 __attribute__((address(0x4492)));


extern volatile __bit HFTUN3 __attribute__((address(0x4493)));


extern volatile __bit HFTUN4 __attribute__((address(0x4494)));


extern volatile __bit HFTUN5 __attribute__((address(0x4495)));


extern volatile __bit I2C_DAT1 __attribute__((address(0xC7D)));


extern volatile __bit I2C_DAT2 __attribute__((address(0xCCD)));


extern volatile __bit I2C_READ1 __attribute__((address(0xC7A)));


extern volatile __bit I2C_READ2 __attribute__((address(0xCCA)));


extern volatile __bit I2C_START1 __attribute__((address(0xC7B)));


extern volatile __bit I2C_START2 __attribute__((address(0xCCB)));


extern volatile __bit IDLEN __attribute__((address(0x4467)));


extern volatile __bit INLVLA0 __attribute__((address(0x79E0)));


extern volatile __bit INLVLA1 __attribute__((address(0x79E1)));


extern volatile __bit INLVLA2 __attribute__((address(0x79E2)));


extern volatile __bit INLVLA3 __attribute__((address(0x79E3)));


extern volatile __bit INLVLA4 __attribute__((address(0x79E4)));


extern volatile __bit INLVLA5 __attribute__((address(0x79E5)));


extern volatile __bit INLVLA6 __attribute__((address(0x79E6)));


extern volatile __bit INLVLA7 __attribute__((address(0x79E7)));


extern volatile __bit INLVLB0 __attribute__((address(0x7A38)));


extern volatile __bit INLVLB1 __attribute__((address(0x7A39)));


extern volatile __bit INLVLB2 __attribute__((address(0x7A3A)));


extern volatile __bit INLVLB3 __attribute__((address(0x7A3B)));


extern volatile __bit INLVLB4 __attribute__((address(0x7A3C)));


extern volatile __bit INLVLB5 __attribute__((address(0x7A3D)));


extern volatile __bit INLVLB6 __attribute__((address(0x7A3E)));


extern volatile __bit INLVLB7 __attribute__((address(0x7A3F)));


extern volatile __bit INLVLC0 __attribute__((address(0x7A90)));


extern volatile __bit INLVLC1 __attribute__((address(0x7A91)));


extern volatile __bit INLVLC2 __attribute__((address(0x7A92)));


extern volatile __bit INLVLC3 __attribute__((address(0x7A93)));


extern volatile __bit INLVLC4 __attribute__((address(0x7A94)));


extern volatile __bit INLVLC5 __attribute__((address(0x7A95)));


extern volatile __bit INLVLC6 __attribute__((address(0x7A96)));


extern volatile __bit INLVLC7 __attribute__((address(0x7A97)));


extern volatile __bit INLVLD0 __attribute__((address(0x7AE8)));


extern volatile __bit INLVLD1 __attribute__((address(0x7AE9)));


extern volatile __bit INLVLD2 __attribute__((address(0x7AEA)));


extern volatile __bit INLVLD3 __attribute__((address(0x7AEB)));


extern volatile __bit INLVLD4 __attribute__((address(0x7AEC)));


extern volatile __bit INLVLD5 __attribute__((address(0x7AED)));


extern volatile __bit INLVLD6 __attribute__((address(0x7AEE)));


extern volatile __bit INLVLD7 __attribute__((address(0x7AEF)));


extern volatile __bit INLVLE0 __attribute__((address(0x7B40)));


extern volatile __bit INLVLE1 __attribute__((address(0x7B41)));


extern volatile __bit INLVLE2 __attribute__((address(0x7B42)));


extern volatile __bit INLVLE3 __attribute__((address(0x7B43)));


extern volatile __bit INTE __attribute__((address(0x38B0)));


extern volatile __bit INTEDG __attribute__((address(0x58)));


extern volatile __bit INTF __attribute__((address(0x3860)));


extern volatile __bit INTM __attribute__((address(0x2083)));


extern volatile __bit INTPPS0 __attribute__((address(0x7480)));


extern volatile __bit INTPPS1 __attribute__((address(0x7481)));


extern volatile __bit INTPPS2 __attribute__((address(0x7482)));


extern volatile __bit INTPPS3 __attribute__((address(0x7483)));


extern volatile __bit INVALID __attribute__((address(0x2084)));


extern volatile __bit IOCAF0 __attribute__((address(0x79F8)));


extern volatile __bit IOCAF1 __attribute__((address(0x79F9)));


extern volatile __bit IOCAF2 __attribute__((address(0x79FA)));


extern volatile __bit IOCAF3 __attribute__((address(0x79FB)));


extern volatile __bit IOCAF4 __attribute__((address(0x79FC)));


extern volatile __bit IOCAF5 __attribute__((address(0x79FD)));


extern volatile __bit IOCAF6 __attribute__((address(0x79FE)));


extern volatile __bit IOCAF7 __attribute__((address(0x79FF)));


extern volatile __bit IOCAN0 __attribute__((address(0x79F0)));


extern volatile __bit IOCAN1 __attribute__((address(0x79F1)));


extern volatile __bit IOCAN2 __attribute__((address(0x79F2)));


extern volatile __bit IOCAN3 __attribute__((address(0x79F3)));


extern volatile __bit IOCAN4 __attribute__((address(0x79F4)));


extern volatile __bit IOCAN5 __attribute__((address(0x79F5)));


extern volatile __bit IOCAN6 __attribute__((address(0x79F6)));


extern volatile __bit IOCAN7 __attribute__((address(0x79F7)));


extern volatile __bit IOCAP0 __attribute__((address(0x79E8)));


extern volatile __bit IOCAP1 __attribute__((address(0x79E9)));


extern volatile __bit IOCAP2 __attribute__((address(0x79EA)));


extern volatile __bit IOCAP3 __attribute__((address(0x79EB)));


extern volatile __bit IOCAP4 __attribute__((address(0x79EC)));


extern volatile __bit IOCAP5 __attribute__((address(0x79ED)));


extern volatile __bit IOCAP6 __attribute__((address(0x79EE)));


extern volatile __bit IOCAP7 __attribute__((address(0x79EF)));


extern volatile __bit IOCBF0 __attribute__((address(0x7A50)));


extern volatile __bit IOCBF1 __attribute__((address(0x7A51)));


extern volatile __bit IOCBF2 __attribute__((address(0x7A52)));


extern volatile __bit IOCBF3 __attribute__((address(0x7A53)));


extern volatile __bit IOCBF4 __attribute__((address(0x7A54)));


extern volatile __bit IOCBF5 __attribute__((address(0x7A55)));


extern volatile __bit IOCBF6 __attribute__((address(0x7A56)));


extern volatile __bit IOCBF7 __attribute__((address(0x7A57)));


extern volatile __bit IOCBN0 __attribute__((address(0x7A48)));


extern volatile __bit IOCBN1 __attribute__((address(0x7A49)));


extern volatile __bit IOCBN2 __attribute__((address(0x7A4A)));


extern volatile __bit IOCBN3 __attribute__((address(0x7A4B)));


extern volatile __bit IOCBN4 __attribute__((address(0x7A4C)));


extern volatile __bit IOCBN5 __attribute__((address(0x7A4D)));


extern volatile __bit IOCBN6 __attribute__((address(0x7A4E)));


extern volatile __bit IOCBN7 __attribute__((address(0x7A4F)));


extern volatile __bit IOCBP0 __attribute__((address(0x7A40)));


extern volatile __bit IOCBP1 __attribute__((address(0x7A41)));


extern volatile __bit IOCBP2 __attribute__((address(0x7A42)));


extern volatile __bit IOCBP3 __attribute__((address(0x7A43)));


extern volatile __bit IOCBP4 __attribute__((address(0x7A44)));


extern volatile __bit IOCBP5 __attribute__((address(0x7A45)));


extern volatile __bit IOCBP6 __attribute__((address(0x7A46)));


extern volatile __bit IOCBP7 __attribute__((address(0x7A47)));


extern volatile __bit IOCCF0 __attribute__((address(0x7AA8)));


extern volatile __bit IOCCF1 __attribute__((address(0x7AA9)));


extern volatile __bit IOCCF2 __attribute__((address(0x7AAA)));


extern volatile __bit IOCCF3 __attribute__((address(0x7AAB)));


extern volatile __bit IOCCF4 __attribute__((address(0x7AAC)));


extern volatile __bit IOCCF5 __attribute__((address(0x7AAD)));


extern volatile __bit IOCCF6 __attribute__((address(0x7AAE)));


extern volatile __bit IOCCF7 __attribute__((address(0x7AAF)));


extern volatile __bit IOCCN0 __attribute__((address(0x7AA0)));


extern volatile __bit IOCCN1 __attribute__((address(0x7AA1)));


extern volatile __bit IOCCN2 __attribute__((address(0x7AA2)));


extern volatile __bit IOCCN3 __attribute__((address(0x7AA3)));


extern volatile __bit IOCCN4 __attribute__((address(0x7AA4)));


extern volatile __bit IOCCN5 __attribute__((address(0x7AA5)));


extern volatile __bit IOCCN6 __attribute__((address(0x7AA6)));


extern volatile __bit IOCCN7 __attribute__((address(0x7AA7)));


extern volatile __bit IOCCP0 __attribute__((address(0x7A98)));


extern volatile __bit IOCCP1 __attribute__((address(0x7A99)));


extern volatile __bit IOCCP2 __attribute__((address(0x7A9A)));


extern volatile __bit IOCCP3 __attribute__((address(0x7A9B)));


extern volatile __bit IOCCP4 __attribute__((address(0x7A9C)));


extern volatile __bit IOCCP5 __attribute__((address(0x7A9D)));


extern volatile __bit IOCCP6 __attribute__((address(0x7A9E)));


extern volatile __bit IOCCP7 __attribute__((address(0x7A9F)));


extern volatile __bit IOCEF3 __attribute__((address(0x7B5B)));


extern volatile __bit IOCEN3 __attribute__((address(0x7B53)));


extern volatile __bit IOCEP3 __attribute__((address(0x7B4B)));


extern volatile __bit IOCIE __attribute__((address(0x38B4)));


extern volatile __bit IOCIF __attribute__((address(0x3864)));


extern volatile __bit IOCMD __attribute__((address(0x3CB0)));


extern volatile __bit LADR0 __attribute__((address(0x2060)));


extern volatile __bit LADR1 __attribute__((address(0x2061)));


extern volatile __bit LADR10 __attribute__((address(0x206A)));


extern volatile __bit LADR11 __attribute__((address(0x206B)));


extern volatile __bit LADR12 __attribute__((address(0x206C)));


extern volatile __bit LADR13 __attribute__((address(0x206D)));


extern volatile __bit LADR14 __attribute__((address(0x206E)));


extern volatile __bit LADR15 __attribute__((address(0x206F)));


extern volatile __bit LADR2 __attribute__((address(0x2062)));


extern volatile __bit LADR3 __attribute__((address(0x2063)));


extern volatile __bit LADR4 __attribute__((address(0x2064)));


extern volatile __bit LADR5 __attribute__((address(0x2065)));


extern volatile __bit LADR6 __attribute__((address(0x2066)));


extern volatile __bit LADR7 __attribute__((address(0x2067)));


extern volatile __bit LADR8 __attribute__((address(0x2068)));


extern volatile __bit LADR9 __attribute__((address(0x2069)));


extern volatile __bit LATA0 __attribute__((address(0xB0)));


extern volatile __bit LATA1 __attribute__((address(0xB1)));


extern volatile __bit LATA2 __attribute__((address(0xB2)));


extern volatile __bit LATA3 __attribute__((address(0xB3)));


extern volatile __bit LATA4 __attribute__((address(0xB4)));


extern volatile __bit LATA5 __attribute__((address(0xB5)));


extern volatile __bit LATA6 __attribute__((address(0xB6)));


extern volatile __bit LATA7 __attribute__((address(0xB7)));


extern volatile __bit LATB0 __attribute__((address(0xB8)));


extern volatile __bit LATB1 __attribute__((address(0xB9)));


extern volatile __bit LATB2 __attribute__((address(0xBA)));


extern volatile __bit LATB3 __attribute__((address(0xBB)));


extern volatile __bit LATB4 __attribute__((address(0xBC)));


extern volatile __bit LATB5 __attribute__((address(0xBD)));


extern volatile __bit LATB6 __attribute__((address(0xBE)));


extern volatile __bit LATB7 __attribute__((address(0xBF)));


extern volatile __bit LATC0 __attribute__((address(0xC0)));


extern volatile __bit LATC1 __attribute__((address(0xC1)));


extern volatile __bit LATC2 __attribute__((address(0xC2)));


extern volatile __bit LATC3 __attribute__((address(0xC3)));


extern volatile __bit LATC4 __attribute__((address(0xC4)));


extern volatile __bit LATC5 __attribute__((address(0xC5)));


extern volatile __bit LATC6 __attribute__((address(0xC6)));


extern volatile __bit LATC7 __attribute__((address(0xC7)));


extern volatile __bit LATD0 __attribute__((address(0xC8)));


extern volatile __bit LATD1 __attribute__((address(0xC9)));


extern volatile __bit LATD2 __attribute__((address(0xCA)));


extern volatile __bit LATD3 __attribute__((address(0xCB)));


extern volatile __bit LATD4 __attribute__((address(0xCC)));


extern volatile __bit LATD5 __attribute__((address(0xCD)));


extern volatile __bit LATD6 __attribute__((address(0xCE)));


extern volatile __bit LATD7 __attribute__((address(0xCF)));


extern volatile __bit LATE0 __attribute__((address(0xD0)));


extern volatile __bit LATE1 __attribute__((address(0xD1)));


extern volatile __bit LATE2 __attribute__((address(0xD2)));


extern volatile __bit LC1D1S0 __attribute__((address(0x7090)));


extern volatile __bit LC1D1S1 __attribute__((address(0x7091)));


extern volatile __bit LC1D1S2 __attribute__((address(0x7092)));


extern volatile __bit LC1D1S3 __attribute__((address(0x7093)));


extern volatile __bit LC1D1S4 __attribute__((address(0x7094)));


extern volatile __bit LC1D1S5 __attribute__((address(0x7095)));


extern volatile __bit LC1D1S6 __attribute__((address(0x7096)));


extern volatile __bit LC1D1S7 __attribute__((address(0x7097)));


extern volatile __bit LC1D2S0 __attribute__((address(0x7098)));


extern volatile __bit LC1D2S1 __attribute__((address(0x7099)));


extern volatile __bit LC1D2S2 __attribute__((address(0x709A)));


extern volatile __bit LC1D2S3 __attribute__((address(0x709B)));


extern volatile __bit LC1D2S4 __attribute__((address(0x709C)));


extern volatile __bit LC1D2S5 __attribute__((address(0x709D)));


extern volatile __bit LC1D2S6 __attribute__((address(0x709E)));


extern volatile __bit LC1D2S7 __attribute__((address(0x709F)));


extern volatile __bit LC1D3S0 __attribute__((address(0x70A0)));


extern volatile __bit LC1D3S1 __attribute__((address(0x70A1)));


extern volatile __bit LC1D3S2 __attribute__((address(0x70A2)));


extern volatile __bit LC1D3S3 __attribute__((address(0x70A3)));


extern volatile __bit LC1D3S4 __attribute__((address(0x70A4)));


extern volatile __bit LC1D3S5 __attribute__((address(0x70A5)));


extern volatile __bit LC1D3S6 __attribute__((address(0x70A6)));


extern volatile __bit LC1D3S7 __attribute__((address(0x70A7)));


extern volatile __bit LC1D4S0 __attribute__((address(0x70A8)));


extern volatile __bit LC1D4S1 __attribute__((address(0x70A9)));


extern volatile __bit LC1D4S2 __attribute__((address(0x70AA)));


extern volatile __bit LC1D4S3 __attribute__((address(0x70AB)));


extern volatile __bit LC1D4S4 __attribute__((address(0x70AC)));


extern volatile __bit LC1D4S5 __attribute__((address(0x70AD)));


extern volatile __bit LC1D4S6 __attribute__((address(0x70AE)));


extern volatile __bit LC1D4S7 __attribute__((address(0x70AF)));


extern volatile __bit LC1EN __attribute__((address(0x7087)));


extern volatile __bit LC1G1D1N __attribute__((address(0x70B0)));


extern volatile __bit LC1G1D1T __attribute__((address(0x70B1)));


extern volatile __bit LC1G1D2N __attribute__((address(0x70B2)));


extern volatile __bit LC1G1D2T __attribute__((address(0x70B3)));


extern volatile __bit LC1G1D3N __attribute__((address(0x70B4)));


extern volatile __bit LC1G1D3T __attribute__((address(0x70B5)));


extern volatile __bit LC1G1D4N __attribute__((address(0x70B6)));


extern volatile __bit LC1G1D4T __attribute__((address(0x70B7)));


extern volatile __bit LC1G1POL __attribute__((address(0x7088)));


extern volatile __bit LC1G2D1N __attribute__((address(0x70B8)));


extern volatile __bit LC1G2D1T __attribute__((address(0x70B9)));


extern volatile __bit LC1G2D2N __attribute__((address(0x70BA)));


extern volatile __bit LC1G2D2T __attribute__((address(0x70BB)));


extern volatile __bit LC1G2D3N __attribute__((address(0x70BC)));


extern volatile __bit LC1G2D3T __attribute__((address(0x70BD)));


extern volatile __bit LC1G2D4N __attribute__((address(0x70BE)));


extern volatile __bit LC1G2D4T __attribute__((address(0x70BF)));


extern volatile __bit LC1G2POL __attribute__((address(0x7089)));


extern volatile __bit LC1G3D1N __attribute__((address(0x70C0)));


extern volatile __bit LC1G3D1T __attribute__((address(0x70C1)));


extern volatile __bit LC1G3D2N __attribute__((address(0x70C2)));


extern volatile __bit LC1G3D2T __attribute__((address(0x70C3)));


extern volatile __bit LC1G3D3N __attribute__((address(0x70C4)));


extern volatile __bit LC1G3D3T __attribute__((address(0x70C5)));


extern volatile __bit LC1G3D4N __attribute__((address(0x70C6)));


extern volatile __bit LC1G3D4T __attribute__((address(0x70C7)));


extern volatile __bit LC1G3POL __attribute__((address(0x708A)));


extern volatile __bit LC1G4D1N __attribute__((address(0x70C8)));


extern volatile __bit LC1G4D1T __attribute__((address(0x70C9)));


extern volatile __bit LC1G4D2N __attribute__((address(0x70CA)));


extern volatile __bit LC1G4D2T __attribute__((address(0x70CB)));


extern volatile __bit LC1G4D3N __attribute__((address(0x70CC)));


extern volatile __bit LC1G4D3T __attribute__((address(0x70CD)));


extern volatile __bit LC1G4D4N __attribute__((address(0x70CE)));


extern volatile __bit LC1G4D4T __attribute__((address(0x70CF)));


extern volatile __bit LC1G4POL __attribute__((address(0x708B)));


extern volatile __bit LC1INTN __attribute__((address(0x7083)));


extern volatile __bit LC1INTP __attribute__((address(0x7084)));


extern volatile __bit LC1MODE0 __attribute__((address(0x7080)));


extern volatile __bit LC1MODE1 __attribute__((address(0x7081)));


extern volatile __bit LC1MODE2 __attribute__((address(0x7082)));


extern volatile __bit LC1OUT __attribute__((address(0x7085)));


extern volatile __bit LC1POL __attribute__((address(0x708F)));


extern volatile __bit LC2D1S0 __attribute__((address(0x70E0)));


extern volatile __bit LC2D1S1 __attribute__((address(0x70E1)));


extern volatile __bit LC2D1S2 __attribute__((address(0x70E2)));


extern volatile __bit LC2D1S3 __attribute__((address(0x70E3)));


extern volatile __bit LC2D1S4 __attribute__((address(0x70E4)));


extern volatile __bit LC2D1S5 __attribute__((address(0x70E5)));


extern volatile __bit LC2D1S6 __attribute__((address(0x70E6)));


extern volatile __bit LC2D1S7 __attribute__((address(0x70E7)));


extern volatile __bit LC2D2S0 __attribute__((address(0x70E8)));


extern volatile __bit LC2D2S1 __attribute__((address(0x70E9)));


extern volatile __bit LC2D2S2 __attribute__((address(0x70EA)));


extern volatile __bit LC2D2S3 __attribute__((address(0x70EB)));


extern volatile __bit LC2D2S4 __attribute__((address(0x70EC)));


extern volatile __bit LC2D2S5 __attribute__((address(0x70ED)));


extern volatile __bit LC2D2S6 __attribute__((address(0x70EE)));


extern volatile __bit LC2D2S7 __attribute__((address(0x70EF)));


extern volatile __bit LC2D3S0 __attribute__((address(0x70F0)));


extern volatile __bit LC2D3S1 __attribute__((address(0x70F1)));


extern volatile __bit LC2D3S2 __attribute__((address(0x70F2)));


extern volatile __bit LC2D3S3 __attribute__((address(0x70F3)));


extern volatile __bit LC2D3S4 __attribute__((address(0x70F4)));


extern volatile __bit LC2D3S5 __attribute__((address(0x70F5)));


extern volatile __bit LC2D3S6 __attribute__((address(0x70F6)));


extern volatile __bit LC2D3S7 __attribute__((address(0x70F7)));


extern volatile __bit LC2D4S0 __attribute__((address(0x70F8)));


extern volatile __bit LC2D4S1 __attribute__((address(0x70F9)));


extern volatile __bit LC2D4S2 __attribute__((address(0x70FA)));


extern volatile __bit LC2D4S3 __attribute__((address(0x70FB)));


extern volatile __bit LC2D4S4 __attribute__((address(0x70FC)));


extern volatile __bit LC2D4S5 __attribute__((address(0x70FD)));


extern volatile __bit LC2D4S6 __attribute__((address(0x70FE)));


extern volatile __bit LC2D4S7 __attribute__((address(0x70FF)));


extern volatile __bit LC2EN __attribute__((address(0x70D7)));


extern volatile __bit LC2G1D1N __attribute__((address(0x7100)));


extern volatile __bit LC2G1D1T __attribute__((address(0x7101)));


extern volatile __bit LC2G1D2N __attribute__((address(0x7102)));


extern volatile __bit LC2G1D2T __attribute__((address(0x7103)));


extern volatile __bit LC2G1D3N __attribute__((address(0x7104)));


extern volatile __bit LC2G1D3T __attribute__((address(0x7105)));


extern volatile __bit LC2G1D4N __attribute__((address(0x7106)));


extern volatile __bit LC2G1D4T __attribute__((address(0x7107)));


extern volatile __bit LC2G1POL __attribute__((address(0x70D8)));


extern volatile __bit LC2G2D1N __attribute__((address(0x7108)));


extern volatile __bit LC2G2D1T __attribute__((address(0x7109)));


extern volatile __bit LC2G2D2N __attribute__((address(0x710A)));


extern volatile __bit LC2G2D2T __attribute__((address(0x710B)));


extern volatile __bit LC2G2D3N __attribute__((address(0x710C)));


extern volatile __bit LC2G2D3T __attribute__((address(0x710D)));


extern volatile __bit LC2G2D4N __attribute__((address(0x710E)));


extern volatile __bit LC2G2D4T __attribute__((address(0x710F)));


extern volatile __bit LC2G2POL __attribute__((address(0x70D9)));


extern volatile __bit LC2G3D1N __attribute__((address(0x7110)));


extern volatile __bit LC2G3D1T __attribute__((address(0x7111)));


extern volatile __bit LC2G3D2N __attribute__((address(0x7112)));


extern volatile __bit LC2G3D2T __attribute__((address(0x7113)));


extern volatile __bit LC2G3D3N __attribute__((address(0x7114)));


extern volatile __bit LC2G3D3T __attribute__((address(0x7115)));


extern volatile __bit LC2G3D4N __attribute__((address(0x7116)));


extern volatile __bit LC2G3D4T __attribute__((address(0x7117)));


extern volatile __bit LC2G3POL __attribute__((address(0x70DA)));


extern volatile __bit LC2G4D1N __attribute__((address(0x7118)));


extern volatile __bit LC2G4D1T __attribute__((address(0x7119)));


extern volatile __bit LC2G4D2N __attribute__((address(0x711A)));


extern volatile __bit LC2G4D2T __attribute__((address(0x711B)));


extern volatile __bit LC2G4D3N __attribute__((address(0x711C)));


extern volatile __bit LC2G4D3T __attribute__((address(0x711D)));


extern volatile __bit LC2G4D4N __attribute__((address(0x711E)));


extern volatile __bit LC2G4D4T __attribute__((address(0x711F)));


extern volatile __bit LC2G4POL __attribute__((address(0x70DB)));


extern volatile __bit LC2INTN __attribute__((address(0x70D3)));


extern volatile __bit LC2INTP __attribute__((address(0x70D4)));


extern volatile __bit LC2MODE0 __attribute__((address(0x70D0)));


extern volatile __bit LC2MODE1 __attribute__((address(0x70D1)));


extern volatile __bit LC2MODE2 __attribute__((address(0x70D2)));


extern volatile __bit LC2OUT __attribute__((address(0x70D5)));


extern volatile __bit LC2POL __attribute__((address(0x70DF)));


extern volatile __bit LC3D1S0 __attribute__((address(0x7130)));


extern volatile __bit LC3D1S1 __attribute__((address(0x7131)));


extern volatile __bit LC3D1S2 __attribute__((address(0x7132)));


extern volatile __bit LC3D1S3 __attribute__((address(0x7133)));


extern volatile __bit LC3D1S4 __attribute__((address(0x7134)));


extern volatile __bit LC3D1S5 __attribute__((address(0x7135)));


extern volatile __bit LC3D1S6 __attribute__((address(0x7136)));


extern volatile __bit LC3D1S7 __attribute__((address(0x7137)));


extern volatile __bit LC3D2S0 __attribute__((address(0x7138)));


extern volatile __bit LC3D2S1 __attribute__((address(0x7139)));


extern volatile __bit LC3D2S2 __attribute__((address(0x713A)));


extern volatile __bit LC3D2S3 __attribute__((address(0x713B)));


extern volatile __bit LC3D2S4 __attribute__((address(0x713C)));


extern volatile __bit LC3D2S5 __attribute__((address(0x713D)));


extern volatile __bit LC3D2S6 __attribute__((address(0x713E)));


extern volatile __bit LC3D2S7 __attribute__((address(0x713F)));


extern volatile __bit LC3D3S0 __attribute__((address(0x7140)));


extern volatile __bit LC3D3S1 __attribute__((address(0x7141)));


extern volatile __bit LC3D3S2 __attribute__((address(0x7142)));


extern volatile __bit LC3D3S3 __attribute__((address(0x7143)));


extern volatile __bit LC3D3S4 __attribute__((address(0x7144)));


extern volatile __bit LC3D3S5 __attribute__((address(0x7145)));


extern volatile __bit LC3D3S6 __attribute__((address(0x7146)));


extern volatile __bit LC3D3S7 __attribute__((address(0x7147)));


extern volatile __bit LC3D4S0 __attribute__((address(0x7148)));


extern volatile __bit LC3D4S1 __attribute__((address(0x7149)));


extern volatile __bit LC3D4S2 __attribute__((address(0x714A)));


extern volatile __bit LC3D4S3 __attribute__((address(0x714B)));


extern volatile __bit LC3D4S4 __attribute__((address(0x714C)));


extern volatile __bit LC3D4S5 __attribute__((address(0x714D)));


extern volatile __bit LC3D4S6 __attribute__((address(0x714E)));


extern volatile __bit LC3D4S7 __attribute__((address(0x714F)));


extern volatile __bit LC3EN __attribute__((address(0x7127)));


extern volatile __bit LC3G1D1N __attribute__((address(0x7150)));


extern volatile __bit LC3G1D1T __attribute__((address(0x7151)));


extern volatile __bit LC3G1D2N __attribute__((address(0x7152)));


extern volatile __bit LC3G1D2T __attribute__((address(0x7153)));


extern volatile __bit LC3G1D3N __attribute__((address(0x7154)));


extern volatile __bit LC3G1D3T __attribute__((address(0x7155)));


extern volatile __bit LC3G1D4N __attribute__((address(0x7156)));


extern volatile __bit LC3G1D4T __attribute__((address(0x7157)));


extern volatile __bit LC3G1POL __attribute__((address(0x7128)));


extern volatile __bit LC3G2D1N __attribute__((address(0x7158)));


extern volatile __bit LC3G2D1T __attribute__((address(0x7159)));


extern volatile __bit LC3G2D2N __attribute__((address(0x715A)));


extern volatile __bit LC3G2D2T __attribute__((address(0x715B)));


extern volatile __bit LC3G2D3N __attribute__((address(0x715C)));


extern volatile __bit LC3G2D3T __attribute__((address(0x715D)));


extern volatile __bit LC3G2D4N __attribute__((address(0x715E)));


extern volatile __bit LC3G2D4T __attribute__((address(0x715F)));


extern volatile __bit LC3G2POL __attribute__((address(0x7129)));


extern volatile __bit LC3G3D1N __attribute__((address(0x7160)));


extern volatile __bit LC3G3D1T __attribute__((address(0x7161)));


extern volatile __bit LC3G3D2N __attribute__((address(0x7162)));


extern volatile __bit LC3G3D2T __attribute__((address(0x7163)));


extern volatile __bit LC3G3D3N __attribute__((address(0x7164)));


extern volatile __bit LC3G3D3T __attribute__((address(0x7165)));


extern volatile __bit LC3G3D4N __attribute__((address(0x7166)));


extern volatile __bit LC3G3D4T __attribute__((address(0x7167)));


extern volatile __bit LC3G3POL __attribute__((address(0x712A)));


extern volatile __bit LC3G4D1N __attribute__((address(0x7168)));


extern volatile __bit LC3G4D1T __attribute__((address(0x7169)));


extern volatile __bit LC3G4D2N __attribute__((address(0x716A)));


extern volatile __bit LC3G4D2T __attribute__((address(0x716B)));


extern volatile __bit LC3G4D3N __attribute__((address(0x716C)));


extern volatile __bit LC3G4D3T __attribute__((address(0x716D)));


extern volatile __bit LC3G4D4N __attribute__((address(0x716E)));


extern volatile __bit LC3G4D4T __attribute__((address(0x716F)));


extern volatile __bit LC3G4POL __attribute__((address(0x712B)));


extern volatile __bit LC3INTN __attribute__((address(0x7123)));


extern volatile __bit LC3INTP __attribute__((address(0x7124)));


extern volatile __bit LC3MODE0 __attribute__((address(0x7120)));


extern volatile __bit LC3MODE1 __attribute__((address(0x7121)));


extern volatile __bit LC3MODE2 __attribute__((address(0x7122)));


extern volatile __bit LC3OUT __attribute__((address(0x7125)));


extern volatile __bit LC3POL __attribute__((address(0x712F)));


extern volatile __bit LC4D1S0 __attribute__((address(0x7180)));


extern volatile __bit LC4D1S1 __attribute__((address(0x7181)));


extern volatile __bit LC4D1S2 __attribute__((address(0x7182)));


extern volatile __bit LC4D1S3 __attribute__((address(0x7183)));


extern volatile __bit LC4D1S4 __attribute__((address(0x7184)));


extern volatile __bit LC4D1S5 __attribute__((address(0x7185)));


extern volatile __bit LC4D1S6 __attribute__((address(0x7186)));


extern volatile __bit LC4D1S7 __attribute__((address(0x7187)));


extern volatile __bit LC4D2S0 __attribute__((address(0x7188)));


extern volatile __bit LC4D2S1 __attribute__((address(0x7189)));


extern volatile __bit LC4D2S2 __attribute__((address(0x718A)));


extern volatile __bit LC4D2S3 __attribute__((address(0x718B)));


extern volatile __bit LC4D2S4 __attribute__((address(0x718C)));


extern volatile __bit LC4D2S5 __attribute__((address(0x718D)));


extern volatile __bit LC4D2S6 __attribute__((address(0x718E)));


extern volatile __bit LC4D2S7 __attribute__((address(0x718F)));


extern volatile __bit LC4D3S0 __attribute__((address(0x7190)));


extern volatile __bit LC4D3S1 __attribute__((address(0x7191)));


extern volatile __bit LC4D3S2 __attribute__((address(0x7192)));


extern volatile __bit LC4D3S3 __attribute__((address(0x7193)));


extern volatile __bit LC4D3S4 __attribute__((address(0x7194)));


extern volatile __bit LC4D3S5 __attribute__((address(0x7195)));


extern volatile __bit LC4D3S6 __attribute__((address(0x7196)));


extern volatile __bit LC4D3S7 __attribute__((address(0x7197)));


extern volatile __bit LC4D4S0 __attribute__((address(0x7198)));


extern volatile __bit LC4D4S1 __attribute__((address(0x7199)));


extern volatile __bit LC4D4S2 __attribute__((address(0x719A)));


extern volatile __bit LC4D4S3 __attribute__((address(0x719B)));


extern volatile __bit LC4D4S4 __attribute__((address(0x719C)));


extern volatile __bit LC4D4S5 __attribute__((address(0x719D)));


extern volatile __bit LC4D4S6 __attribute__((address(0x719E)));


extern volatile __bit LC4D4S7 __attribute__((address(0x719F)));


extern volatile __bit LC4EN __attribute__((address(0x7177)));


extern volatile __bit LC4G1D1N __attribute__((address(0x71A0)));


extern volatile __bit LC4G1D1T __attribute__((address(0x71A1)));


extern volatile __bit LC4G1D2N __attribute__((address(0x71A2)));


extern volatile __bit LC4G1D2T __attribute__((address(0x71A3)));


extern volatile __bit LC4G1D3N __attribute__((address(0x71A4)));


extern volatile __bit LC4G1D3T __attribute__((address(0x71A5)));


extern volatile __bit LC4G1D4N __attribute__((address(0x71A6)));


extern volatile __bit LC4G1D4T __attribute__((address(0x71A7)));


extern volatile __bit LC4G1POL __attribute__((address(0x7178)));


extern volatile __bit LC4G2D1N __attribute__((address(0x71A8)));


extern volatile __bit LC4G2D1T __attribute__((address(0x71A9)));


extern volatile __bit LC4G2D2N __attribute__((address(0x71AA)));


extern volatile __bit LC4G2D2T __attribute__((address(0x71AB)));


extern volatile __bit LC4G2D3N __attribute__((address(0x71AC)));


extern volatile __bit LC4G2D3T __attribute__((address(0x71AD)));


extern volatile __bit LC4G2D4N __attribute__((address(0x71AE)));


extern volatile __bit LC4G2D4T __attribute__((address(0x71AF)));


extern volatile __bit LC4G2POL __attribute__((address(0x7179)));


extern volatile __bit LC4G3D1N __attribute__((address(0x71B0)));


extern volatile __bit LC4G3D1T __attribute__((address(0x71B1)));


extern volatile __bit LC4G3D2N __attribute__((address(0x71B2)));


extern volatile __bit LC4G3D2T __attribute__((address(0x71B3)));


extern volatile __bit LC4G3D3N __attribute__((address(0x71B4)));


extern volatile __bit LC4G3D3T __attribute__((address(0x71B5)));


extern volatile __bit LC4G3D4N __attribute__((address(0x71B6)));


extern volatile __bit LC4G3D4T __attribute__((address(0x71B7)));


extern volatile __bit LC4G3POL __attribute__((address(0x717A)));


extern volatile __bit LC4G4D1N __attribute__((address(0x71B8)));


extern volatile __bit LC4G4D1T __attribute__((address(0x71B9)));


extern volatile __bit LC4G4D2N __attribute__((address(0x71BA)));


extern volatile __bit LC4G4D2T __attribute__((address(0x71BB)));


extern volatile __bit LC4G4D3N __attribute__((address(0x71BC)));


extern volatile __bit LC4G4D3T __attribute__((address(0x71BD)));


extern volatile __bit LC4G4D4N __attribute__((address(0x71BE)));


extern volatile __bit LC4G4D4T __attribute__((address(0x71BF)));


extern volatile __bit LC4G4POL __attribute__((address(0x717B)));


extern volatile __bit LC4INTN __attribute__((address(0x7173)));


extern volatile __bit LC4INTP __attribute__((address(0x7174)));


extern volatile __bit LC4MODE0 __attribute__((address(0x7170)));


extern volatile __bit LC4MODE1 __attribute__((address(0x7171)));


extern volatile __bit LC4MODE2 __attribute__((address(0x7172)));


extern volatile __bit LC4OUT __attribute__((address(0x7175)));


extern volatile __bit LC4POL __attribute__((address(0x717F)));


extern volatile __bit LFOEN __attribute__((address(0x448C)));


extern volatile __bit LFOR __attribute__((address(0x4484)));


extern volatile __bit LWLO __attribute__((address(0x40F5)));


extern volatile __bit MC1OUT __attribute__((address(0x4C78)));


extern volatile __bit MC2OUT __attribute__((address(0x4C79)));


extern volatile __bit MDBIT __attribute__((address(0x44B8)));


extern volatile __bit MDCARHPPS0 __attribute__((address(0x75C8)));


extern volatile __bit MDCARHPPS1 __attribute__((address(0x75C9)));


extern volatile __bit MDCARHPPS2 __attribute__((address(0x75CA)));


extern volatile __bit MDCARHPPS3 __attribute__((address(0x75CB)));


extern volatile __bit MDCARHPPS4 __attribute__((address(0x75CC)));


extern volatile __bit MDCARLPPS0 __attribute__((address(0x75C0)));


extern volatile __bit MDCARLPPS1 __attribute__((address(0x75C1)));


extern volatile __bit MDCARLPPS2 __attribute__((address(0x75C2)));


extern volatile __bit MDCARLPPS3 __attribute__((address(0x75C3)));


extern volatile __bit MDCARLPPS4 __attribute__((address(0x75C4)));


extern volatile __bit MDCH0 __attribute__((address(0x44D8)));


extern volatile __bit MDCH1 __attribute__((address(0x44D9)));


extern volatile __bit MDCH2 __attribute__((address(0x44DA)));


extern volatile __bit MDCH3 __attribute__((address(0x44DB)));


extern volatile __bit MDCHPOL __attribute__((address(0x44C5)));


extern volatile __bit MDCHSYNC __attribute__((address(0x44C4)));


extern volatile __bit MDCL0 __attribute__((address(0x44D0)));


extern volatile __bit MDCL1 __attribute__((address(0x44D1)));


extern volatile __bit MDCL2 __attribute__((address(0x44D2)));


extern volatile __bit MDCL3 __attribute__((address(0x44D3)));


extern volatile __bit MDCLPOL __attribute__((address(0x44C1)));


extern volatile __bit MDCLSYNC __attribute__((address(0x44C0)));


extern volatile __bit MDEN __attribute__((address(0x44BF)));


extern volatile __bit MDMS0 __attribute__((address(0x44C8)));


extern volatile __bit MDMS1 __attribute__((address(0x44C9)));


extern volatile __bit MDMS2 __attribute__((address(0x44CA)));


extern volatile __bit MDMS3 __attribute__((address(0x44CB)));


extern volatile __bit MDMS4 __attribute__((address(0x44CC)));


extern volatile __bit MDOPOL __attribute__((address(0x44BC)));


extern volatile __bit MDOUT __attribute__((address(0x44BD)));


extern volatile __bit MDSRCPPS0 __attribute__((address(0x75D0)));


extern volatile __bit MDSRCPPS1 __attribute__((address(0x75D1)));


extern volatile __bit MDSRCPPS2 __attribute__((address(0x75D2)));


extern volatile __bit MDSRCPPS3 __attribute__((address(0x75D3)));


extern volatile __bit MDSRCPPS4 __attribute__((address(0x75D4)));


extern volatile __bit MFOEN __attribute__((address(0x448D)));


extern volatile __bit MFOR __attribute__((address(0x4485)));


extern volatile __bit MLC1OUT __attribute__((address(0x7078)));


extern volatile __bit MLC2OUT __attribute__((address(0x7079)));


extern volatile __bit MLC3OUT __attribute__((address(0x707A)));


extern volatile __bit MLC4OUT __attribute__((address(0x707B)));


extern volatile __bit MSK01 __attribute__((address(0xC68)));


extern volatile __bit MSK02 __attribute__((address(0xCB8)));


extern volatile __bit MSK11 __attribute__((address(0xC69)));


extern volatile __bit MSK12 __attribute__((address(0xCB9)));


extern volatile __bit MSK21 __attribute__((address(0xC6A)));


extern volatile __bit MSK22 __attribute__((address(0xCBA)));


extern volatile __bit MSK31 __attribute__((address(0xC6B)));


extern volatile __bit MSK32 __attribute__((address(0xCBB)));


extern volatile __bit MSK41 __attribute__((address(0xC6C)));


extern volatile __bit MSK42 __attribute__((address(0xCBC)));


extern volatile __bit MSK51 __attribute__((address(0xC6D)));


extern volatile __bit MSK52 __attribute__((address(0xCBD)));


extern volatile __bit MSK61 __attribute__((address(0xC6E)));


extern volatile __bit MSK62 __attribute__((address(0xCBE)));


extern volatile __bit MSK71 __attribute__((address(0xC6F)));


extern volatile __bit MSK72 __attribute__((address(0xCBF)));


extern volatile __bit MSSP1MD __attribute__((address(0x3CD4)));


extern volatile __bit MSSP2MD __attribute__((address(0x3CD5)));


extern volatile __bit N1CKS0 __attribute__((address(0x2C98)));


extern volatile __bit N1CKS1 __attribute__((address(0x2C99)));


extern volatile __bit N1CKS2 __attribute__((address(0x2C9A)));


extern volatile __bit N1EN __attribute__((address(0x2C97)));


extern volatile __bit N1OUT __attribute__((address(0x2C95)));


extern volatile __bit N1PFM __attribute__((address(0x2C90)));


extern volatile __bit N1POL __attribute__((address(0x2C94)));


extern volatile __bit N1PWS0 __attribute__((address(0x2C9D)));


extern volatile __bit N1PWS1 __attribute__((address(0x2C9E)));


extern volatile __bit N1PWS2 __attribute__((address(0x2C9F)));


extern volatile __bit NCO1ACC0 __attribute__((address(0x2C60)));


extern volatile __bit NCO1ACC1 __attribute__((address(0x2C61)));


extern volatile __bit NCO1ACC10 __attribute__((address(0x2C6A)));


extern volatile __bit NCO1ACC11 __attribute__((address(0x2C6B)));


extern volatile __bit NCO1ACC12 __attribute__((address(0x2C6C)));


extern volatile __bit NCO1ACC13 __attribute__((address(0x2C6D)));


extern volatile __bit NCO1ACC14 __attribute__((address(0x2C6E)));


extern volatile __bit NCO1ACC15 __attribute__((address(0x2C6F)));


extern volatile __bit NCO1ACC16 __attribute__((address(0x2C70)));


extern volatile __bit NCO1ACC17 __attribute__((address(0x2C71)));


extern volatile __bit NCO1ACC18 __attribute__((address(0x2C72)));


extern volatile __bit NCO1ACC19 __attribute__((address(0x2C73)));


extern volatile __bit NCO1ACC2 __attribute__((address(0x2C62)));


extern volatile __bit NCO1ACC3 __attribute__((address(0x2C63)));


extern volatile __bit NCO1ACC4 __attribute__((address(0x2C64)));


extern volatile __bit NCO1ACC5 __attribute__((address(0x2C65)));


extern volatile __bit NCO1ACC6 __attribute__((address(0x2C66)));


extern volatile __bit NCO1ACC7 __attribute__((address(0x2C67)));


extern volatile __bit NCO1ACC8 __attribute__((address(0x2C68)));


extern volatile __bit NCO1ACC9 __attribute__((address(0x2C69)));


extern volatile __bit NCO1IE __attribute__((address(0x38EC)));


extern volatile __bit NCO1IF __attribute__((address(0x389C)));


extern volatile __bit NCO1INC0 __attribute__((address(0x2C78)));


extern volatile __bit NCO1INC1 __attribute__((address(0x2C79)));


extern volatile __bit NCO1INC10 __attribute__((address(0x2C82)));


extern volatile __bit NCO1INC11 __attribute__((address(0x2C83)));


extern volatile __bit NCO1INC12 __attribute__((address(0x2C84)));


extern volatile __bit NCO1INC13 __attribute__((address(0x2C85)));


extern volatile __bit NCO1INC14 __attribute__((address(0x2C86)));


extern volatile __bit NCO1INC15 __attribute__((address(0x2C87)));


extern volatile __bit NCO1INC16 __attribute__((address(0x2C88)));


extern volatile __bit NCO1INC17 __attribute__((address(0x2C89)));


extern volatile __bit NCO1INC18 __attribute__((address(0x2C8A)));


extern volatile __bit NCO1INC19 __attribute__((address(0x2C8B)));


extern volatile __bit NCO1INC2 __attribute__((address(0x2C7A)));


extern volatile __bit NCO1INC3 __attribute__((address(0x2C7B)));


extern volatile __bit NCO1INC4 __attribute__((address(0x2C7C)));


extern volatile __bit NCO1INC5 __attribute__((address(0x2C7D)));


extern volatile __bit NCO1INC6 __attribute__((address(0x2C7E)));


extern volatile __bit NCO1INC7 __attribute__((address(0x2C7F)));


extern volatile __bit NCO1INC8 __attribute__((address(0x2C80)));


extern volatile __bit NCO1INC9 __attribute__((address(0x2C81)));


extern volatile __bit NCO1MD __attribute__((address(0x3CBF)));


extern volatile __bit NCOIE __attribute__((address(0x38EC)));


extern volatile __bit NCOIF __attribute__((address(0x389C)));


extern volatile __bit NCOMD __attribute__((address(0x3CBF)));


extern volatile __bit NDIV0 __attribute__((address(0x4468)));


extern volatile __bit NDIV1 __attribute__((address(0x4469)));


extern volatile __bit NDIV2 __attribute__((address(0x446A)));


extern volatile __bit NDIV3 __attribute__((address(0x446B)));


extern volatile __bit NOSC0 __attribute__((address(0x446C)));


extern volatile __bit NOSC1 __attribute__((address(0x446D)));


extern volatile __bit NOSC2 __attribute__((address(0x446E)));


extern volatile __bit NOSCR __attribute__((address(0x447B)));


extern volatile __bit NSS __attribute__((address(0x4870)));


extern volatile __bit NVMADR0 __attribute__((address(0x40D0)));


extern volatile __bit NVMADR1 __attribute__((address(0x40D1)));


extern volatile __bit NVMADR10 __attribute__((address(0x40DA)));


extern volatile __bit NVMADR11 __attribute__((address(0x40DB)));


extern volatile __bit NVMADR12 __attribute__((address(0x40DC)));


extern volatile __bit NVMADR13 __attribute__((address(0x40DD)));


extern volatile __bit NVMADR14 __attribute__((address(0x40DE)));


extern volatile __bit NVMADR2 __attribute__((address(0x40D2)));


extern volatile __bit NVMADR3 __attribute__((address(0x40D3)));


extern volatile __bit NVMADR4 __attribute__((address(0x40D4)));


extern volatile __bit NVMADR5 __attribute__((address(0x40D5)));


extern volatile __bit NVMADR6 __attribute__((address(0x40D6)));


extern volatile __bit NVMADR7 __attribute__((address(0x40D7)));


extern volatile __bit NVMADR8 __attribute__((address(0x40D8)));


extern volatile __bit NVMADR9 __attribute__((address(0x40D9)));


extern volatile __bit NVMDAT0 __attribute__((address(0x40E0)));


extern volatile __bit NVMDAT1 __attribute__((address(0x40E1)));


extern volatile __bit NVMDAT10 __attribute__((address(0x40EA)));


extern volatile __bit NVMDAT11 __attribute__((address(0x40EB)));


extern volatile __bit NVMDAT12 __attribute__((address(0x40EC)));


extern volatile __bit NVMDAT13 __attribute__((address(0x40ED)));


extern volatile __bit NVMDAT2 __attribute__((address(0x40E2)));


extern volatile __bit NVMDAT3 __attribute__((address(0x40E3)));


extern volatile __bit NVMDAT4 __attribute__((address(0x40E4)));


extern volatile __bit NVMDAT5 __attribute__((address(0x40E5)));


extern volatile __bit NVMDAT6 __attribute__((address(0x40E6)));


extern volatile __bit NVMDAT7 __attribute__((address(0x40E7)));


extern volatile __bit NVMDAT8 __attribute__((address(0x40E8)));


extern volatile __bit NVMDAT9 __attribute__((address(0x40E9)));


extern volatile __bit NVMIE __attribute__((address(0x38ED)));


extern volatile __bit NVMIF __attribute__((address(0x389D)));


extern volatile __bit NVMMD __attribute__((address(0x3CB2)));


extern volatile __bit NVMREGS __attribute__((address(0x40F6)));


extern volatile __bit ODCA0 __attribute__((address(0x79D0)));


extern volatile __bit ODCA1 __attribute__((address(0x79D1)));


extern volatile __bit ODCA2 __attribute__((address(0x79D2)));


extern volatile __bit ODCA3 __attribute__((address(0x79D3)));


extern volatile __bit ODCA4 __attribute__((address(0x79D4)));


extern volatile __bit ODCA5 __attribute__((address(0x79D5)));


extern volatile __bit ODCA6 __attribute__((address(0x79D6)));


extern volatile __bit ODCA7 __attribute__((address(0x79D7)));


extern volatile __bit ODCB0 __attribute__((address(0x7A28)));


extern volatile __bit ODCB1 __attribute__((address(0x7A29)));


extern volatile __bit ODCB2 __attribute__((address(0x7A2A)));


extern volatile __bit ODCB3 __attribute__((address(0x7A2B)));


extern volatile __bit ODCB4 __attribute__((address(0x7A2C)));


extern volatile __bit ODCB5 __attribute__((address(0x7A2D)));


extern volatile __bit ODCB6 __attribute__((address(0x7A2E)));


extern volatile __bit ODCB7 __attribute__((address(0x7A2F)));


extern volatile __bit ODCC0 __attribute__((address(0x7A80)));


extern volatile __bit ODCC1 __attribute__((address(0x7A81)));


extern volatile __bit ODCC2 __attribute__((address(0x7A82)));


extern volatile __bit ODCC3 __attribute__((address(0x7A83)));


extern volatile __bit ODCC4 __attribute__((address(0x7A84)));


extern volatile __bit ODCC5 __attribute__((address(0x7A85)));


extern volatile __bit ODCC6 __attribute__((address(0x7A86)));


extern volatile __bit ODCC7 __attribute__((address(0x7A87)));


extern volatile __bit ODCD0 __attribute__((address(0x7AD8)));


extern volatile __bit ODCD1 __attribute__((address(0x7AD9)));


extern volatile __bit ODCD2 __attribute__((address(0x7ADA)));


extern volatile __bit ODCD3 __attribute__((address(0x7ADB)));


extern volatile __bit ODCD4 __attribute__((address(0x7ADC)));


extern volatile __bit ODCD5 __attribute__((address(0x7ADD)));


extern volatile __bit ODCD6 __attribute__((address(0x7ADE)));


extern volatile __bit ODCD7 __attribute__((address(0x7ADF)));


extern volatile __bit ODCE0 __attribute__((address(0x7B30)));


extern volatile __bit ODCE1 __attribute__((address(0x7B31)));


extern volatile __bit ODCE2 __attribute__((address(0x7B32)));


extern volatile __bit OE1 __attribute__((address(0x4875)));


extern volatile __bit OE2 __attribute__((address(0x4874)));


extern volatile __bit OERR __attribute__((address(0x8E9)));


extern volatile __bit ORDY __attribute__((address(0x447C)));


extern volatile __bit OSFIE __attribute__((address(0x38BF)));


extern volatile __bit OSFIF __attribute__((address(0x386F)));


extern volatile __bit P6TSEL0 __attribute__((address(0x10FA)));


extern volatile __bit P6TSEL1 __attribute__((address(0x10FB)));


extern volatile __bit P7TSEL0 __attribute__((address(0x10FC)));


extern volatile __bit P7TSEL1 __attribute__((address(0x10FD)));


extern volatile __bit PEIE __attribute__((address(0x5E)));


extern volatile __bit PEN1 __attribute__((address(0xC8A)));


extern volatile __bit PEN2 __attribute__((address(0xCDA)));


extern volatile __bit PLEN0 __attribute__((address(0x20F8)));


extern volatile __bit PLEN1 __attribute__((address(0x20F9)));


extern volatile __bit PLEN2 __attribute__((address(0x20FA)));


extern volatile __bit PLEN3 __attribute__((address(0x20FB)));


extern volatile __bit PLLR __attribute__((address(0x4480)));


extern volatile __bit PPSLOCKED __attribute__((address(0x7478)));


extern volatile __bit PSCNT0 __attribute__((address(0x4070)));


extern volatile __bit PSCNT1 __attribute__((address(0x4071)));


extern volatile __bit PSCNT10 __attribute__((address(0x407A)));


extern volatile __bit PSCNT11 __attribute__((address(0x407B)));


extern volatile __bit PSCNT12 __attribute__((address(0x407C)));


extern volatile __bit PSCNT13 __attribute__((address(0x407D)));


extern volatile __bit PSCNT14 __attribute__((address(0x407E)));


extern volatile __bit PSCNT15 __attribute__((address(0x407F)));


extern volatile __bit PSCNT16 __attribute__((address(0x4080)));


extern volatile __bit PSCNT17 __attribute__((address(0x4081)));


extern volatile __bit PSCNT2 __attribute__((address(0x4072)));


extern volatile __bit PSCNT3 __attribute__((address(0x4073)));


extern volatile __bit PSCNT4 __attribute__((address(0x4074)));


extern volatile __bit PSCNT5 __attribute__((address(0x4075)));


extern volatile __bit PSCNT6 __attribute__((address(0x4076)));


extern volatile __bit PSCNT7 __attribute__((address(0x4077)));


extern volatile __bit PSCNT8 __attribute__((address(0x4078)));


extern volatile __bit PSCNT9 __attribute__((address(0x4079)));


extern volatile __bit PSS0 __attribute__((address(0x4872)));


extern volatile __bit PSS1 __attribute__((address(0x4873)));


extern volatile __bit PWM6DC0 __attribute__((address(0x1C66)));


extern volatile __bit PWM6DC1 __attribute__((address(0x1C67)));


extern volatile __bit PWM6DC2 __attribute__((address(0x1C68)));


extern volatile __bit PWM6DC3 __attribute__((address(0x1C69)));


extern volatile __bit PWM6DC4 __attribute__((address(0x1C6A)));


extern volatile __bit PWM6DC5 __attribute__((address(0x1C6B)));


extern volatile __bit PWM6DC6 __attribute__((address(0x1C6C)));


extern volatile __bit PWM6DC7 __attribute__((address(0x1C6D)));


extern volatile __bit PWM6DC8 __attribute__((address(0x1C6E)));


extern volatile __bit PWM6DC9 __attribute__((address(0x1C6F)));


extern volatile __bit PWM6EN __attribute__((address(0x1C77)));


extern volatile __bit PWM6MD __attribute__((address(0x3CCD)));


extern volatile __bit PWM6OUT __attribute__((address(0x1C75)));


extern volatile __bit PWM6POL __attribute__((address(0x1C74)));


extern volatile __bit PWM7DC0 __attribute__((address(0x1C86)));


extern volatile __bit PWM7DC1 __attribute__((address(0x1C87)));


extern volatile __bit PWM7DC2 __attribute__((address(0x1C88)));


extern volatile __bit PWM7DC3 __attribute__((address(0x1C89)));


extern volatile __bit PWM7DC4 __attribute__((address(0x1C8A)));


extern volatile __bit PWM7DC5 __attribute__((address(0x1C8B)));


extern volatile __bit PWM7DC6 __attribute__((address(0x1C8C)));


extern volatile __bit PWM7DC7 __attribute__((address(0x1C8D)));


extern volatile __bit PWM7DC8 __attribute__((address(0x1C8E)));


extern volatile __bit PWM7DC9 __attribute__((address(0x1C8F)));


extern volatile __bit PWM7EN __attribute__((address(0x1C97)));


extern volatile __bit PWM7MD __attribute__((address(0x3CCE)));


extern volatile __bit PWM7OUT __attribute__((address(0x1C95)));


extern volatile __bit PWM7POL __attribute__((address(0x1C94)));


extern volatile __bit RA0 __attribute__((address(0x60)));


extern volatile __bit RA0PPS0 __attribute__((address(0x7880)));


extern volatile __bit RA0PPS1 __attribute__((address(0x7881)));


extern volatile __bit RA0PPS2 __attribute__((address(0x7882)));


extern volatile __bit RA0PPS3 __attribute__((address(0x7883)));


extern volatile __bit RA0PPS4 __attribute__((address(0x7884)));


extern volatile __bit RA0PPS5 __attribute__((address(0x7885)));


extern volatile __bit RA1 __attribute__((address(0x61)));


extern volatile __bit RA1PPS0 __attribute__((address(0x7888)));


extern volatile __bit RA1PPS1 __attribute__((address(0x7889)));


extern volatile __bit RA1PPS2 __attribute__((address(0x788A)));


extern volatile __bit RA1PPS3 __attribute__((address(0x788B)));


extern volatile __bit RA1PPS4 __attribute__((address(0x788C)));


extern volatile __bit RA1PPS5 __attribute__((address(0x788D)));


extern volatile __bit RA2 __attribute__((address(0x62)));


extern volatile __bit RA2PPS0 __attribute__((address(0x7890)));


extern volatile __bit RA2PPS1 __attribute__((address(0x7891)));


extern volatile __bit RA2PPS2 __attribute__((address(0x7892)));


extern volatile __bit RA2PPS3 __attribute__((address(0x7893)));


extern volatile __bit RA2PPS4 __attribute__((address(0x7894)));


extern volatile __bit RA2PPS5 __attribute__((address(0x7895)));


extern volatile __bit RA3 __attribute__((address(0x63)));


extern volatile __bit RA3PPS0 __attribute__((address(0x7898)));


extern volatile __bit RA3PPS1 __attribute__((address(0x7899)));


extern volatile __bit RA3PPS2 __attribute__((address(0x789A)));


extern volatile __bit RA3PPS3 __attribute__((address(0x789B)));


extern volatile __bit RA3PPS4 __attribute__((address(0x789C)));


extern volatile __bit RA3PPS5 __attribute__((address(0x789D)));


extern volatile __bit RA4 __attribute__((address(0x64)));


extern volatile __bit RA4PPS0 __attribute__((address(0x78A0)));


extern volatile __bit RA4PPS1 __attribute__((address(0x78A1)));


extern volatile __bit RA4PPS2 __attribute__((address(0x78A2)));


extern volatile __bit RA4PPS3 __attribute__((address(0x78A3)));


extern volatile __bit RA4PPS4 __attribute__((address(0x78A4)));


extern volatile __bit RA4PPS5 __attribute__((address(0x78A5)));


extern volatile __bit RA5 __attribute__((address(0x65)));


extern volatile __bit RA5PPS0 __attribute__((address(0x78A8)));


extern volatile __bit RA5PPS1 __attribute__((address(0x78A9)));


extern volatile __bit RA5PPS2 __attribute__((address(0x78AA)));


extern volatile __bit RA5PPS3 __attribute__((address(0x78AB)));


extern volatile __bit RA5PPS4 __attribute__((address(0x78AC)));


extern volatile __bit RA5PPS5 __attribute__((address(0x78AD)));


extern volatile __bit RA6 __attribute__((address(0x66)));


extern volatile __bit RA6PPS0 __attribute__((address(0x78B0)));


extern volatile __bit RA6PPS1 __attribute__((address(0x78B1)));


extern volatile __bit RA6PPS2 __attribute__((address(0x78B2)));


extern volatile __bit RA6PPS3 __attribute__((address(0x78B3)));


extern volatile __bit RA6PPS4 __attribute__((address(0x78B4)));


extern volatile __bit RA6PPS5 __attribute__((address(0x78B5)));


extern volatile __bit RA7 __attribute__((address(0x67)));


extern volatile __bit RA7PPS0 __attribute__((address(0x78B8)));


extern volatile __bit RA7PPS1 __attribute__((address(0x78B9)));


extern volatile __bit RA7PPS2 __attribute__((address(0x78BA)));


extern volatile __bit RA7PPS3 __attribute__((address(0x78BB)));


extern volatile __bit RA7PPS4 __attribute__((address(0x78BC)));


extern volatile __bit RA7PPS5 __attribute__((address(0x78BD)));


extern volatile __bit RB0 __attribute__((address(0x68)));


extern volatile __bit RB0PPS0 __attribute__((address(0x78C0)));


extern volatile __bit RB0PPS1 __attribute__((address(0x78C1)));


extern volatile __bit RB0PPS2 __attribute__((address(0x78C2)));


extern volatile __bit RB0PPS3 __attribute__((address(0x78C3)));


extern volatile __bit RB0PPS4 __attribute__((address(0x78C4)));


extern volatile __bit RB0PPS5 __attribute__((address(0x78C5)));


extern volatile __bit RB1 __attribute__((address(0x69)));


extern volatile __bit RB1PPS0 __attribute__((address(0x78C8)));


extern volatile __bit RB1PPS1 __attribute__((address(0x78C9)));


extern volatile __bit RB1PPS2 __attribute__((address(0x78CA)));


extern volatile __bit RB1PPS3 __attribute__((address(0x78CB)));


extern volatile __bit RB1PPS4 __attribute__((address(0x78CC)));


extern volatile __bit RB1PPS5 __attribute__((address(0x78CD)));


extern volatile __bit RB2 __attribute__((address(0x6A)));


extern volatile __bit RB2PPS0 __attribute__((address(0x78D0)));


extern volatile __bit RB2PPS1 __attribute__((address(0x78D1)));


extern volatile __bit RB2PPS2 __attribute__((address(0x78D2)));


extern volatile __bit RB2PPS3 __attribute__((address(0x78D3)));


extern volatile __bit RB2PPS4 __attribute__((address(0x78D4)));


extern volatile __bit RB2PPS5 __attribute__((address(0x78D5)));


extern volatile __bit RB3 __attribute__((address(0x6B)));


extern volatile __bit RB3PPS0 __attribute__((address(0x78D8)));


extern volatile __bit RB3PPS1 __attribute__((address(0x78D9)));


extern volatile __bit RB3PPS2 __attribute__((address(0x78DA)));


extern volatile __bit RB3PPS3 __attribute__((address(0x78DB)));


extern volatile __bit RB3PPS4 __attribute__((address(0x78DC)));


extern volatile __bit RB3PPS5 __attribute__((address(0x78DD)));


extern volatile __bit RB4 __attribute__((address(0x6C)));


extern volatile __bit RB4PPS0 __attribute__((address(0x78E0)));


extern volatile __bit RB4PPS1 __attribute__((address(0x78E1)));


extern volatile __bit RB4PPS2 __attribute__((address(0x78E2)));


extern volatile __bit RB4PPS3 __attribute__((address(0x78E3)));


extern volatile __bit RB4PPS4 __attribute__((address(0x78E4)));


extern volatile __bit RB4PPS5 __attribute__((address(0x78E5)));


extern volatile __bit RB5 __attribute__((address(0x6D)));


extern volatile __bit RB5PPS0 __attribute__((address(0x78E8)));


extern volatile __bit RB5PPS1 __attribute__((address(0x78E9)));


extern volatile __bit RB5PPS2 __attribute__((address(0x78EA)));


extern volatile __bit RB5PPS3 __attribute__((address(0x78EB)));


extern volatile __bit RB5PPS4 __attribute__((address(0x78EC)));


extern volatile __bit RB5PPS5 __attribute__((address(0x78ED)));


extern volatile __bit RB6 __attribute__((address(0x6E)));


extern volatile __bit RB6PPS0 __attribute__((address(0x78F0)));


extern volatile __bit RB6PPS1 __attribute__((address(0x78F1)));


extern volatile __bit RB6PPS2 __attribute__((address(0x78F2)));


extern volatile __bit RB6PPS3 __attribute__((address(0x78F3)));


extern volatile __bit RB6PPS4 __attribute__((address(0x78F4)));


extern volatile __bit RB6PPS5 __attribute__((address(0x78F5)));


extern volatile __bit RB7 __attribute__((address(0x6F)));


extern volatile __bit RB7PPS0 __attribute__((address(0x78F8)));


extern volatile __bit RB7PPS1 __attribute__((address(0x78F9)));


extern volatile __bit RB7PPS2 __attribute__((address(0x78FA)));


extern volatile __bit RB7PPS3 __attribute__((address(0x78FB)));


extern volatile __bit RB7PPS4 __attribute__((address(0x78FC)));


extern volatile __bit RB7PPS5 __attribute__((address(0x78FD)));


extern volatile __bit RC0 __attribute__((address(0x70)));


extern volatile __bit RC0PPS0 __attribute__((address(0x7900)));


extern volatile __bit RC0PPS1 __attribute__((address(0x7901)));


extern volatile __bit RC0PPS2 __attribute__((address(0x7902)));


extern volatile __bit RC0PPS3 __attribute__((address(0x7903)));


extern volatile __bit RC0PPS4 __attribute__((address(0x7904)));


extern volatile __bit RC0PPS5 __attribute__((address(0x7905)));


extern volatile __bit RC1 __attribute__((address(0x71)));


extern volatile __bit RC1PPS0 __attribute__((address(0x7908)));


extern volatile __bit RC1PPS1 __attribute__((address(0x7909)));


extern volatile __bit RC1PPS2 __attribute__((address(0x790A)));


extern volatile __bit RC1PPS3 __attribute__((address(0x790B)));


extern volatile __bit RC1PPS4 __attribute__((address(0x790C)));


extern volatile __bit RC1PPS5 __attribute__((address(0x790D)));


extern volatile __bit RC2 __attribute__((address(0x72)));


extern volatile __bit RC2PPS0 __attribute__((address(0x7910)));


extern volatile __bit RC2PPS1 __attribute__((address(0x7911)));


extern volatile __bit RC2PPS2 __attribute__((address(0x7912)));


extern volatile __bit RC2PPS3 __attribute__((address(0x7913)));


extern volatile __bit RC2PPS4 __attribute__((address(0x7914)));


extern volatile __bit RC2PPS5 __attribute__((address(0x7915)));


extern volatile __bit RC3 __attribute__((address(0x73)));


extern volatile __bit RC3PPS0 __attribute__((address(0x7918)));


extern volatile __bit RC3PPS1 __attribute__((address(0x7919)));


extern volatile __bit RC3PPS2 __attribute__((address(0x791A)));


extern volatile __bit RC3PPS3 __attribute__((address(0x791B)));


extern volatile __bit RC3PPS4 __attribute__((address(0x791C)));


extern volatile __bit RC3PPS5 __attribute__((address(0x791D)));


extern volatile __bit RC4 __attribute__((address(0x74)));


extern volatile __bit RC4PPS0 __attribute__((address(0x7920)));


extern volatile __bit RC4PPS1 __attribute__((address(0x7921)));


extern volatile __bit RC4PPS2 __attribute__((address(0x7922)));


extern volatile __bit RC4PPS3 __attribute__((address(0x7923)));


extern volatile __bit RC4PPS4 __attribute__((address(0x7924)));


extern volatile __bit RC4PPS5 __attribute__((address(0x7925)));


extern volatile __bit RC5 __attribute__((address(0x75)));


extern volatile __bit RC5PPS0 __attribute__((address(0x7928)));


extern volatile __bit RC5PPS1 __attribute__((address(0x7929)));


extern volatile __bit RC5PPS2 __attribute__((address(0x792A)));


extern volatile __bit RC5PPS3 __attribute__((address(0x792B)));


extern volatile __bit RC5PPS4 __attribute__((address(0x792C)));


extern volatile __bit RC5PPS5 __attribute__((address(0x792D)));


extern volatile __bit RC6 __attribute__((address(0x76)));


extern volatile __bit RC6PPS0 __attribute__((address(0x7930)));


extern volatile __bit RC6PPS1 __attribute__((address(0x7931)));


extern volatile __bit RC6PPS2 __attribute__((address(0x7932)));


extern volatile __bit RC6PPS3 __attribute__((address(0x7933)));


extern volatile __bit RC6PPS4 __attribute__((address(0x7934)));


extern volatile __bit RC6PPS5 __attribute__((address(0x7935)));


extern volatile __bit RC7 __attribute__((address(0x77)));


extern volatile __bit RC7PPS0 __attribute__((address(0x7938)));


extern volatile __bit RC7PPS1 __attribute__((address(0x7939)));


extern volatile __bit RC7PPS2 __attribute__((address(0x793A)));


extern volatile __bit RC7PPS3 __attribute__((address(0x793B)));


extern volatile __bit RC7PPS4 __attribute__((address(0x793C)));


extern volatile __bit RC7PPS5 __attribute__((address(0x793D)));


extern volatile __bit RCEN1 __attribute__((address(0xC8B)));


extern volatile __bit RCEN2 __attribute__((address(0xCDB)));


extern volatile __bit RCIDL __attribute__((address(0x8FE)));


extern volatile __bit RCIE __attribute__((address(0x38CD)));


extern volatile __bit RCIF __attribute__((address(0x387D)));


extern volatile __bit RD __attribute__((address(0x40F0)));


extern volatile __bit RD0 __attribute__((address(0x78)));


extern volatile __bit RD0PPS0 __attribute__((address(0x7940)));


extern volatile __bit RD0PPS1 __attribute__((address(0x7941)));


extern volatile __bit RD0PPS2 __attribute__((address(0x7942)));


extern volatile __bit RD0PPS3 __attribute__((address(0x7943)));


extern volatile __bit RD0PPS4 __attribute__((address(0x7944)));


extern volatile __bit RD0PPS5 __attribute__((address(0x7945)));


extern volatile __bit RD1 __attribute__((address(0x79)));


extern volatile __bit RD161 __attribute__((address(0x1071)));


extern volatile __bit RD163 __attribute__((address(0x10A1)));


extern volatile __bit RD165 __attribute__((address(0x10D1)));


extern volatile __bit RD1PPS0 __attribute__((address(0x7948)));


extern volatile __bit RD1PPS1 __attribute__((address(0x7949)));


extern volatile __bit RD1PPS2 __attribute__((address(0x794A)));


extern volatile __bit RD1PPS3 __attribute__((address(0x794B)));


extern volatile __bit RD1PPS4 __attribute__((address(0x794C)));


extern volatile __bit RD1PPS5 __attribute__((address(0x794D)));


extern volatile __bit RD2 __attribute__((address(0x7A)));


extern volatile __bit RD2PPS0 __attribute__((address(0x7950)));


extern volatile __bit RD2PPS1 __attribute__((address(0x7951)));


extern volatile __bit RD2PPS2 __attribute__((address(0x7952)));


extern volatile __bit RD2PPS3 __attribute__((address(0x7953)));


extern volatile __bit RD2PPS4 __attribute__((address(0x7954)));


extern volatile __bit RD2PPS5 __attribute__((address(0x7955)));


extern volatile __bit RD3 __attribute__((address(0x7B)));


extern volatile __bit RD3PPS0 __attribute__((address(0x7958)));


extern volatile __bit RD3PPS1 __attribute__((address(0x7959)));


extern volatile __bit RD3PPS2 __attribute__((address(0x795A)));


extern volatile __bit RD3PPS3 __attribute__((address(0x795B)));


extern volatile __bit RD3PPS4 __attribute__((address(0x795C)));


extern volatile __bit RD3PPS5 __attribute__((address(0x795D)));


extern volatile __bit RD4 __attribute__((address(0x7C)));


extern volatile __bit RD4PPS0 __attribute__((address(0x7960)));


extern volatile __bit RD4PPS1 __attribute__((address(0x7961)));


extern volatile __bit RD4PPS2 __attribute__((address(0x7962)));


extern volatile __bit RD4PPS3 __attribute__((address(0x7963)));


extern volatile __bit RD4PPS4 __attribute__((address(0x7964)));


extern volatile __bit RD4PPS5 __attribute__((address(0x7965)));


extern volatile __bit RD5 __attribute__((address(0x7D)));


extern volatile __bit RD5PPS0 __attribute__((address(0x7968)));


extern volatile __bit RD5PPS1 __attribute__((address(0x7969)));


extern volatile __bit RD5PPS2 __attribute__((address(0x796A)));


extern volatile __bit RD5PPS3 __attribute__((address(0x796B)));


extern volatile __bit RD5PPS4 __attribute__((address(0x796C)));


extern volatile __bit RD5PPS5 __attribute__((address(0x796D)));


extern volatile __bit RD6 __attribute__((address(0x7E)));


extern volatile __bit RD6PPS0 __attribute__((address(0x7970)));


extern volatile __bit RD6PPS1 __attribute__((address(0x7971)));


extern volatile __bit RD6PPS2 __attribute__((address(0x7972)));


extern volatile __bit RD6PPS3 __attribute__((address(0x7973)));


extern volatile __bit RD6PPS4 __attribute__((address(0x7974)));


extern volatile __bit RD6PPS5 __attribute__((address(0x7975)));


extern volatile __bit RD7 __attribute__((address(0x7F)));


extern volatile __bit RD7PPS0 __attribute__((address(0x7978)));


extern volatile __bit RD7PPS1 __attribute__((address(0x7979)));


extern volatile __bit RD7PPS2 __attribute__((address(0x797A)));


extern volatile __bit RD7PPS3 __attribute__((address(0x797B)));


extern volatile __bit RD7PPS4 __attribute__((address(0x797C)));


extern volatile __bit RD7PPS5 __attribute__((address(0x797D)));


extern volatile __bit RE0 __attribute__((address(0x80)));


extern volatile __bit RE0PPS0 __attribute__((address(0x7980)));


extern volatile __bit RE0PPS1 __attribute__((address(0x7981)));


extern volatile __bit RE0PPS2 __attribute__((address(0x7982)));


extern volatile __bit RE0PPS3 __attribute__((address(0x7983)));


extern volatile __bit RE0PPS4 __attribute__((address(0x7984)));


extern volatile __bit RE0PPS5 __attribute__((address(0x7985)));


extern volatile __bit RE1 __attribute__((address(0x81)));


extern volatile __bit RE1PPS0 __attribute__((address(0x7988)));


extern volatile __bit RE1PPS1 __attribute__((address(0x7989)));


extern volatile __bit RE1PPS2 __attribute__((address(0x798A)));


extern volatile __bit RE1PPS3 __attribute__((address(0x798B)));


extern volatile __bit RE1PPS4 __attribute__((address(0x798C)));


extern volatile __bit RE1PPS5 __attribute__((address(0x798D)));


extern volatile __bit RE2 __attribute__((address(0x82)));


extern volatile __bit RE2PPS0 __attribute__((address(0x7990)));


extern volatile __bit RE2PPS1 __attribute__((address(0x7991)));


extern volatile __bit RE2PPS2 __attribute__((address(0x7992)));


extern volatile __bit RE2PPS3 __attribute__((address(0x7993)));


extern volatile __bit RE2PPS4 __attribute__((address(0x7994)));


extern volatile __bit RE2PPS5 __attribute__((address(0x7995)));


extern volatile __bit RE3 __attribute__((address(0x83)));


extern volatile __bit READ_WRITE1 __attribute__((address(0xC7A)));


extern volatile __bit READ_WRITE2 __attribute__((address(0xCCA)));


extern volatile __bit ROI __attribute__((address(0x4465)));


extern volatile __bit RSEN1 __attribute__((address(0xC89)));


extern volatile __bit RSEN2 __attribute__((address(0xCD9)));


extern volatile __bit RW1 __attribute__((address(0xC7A)));


extern volatile __bit RW2 __attribute__((address(0xCCA)));


extern volatile __bit RX9 __attribute__((address(0x8EE)));


extern volatile __bit RX9D __attribute__((address(0x8E8)));


extern volatile __bit RXPPS0 __attribute__((address(0x7658)));


extern volatile __bit RXPPS1 __attribute__((address(0x7659)));


extern volatile __bit RXPPS2 __attribute__((address(0x765A)));


extern volatile __bit RXPPS3 __attribute__((address(0x765B)));


extern volatile __bit RXPPS4 __attribute__((address(0x765C)));


extern volatile __bit R_W1 __attribute__((address(0xC7A)));


extern volatile __bit R_W2 __attribute__((address(0xCCA)));


extern volatile __bit R_nW1 __attribute__((address(0xC7A)));


extern volatile __bit R_nW2 __attribute__((address(0xCCA)));


extern volatile __bit SBOREN __attribute__((address(0x408F)));


extern volatile __bit SCANBUSY __attribute__((address(0x2085)));


extern volatile __bit SCANEN __attribute__((address(0x2087)));


extern volatile __bit SCANGO __attribute__((address(0x2086)));


extern volatile __bit SCANHADR0 __attribute__((address(0x2070)));


extern volatile __bit SCANHADR1 __attribute__((address(0x2071)));


extern volatile __bit SCANHADR10 __attribute__((address(0x207A)));


extern volatile __bit SCANHADR11 __attribute__((address(0x207B)));


extern volatile __bit SCANHADR12 __attribute__((address(0x207C)));


extern volatile __bit SCANHADR13 __attribute__((address(0x207D)));


extern volatile __bit SCANHADR14 __attribute__((address(0x207E)));


extern volatile __bit SCANHADR15 __attribute__((address(0x207F)));


extern volatile __bit SCANHADR2 __attribute__((address(0x2072)));


extern volatile __bit SCANHADR3 __attribute__((address(0x2073)));


extern volatile __bit SCANHADR4 __attribute__((address(0x2074)));


extern volatile __bit SCANHADR5 __attribute__((address(0x2075)));


extern volatile __bit SCANHADR6 __attribute__((address(0x2076)));


extern volatile __bit SCANHADR7 __attribute__((address(0x2077)));


extern volatile __bit SCANHADR8 __attribute__((address(0x2078)));


extern volatile __bit SCANHADR9 __attribute__((address(0x2079)));


extern volatile __bit SCANIE __attribute__((address(0x38EF)));


extern volatile __bit SCANIF __attribute__((address(0x389F)));


extern volatile __bit SCANINTM __attribute__((address(0x2083)));


extern volatile __bit SCANINVALID __attribute__((address(0x2084)));


extern volatile __bit SCANLADR0 __attribute__((address(0x2060)));


extern volatile __bit SCANLADR1 __attribute__((address(0x2061)));


extern volatile __bit SCANLADR10 __attribute__((address(0x206A)));


extern volatile __bit SCANLADR11 __attribute__((address(0x206B)));


extern volatile __bit SCANLADR12 __attribute__((address(0x206C)));


extern volatile __bit SCANLADR13 __attribute__((address(0x206D)));


extern volatile __bit SCANLADR14 __attribute__((address(0x206E)));


extern volatile __bit SCANLADR15 __attribute__((address(0x206F)));


extern volatile __bit SCANLADR2 __attribute__((address(0x2062)));


extern volatile __bit SCANLADR3 __attribute__((address(0x2063)));


extern volatile __bit SCANLADR4 __attribute__((address(0x2064)));


extern volatile __bit SCANLADR5 __attribute__((address(0x2065)));


extern volatile __bit SCANLADR6 __attribute__((address(0x2066)));


extern volatile __bit SCANLADR7 __attribute__((address(0x2067)));


extern volatile __bit SCANLADR8 __attribute__((address(0x2068)));


extern volatile __bit SCANLADR9 __attribute__((address(0x2069)));


extern volatile __bit SCANMD __attribute__((address(0x3CB3)));


extern volatile __bit SCANMODE0 __attribute__((address(0x2080)));


extern volatile __bit SCANMODE1 __attribute__((address(0x2081)));


extern volatile __bit SCANTSEL0 __attribute__((address(0x2088)));


extern volatile __bit SCANTSEL1 __attribute__((address(0x2089)));


extern volatile __bit SCANTSEL2 __attribute__((address(0x208A)));


extern volatile __bit SCANTSEL3 __attribute__((address(0x208B)));


extern volatile __bit SCKP __attribute__((address(0x8FC)));


extern volatile __bit SEN1 __attribute__((address(0xC88)));


extern volatile __bit SEN2 __attribute__((address(0xCD8)));


extern volatile __bit SENDB __attribute__((address(0x8F3)));


extern volatile __bit SHFT0 __attribute__((address(0x20D0)));


extern volatile __bit SHFT1 __attribute__((address(0x20D1)));


extern volatile __bit SHFT10 __attribute__((address(0x20DA)));


extern volatile __bit SHFT11 __attribute__((address(0x20DB)));


extern volatile __bit SHFT12 __attribute__((address(0x20DC)));


extern volatile __bit SHFT13 __attribute__((address(0x20DD)));


extern volatile __bit SHFT14 __attribute__((address(0x20DE)));


extern volatile __bit SHFT15 __attribute__((address(0x20DF)));


extern volatile __bit SHFT2 __attribute__((address(0x20D2)));


extern volatile __bit SHFT3 __attribute__((address(0x20D3)));


extern volatile __bit SHFT4 __attribute__((address(0x20D4)));


extern volatile __bit SHFT5 __attribute__((address(0x20D5)));


extern volatile __bit SHFT6 __attribute__((address(0x20D6)));


extern volatile __bit SHFT7 __attribute__((address(0x20D7)));


extern volatile __bit SHFT8 __attribute__((address(0x20D8)));


extern volatile __bit SHFT9 __attribute__((address(0x20D9)));


extern volatile __bit SHIFTM __attribute__((address(0x20F1)));


extern volatile __bit SLRA0 __attribute__((address(0x79D8)));


extern volatile __bit SLRA1 __attribute__((address(0x79D9)));


extern volatile __bit SLRA2 __attribute__((address(0x79DA)));


extern volatile __bit SLRA3 __attribute__((address(0x79DB)));


extern volatile __bit SLRA4 __attribute__((address(0x79DC)));


extern volatile __bit SLRA5 __attribute__((address(0x79DD)));


extern volatile __bit SLRA6 __attribute__((address(0x79DE)));


extern volatile __bit SLRA7 __attribute__((address(0x79DF)));


extern volatile __bit SLRB0 __attribute__((address(0x7A30)));


extern volatile __bit SLRB1 __attribute__((address(0x7A31)));


extern volatile __bit SLRB2 __attribute__((address(0x7A32)));


extern volatile __bit SLRB3 __attribute__((address(0x7A33)));


extern volatile __bit SLRB4 __attribute__((address(0x7A34)));


extern volatile __bit SLRB5 __attribute__((address(0x7A35)));


extern volatile __bit SLRB6 __attribute__((address(0x7A36)));


extern volatile __bit SLRB7 __attribute__((address(0x7A37)));


extern volatile __bit SLRC0 __attribute__((address(0x7A88)));


extern volatile __bit SLRC1 __attribute__((address(0x7A89)));


extern volatile __bit SLRC2 __attribute__((address(0x7A8A)));


extern volatile __bit SLRC3 __attribute__((address(0x7A8B)));


extern volatile __bit SLRC4 __attribute__((address(0x7A8C)));


extern volatile __bit SLRC5 __attribute__((address(0x7A8D)));


extern volatile __bit SLRC6 __attribute__((address(0x7A8E)));


extern volatile __bit SLRC7 __attribute__((address(0x7A8F)));


extern volatile __bit SLRD0 __attribute__((address(0x7AE0)));


extern volatile __bit SLRD1 __attribute__((address(0x7AE1)));


extern volatile __bit SLRD2 __attribute__((address(0x7AE2)));


extern volatile __bit SLRD3 __attribute__((address(0x7AE3)));


extern volatile __bit SLRD4 __attribute__((address(0x7AE4)));


extern volatile __bit SLRD5 __attribute__((address(0x7AE5)));


extern volatile __bit SLRD6 __attribute__((address(0x7AE6)));


extern volatile __bit SLRD7 __attribute__((address(0x7AE7)));


extern volatile __bit SLRE0 __attribute__((address(0x7B38)));


extern volatile __bit SLRE1 __attribute__((address(0x7B39)));


extern volatile __bit SLRE2 __attribute__((address(0x7B3A)));


extern volatile __bit SMP1 __attribute__((address(0xC7F)));


extern volatile __bit SMP2 __attribute__((address(0xCCF)));


extern volatile __bit SMT1AS __attribute__((address(0x24D0)));


extern volatile __bit SMT1CPOL __attribute__((address(0x24C2)));


extern volatile __bit SMT1CPR0 __attribute__((address(0x2478)));


extern volatile __bit SMT1CPR1 __attribute__((address(0x2479)));


extern volatile __bit SMT1CPR10 __attribute__((address(0x2482)));


extern volatile __bit SMT1CPR11 __attribute__((address(0x2483)));


extern volatile __bit SMT1CPR12 __attribute__((address(0x2484)));


extern volatile __bit SMT1CPR13 __attribute__((address(0x2485)));


extern volatile __bit SMT1CPR14 __attribute__((address(0x2486)));


extern volatile __bit SMT1CPR15 __attribute__((address(0x2487)));


extern volatile __bit SMT1CPR16 __attribute__((address(0x2488)));


extern volatile __bit SMT1CPR17 __attribute__((address(0x2489)));


extern volatile __bit SMT1CPR18 __attribute__((address(0x248A)));


extern volatile __bit SMT1CPR19 __attribute__((address(0x248B)));


extern volatile __bit SMT1CPR2 __attribute__((address(0x247A)));


extern volatile __bit SMT1CPR20 __attribute__((address(0x248C)));


extern volatile __bit SMT1CPR21 __attribute__((address(0x248D)));


extern volatile __bit SMT1CPR22 __attribute__((address(0x248E)));


extern volatile __bit SMT1CPR23 __attribute__((address(0x248F)));


extern volatile __bit SMT1CPR3 __attribute__((address(0x247B)));


extern volatile __bit SMT1CPR4 __attribute__((address(0x247C)));


extern volatile __bit SMT1CPR5 __attribute__((address(0x247D)));


extern volatile __bit SMT1CPR6 __attribute__((address(0x247E)));


extern volatile __bit SMT1CPR7 __attribute__((address(0x247F)));


extern volatile __bit SMT1CPR8 __attribute__((address(0x2480)));


extern volatile __bit SMT1CPR9 __attribute__((address(0x2481)));


extern volatile __bit SMT1CPRUP __attribute__((address(0x24D7)));


extern volatile __bit SMT1CPW0 __attribute__((address(0x2490)));


extern volatile __bit SMT1CPW1 __attribute__((address(0x2491)));


extern volatile __bit SMT1CPW10 __attribute__((address(0x249A)));


extern volatile __bit SMT1CPW11 __attribute__((address(0x249B)));


extern volatile __bit SMT1CPW12 __attribute__((address(0x249C)));


extern volatile __bit SMT1CPW13 __attribute__((address(0x249D)));


extern volatile __bit SMT1CPW14 __attribute__((address(0x249E)));


extern volatile __bit SMT1CPW15 __attribute__((address(0x249F)));


extern volatile __bit SMT1CPW16 __attribute__((address(0x24A0)));


extern volatile __bit SMT1CPW17 __attribute__((address(0x24A1)));


extern volatile __bit SMT1CPW18 __attribute__((address(0x24A2)));


extern volatile __bit SMT1CPW19 __attribute__((address(0x24A3)));


extern volatile __bit SMT1CPW2 __attribute__((address(0x2492)));


extern volatile __bit SMT1CPW20 __attribute__((address(0x24A4)));


extern volatile __bit SMT1CPW21 __attribute__((address(0x24A5)));


extern volatile __bit SMT1CPW22 __attribute__((address(0x24A6)));


extern volatile __bit SMT1CPW23 __attribute__((address(0x24A7)));


extern volatile __bit SMT1CPW3 __attribute__((address(0x2493)));


extern volatile __bit SMT1CPW4 __attribute__((address(0x2494)));


extern volatile __bit SMT1CPW5 __attribute__((address(0x2495)));


extern volatile __bit SMT1CPW6 __attribute__((address(0x2496)));


extern volatile __bit SMT1CPW7 __attribute__((address(0x2497)));


extern volatile __bit SMT1CPW8 __attribute__((address(0x2498)));


extern volatile __bit SMT1CPW9 __attribute__((address(0x2499)));


extern volatile __bit SMT1CPWUP __attribute__((address(0x24D6)));


extern volatile __bit SMT1CSEL0 __attribute__((address(0x24D8)));


extern volatile __bit SMT1CSEL1 __attribute__((address(0x24D9)));


extern volatile __bit SMT1CSEL2 __attribute__((address(0x24DA)));


extern volatile __bit SMT1EN __attribute__((address(0x24C7)));


extern volatile __bit SMT1GO __attribute__((address(0x24CF)));


extern volatile __bit SMT1IE __attribute__((address(0x38F0)));


extern volatile __bit SMT1IF __attribute__((address(0x38A0)));


extern volatile __bit SMT1MD __attribute__((address(0x3CDE)));


extern volatile __bit SMT1PR0 __attribute__((address(0x24A8)));


extern volatile __bit SMT1PR1 __attribute__((address(0x24A9)));


extern volatile __bit SMT1PR10 __attribute__((address(0x24B2)));


extern volatile __bit SMT1PR11 __attribute__((address(0x24B3)));


extern volatile __bit SMT1PR12 __attribute__((address(0x24B4)));


extern volatile __bit SMT1PR13 __attribute__((address(0x24B5)));


extern volatile __bit SMT1PR14 __attribute__((address(0x24B6)));


extern volatile __bit SMT1PR15 __attribute__((address(0x24B7)));


extern volatile __bit SMT1PR16 __attribute__((address(0x24B8)));


extern volatile __bit SMT1PR17 __attribute__((address(0x24B9)));


extern volatile __bit SMT1PR18 __attribute__((address(0x24BA)));


extern volatile __bit SMT1PR19 __attribute__((address(0x24BB)));


extern volatile __bit SMT1PR2 __attribute__((address(0x24AA)));


extern volatile __bit SMT1PR20 __attribute__((address(0x24BC)));


extern volatile __bit SMT1PR21 __attribute__((address(0x24BD)));


extern volatile __bit SMT1PR22 __attribute__((address(0x24BE)));


extern volatile __bit SMT1PR23 __attribute__((address(0x24BF)));


extern volatile __bit SMT1PR3 __attribute__((address(0x24AB)));


extern volatile __bit SMT1PR4 __attribute__((address(0x24AC)));


extern volatile __bit SMT1PR5 __attribute__((address(0x24AD)));


extern volatile __bit SMT1PR6 __attribute__((address(0x24AE)));


extern volatile __bit SMT1PR7 __attribute__((address(0x24AF)));


extern volatile __bit SMT1PR8 __attribute__((address(0x24B0)));


extern volatile __bit SMT1PR9 __attribute__((address(0x24B1)));


extern volatile __bit SMT1PRAIE __attribute__((address(0x38F1)));


extern volatile __bit SMT1PRAIF __attribute__((address(0x38A1)));


extern volatile __bit SMT1PS0 __attribute__((address(0x24C0)));


extern volatile __bit SMT1PS1 __attribute__((address(0x24C1)));


extern volatile __bit SMT1PWAIE __attribute__((address(0x38F2)));


extern volatile __bit SMT1PWAIF __attribute__((address(0x38A2)));


extern volatile __bit SMT1REPEAT __attribute__((address(0x24CE)));


extern volatile __bit SMT1RESET __attribute__((address(0x24D5)));


extern volatile __bit SMT1RST __attribute__((address(0x24D5)));


extern volatile __bit SMT1SPOL __attribute__((address(0x24C3)));


extern volatile __bit SMT1SSEL0 __attribute__((address(0x24E0)));


extern volatile __bit SMT1SSEL1 __attribute__((address(0x24E1)));


extern volatile __bit SMT1SSEL2 __attribute__((address(0x24E2)));


extern volatile __bit SMT1SSEL3 __attribute__((address(0x24E3)));


extern volatile __bit SMT1SSEL4 __attribute__((address(0x24E4)));


extern volatile __bit SMT1STP __attribute__((address(0x24C5)));


extern volatile __bit SMT1TMR0 __attribute__((address(0x2460)));


extern volatile __bit SMT1TMR1 __attribute__((address(0x2461)));


extern volatile __bit SMT1TMR10 __attribute__((address(0x246A)));


extern volatile __bit SMT1TMR11 __attribute__((address(0x246B)));


extern volatile __bit SMT1TMR12 __attribute__((address(0x246C)));


extern volatile __bit SMT1TMR13 __attribute__((address(0x246D)));


extern volatile __bit SMT1TMR14 __attribute__((address(0x246E)));


extern volatile __bit SMT1TMR15 __attribute__((address(0x246F)));


extern volatile __bit SMT1TMR16 __attribute__((address(0x2470)));


extern volatile __bit SMT1TMR17 __attribute__((address(0x2471)));


extern volatile __bit SMT1TMR18 __attribute__((address(0x2472)));


extern volatile __bit SMT1TMR19 __attribute__((address(0x2473)));


extern volatile __bit SMT1TMR2 __attribute__((address(0x2462)));


extern volatile __bit SMT1TMR20 __attribute__((address(0x2474)));


extern volatile __bit SMT1TMR21 __attribute__((address(0x2475)));


extern volatile __bit SMT1TMR22 __attribute__((address(0x2476)));


extern volatile __bit SMT1TMR23 __attribute__((address(0x2477)));


extern volatile __bit SMT1TMR3 __attribute__((address(0x2463)));


extern volatile __bit SMT1TMR4 __attribute__((address(0x2464)));


extern volatile __bit SMT1TMR5 __attribute__((address(0x2465)));


extern volatile __bit SMT1TMR6 __attribute__((address(0x2466)));


extern volatile __bit SMT1TMR7 __attribute__((address(0x2467)));


extern volatile __bit SMT1TMR8 __attribute__((address(0x2468)));


extern volatile __bit SMT1TMR9 __attribute__((address(0x2469)));


extern volatile __bit SMT1TS __attribute__((address(0x24D2)));


extern volatile __bit SMT1WOL __attribute__((address(0x24C4)));


extern volatile __bit SMT1WS __attribute__((address(0x24D1)));


extern volatile __bit SMT1WSEL0 __attribute__((address(0x24E8)));


extern volatile __bit SMT1WSEL1 __attribute__((address(0x24E9)));


extern volatile __bit SMT1WSEL2 __attribute__((address(0x24EA)));


extern volatile __bit SMT1WSEL3 __attribute__((address(0x24EB)));


extern volatile __bit SMT1WSEL4 __attribute__((address(0x24EC)));


extern volatile __bit SMT2AS __attribute__((address(0x28D0)));


extern volatile __bit SMT2CPOL __attribute__((address(0x28C2)));


extern volatile __bit SMT2CPR0 __attribute__((address(0x2878)));


extern volatile __bit SMT2CPR1 __attribute__((address(0x2879)));


extern volatile __bit SMT2CPR10 __attribute__((address(0x2882)));


extern volatile __bit SMT2CPR11 __attribute__((address(0x2883)));


extern volatile __bit SMT2CPR12 __attribute__((address(0x2884)));


extern volatile __bit SMT2CPR13 __attribute__((address(0x2885)));


extern volatile __bit SMT2CPR14 __attribute__((address(0x2886)));


extern volatile __bit SMT2CPR15 __attribute__((address(0x2887)));


extern volatile __bit SMT2CPR16 __attribute__((address(0x2888)));


extern volatile __bit SMT2CPR17 __attribute__((address(0x2889)));


extern volatile __bit SMT2CPR18 __attribute__((address(0x288A)));


extern volatile __bit SMT2CPR19 __attribute__((address(0x288B)));


extern volatile __bit SMT2CPR2 __attribute__((address(0x287A)));


extern volatile __bit SMT2CPR20 __attribute__((address(0x288C)));


extern volatile __bit SMT2CPR21 __attribute__((address(0x288D)));


extern volatile __bit SMT2CPR22 __attribute__((address(0x288E)));


extern volatile __bit SMT2CPR23 __attribute__((address(0x288F)));


extern volatile __bit SMT2CPR3 __attribute__((address(0x287B)));


extern volatile __bit SMT2CPR4 __attribute__((address(0x287C)));


extern volatile __bit SMT2CPR5 __attribute__((address(0x287D)));


extern volatile __bit SMT2CPR6 __attribute__((address(0x287E)));


extern volatile __bit SMT2CPR7 __attribute__((address(0x287F)));


extern volatile __bit SMT2CPR8 __attribute__((address(0x2880)));


extern volatile __bit SMT2CPR9 __attribute__((address(0x2881)));


extern volatile __bit SMT2CPRUP __attribute__((address(0x28D7)));


extern volatile __bit SMT2CPW0 __attribute__((address(0x2890)));


extern volatile __bit SMT2CPW1 __attribute__((address(0x2891)));


extern volatile __bit SMT2CPW10 __attribute__((address(0x289A)));


extern volatile __bit SMT2CPW11 __attribute__((address(0x289B)));


extern volatile __bit SMT2CPW12 __attribute__((address(0x289C)));


extern volatile __bit SMT2CPW13 __attribute__((address(0x289D)));


extern volatile __bit SMT2CPW14 __attribute__((address(0x289E)));


extern volatile __bit SMT2CPW15 __attribute__((address(0x289F)));


extern volatile __bit SMT2CPW16 __attribute__((address(0x28A0)));


extern volatile __bit SMT2CPW17 __attribute__((address(0x28A1)));


extern volatile __bit SMT2CPW18 __attribute__((address(0x28A2)));


extern volatile __bit SMT2CPW19 __attribute__((address(0x28A3)));


extern volatile __bit SMT2CPW2 __attribute__((address(0x2892)));


extern volatile __bit SMT2CPW20 __attribute__((address(0x28A4)));


extern volatile __bit SMT2CPW21 __attribute__((address(0x28A5)));


extern volatile __bit SMT2CPW22 __attribute__((address(0x28A6)));


extern volatile __bit SMT2CPW23 __attribute__((address(0x28A7)));


extern volatile __bit SMT2CPW3 __attribute__((address(0x2893)));


extern volatile __bit SMT2CPW4 __attribute__((address(0x2894)));


extern volatile __bit SMT2CPW5 __attribute__((address(0x2895)));


extern volatile __bit SMT2CPW6 __attribute__((address(0x2896)));


extern volatile __bit SMT2CPW7 __attribute__((address(0x2897)));


extern volatile __bit SMT2CPW8 __attribute__((address(0x2898)));


extern volatile __bit SMT2CPW9 __attribute__((address(0x2899)));


extern volatile __bit SMT2CPWUP __attribute__((address(0x28D6)));


extern volatile __bit SMT2CSEL0 __attribute__((address(0x28D8)));


extern volatile __bit SMT2CSEL1 __attribute__((address(0x28D9)));


extern volatile __bit SMT2CSEL2 __attribute__((address(0x28DA)));


extern volatile __bit SMT2EN __attribute__((address(0x28C7)));


extern volatile __bit SMT2GO __attribute__((address(0x28CF)));


extern volatile __bit SMT2IE __attribute__((address(0x38F3)));


extern volatile __bit SMT2IF __attribute__((address(0x38A3)));


extern volatile __bit SMT2MD __attribute__((address(0x3CDF)));


extern volatile __bit SMT2PR0 __attribute__((address(0x28A8)));


extern volatile __bit SMT2PR1 __attribute__((address(0x28A9)));


extern volatile __bit SMT2PR10 __attribute__((address(0x28B2)));


extern volatile __bit SMT2PR11 __attribute__((address(0x28B3)));


extern volatile __bit SMT2PR12 __attribute__((address(0x28B4)));


extern volatile __bit SMT2PR13 __attribute__((address(0x28B5)));


extern volatile __bit SMT2PR14 __attribute__((address(0x28B6)));


extern volatile __bit SMT2PR15 __attribute__((address(0x28B7)));


extern volatile __bit SMT2PR16 __attribute__((address(0x28B8)));


extern volatile __bit SMT2PR17 __attribute__((address(0x28B9)));


extern volatile __bit SMT2PR18 __attribute__((address(0x28BA)));


extern volatile __bit SMT2PR19 __attribute__((address(0x28BB)));


extern volatile __bit SMT2PR2 __attribute__((address(0x28AA)));


extern volatile __bit SMT2PR20 __attribute__((address(0x28BC)));


extern volatile __bit SMT2PR21 __attribute__((address(0x28BD)));


extern volatile __bit SMT2PR22 __attribute__((address(0x28BE)));


extern volatile __bit SMT2PR23 __attribute__((address(0x28BF)));


extern volatile __bit SMT2PR3 __attribute__((address(0x28AB)));


extern volatile __bit SMT2PR4 __attribute__((address(0x28AC)));


extern volatile __bit SMT2PR5 __attribute__((address(0x28AD)));


extern volatile __bit SMT2PR6 __attribute__((address(0x28AE)));


extern volatile __bit SMT2PR7 __attribute__((address(0x28AF)));


extern volatile __bit SMT2PR8 __attribute__((address(0x28B0)));


extern volatile __bit SMT2PR9 __attribute__((address(0x28B1)));


extern volatile __bit SMT2PRAIE __attribute__((address(0x38F4)));


extern volatile __bit SMT2PRAIF __attribute__((address(0x38A4)));


extern volatile __bit SMT2PS0 __attribute__((address(0x28C0)));


extern volatile __bit SMT2PS1 __attribute__((address(0x28C1)));


extern volatile __bit SMT2PWAIE __attribute__((address(0x38F5)));


extern volatile __bit SMT2PWAIF __attribute__((address(0x38A5)));


extern volatile __bit SMT2REPEAT __attribute__((address(0x28CE)));


extern volatile __bit SMT2RESET __attribute__((address(0x28D5)));


extern volatile __bit SMT2RST __attribute__((address(0x28D5)));


extern volatile __bit SMT2SPOL __attribute__((address(0x28C3)));


extern volatile __bit SMT2SSEL0 __attribute__((address(0x28E0)));


extern volatile __bit SMT2SSEL1 __attribute__((address(0x28E1)));


extern volatile __bit SMT2SSEL2 __attribute__((address(0x28E2)));


extern volatile __bit SMT2SSEL3 __attribute__((address(0x28E3)));


extern volatile __bit SMT2SSEL4 __attribute__((address(0x28E4)));


extern volatile __bit SMT2STP __attribute__((address(0x28C5)));


extern volatile __bit SMT2TMR0 __attribute__((address(0x2860)));


extern volatile __bit SMT2TMR1 __attribute__((address(0x2861)));


extern volatile __bit SMT2TMR10 __attribute__((address(0x286A)));


extern volatile __bit SMT2TMR11 __attribute__((address(0x286B)));


extern volatile __bit SMT2TMR12 __attribute__((address(0x286C)));


extern volatile __bit SMT2TMR13 __attribute__((address(0x286D)));


extern volatile __bit SMT2TMR14 __attribute__((address(0x286E)));


extern volatile __bit SMT2TMR15 __attribute__((address(0x286F)));


extern volatile __bit SMT2TMR16 __attribute__((address(0x2870)));


extern volatile __bit SMT2TMR17 __attribute__((address(0x2871)));


extern volatile __bit SMT2TMR18 __attribute__((address(0x2872)));


extern volatile __bit SMT2TMR19 __attribute__((address(0x2873)));


extern volatile __bit SMT2TMR2 __attribute__((address(0x2862)));


extern volatile __bit SMT2TMR20 __attribute__((address(0x2874)));


extern volatile __bit SMT2TMR21 __attribute__((address(0x2875)));


extern volatile __bit SMT2TMR22 __attribute__((address(0x2876)));


extern volatile __bit SMT2TMR23 __attribute__((address(0x2877)));


extern volatile __bit SMT2TMR3 __attribute__((address(0x2863)));


extern volatile __bit SMT2TMR4 __attribute__((address(0x2864)));


extern volatile __bit SMT2TMR5 __attribute__((address(0x2865)));


extern volatile __bit SMT2TMR6 __attribute__((address(0x2866)));


extern volatile __bit SMT2TMR7 __attribute__((address(0x2867)));


extern volatile __bit SMT2TMR8 __attribute__((address(0x2868)));


extern volatile __bit SMT2TMR9 __attribute__((address(0x2869)));


extern volatile __bit SMT2TS __attribute__((address(0x28D2)));


extern volatile __bit SMT2WOL __attribute__((address(0x28C4)));


extern volatile __bit SMT2WS __attribute__((address(0x28D1)));


extern volatile __bit SMT2WSEL0 __attribute__((address(0x28E8)));


extern volatile __bit SMT2WSEL1 __attribute__((address(0x28E9)));


extern volatile __bit SMT2WSEL2 __attribute__((address(0x28EA)));


extern volatile __bit SMT2WSEL3 __attribute__((address(0x28EB)));


extern volatile __bit SMT2WSEL4 __attribute__((address(0x28EC)));


extern volatile __bit SMU1SIGPPS0 __attribute__((address(0x7550)));


extern volatile __bit SMU1SIGPPS1 __attribute__((address(0x7551)));


extern volatile __bit SMU1SIGPPS2 __attribute__((address(0x7552)));


extern volatile __bit SMU1SIGPPS3 __attribute__((address(0x7553)));


extern volatile __bit SMU1SIGPPS4 __attribute__((address(0x7554)));


extern volatile __bit SMU1WINPPS0 __attribute__((address(0x7548)));


extern volatile __bit SMU1WINPPS1 __attribute__((address(0x7549)));


extern volatile __bit SMU1WINPPS2 __attribute__((address(0x754A)));


extern volatile __bit SMU1WINPPS3 __attribute__((address(0x754B)));


extern volatile __bit SMU1WINPPS4 __attribute__((address(0x754C)));


extern volatile __bit SMU2SIGPPS0 __attribute__((address(0x7560)));


extern volatile __bit SMU2SIGPPS1 __attribute__((address(0x7561)));


extern volatile __bit SMU2SIGPPS2 __attribute__((address(0x7562)));


extern volatile __bit SMU2SIGPPS3 __attribute__((address(0x7563)));


extern volatile __bit SMU2SIGPPS4 __attribute__((address(0x7564)));


extern volatile __bit SMU2WINPPS0 __attribute__((address(0x7558)));


extern volatile __bit SMU2WINPPS1 __attribute__((address(0x7559)));


extern volatile __bit SMU2WINPPS2 __attribute__((address(0x755A)));


extern volatile __bit SMU2WINPPS3 __attribute__((address(0x755B)));


extern volatile __bit SMU2WINPPS4 __attribute__((address(0x755C)));


extern volatile __bit SOR __attribute__((address(0x4483)));


extern volatile __bit SOSCEN __attribute__((address(0x448B)));


extern volatile __bit SOSCPWR __attribute__((address(0x447E)));


extern volatile __bit SPEN __attribute__((address(0x8EF)));


extern volatile __bit SREN __attribute__((address(0x8ED)));


extern volatile __bit SSP1CLKPPS0 __attribute__((address(0x7628)));


extern volatile __bit SSP1CLKPPS1 __attribute__((address(0x7629)));


extern volatile __bit SSP1CLKPPS2 __attribute__((address(0x762A)));


extern volatile __bit SSP1CLKPPS3 __attribute__((address(0x762B)));


extern volatile __bit SSP1CLKPPS4 __attribute__((address(0x762C)));


extern volatile __bit SSP1DATPPS0 __attribute__((address(0x7630)));


extern volatile __bit SSP1DATPPS1 __attribute__((address(0x7631)));


extern volatile __bit SSP1DATPPS2 __attribute__((address(0x7632)));


extern volatile __bit SSP1DATPPS3 __attribute__((address(0x7633)));


extern volatile __bit SSP1DATPPS4 __attribute__((address(0x7634)));


extern volatile __bit SSP1IE __attribute__((address(0x38C8)));


extern volatile __bit SSP1IF __attribute__((address(0x3878)));


extern volatile __bit SSP1SSPPS0 __attribute__((address(0x7638)));


extern volatile __bit SSP1SSPPS1 __attribute__((address(0x7639)));


extern volatile __bit SSP1SSPPS2 __attribute__((address(0x763A)));


extern volatile __bit SSP1SSPPS3 __attribute__((address(0x763B)));


extern volatile __bit SSP1SSPPS4 __attribute__((address(0x763C)));


extern volatile __bit SSP2CLKPPS0 __attribute__((address(0x7640)));


extern volatile __bit SSP2CLKPPS1 __attribute__((address(0x7641)));


extern volatile __bit SSP2CLKPPS2 __attribute__((address(0x7642)));


extern volatile __bit SSP2CLKPPS3 __attribute__((address(0x7643)));


extern volatile __bit SSP2CLKPPS4 __attribute__((address(0x7644)));


extern volatile __bit SSP2DATPPS0 __attribute__((address(0x7648)));


extern volatile __bit SSP2DATPPS1 __attribute__((address(0x7649)));


extern volatile __bit SSP2DATPPS2 __attribute__((address(0x764A)));


extern volatile __bit SSP2DATPPS3 __attribute__((address(0x764B)));


extern volatile __bit SSP2DATPPS4 __attribute__((address(0x764C)));


extern volatile __bit SSP2IE __attribute__((address(0x38CA)));


extern volatile __bit SSP2IF __attribute__((address(0x387A)));


extern volatile __bit SSP2SSPPS0 __attribute__((address(0x7650)));


extern volatile __bit SSP2SSPPS1 __attribute__((address(0x7651)));


extern volatile __bit SSP2SSPPS2 __attribute__((address(0x7652)));


extern volatile __bit SSP2SSPPS3 __attribute__((address(0x7653)));


extern volatile __bit SSP2SSPPS4 __attribute__((address(0x7654)));


extern volatile __bit SSPEN1 __attribute__((address(0xC85)));


extern volatile __bit SSPEN2 __attribute__((address(0xCD5)));


extern volatile __bit SSPM01 __attribute__((address(0xC80)));


extern volatile __bit SSPM02 __attribute__((address(0xCD0)));


extern volatile __bit SSPM11 __attribute__((address(0xC81)));


extern volatile __bit SSPM12 __attribute__((address(0xCD1)));


extern volatile __bit SSPM21 __attribute__((address(0xC82)));


extern volatile __bit SSPM22 __attribute__((address(0xCD2)));


extern volatile __bit SSPM31 __attribute__((address(0xC83)));


extern volatile __bit SSPM32 __attribute__((address(0xCD3)));


extern volatile __bit SSPOV1 __attribute__((address(0xC86)));


extern volatile __bit SSPOV2 __attribute__((address(0xCD6)));


extern volatile __bit START1 __attribute__((address(0xC7B)));


extern volatile __bit START2 __attribute__((address(0xCCB)));


extern volatile __bit STATE __attribute__((address(0x4082)));


extern volatile __bit STKOVF __attribute__((address(0x409F)));


extern volatile __bit STKUNF __attribute__((address(0x409E)));


extern volatile __bit STOP1 __attribute__((address(0xC7C)));


extern volatile __bit STOP2 __attribute__((address(0xCCC)));


extern volatile __bit SWDTEN __attribute__((address(0x4060)));


extern volatile __bit SYSCMD __attribute__((address(0x3CB7)));


extern volatile __bit T016BIT __attribute__((address(0xF4)));


extern volatile __bit T0ASYNC __attribute__((address(0xFC)));


extern volatile __bit T0CKIPPS0 __attribute__((address(0x7488)));


extern volatile __bit T0CKIPPS1 __attribute__((address(0x7489)));


extern volatile __bit T0CKIPPS2 __attribute__((address(0x748A)));


extern volatile __bit T0CKIPPS3 __attribute__((address(0x748B)));


extern volatile __bit T0CKPS0 __attribute__((address(0xF8)));


extern volatile __bit T0CKPS1 __attribute__((address(0xF9)));


extern volatile __bit T0CKPS2 __attribute__((address(0xFA)));


extern volatile __bit T0CKPS3 __attribute__((address(0xFB)));


extern volatile __bit T0CS0 __attribute__((address(0xFD)));


extern volatile __bit T0CS1 __attribute__((address(0xFE)));


extern volatile __bit T0CS2 __attribute__((address(0xFF)));


extern volatile __bit T0EN __attribute__((address(0xF7)));


extern volatile __bit T0OUT __attribute__((address(0xF5)));


extern volatile __bit T0OUTPS0 __attribute__((address(0xF0)));


extern volatile __bit T0OUTPS1 __attribute__((address(0xF1)));


extern volatile __bit T0OUTPS2 __attribute__((address(0xF2)));


extern volatile __bit T0OUTPS3 __attribute__((address(0xF3)));


extern volatile __bit T0PR0 __attribute__((address(0xE8)));


extern volatile __bit T0PR1 __attribute__((address(0xE9)));


extern volatile __bit T0PR2 __attribute__((address(0xEA)));


extern volatile __bit T0PR3 __attribute__((address(0xEB)));


extern volatile __bit T0PR4 __attribute__((address(0xEC)));


extern volatile __bit T0PR5 __attribute__((address(0xED)));


extern volatile __bit T0PR6 __attribute__((address(0xEE)));


extern volatile __bit T0PR7 __attribute__((address(0xEF)));


extern volatile __bit T0PS0 __attribute__((address(0xF8)));


extern volatile __bit T0PS1 __attribute__((address(0xF9)));


extern volatile __bit T0PS2 __attribute__((address(0xFA)));


extern volatile __bit T0PS3 __attribute__((address(0xFB)));


extern volatile __bit T1CKIPPS0 __attribute__((address(0x7490)));


extern volatile __bit T1CKIPPS1 __attribute__((address(0x7491)));


extern volatile __bit T1CKIPPS2 __attribute__((address(0x7492)));


extern volatile __bit T1CKIPPS3 __attribute__((address(0x7493)));


extern volatile __bit T1CKIPPS4 __attribute__((address(0x7494)));


extern volatile __bit T1CKPS0 __attribute__((address(0x1074)));


extern volatile __bit T1CKPS1 __attribute__((address(0x1075)));


extern volatile __bit T1CS0 __attribute__((address(0x1088)));


extern volatile __bit T1CS1 __attribute__((address(0x1089)));


extern volatile __bit T1CS2 __attribute__((address(0x108A)));


extern volatile __bit T1CS3 __attribute__((address(0x108B)));


extern volatile __bit T1GE __attribute__((address(0x107F)));


extern volatile __bit T1GGO __attribute__((address(0x107B)));


extern volatile __bit T1GGO_nDONE __attribute__((address(0x107B)));


extern volatile __bit T1GPOL __attribute__((address(0x107E)));


extern volatile __bit T1GPPS0 __attribute__((address(0x7498)));


extern volatile __bit T1GPPS1 __attribute__((address(0x7499)));


extern volatile __bit T1GPPS2 __attribute__((address(0x749A)));


extern volatile __bit T1GPPS3 __attribute__((address(0x749B)));


extern volatile __bit T1GPPS4 __attribute__((address(0x749C)));


extern volatile __bit T1GSPM __attribute__((address(0x107C)));


extern volatile __bit T1GSS0 __attribute__((address(0x1080)));


extern volatile __bit T1GSS1 __attribute__((address(0x1081)));


extern volatile __bit T1GSS2 __attribute__((address(0x1082)));


extern volatile __bit T1GSS3 __attribute__((address(0x1083)));


extern volatile __bit T1GSS4 __attribute__((address(0x1084)));


extern volatile __bit T1GTM __attribute__((address(0x107D)));


extern volatile __bit T1GVAL __attribute__((address(0x107A)));


extern volatile __bit T1RD16 __attribute__((address(0x1071)));


extern volatile __bit T2AINPPS0 __attribute__((address(0x74E0)));


extern volatile __bit T2AINPPS1 __attribute__((address(0x74E1)));


extern volatile __bit T2AINPPS2 __attribute__((address(0x74E2)));


extern volatile __bit T2AINPPS3 __attribute__((address(0x74E3)));


extern volatile __bit T2AINPPS4 __attribute__((address(0x74E4)));


extern volatile __bit T2CKPOL __attribute__((address(0x147E)));


extern volatile __bit T2CKPS0 __attribute__((address(0x1474)));


extern volatile __bit T2CKPS1 __attribute__((address(0x1475)));


extern volatile __bit T2CKPS2 __attribute__((address(0x1476)));


extern volatile __bit T2CKSYNC __attribute__((address(0x147D)));


extern volatile __bit T2CS0 __attribute__((address(0x1480)));


extern volatile __bit T2CS1 __attribute__((address(0x1481)));


extern volatile __bit T2CS2 __attribute__((address(0x1482)));


extern volatile __bit T2CS3 __attribute__((address(0x1483)));


extern volatile __bit T2MODE0 __attribute__((address(0x1478)));


extern volatile __bit T2MODE1 __attribute__((address(0x1479)));


extern volatile __bit T2MODE2 __attribute__((address(0x147A)));


extern volatile __bit T2MODE3 __attribute__((address(0x147B)));


extern volatile __bit T2MODE4 __attribute__((address(0x147C)));


extern volatile __bit T2ON __attribute__((address(0x1477)));


extern volatile __bit T2OUTPS0 __attribute__((address(0x1470)));


extern volatile __bit T2OUTPS1 __attribute__((address(0x1471)));


extern volatile __bit T2OUTPS2 __attribute__((address(0x1472)));


extern volatile __bit T2OUTPS3 __attribute__((address(0x1473)));


extern volatile __bit T2PSYNC __attribute__((address(0x147F)));


extern volatile __bit T2RSEL0 __attribute__((address(0x1488)));


extern volatile __bit T2RSEL1 __attribute__((address(0x1489)));


extern volatile __bit T2RSEL2 __attribute__((address(0x148A)));


extern volatile __bit T2RSEL3 __attribute__((address(0x148B)));


extern volatile __bit T2RSEL4 __attribute__((address(0x148C)));


extern volatile __bit T3CKIPPS0 __attribute__((address(0x74A0)));


extern volatile __bit T3CKIPPS1 __attribute__((address(0x74A1)));


extern volatile __bit T3CKIPPS2 __attribute__((address(0x74A2)));


extern volatile __bit T3CKIPPS3 __attribute__((address(0x74A3)));


extern volatile __bit T3CKIPPS4 __attribute__((address(0x74A4)));


extern volatile __bit T3CKPS0 __attribute__((address(0x10A4)));


extern volatile __bit T3CKPS1 __attribute__((address(0x10A5)));


extern volatile __bit T3CS0 __attribute__((address(0x10B8)));


extern volatile __bit T3CS1 __attribute__((address(0x10B9)));


extern volatile __bit T3CS2 __attribute__((address(0x10BA)));


extern volatile __bit T3CS3 __attribute__((address(0x10BB)));


extern volatile __bit T3GE __attribute__((address(0x10AF)));


extern volatile __bit T3GGO __attribute__((address(0x10AB)));


extern volatile __bit T3GGO_nDONE __attribute__((address(0x10AB)));


extern volatile __bit T3GPOL __attribute__((address(0x10AE)));


extern volatile __bit T3GPPS0 __attribute__((address(0x74A8)));


extern volatile __bit T3GPPS1 __attribute__((address(0x74A9)));


extern volatile __bit T3GPPS2 __attribute__((address(0x74AA)));


extern volatile __bit T3GPPS3 __attribute__((address(0x74AB)));


extern volatile __bit T3GPPS4 __attribute__((address(0x74AC)));


extern volatile __bit T3GSPM __attribute__((address(0x10AC)));


extern volatile __bit T3GSS0 __attribute__((address(0x10B0)));


extern volatile __bit T3GSS1 __attribute__((address(0x10B1)));


extern volatile __bit T3GSS2 __attribute__((address(0x10B2)));


extern volatile __bit T3GSS3 __attribute__((address(0x10B3)));


extern volatile __bit T3GSS4 __attribute__((address(0x10B4)));


extern volatile __bit T3GTM __attribute__((address(0x10AD)));


extern volatile __bit T3GVAL __attribute__((address(0x10AA)));


extern volatile __bit T3RD16 __attribute__((address(0x10A1)));


extern volatile __bit T4AINPPS0 __attribute__((address(0x74E8)));


extern volatile __bit T4AINPPS1 __attribute__((address(0x74E9)));


extern volatile __bit T4AINPPS2 __attribute__((address(0x74EA)));


extern volatile __bit T4AINPPS3 __attribute__((address(0x74EB)));


extern volatile __bit T4AINPPS4 __attribute__((address(0x74EC)));


extern volatile __bit T4CKPOL __attribute__((address(0x14AE)));


extern volatile __bit T4CKPS0 __attribute__((address(0x14A4)));


extern volatile __bit T4CKPS1 __attribute__((address(0x14A5)));


extern volatile __bit T4CKPS2 __attribute__((address(0x14A6)));


extern volatile __bit T4CKSYNC __attribute__((address(0x14AD)));


extern volatile __bit T4CS0 __attribute__((address(0x14B0)));


extern volatile __bit T4CS1 __attribute__((address(0x14B1)));


extern volatile __bit T4CS2 __attribute__((address(0x14B2)));


extern volatile __bit T4CS3 __attribute__((address(0x14B3)));


extern volatile __bit T4MODE0 __attribute__((address(0x14A8)));


extern volatile __bit T4MODE1 __attribute__((address(0x14A9)));


extern volatile __bit T4MODE2 __attribute__((address(0x14AA)));


extern volatile __bit T4MODE3 __attribute__((address(0x14AB)));


extern volatile __bit T4MODE4 __attribute__((address(0x14AC)));


extern volatile __bit T4ON __attribute__((address(0x14A7)));


extern volatile __bit T4OUTPS0 __attribute__((address(0x14A0)));


extern volatile __bit T4OUTPS1 __attribute__((address(0x14A1)));


extern volatile __bit T4OUTPS2 __attribute__((address(0x14A2)));


extern volatile __bit T4OUTPS3 __attribute__((address(0x14A3)));


extern volatile __bit T4PSYNC __attribute__((address(0x14AF)));


extern volatile __bit T4RSEL0 __attribute__((address(0x14B8)));


extern volatile __bit T4RSEL1 __attribute__((address(0x14B9)));


extern volatile __bit T4RSEL2 __attribute__((address(0x14BA)));


extern volatile __bit T4RSEL3 __attribute__((address(0x14BB)));


extern volatile __bit T4RSEL4 __attribute__((address(0x14BC)));


extern volatile __bit T5CKIPPS0 __attribute__((address(0x74B0)));


extern volatile __bit T5CKIPPS1 __attribute__((address(0x74B1)));


extern volatile __bit T5CKIPPS2 __attribute__((address(0x74B2)));


extern volatile __bit T5CKIPPS3 __attribute__((address(0x74B3)));


extern volatile __bit T5CKIPPS4 __attribute__((address(0x74B4)));


extern volatile __bit T5CKPS0 __attribute__((address(0x10D4)));


extern volatile __bit T5CKPS1 __attribute__((address(0x10D5)));


extern volatile __bit T5CS0 __attribute__((address(0x10E8)));


extern volatile __bit T5CS1 __attribute__((address(0x10E9)));


extern volatile __bit T5CS2 __attribute__((address(0x10EA)));


extern volatile __bit T5CS3 __attribute__((address(0x10EB)));


extern volatile __bit T5GE __attribute__((address(0x10DF)));


extern volatile __bit T5GGO __attribute__((address(0x10DB)));


extern volatile __bit T5GGO_nDONE __attribute__((address(0x10DB)));


extern volatile __bit T5GPOL __attribute__((address(0x10DE)));


extern volatile __bit T5GPPS0 __attribute__((address(0x74B8)));


extern volatile __bit T5GPPS1 __attribute__((address(0x74B9)));


extern volatile __bit T5GPPS2 __attribute__((address(0x74BA)));


extern volatile __bit T5GPPS3 __attribute__((address(0x74BB)));


extern volatile __bit T5GPPS4 __attribute__((address(0x74BC)));


extern volatile __bit T5GSPM __attribute__((address(0x10DC)));


extern volatile __bit T5GSS0 __attribute__((address(0x10E0)));


extern volatile __bit T5GSS1 __attribute__((address(0x10E1)));


extern volatile __bit T5GSS2 __attribute__((address(0x10E2)));


extern volatile __bit T5GSS3 __attribute__((address(0x10E3)));


extern volatile __bit T5GSS4 __attribute__((address(0x10E4)));


extern volatile __bit T5GTM __attribute__((address(0x10DD)));


extern volatile __bit T5GVAL __attribute__((address(0x10DA)));


extern volatile __bit T5RD16 __attribute__((address(0x10D1)));


extern volatile __bit T6AINPPS0 __attribute__((address(0x74F0)));


extern volatile __bit T6AINPPS1 __attribute__((address(0x74F1)));


extern volatile __bit T6AINPPS2 __attribute__((address(0x74F2)));


extern volatile __bit T6AINPPS3 __attribute__((address(0x74F3)));


extern volatile __bit T6AINPPS4 __attribute__((address(0x74F4)));


extern volatile __bit T6CKPOL __attribute__((address(0x14DE)));


extern volatile __bit T6CKPS0 __attribute__((address(0x14D4)));


extern volatile __bit T6CKPS1 __attribute__((address(0x14D5)));


extern volatile __bit T6CKPS2 __attribute__((address(0x14D6)));


extern volatile __bit T6CKSYNC __attribute__((address(0x14DD)));


extern volatile __bit T6CS0 __attribute__((address(0x14E0)));


extern volatile __bit T6CS1 __attribute__((address(0x14E1)));


extern volatile __bit T6CS2 __attribute__((address(0x14E2)));


extern volatile __bit T6CS3 __attribute__((address(0x14E3)));


extern volatile __bit T6MODE0 __attribute__((address(0x14D8)));


extern volatile __bit T6MODE1 __attribute__((address(0x14D9)));


extern volatile __bit T6MODE2 __attribute__((address(0x14DA)));


extern volatile __bit T6MODE3 __attribute__((address(0x14DB)));


extern volatile __bit T6MODE4 __attribute__((address(0x14DC)));


extern volatile __bit T6ON __attribute__((address(0x14D7)));


extern volatile __bit T6OUTPS0 __attribute__((address(0x14D0)));


extern volatile __bit T6OUTPS1 __attribute__((address(0x14D1)));


extern volatile __bit T6OUTPS2 __attribute__((address(0x14D2)));


extern volatile __bit T6OUTPS3 __attribute__((address(0x14D3)));


extern volatile __bit T6PSYNC __attribute__((address(0x14DF)));


extern volatile __bit T6RSEL0 __attribute__((address(0x14E8)));


extern volatile __bit T6RSEL1 __attribute__((address(0x14E9)));


extern volatile __bit T6RSEL2 __attribute__((address(0x14EA)));


extern volatile __bit T6RSEL3 __attribute__((address(0x14EB)));


extern volatile __bit T6RSEL4 __attribute__((address(0x14EC)));


extern volatile __bit TMR0H0 __attribute__((address(0xE8)));


extern volatile __bit TMR0H1 __attribute__((address(0xE9)));


extern volatile __bit TMR0H2 __attribute__((address(0xEA)));


extern volatile __bit TMR0H3 __attribute__((address(0xEB)));


extern volatile __bit TMR0H4 __attribute__((address(0xEC)));


extern volatile __bit TMR0H5 __attribute__((address(0xED)));


extern volatile __bit TMR0H6 __attribute__((address(0xEE)));


extern volatile __bit TMR0H7 __attribute__((address(0xEF)));


extern volatile __bit TMR0IE __attribute__((address(0x38B5)));


extern volatile __bit TMR0IF __attribute__((address(0x3865)));


extern volatile __bit TMR0L0 __attribute__((address(0xE0)));


extern volatile __bit TMR0L1 __attribute__((address(0xE1)));


extern volatile __bit TMR0L2 __attribute__((address(0xE2)));


extern volatile __bit TMR0L3 __attribute__((address(0xE3)));


extern volatile __bit TMR0L4 __attribute__((address(0xE4)));


extern volatile __bit TMR0L5 __attribute__((address(0xE5)));


extern volatile __bit TMR0L6 __attribute__((address(0xE6)));


extern volatile __bit TMR0L7 __attribute__((address(0xE7)));


extern volatile __bit TMR0MD __attribute__((address(0x3CB8)));


extern volatile __bit TMR110 __attribute__((address(0x106A)));


extern volatile __bit TMR111 __attribute__((address(0x106B)));


extern volatile __bit TMR112 __attribute__((address(0x106C)));


extern volatile __bit TMR113 __attribute__((address(0x106D)));


extern volatile __bit TMR114 __attribute__((address(0x106E)));


extern volatile __bit TMR115 __attribute__((address(0x106F)));


extern volatile __bit TMR1GIE __attribute__((address(0x38D8)));


extern volatile __bit TMR1GIF __attribute__((address(0x3888)));


extern volatile __bit TMR1H0 __attribute__((address(0x1068)));


extern volatile __bit TMR1H1 __attribute__((address(0x1069)));


extern volatile __bit TMR1H2 __attribute__((address(0x106A)));


extern volatile __bit TMR1H3 __attribute__((address(0x106B)));


extern volatile __bit TMR1H4 __attribute__((address(0x106C)));


extern volatile __bit TMR1H5 __attribute__((address(0x106D)));


extern volatile __bit TMR1H6 __attribute__((address(0x106E)));


extern volatile __bit TMR1H7 __attribute__((address(0x106F)));


extern volatile __bit TMR1IE __attribute__((address(0x38D0)));


extern volatile __bit TMR1IF __attribute__((address(0x3880)));


extern volatile __bit TMR1L0 __attribute__((address(0x1060)));


extern volatile __bit TMR1L1 __attribute__((address(0x1061)));


extern volatile __bit TMR1L2 __attribute__((address(0x1062)));


extern volatile __bit TMR1L3 __attribute__((address(0x1063)));


extern volatile __bit TMR1L4 __attribute__((address(0x1064)));


extern volatile __bit TMR1L5 __attribute__((address(0x1065)));


extern volatile __bit TMR1L6 __attribute__((address(0x1066)));


extern volatile __bit TMR1L7 __attribute__((address(0x1067)));


extern volatile __bit TMR1MD __attribute__((address(0x3CB9)));


extern volatile __bit TMR1ON __attribute__((address(0x1070)));


extern volatile __bit TMR2IE __attribute__((address(0x38D1)));


extern volatile __bit TMR2IF __attribute__((address(0x3881)));


extern volatile __bit TMR2MD __attribute__((address(0x3CBA)));


extern volatile __bit TMR2ON __attribute__((address(0x1477)));


extern volatile __bit TMR30 __attribute__((address(0x1090)));


extern volatile __bit TMR31 __attribute__((address(0x1091)));


extern volatile __bit TMR310 __attribute__((address(0x109A)));


extern volatile __bit TMR311 __attribute__((address(0x109B)));


extern volatile __bit TMR312 __attribute__((address(0x109C)));


extern volatile __bit TMR313 __attribute__((address(0x109D)));


extern volatile __bit TMR314 __attribute__((address(0x109E)));


extern volatile __bit TMR315 __attribute__((address(0x109F)));


extern volatile __bit TMR32 __attribute__((address(0x1092)));


extern volatile __bit TMR33 __attribute__((address(0x1093)));


extern volatile __bit TMR34 __attribute__((address(0x1094)));


extern volatile __bit TMR35 __attribute__((address(0x1095)));


extern volatile __bit TMR36 __attribute__((address(0x1096)));


extern volatile __bit TMR37 __attribute__((address(0x1097)));


extern volatile __bit TMR38 __attribute__((address(0x1098)));


extern volatile __bit TMR39 __attribute__((address(0x1099)));


extern volatile __bit TMR3GIE __attribute__((address(0x38D9)));


extern volatile __bit TMR3GIF __attribute__((address(0x3889)));


extern volatile __bit TMR3H0 __attribute__((address(0x1098)));


extern volatile __bit TMR3H1 __attribute__((address(0x1099)));


extern volatile __bit TMR3H2 __attribute__((address(0x109A)));


extern volatile __bit TMR3H3 __attribute__((address(0x109B)));


extern volatile __bit TMR3H4 __attribute__((address(0x109C)));


extern volatile __bit TMR3H5 __attribute__((address(0x109D)));


extern volatile __bit TMR3H6 __attribute__((address(0x109E)));


extern volatile __bit TMR3H7 __attribute__((address(0x109F)));


extern volatile __bit TMR3IE __attribute__((address(0x38D2)));


extern volatile __bit TMR3IF __attribute__((address(0x3882)));


extern volatile __bit TMR3L0 __attribute__((address(0x1090)));


extern volatile __bit TMR3L1 __attribute__((address(0x1091)));


extern volatile __bit TMR3L2 __attribute__((address(0x1092)));


extern volatile __bit TMR3L3 __attribute__((address(0x1093)));


extern volatile __bit TMR3L4 __attribute__((address(0x1094)));


extern volatile __bit TMR3L5 __attribute__((address(0x1095)));


extern volatile __bit TMR3L6 __attribute__((address(0x1096)));


extern volatile __bit TMR3L7 __attribute__((address(0x1097)));


extern volatile __bit TMR3MD __attribute__((address(0x3CBB)));


extern volatile __bit TMR3ON __attribute__((address(0x10A0)));


extern volatile __bit TMR4IE __attribute__((address(0x38D3)));


extern volatile __bit TMR4IF __attribute__((address(0x3883)));


extern volatile __bit TMR4MD __attribute__((address(0x3CBC)));


extern volatile __bit TMR4ON __attribute__((address(0x14A7)));


extern volatile __bit TMR50 __attribute__((address(0x10C0)));


extern volatile __bit TMR51 __attribute__((address(0x10C1)));


extern volatile __bit TMR510 __attribute__((address(0x10CA)));


extern volatile __bit TMR511 __attribute__((address(0x10CB)));


extern volatile __bit TMR512 __attribute__((address(0x10CC)));


extern volatile __bit TMR513 __attribute__((address(0x10CD)));


extern volatile __bit TMR514 __attribute__((address(0x10CE)));


extern volatile __bit TMR515 __attribute__((address(0x10CF)));


extern volatile __bit TMR52 __attribute__((address(0x10C2)));


extern volatile __bit TMR53 __attribute__((address(0x10C3)));


extern volatile __bit TMR54 __attribute__((address(0x10C4)));


extern volatile __bit TMR55 __attribute__((address(0x10C5)));


extern volatile __bit TMR56 __attribute__((address(0x10C6)));


extern volatile __bit TMR57 __attribute__((address(0x10C7)));


extern volatile __bit TMR58 __attribute__((address(0x10C8)));


extern volatile __bit TMR59 __attribute__((address(0x10C9)));


extern volatile __bit TMR5GIE __attribute__((address(0x38DA)));


extern volatile __bit TMR5GIF __attribute__((address(0x388A)));


extern volatile __bit TMR5H0 __attribute__((address(0x10C8)));


extern volatile __bit TMR5H1 __attribute__((address(0x10C9)));


extern volatile __bit TMR5H2 __attribute__((address(0x10CA)));


extern volatile __bit TMR5H3 __attribute__((address(0x10CB)));


extern volatile __bit TMR5H4 __attribute__((address(0x10CC)));


extern volatile __bit TMR5H5 __attribute__((address(0x10CD)));


extern volatile __bit TMR5H6 __attribute__((address(0x10CE)));


extern volatile __bit TMR5H7 __attribute__((address(0x10CF)));


extern volatile __bit TMR5IE __attribute__((address(0x38D4)));


extern volatile __bit TMR5IF __attribute__((address(0x3884)));


extern volatile __bit TMR5L0 __attribute__((address(0x10C0)));


extern volatile __bit TMR5L1 __attribute__((address(0x10C1)));


extern volatile __bit TMR5L2 __attribute__((address(0x10C2)));


extern volatile __bit TMR5L3 __attribute__((address(0x10C3)));


extern volatile __bit TMR5L4 __attribute__((address(0x10C4)));


extern volatile __bit TMR5L5 __attribute__((address(0x10C5)));


extern volatile __bit TMR5L6 __attribute__((address(0x10C6)));


extern volatile __bit TMR5L7 __attribute__((address(0x10C7)));


extern volatile __bit TMR5MD __attribute__((address(0x3CBD)));


extern volatile __bit TMR5ON __attribute__((address(0x10D0)));


extern volatile __bit TMR6IE __attribute__((address(0x38D5)));


extern volatile __bit TMR6IF __attribute__((address(0x3885)));


extern volatile __bit TMR6MD __attribute__((address(0x3CBE)));


extern volatile __bit TMR6ON __attribute__((address(0x14D7)));


extern volatile __bit TRISA0 __attribute__((address(0x88)));


extern volatile __bit TRISA1 __attribute__((address(0x89)));


extern volatile __bit TRISA2 __attribute__((address(0x8A)));


extern volatile __bit TRISA3 __attribute__((address(0x8B)));


extern volatile __bit TRISA4 __attribute__((address(0x8C)));


extern volatile __bit TRISA5 __attribute__((address(0x8D)));


extern volatile __bit TRISA6 __attribute__((address(0x8E)));


extern volatile __bit TRISA7 __attribute__((address(0x8F)));


extern volatile __bit TRISB0 __attribute__((address(0x90)));


extern volatile __bit TRISB1 __attribute__((address(0x91)));


extern volatile __bit TRISB2 __attribute__((address(0x92)));


extern volatile __bit TRISB3 __attribute__((address(0x93)));


extern volatile __bit TRISB4 __attribute__((address(0x94)));


extern volatile __bit TRISB5 __attribute__((address(0x95)));


extern volatile __bit TRISB6 __attribute__((address(0x96)));


extern volatile __bit TRISB7 __attribute__((address(0x97)));


extern volatile __bit TRISC0 __attribute__((address(0x98)));


extern volatile __bit TRISC1 __attribute__((address(0x99)));


extern volatile __bit TRISC2 __attribute__((address(0x9A)));


extern volatile __bit TRISC3 __attribute__((address(0x9B)));


extern volatile __bit TRISC4 __attribute__((address(0x9C)));


extern volatile __bit TRISC5 __attribute__((address(0x9D)));


extern volatile __bit TRISC6 __attribute__((address(0x9E)));


extern volatile __bit TRISC7 __attribute__((address(0x9F)));


extern volatile __bit TRISD0 __attribute__((address(0xA0)));


extern volatile __bit TRISD1 __attribute__((address(0xA1)));


extern volatile __bit TRISD2 __attribute__((address(0xA2)));


extern volatile __bit TRISD3 __attribute__((address(0xA3)));


extern volatile __bit TRISD4 __attribute__((address(0xA4)));


extern volatile __bit TRISD5 __attribute__((address(0xA5)));


extern volatile __bit TRISD6 __attribute__((address(0xA6)));


extern volatile __bit TRISD7 __attribute__((address(0xA7)));


extern volatile __bit TRISE0 __attribute__((address(0xA8)));


extern volatile __bit TRISE1 __attribute__((address(0xA9)));


extern volatile __bit TRISE2 __attribute__((address(0xAA)));


extern volatile __bit TRMT __attribute__((address(0x8F1)));


extern volatile __bit TSEL0 __attribute__((address(0x2088)));


extern volatile __bit TSEL1 __attribute__((address(0x2089)));


extern volatile __bit TSEL2 __attribute__((address(0x208A)));


extern volatile __bit TSEL3 __attribute__((address(0x208B)));


extern volatile __bit TSEN __attribute__((address(0x4865)));


extern volatile __bit TSRNG __attribute__((address(0x4864)));


extern volatile __bit TX9 __attribute__((address(0x8F6)));


extern volatile __bit TX9D __attribute__((address(0x8F0)));


extern volatile __bit TXEN __attribute__((address(0x8F5)));


extern volatile __bit TXIE __attribute__((address(0x38CC)));


extern volatile __bit TXIF __attribute__((address(0x387C)));


extern volatile __bit TXPPS0 __attribute__((address(0x7660)));


extern volatile __bit TXPPS1 __attribute__((address(0x7661)));


extern volatile __bit TXPPS2 __attribute__((address(0x7662)));


extern volatile __bit TXPPS3 __attribute__((address(0x7663)));


extern volatile __bit TXPPS4 __attribute__((address(0x7664)));


extern volatile __bit UA1 __attribute__((address(0xC79)));


extern volatile __bit UA2 __attribute__((address(0xCC9)));


extern volatile __bit UART1MD __attribute__((address(0x3CD6)));


extern volatile __bit VREGPM __attribute__((address(0x4091)));


extern volatile __bit VREGPM0 __attribute__((address(0x4090)));


extern volatile __bit VREGPM1 __attribute__((address(0x4091)));


extern volatile __bit WCOL1 __attribute__((address(0xC87)));


extern volatile __bit WCOL2 __attribute__((address(0xCD7)));


extern volatile __bit WDTCS0 __attribute__((address(0x406C)));


extern volatile __bit WDTCS1 __attribute__((address(0x406D)));


extern volatile __bit WDTCS2 __attribute__((address(0x406E)));


extern volatile __bit WDTPS0 __attribute__((address(0x4061)));


extern volatile __bit WDTPS1 __attribute__((address(0x4062)));


extern volatile __bit WDTPS2 __attribute__((address(0x4063)));


extern volatile __bit WDTPS3 __attribute__((address(0x4064)));


extern volatile __bit WDTPS4 __attribute__((address(0x4065)));


extern volatile __bit WDTPSCNT0 __attribute__((address(0x4070)));


extern volatile __bit WDTPSCNT1 __attribute__((address(0x4071)));


extern volatile __bit WDTPSCNT10 __attribute__((address(0x407A)));


extern volatile __bit WDTPSCNT11 __attribute__((address(0x407B)));


extern volatile __bit WDTPSCNT12 __attribute__((address(0x407C)));


extern volatile __bit WDTPSCNT13 __attribute__((address(0x407D)));


extern volatile __bit WDTPSCNT14 __attribute__((address(0x407E)));


extern volatile __bit WDTPSCNT15 __attribute__((address(0x407F)));


extern volatile __bit WDTPSCNT16 __attribute__((address(0x4080)));


extern volatile __bit WDTPSCNT17 __attribute__((address(0x4081)));


extern volatile __bit WDTPSCNT2 __attribute__((address(0x4072)));


extern volatile __bit WDTPSCNT3 __attribute__((address(0x4073)));


extern volatile __bit WDTPSCNT4 __attribute__((address(0x4074)));


extern volatile __bit WDTPSCNT5 __attribute__((address(0x4075)));


extern volatile __bit WDTPSCNT6 __attribute__((address(0x4076)));


extern volatile __bit WDTPSCNT7 __attribute__((address(0x4077)));


extern volatile __bit WDTPSCNT8 __attribute__((address(0x4078)));


extern volatile __bit WDTPSCNT9 __attribute__((address(0x4079)));


extern volatile __bit WDTSEN __attribute__((address(0x4060)));


extern volatile __bit WDTSTATE __attribute__((address(0x4082)));


extern volatile __bit WDTTMR0 __attribute__((address(0x4083)));


extern volatile __bit WDTTMR1 __attribute__((address(0x4084)));


extern volatile __bit WDTTMR2 __attribute__((address(0x4085)));


extern volatile __bit WDTTMR3 __attribute__((address(0x4086)));


extern volatile __bit WDTWINDOW0 __attribute__((address(0x4068)));


extern volatile __bit WDTWINDOW1 __attribute__((address(0x4069)));


extern volatile __bit WDTWINDOW2 __attribute__((address(0x406A)));


extern volatile __bit WINDOW0 __attribute__((address(0x4068)));


extern volatile __bit WINDOW1 __attribute__((address(0x4069)));


extern volatile __bit WINDOW2 __attribute__((address(0x406A)));


extern volatile __bit WPUA0 __attribute__((address(0x79C8)));


extern volatile __bit WPUA1 __attribute__((address(0x79C9)));


extern volatile __bit WPUA2 __attribute__((address(0x79CA)));


extern volatile __bit WPUA3 __attribute__((address(0x79CB)));


extern volatile __bit WPUA4 __attribute__((address(0x79CC)));


extern volatile __bit WPUA5 __attribute__((address(0x79CD)));


extern volatile __bit WPUA6 __attribute__((address(0x79CE)));


extern volatile __bit WPUA7 __attribute__((address(0x79CF)));


extern volatile __bit WPUB0 __attribute__((address(0x7A20)));


extern volatile __bit WPUB1 __attribute__((address(0x7A21)));


extern volatile __bit WPUB2 __attribute__((address(0x7A22)));


extern volatile __bit WPUB3 __attribute__((address(0x7A23)));


extern volatile __bit WPUB4 __attribute__((address(0x7A24)));


extern volatile __bit WPUB5 __attribute__((address(0x7A25)));


extern volatile __bit WPUB6 __attribute__((address(0x7A26)));


extern volatile __bit WPUB7 __attribute__((address(0x7A27)));


extern volatile __bit WPUC0 __attribute__((address(0x7A78)));


extern volatile __bit WPUC1 __attribute__((address(0x7A79)));


extern volatile __bit WPUC2 __attribute__((address(0x7A7A)));


extern volatile __bit WPUC3 __attribute__((address(0x7A7B)));


extern volatile __bit WPUC4 __attribute__((address(0x7A7C)));


extern volatile __bit WPUC5 __attribute__((address(0x7A7D)));


extern volatile __bit WPUC6 __attribute__((address(0x7A7E)));


extern volatile __bit WPUC7 __attribute__((address(0x7A7F)));


extern volatile __bit WPUD0 __attribute__((address(0x7AD0)));


extern volatile __bit WPUD1 __attribute__((address(0x7AD1)));


extern volatile __bit WPUD2 __attribute__((address(0x7AD2)));


extern volatile __bit WPUD3 __attribute__((address(0x7AD3)));


extern volatile __bit WPUD4 __attribute__((address(0x7AD4)));


extern volatile __bit WPUD5 __attribute__((address(0x7AD5)));


extern volatile __bit WPUD6 __attribute__((address(0x7AD6)));


extern volatile __bit WPUD7 __attribute__((address(0x7AD7)));


extern volatile __bit WPUE0 __attribute__((address(0x7B28)));


extern volatile __bit WPUE1 __attribute__((address(0x7B29)));


extern volatile __bit WPUE2 __attribute__((address(0x7B2A)));


extern volatile __bit WPUE3 __attribute__((address(0x7B2B)));


extern volatile __bit WR __attribute__((address(0x40F1)));


extern volatile __bit WREN __attribute__((address(0x40F2)));


extern volatile __bit WRERR __attribute__((address(0x40F3)));


extern volatile __bit WUE __attribute__((address(0x8F9)));


extern volatile __bit X1 __attribute__((address(0x20E1)));


extern volatile __bit X10 __attribute__((address(0x20EA)));


extern volatile __bit X11 __attribute__((address(0x20EB)));


extern volatile __bit X12 __attribute__((address(0x20EC)));


extern volatile __bit X13 __attribute__((address(0x20ED)));


extern volatile __bit X14 __attribute__((address(0x20EE)));


extern volatile __bit X15 __attribute__((address(0x20EF)));


extern volatile __bit X2 __attribute__((address(0x20E2)));


extern volatile __bit X3 __attribute__((address(0x20E3)));


extern volatile __bit X4 __attribute__((address(0x20E4)));


extern volatile __bit X5 __attribute__((address(0x20E5)));


extern volatile __bit X6 __attribute__((address(0x20E6)));


extern volatile __bit X7 __attribute__((address(0x20E7)));


extern volatile __bit X8 __attribute__((address(0x20E8)));


extern volatile __bit X9 __attribute__((address(0x20E9)));


extern volatile __bit ZCD1EN __attribute__((address(0x48FF)));


extern volatile __bit ZCD1INTN __attribute__((address(0x48F8)));


extern volatile __bit ZCD1INTP __attribute__((address(0x48F9)));


extern volatile __bit ZCD1OUT __attribute__((address(0x48FD)));


extern volatile __bit ZCD1POL __attribute__((address(0x48FC)));


extern volatile __bit ZCDEN __attribute__((address(0x48FF)));


extern volatile __bit ZCDIE __attribute__((address(0x38C6)));


extern volatile __bit ZCDIF __attribute__((address(0x3876)));


extern volatile __bit ZCDINTN __attribute__((address(0x48F8)));


extern volatile __bit ZCDINTP __attribute__((address(0x48F9)));


extern volatile __bit ZCDMD __attribute__((address(0x3CC0)));


extern volatile __bit ZCDOUT __attribute__((address(0x48FD)));


extern volatile __bit ZCDPOL __attribute__((address(0x48FC)));


extern volatile __bit ZERO __attribute__((address(0x1A)));


extern volatile __bit Z_SHAD __attribute__((address(0x7F22)));


extern volatile __bit nADDRESS1 __attribute__((address(0xC7D)));


extern volatile __bit nADDRESS2 __attribute__((address(0xCCD)));


extern volatile __bit nBOR __attribute__((address(0x4098)));


extern volatile __bit nDONE __attribute__((address(0x498)));


extern volatile __bit nPD __attribute__((address(0x1B)));


extern volatile __bit nPOR __attribute__((address(0x4099)));


extern volatile __bit nRI __attribute__((address(0x409A)));


extern volatile __bit nRMCLR __attribute__((address(0x409B)));


extern volatile __bit nRWDT __attribute__((address(0x409C)));


extern volatile __bit nT1SYNC __attribute__((address(0x1072)));


extern volatile __bit nT3SYNC __attribute__((address(0x10A2)));


extern volatile __bit nT5SYNC __attribute__((address(0x10D2)));


extern volatile __bit nTO __attribute__((address(0x1C)));


extern volatile __bit nWDTWV __attribute__((address(0x409D)));


extern volatile __bit nWRITE1 __attribute__((address(0xC7A)));


extern volatile __bit nWRITE2 __attribute__((address(0xCCA)));
# 656 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include/pic_chip_select.h" 2 3
# 12 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include/pic.h" 2 3
# 60 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include/pic.h" 3
__attribute__((__unsupported__("The " "FLASH_READ" " macro function is no longer supported. Please use the MPLAB X MCC."))) unsigned char __flash_read(unsigned short addr);

__attribute__((__unsupported__("The " "FLASH_WRITE" " macro function is no longer supported. Please use the MPLAB X MCC."))) void __flash_write(unsigned short addr, unsigned short data);

__attribute__((__unsupported__("The " "FLASH_ERASE" " macro function is no longer supported. Please use the MPLAB X MCC."))) void __flash_erase(unsigned short addr);



# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/eeprom_routines.h" 1 3
# 114 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/eeprom_routines.h" 3
extern void eeprom_write(unsigned char addr, unsigned char value);
extern unsigned char eeprom_read(unsigned char addr);
# 69 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include/pic.h" 2 3
# 103 "C:/Users/pedro/.mchp_packs/Microchip/PIC16F1xxxx_DFP/1.32.471/xc8\\pic\\include/pic.h" 3
extern __bank0 unsigned char __resetbits;
extern __bank0 __bit __powerdown;
extern __bank0 __bit __timeout;
# 29 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/xc.h" 2 3
# 55 "./mcc_generated_files/pwm6.h" 2
# 102 "./mcc_generated_files/pwm6.h"
 void PWM6_Initialize(void);
# 129 "./mcc_generated_files/pwm6.h"
 void PWM6_LoadDutyValue(uint16_t dutyValue);
# 3 "alarm.c" 2

_Bool alarms_enabled = 0;
_Bool waiting_for_user = 0;
static _Bool alarm_active = 0;
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

    time_t alarm_target_time = 5;

    _Bool is_danger = (data.current_time == alarm_target_time) ||
                     (data.temperature > alat) ||
                     (data.luminosity < alal);

    if (is_danger && !alarm_active && !waiting_for_user) {
        PWM6_LoadDutyValue(500);
        alarm_active = 1;
        waiting_for_user = 1;
        alarm_start_time = data.current_time;

        if (data.current_time == alarm_target_time) { alarm_buffer[0] = 'C'; }
        if (data.temperature > alat) { alarm_buffer[1] = 'T'; }
        if (data.luminosity < alal) { alarm_buffer[2] = 'L'; }
    }

    if (alarm_active) {
        if ((data.current_time - alarm_start_time) >= 3) {
            PWM6_LoadDutyValue(0);
            alarm_active = 0;
        }
    }
}

void clean_alarm(char alarm_buffer[]) {
    alarm_buffer[0] = ' ';
    alarm_buffer[1] = ' ';
    alarm_buffer[2] = ' ';
    waiting_for_user = 0;
    alarm_active = 0;
    PWM6_LoadDutyValue(0);
}
