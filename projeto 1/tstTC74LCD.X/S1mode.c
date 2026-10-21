#include "S1mode.h"
#include "mcc_generated_files/pin_manager.h"
#include "LCD/lcd.h"
#include <xc.h>


void S1Mode_DesenharLimites(char temp_buffer[], char lim_buffer[]){
    /* Quando testar na placa física, descomente isto:
    LCDpos(1, 0); 
    LCDstr(temp_buffer [1]);

    LCDpos(1, 3); 
    LCDstr(lim_buffer [0]);
    
    */
}

void ConfigMode(){
    
    /*
    LCDpos(0, 15);
    LCDstr();
    */
    
}