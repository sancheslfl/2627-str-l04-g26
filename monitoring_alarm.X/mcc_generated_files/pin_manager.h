/**
  @Generated Pin Manager Header File

  @Company:
    Microchip Technology Inc.

  @File Name:
    pin_manager.h

  @Summary:
    This is the Pin Manager file generated using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  @Description
    This header file provides APIs for driver for .
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.81.6
        Device            :  PIC16F18875
        Driver Version    :  2.11
    The generated drivers are tested against the following:
        Compiler          :  XC8 2.30 and above
        MPLAB 	          :  MPLAB X 5.40	
*/

/*
    (c) 2018 Microchip Technology Inc. and its subsidiaries. 
    
    Subject to your compliance with these terms, you may use Microchip software and any 
    derivatives exclusively with Microchip products. It is your responsibility to comply with third party 
    license terms applicable to your use of third party software (including open source software) that 
    may accompany Microchip software.
    
    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER 
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY 
    IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS 
    FOR A PARTICULAR PURPOSE.
    
    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND 
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP 
    HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO 
    THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL 
    CLAIMS IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT 
    OF FEES, IF ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS 
    SOFTWARE.
*/

#ifndef PIN_MANAGER_H
#define PIN_MANAGER_H

/**
  Section: Included Files
*/

#include <xc.h>

#define INPUT   1
#define OUTPUT  0

#define HIGH    1
#define LOW     0

#define ANALOG      1
#define DIGITAL     0

#define PULL_UP_ENABLED      1
#define PULL_UP_DISABLED     0

// get/set channel_ANA0 aliases
#define channel_ANA0_TRIS                 TRISAbits.TRISA0
#define channel_ANA0_LAT                  LATAbits.LATA0
#define channel_ANA0_PORT                 PORTAbits.RA0
#define channel_ANA0_WPU                  WPUAbits.WPUA0
#define channel_ANA0_OD                   ODCONAbits.ODCA0
#define channel_ANA0_ANS                  ANSELAbits.ANSA0
#define channel_ANA0_SetHigh()            do { LATAbits.LATA0 = 1; } while(0)
#define channel_ANA0_SetLow()             do { LATAbits.LATA0 = 0; } while(0)
#define channel_ANA0_Toggle()             do { LATAbits.LATA0 = ~LATAbits.LATA0; } while(0)
#define channel_ANA0_GetValue()           PORTAbits.RA0
#define channel_ANA0_SetDigitalInput()    do { TRISAbits.TRISA0 = 1; } while(0)
#define channel_ANA0_SetDigitalOutput()   do { TRISAbits.TRISA0 = 0; } while(0)
#define channel_ANA0_SetPullup()          do { WPUAbits.WPUA0 = 1; } while(0)
#define channel_ANA0_ResetPullup()        do { WPUAbits.WPUA0 = 0; } while(0)
#define channel_ANA0_SetPushPull()        do { ODCONAbits.ODCA0 = 0; } while(0)
#define channel_ANA0_SetOpenDrain()       do { ODCONAbits.ODCA0 = 1; } while(0)
#define channel_ANA0_SetAnalogMode()      do { ANSELAbits.ANSA0 = 1; } while(0)
#define channel_ANA0_SetDigitalMode()     do { ANSELAbits.ANSA0 = 0; } while(0)

// get/set RA4 procedures
#define RA4_SetHigh()            do { LATAbits.LATA4 = 1; } while(0)
#define RA4_SetLow()             do { LATAbits.LATA4 = 0; } while(0)
#define RA4_Toggle()             do { LATAbits.LATA4 = ~LATAbits.LATA4; } while(0)
#define RA4_GetValue()              PORTAbits.RA4
#define RA4_SetDigitalInput()    do { TRISAbits.TRISA4 = 1; } while(0)
#define RA4_SetDigitalOutput()   do { TRISAbits.TRISA4 = 0; } while(0)
#define RA4_SetPullup()             do { WPUAbits.WPUA4 = 1; } while(0)
#define RA4_ResetPullup()           do { WPUAbits.WPUA4 = 0; } while(0)
#define RA4_SetAnalogMode()         do { ANSELAbits.ANSA4 = 1; } while(0)
#define RA4_SetDigitalMode()        do { ANSELAbits.ANSA4 = 0; } while(0)

// get/set LIGHT_LED aliases
#define LIGHT_LED_TRIS                 TRISAbits.TRISA5
#define LIGHT_LED_LAT                  LATAbits.LATA5
#define LIGHT_LED_PORT                 PORTAbits.RA5
#define LIGHT_LED_WPU                  WPUAbits.WPUA5
#define LIGHT_LED_OD                   ODCONAbits.ODCA5
#define LIGHT_LED_ANS                  ANSELAbits.ANSA5
#define LIGHT_LED_SetHigh()            do { LATAbits.LATA5 = 1; } while(0)
#define LIGHT_LED_SetLow()             do { LATAbits.LATA5 = 0; } while(0)
#define LIGHT_LED_Toggle()             do { LATAbits.LATA5 = ~LATAbits.LATA5; } while(0)
#define LIGHT_LED_GetValue()           PORTAbits.RA5
#define LIGHT_LED_SetDigitalInput()    do { TRISAbits.TRISA5 = 1; } while(0)
#define LIGHT_LED_SetDigitalOutput()   do { TRISAbits.TRISA5 = 0; } while(0)
#define LIGHT_LED_SetPullup()          do { WPUAbits.WPUA5 = 1; } while(0)
#define LIGHT_LED_ResetPullup()        do { WPUAbits.WPUA5 = 0; } while(0)
#define LIGHT_LED_SetPushPull()        do { ODCONAbits.ODCA5 = 0; } while(0)
#define LIGHT_LED_SetOpenDrain()       do { ODCONAbits.ODCA5 = 1; } while(0)
#define LIGHT_LED_SetAnalogMode()      do { ANSELAbits.ANSA5 = 1; } while(0)
#define LIGHT_LED_SetDigitalMode()     do { ANSELAbits.ANSA5 = 0; } while(0)

// get/set TEMP_LED aliases
#define TEMP_LED_TRIS                 TRISAbits.TRISA6
#define TEMP_LED_LAT                  LATAbits.LATA6
#define TEMP_LED_PORT                 PORTAbits.RA6
#define TEMP_LED_WPU                  WPUAbits.WPUA6
#define TEMP_LED_OD                   ODCONAbits.ODCA6
#define TEMP_LED_ANS                  ANSELAbits.ANSA6
#define TEMP_LED_SetHigh()            do { LATAbits.LATA6 = 1; } while(0)
#define TEMP_LED_SetLow()             do { LATAbits.LATA6 = 0; } while(0)
#define TEMP_LED_Toggle()             do { LATAbits.LATA6 = ~LATAbits.LATA6; } while(0)
#define TEMP_LED_GetValue()           PORTAbits.RA6
#define TEMP_LED_SetDigitalInput()    do { TRISAbits.TRISA6 = 1; } while(0)
#define TEMP_LED_SetDigitalOutput()   do { TRISAbits.TRISA6 = 0; } while(0)
#define TEMP_LED_SetPullup()          do { WPUAbits.WPUA6 = 1; } while(0)
#define TEMP_LED_ResetPullup()        do { WPUAbits.WPUA6 = 0; } while(0)
#define TEMP_LED_SetPushPull()        do { ODCONAbits.ODCA6 = 0; } while(0)
#define TEMP_LED_SetOpenDrain()       do { ODCONAbits.ODCA6 = 1; } while(0)
#define TEMP_LED_SetAnalogMode()      do { ANSELAbits.ANSA6 = 1; } while(0)
#define TEMP_LED_SetDigitalMode()     do { ANSELAbits.ANSA6 = 0; } while(0)

// get/set CLOCK_LED aliases
#define CLOCK_LED_TRIS                 TRISAbits.TRISA7
#define CLOCK_LED_LAT                  LATAbits.LATA7
#define CLOCK_LED_PORT                 PORTAbits.RA7
#define CLOCK_LED_WPU                  WPUAbits.WPUA7
#define CLOCK_LED_OD                   ODCONAbits.ODCA7
#define CLOCK_LED_ANS                  ANSELAbits.ANSA7
#define CLOCK_LED_SetHigh()            do { LATAbits.LATA7 = 1; } while(0)
#define CLOCK_LED_SetLow()             do { LATAbits.LATA7 = 0; } while(0)
#define CLOCK_LED_Toggle()             do { LATAbits.LATA7 = ~LATAbits.LATA7; } while(0)
#define CLOCK_LED_GetValue()           PORTAbits.RA7
#define CLOCK_LED_SetDigitalInput()    do { TRISAbits.TRISA7 = 1; } while(0)
#define CLOCK_LED_SetDigitalOutput()   do { TRISAbits.TRISA7 = 0; } while(0)
#define CLOCK_LED_SetPullup()          do { WPUAbits.WPUA7 = 1; } while(0)
#define CLOCK_LED_ResetPullup()        do { WPUAbits.WPUA7 = 0; } while(0)
#define CLOCK_LED_SetPushPull()        do { ODCONAbits.ODCA7 = 0; } while(0)
#define CLOCK_LED_SetOpenDrain()       do { ODCONAbits.ODCA7 = 1; } while(0)
#define CLOCK_LED_SetAnalogMode()      do { ANSELAbits.ANSA7 = 1; } while(0)
#define CLOCK_LED_SetDigitalMode()     do { ANSELAbits.ANSA7 = 0; } while(0)

// get/set S1_BUTTON aliases
#define S1_BUTTON_TRIS                 TRISBbits.TRISB4
#define S1_BUTTON_LAT                  LATBbits.LATB4
#define S1_BUTTON_PORT                 PORTBbits.RB4
#define S1_BUTTON_WPU                  WPUBbits.WPUB4
#define S1_BUTTON_OD                   ODCONBbits.ODCB4
#define S1_BUTTON_ANS                  ANSELBbits.ANSB4
#define S1_BUTTON_SetHigh()            do { LATBbits.LATB4 = 1; } while(0)
#define S1_BUTTON_SetLow()             do { LATBbits.LATB4 = 0; } while(0)
#define S1_BUTTON_Toggle()             do { LATBbits.LATB4 = ~LATBbits.LATB4; } while(0)
#define S1_BUTTON_GetValue()           PORTBbits.RB4
#define S1_BUTTON_SetDigitalInput()    do { TRISBbits.TRISB4 = 1; } while(0)
#define S1_BUTTON_SetDigitalOutput()   do { TRISBbits.TRISB4 = 0; } while(0)
#define S1_BUTTON_SetPullup()          do { WPUBbits.WPUB4 = 1; } while(0)
#define S1_BUTTON_ResetPullup()        do { WPUBbits.WPUB4 = 0; } while(0)
#define S1_BUTTON_SetPushPull()        do { ODCONBbits.ODCB4 = 0; } while(0)
#define S1_BUTTON_SetOpenDrain()       do { ODCONBbits.ODCB4 = 1; } while(0)
#define S1_BUTTON_SetAnalogMode()      do { ANSELBbits.ANSB4 = 1; } while(0)
#define S1_BUTTON_SetDigitalMode()     do { ANSELBbits.ANSB4 = 0; } while(0)

// get/set RC3 procedures
#define RC3_SetHigh()            do { LATCbits.LATC3 = 1; } while(0)
#define RC3_SetLow()             do { LATCbits.LATC3 = 0; } while(0)
#define RC3_Toggle()             do { LATCbits.LATC3 = ~LATCbits.LATC3; } while(0)
#define RC3_GetValue()              PORTCbits.RC3
#define RC3_SetDigitalInput()    do { TRISCbits.TRISC3 = 1; } while(0)
#define RC3_SetDigitalOutput()   do { TRISCbits.TRISC3 = 0; } while(0)
#define RC3_SetPullup()             do { WPUCbits.WPUC3 = 1; } while(0)
#define RC3_ResetPullup()           do { WPUCbits.WPUC3 = 0; } while(0)
#define RC3_SetAnalogMode()         do { ANSELCbits.ANSC3 = 1; } while(0)
#define RC3_SetDigitalMode()        do { ANSELCbits.ANSC3 = 0; } while(0)

// get/set RC4 procedures
#define RC4_SetHigh()            do { LATCbits.LATC4 = 1; } while(0)
#define RC4_SetLow()             do { LATCbits.LATC4 = 0; } while(0)
#define RC4_Toggle()             do { LATCbits.LATC4 = ~LATCbits.LATC4; } while(0)
#define RC4_GetValue()              PORTCbits.RC4
#define RC4_SetDigitalInput()    do { TRISCbits.TRISC4 = 1; } while(0)
#define RC4_SetDigitalOutput()   do { TRISCbits.TRISC4 = 0; } while(0)
#define RC4_SetPullup()             do { WPUCbits.WPUC4 = 1; } while(0)
#define RC4_ResetPullup()           do { WPUCbits.WPUC4 = 0; } while(0)
#define RC4_SetAnalogMode()         do { ANSELCbits.ANSC4 = 1; } while(0)
#define RC4_SetDigitalMode()        do { ANSELCbits.ANSC4 = 0; } while(0)

// get/set S2_BUTTON aliases
#define S2_BUTTON_TRIS                 TRISCbits.TRISC5
#define S2_BUTTON_LAT                  LATCbits.LATC5
#define S2_BUTTON_PORT                 PORTCbits.RC5
#define S2_BUTTON_WPU                  WPUCbits.WPUC5
#define S2_BUTTON_OD                   ODCONCbits.ODCC5
#define S2_BUTTON_ANS                  ANSELCbits.ANSC5
#define S2_BUTTON_SetHigh()            do { LATCbits.LATC5 = 1; } while(0)
#define S2_BUTTON_SetLow()             do { LATCbits.LATC5 = 0; } while(0)
#define S2_BUTTON_Toggle()             do { LATCbits.LATC5 = ~LATCbits.LATC5; } while(0)
#define S2_BUTTON_GetValue()           PORTCbits.RC5
#define S2_BUTTON_SetDigitalInput()    do { TRISCbits.TRISC5 = 1; } while(0)
#define S2_BUTTON_SetDigitalOutput()   do { TRISCbits.TRISC5 = 0; } while(0)
#define S2_BUTTON_SetPullup()          do { WPUCbits.WPUC5 = 1; } while(0)
#define S2_BUTTON_ResetPullup()        do { WPUCbits.WPUC5 = 0; } while(0)
#define S2_BUTTON_SetPushPull()        do { ODCONCbits.ODCC5 = 0; } while(0)
#define S2_BUTTON_SetOpenDrain()       do { ODCONCbits.ODCC5 = 1; } while(0)
#define S2_BUTTON_SetAnalogMode()      do { ANSELCbits.ANSC5 = 1; } while(0)
#define S2_BUTTON_SetDigitalMode()     do { ANSELCbits.ANSC5 = 0; } while(0)

/**
   @Param
    none
   @Returns
    none
   @Description
    GPIO and peripheral I/O initialization
   @Example
    PIN_MANAGER_Initialize();
 */
void PIN_MANAGER_Initialize (void);

/**
 * @Param
    none
 * @Returns
    none
 * @Description
    Interrupt on Change Handling routine
 * @Example
    PIN_MANAGER_IOC();
 */
void PIN_MANAGER_IOC(void);


/**
 * @Param
    none
 * @Returns
    none
 * @Description
    Interrupt on Change Handler for the IOCBF4 pin functionality
 * @Example
    IOCBF4_ISR();
 */
void IOCBF4_ISR(void);

/**
  @Summary
    Interrupt Handler Setter for IOCBF4 pin interrupt-on-change functionality

  @Description
    Allows selecting an interrupt handler for IOCBF4 at application runtime
    
  @Preconditions
    Pin Manager intializer called

  @Returns
    None.

  @Param
    InterruptHandler function pointer.

  @Example
    PIN_MANAGER_Initialize();
    IOCBF4_SetInterruptHandler(MyInterruptHandler);

*/
void IOCBF4_SetInterruptHandler(void (* InterruptHandler)(void));

/**
  @Summary
    Dynamic Interrupt Handler for IOCBF4 pin

  @Description
    This is a dynamic interrupt handler to be used together with the IOCBF4_SetInterruptHandler() method.
    This handler is called every time the IOCBF4 ISR is executed and allows any function to be registered at runtime.
    
  @Preconditions
    Pin Manager intializer called

  @Returns
    None.

  @Param
    None.

  @Example
    PIN_MANAGER_Initialize();
    IOCBF4_SetInterruptHandler(IOCBF4_InterruptHandler);

*/
extern void (*IOCBF4_InterruptHandler)(void);

/**
  @Summary
    Default Interrupt Handler for IOCBF4 pin

  @Description
    This is a predefined interrupt handler to be used together with the IOCBF4_SetInterruptHandler() method.
    This handler is called every time the IOCBF4 ISR is executed. 
    
  @Preconditions
    Pin Manager intializer called

  @Returns
    None.

  @Param
    None.

  @Example
    PIN_MANAGER_Initialize();
    IOCBF4_SetInterruptHandler(IOCBF4_DefaultInterruptHandler);

*/
void IOCBF4_DefaultInterruptHandler(void);


/**
 * @Param
    none
 * @Returns
    none
 * @Description
    Interrupt on Change Handler for the IOCCF5 pin functionality
 * @Example
    IOCCF5_ISR();
 */
void IOCCF5_ISR(void);

/**
  @Summary
    Interrupt Handler Setter for IOCCF5 pin interrupt-on-change functionality

  @Description
    Allows selecting an interrupt handler for IOCCF5 at application runtime
    
  @Preconditions
    Pin Manager intializer called

  @Returns
    None.

  @Param
    InterruptHandler function pointer.

  @Example
    PIN_MANAGER_Initialize();
    IOCCF5_SetInterruptHandler(MyInterruptHandler);

*/
void IOCCF5_SetInterruptHandler(void (* InterruptHandler)(void));

/**
  @Summary
    Dynamic Interrupt Handler for IOCCF5 pin

  @Description
    This is a dynamic interrupt handler to be used together with the IOCCF5_SetInterruptHandler() method.
    This handler is called every time the IOCCF5 ISR is executed and allows any function to be registered at runtime.
    
  @Preconditions
    Pin Manager intializer called

  @Returns
    None.

  @Param
    None.

  @Example
    PIN_MANAGER_Initialize();
    IOCCF5_SetInterruptHandler(IOCCF5_InterruptHandler);

*/
extern void (*IOCCF5_InterruptHandler)(void);

/**
  @Summary
    Default Interrupt Handler for IOCCF5 pin

  @Description
    This is a predefined interrupt handler to be used together with the IOCCF5_SetInterruptHandler() method.
    This handler is called every time the IOCCF5 ISR is executed. 
    
  @Preconditions
    Pin Manager intializer called

  @Returns
    None.

  @Param
    None.

  @Example
    PIN_MANAGER_Initialize();
    IOCCF5_SetInterruptHandler(IOCCF5_DefaultInterruptHandler);

*/
void IOCCF5_DefaultInterruptHandler(void);



#endif // PIN_MANAGER_H
/**
 End of File
*/