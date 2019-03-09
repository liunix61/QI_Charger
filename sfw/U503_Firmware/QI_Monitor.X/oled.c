
#include <string.h>
#include <stdio.h>


#include "oled.h"

#include "cause_of_reset.h"
#include "device_IDs.h"
#include "error_handling.h"
#include "NXQ_charge_state.h"
#include "adc_postprocessing.h"
#include "LM73_I2C.h"
#include "freq_meas.h"
#include "heartbeat_timer.h"

const uint8_t OledFont[][8] = 
{
    {0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00},
    {0x00,0x00,0x5F,0x00,0x00,0x00,0x00,0x00},
    {0x00,0x00,0x07,0x00,0x07,0x00,0x00,0x00},
    {0x00,0x14,0x7F,0x14,0x7F,0x14,0x00,0x00},
    {0x00,0x24,0x2A,0x7F,0x2A,0x12,0x00,0x00},
    {0x00,0x23,0x13,0x08,0x64,0x62,0x00,0x00},
    {0x00,0x36,0x49,0x55,0x22,0x50,0x00,0x00},
    {0x00,0x00,0x05,0x03,0x00,0x00,0x00,0x00},
    {0x00,0x1C,0x22,0x41,0x00,0x00,0x00,0x00},
    {0x00,0x41,0x22,0x1C,0x00,0x00,0x00,0x00},
    {0x00,0x08,0x2A,0x1C,0x2A,0x08,0x00,0x00},
    {0x00,0x08,0x08,0x3E,0x08,0x08,0x00,0x00},
    {0x00,0xA0,0x60,0x00,0x00,0x00,0x00,0x00},
    {0x00,0x08,0x08,0x08,0x08,0x08,0x00,0x00},
    {0x00,0x60,0x60,0x00,0x00,0x00,0x00,0x00},
    {0x00,0x20,0x10,0x08,0x04,0x02,0x00,0x00},
    {0x00,0x3E,0x51,0x49,0x45,0x3E,0x00,0x00},
    {0x00,0x00,0x42,0x7F,0x40,0x00,0x00,0x00},
    {0x00,0x62,0x51,0x49,0x49,0x46,0x00,0x00},
    {0x00,0x22,0x41,0x49,0x49,0x36,0x00,0x00},
    {0x00,0x18,0x14,0x12,0x7F,0x10,0x00,0x00},
    {0x00,0x27,0x45,0x45,0x45,0x39,0x00,0x00},
    {0x00,0x3C,0x4A,0x49,0x49,0x30,0x00,0x00},
    {0x00,0x01,0x71,0x09,0x05,0x03,0x00,0x00},
    {0x00,0x36,0x49,0x49,0x49,0x36,0x00,0x00},
    {0x00,0x06,0x49,0x49,0x29,0x1E,0x00,0x00},
    {0x00,0x00,0x36,0x36,0x00,0x00,0x00,0x00},
    {0x00,0x00,0xAC,0x6C,0x00,0x00,0x00,0x00},
    {0x00,0x08,0x14,0x22,0x41,0x00,0x00,0x00},
    {0x00,0x14,0x14,0x14,0x14,0x14,0x00,0x00},
    {0x00,0x41,0x22,0x14,0x08,0x00,0x00,0x00},
    {0x00,0x02,0x01,0x51,0x09,0x06,0x00,0x00},
    {0x00,0x32,0x49,0x79,0x41,0x3E,0x00,0x00},
    {0x00,0x7E,0x09,0x09,0x09,0x7E,0x00,0x00},
    {0x00,0x7F,0x49,0x49,0x49,0x36,0x00,0x00},
    {0x00,0x3E,0x41,0x41,0x41,0x22,0x00,0x00},
    {0x00,0x7F,0x41,0x41,0x22,0x1C,0x00,0x00},
    {0x00,0x7F,0x49,0x49,0x49,0x41,0x00,0x00},
    {0x00,0x7F,0x09,0x09,0x09,0x01,0x00,0x00},
    {0x00,0x3E,0x41,0x41,0x51,0x72,0x00,0x00},
    {0x00,0x7F,0x08,0x08,0x08,0x7F,0x00,0x00},
    {0x00,0x41,0x7F,0x41,0x00,0x00,0x00,0x00},
    {0x00,0x20,0x40,0x41,0x3F,0x01,0x00,0x00},
    {0x00,0x7F,0x08,0x14,0x22,0x41,0x00,0x00},
    {0x00,0x7F,0x40,0x40,0x40,0x40,0x00,0x00},
    {0x00,0x7F,0x02,0x0C,0x02,0x7F,0x00,0x00},
    {0x00,0x7F,0x04,0x08,0x10,0x7F,0x00,0x00},
    {0x00,0x3E,0x41,0x41,0x41,0x3E,0x00,0x00},
    {0x00,0x7F,0x09,0x09,0x09,0x06,0x00,0x00},
    {0x00,0x3E,0x41,0x51,0x21,0x5E,0x00,0x00},
    {0x00,0x7F,0x09,0x19,0x29,0x46,0x00,0x00},
    {0x00,0x26,0x49,0x49,0x49,0x32,0x00,0x00},
    {0x00,0x01,0x01,0x7F,0x01,0x01,0x00,0x00},
    {0x00,0x3F,0x40,0x40,0x40,0x3F,0x00,0x00},
    {0x00,0x1F,0x20,0x40,0x20,0x1F,0x00,0x00},
    {0x00,0x3F,0x40,0x38,0x40,0x3F,0x00,0x00},
    {0x00,0x63,0x14,0x08,0x14,0x63,0x00,0x00},
    {0x00,0x03,0x04,0x78,0x04,0x03,0x00,0x00},
    {0x00,0x61,0x51,0x49,0x45,0x43,0x00,0x00},
    {0x00,0x7F,0x41,0x41,0x00,0x00,0x00,0x00},
    {0x00,0x02,0x04,0x08,0x10,0x20,0x00,0x00},
    {0x00,0x41,0x41,0x7F,0x00,0x00,0x00,0x00},
    {0x00,0x04,0x02,0x01,0x02,0x04,0x00,0x00},
    {0x00,0x80,0x80,0x80,0x80,0x80,0x00,0x00},
    {0x00,0x01,0x02,0x04,0x00,0x00,0x00,0x00},
    {0x00,0x20,0x54,0x54,0x54,0x78,0x00,0x00},
    {0x00,0x7F,0x48,0x44,0x44,0x38,0x00,0x00},
    {0x00,0x38,0x44,0x44,0x28,0x00,0x00,0x00},
    {0x00,0x38,0x44,0x44,0x48,0x7F,0x00,0x00},
    {0x00,0x38,0x54,0x54,0x54,0x18,0x00,0x00},
    {0x00,0x08,0x7E,0x09,0x02,0x00,0x00,0x00},
    {0x00,0x18,0xA4,0xA4,0xA4,0x7C,0x00,0x00},
    {0x00,0x7F,0x08,0x04,0x04,0x78,0x00,0x00},
    {0x00,0x00,0x7D,0x00,0x00,0x00,0x00,0x00},
    {0x00,0x80,0x84,0x7D,0x00,0x00,0x00,0x00},
    {0x00,0x7F,0x10,0x28,0x44,0x00,0x00,0x00},
    {0x00,0x41,0x7F,0x40,0x00,0x00,0x00,0x00},
    {0x00,0x7C,0x04,0x18,0x04,0x78,0x00,0x00},
    {0x00,0x7C,0x08,0x04,0x7C,0x00,0x00,0x00},
    {0x00,0x38,0x44,0x44,0x38,0x00,0x00,0x00},
    {0x00,0xFC,0x24,0x24,0x18,0x00,0x00,0x00},
    {0x00,0x18,0x24,0x24,0xFC,0x00,0x00,0x00},
    {0x00,0x00,0x7C,0x08,0x04,0x00,0x00,0x00},
    {0x00,0x48,0x54,0x54,0x24,0x00,0x00,0x00},
    {0x00,0x04,0x7F,0x44,0x00,0x00,0x00,0x00},
    {0x00,0x3C,0x40,0x40,0x7C,0x00,0x00,0x00},
    {0x00,0x1C,0x20,0x40,0x20,0x1C,0x00,0x00},
    {0x00,0x3C,0x40,0x30,0x40,0x3C,0x00,0x00},
    {0x00,0x44,0x28,0x10,0x28,0x44,0x00,0x00},
    {0x00,0x1C,0xA0,0xA0,0x7C,0x00,0x00,0x00},
    {0x00,0x44,0x64,0x54,0x4C,0x44,0x00,0x00},
    {0x00,0x08,0x36,0x41,0x00,0x00,0x00,0x00},
    {0x00,0x00,0x7F,0x00,0x00,0x00,0x00,0x00},
    {0x00,0x41,0x36,0x08,0x00,0x00,0x00,0x00},
    {0x00,0x02,0x01,0x01,0x02,0x01,0x00,0x00},
    {0x00,0x02,0x05,0x05,0x02,0x00,0x00,0x00},
};




// Send OLED Command Function
void OLED_Command(uint8_t temp) {

    uint8_t length;
    
    uint8_t data_array[2];
    data_array[0] = 0x00;
    data_array[1] = temp;
    
    // length = sizeof(data_array);
    length = 2;

    I2C2_MasterWrite(data_array, length, OLED_ADDR, &I2C_STATUS);

    while(I2C_STATUS == I2C2_MESSAGE_PENDING);

    if (    I2C_STATUS == I2C2_MESSAGE_FAIL ||
            I2C_STATUS == I2C2_STUCK_START ||
            I2C_STATUS == I2C2_MESSAGE_ADDRESS_NO_ACK ||
            I2C_STATUS == I2C2_DATA_NO_ACK ||
            I2C_STATUS == I2C2_LOST_STATE      ) {
        error_handler.I2C_OLED_error_flag = true;
    }

    
}

// Send OLED Data function
void OLED_Data(uint8_t temp) {
    
    uint8_t length;
    
    uint8_t data_array[2];
    data_array[0] = 0x40;
    data_array[1] = temp;
    
    // length = sizeof(data_array);
    length = 2;
    
    I2C2_MasterWrite(data_array, length, OLED_ADDR, &I2C_STATUS);

    while(I2C_STATUS == I2C2_MESSAGE_PENDING);

    if (    I2C_STATUS == I2C2_MESSAGE_FAIL ||
            I2C_STATUS == I2C2_STUCK_START ||
            I2C_STATUS == I2C2_MESSAGE_ADDRESS_NO_ACK ||
            I2C_STATUS == I2C2_DATA_NO_ACK ||
            I2C_STATUS == I2C2_LOST_STATE      ) {
        error_handler.I2C_OLED_error_flag = true;
    }
   
}

void OLED_Init(void) {
 
    OLED_Command(OLED_DISPLAYOFF);
    OLED_Command(OLED_SETDISPLAYCLOCKDIV);
    OLED_Command(0x80);
    OLED_Command(OLED_SETMULTIPLEX);
    OLED_Command(0x1F);
    OLED_Command(OLED_SETDISPLAYOFFSET);
    OLED_Command(0x0);
    OLED_Command(OLED_SETSTARTLINE | 0x0);
    OLED_Command(OLED_CHARGEPUMP);
    OLED_Command(0xAF);
    OLED_Command(OLED_MEMORYMODE);
    OLED_Command(0x00);
    OLED_Command(OLED_SEGREMAP | 0x1);
    OLED_Command(OLED_COMSCANDEC);
    OLED_Command(OLED_SETCOMPINS);
    OLED_Command(0x02);
    OLED_Command(OLED_SETCONTRAST);
    OLED_Command(0x8F);
    OLED_Command(OLED_SETPRECHARGE);
    OLED_Command(0xF1);
    OLED_Command(OLED_SETVCOMDETECT);
    OLED_Command(0x40);
    OLED_Command(OLED_DISPLAYALLON_RESUME);
    OLED_Command(OLED_NORMALDISPLAY);
    OLED_Command(OLED_DISPLAYON);
        
}

void OLED_YX(unsigned char Row, unsigned char Column) {
    
    OLED_Command(0xB0 + Row);
    OLED_Command(0x00 + (8 * Column & 0x0F));
    OLED_Command(0x10 + ((8* Column >> 4) & 0x0F));
    
}

void OLED_PutChar(char ch) {
    
    if((ch < 32) || (ch > 127)) {
     
        ch = ' ';
        
    }

    uint8_t length;
    
    uint8_t data_array[9];
    
    data_array[0] = 0x40;
    
    const uint8_t *input_base = &OledFont[ch - 32][0];
    
    memmove(data_array + 1, input_base, 8);
    
    // length = sizeof(data_array);
    length = 9;
        
    I2C2_MasterWrite(data_array, length, OLED_ADDR, &I2C_STATUS);

    while(I2C_STATUS == I2C2_MESSAGE_PENDING);

    if (    I2C_STATUS == I2C2_MESSAGE_FAIL ||
            I2C_STATUS == I2C2_STUCK_START ||
            I2C_STATUS == I2C2_MESSAGE_ADDRESS_NO_ACK ||
            I2C_STATUS == I2C2_DATA_NO_ACK ||
            I2C_STATUS == I2C2_LOST_STATE      ) {
        error_handler.I2C_OLED_error_flag = true;
    }

}
    
void OLED_Clear(void) {
 
    for(uint16_t row = 0; row < 8; row++) {
     
        for(uint16_t col = 0; col < 16; col++) {
         
            OLED_PutChar('\0');
            
        }
        
    }
    
    
}

void OLED_WriteString(char* s) {
 
    while(*s) {
     
        OLED_PutChar(*s++);
        
    }
    
    
}

void OLED_WriteInteger(uint16_t i) {
 
    char s[20];
    itoa(s,i,10);
    OLED_WriteString(s);
    OLED_WriteString("");
    
}

void OLED_WriteFloat(float f) {
 
    char* buf11;
    int status11;
    
    buf11 = ftoa(f, &status11);
    
    OLED_WriteString(buf11);
    OLED_WriteString("");
    
}

void OLED_UpdateFromRAMBuffer(void) {

    // Tack on trailing spaces to rest of lines in OLED RAM buffer
    for (uint8_t char_index = strlen(OLED_RAM_Buffer.line0); char_index < sizeof(OLED_RAM_Buffer.line0) - 1; char_index++) {
        OLED_RAM_Buffer.line0[char_index] = ' ';    
    }
    for (uint8_t char_index = strlen(OLED_RAM_Buffer.line1); char_index < sizeof(OLED_RAM_Buffer.line1) - 1; char_index++) {
        OLED_RAM_Buffer.line1[char_index] = ' ';    
    }
    for (uint8_t char_index = strlen(OLED_RAM_Buffer.line2); char_index < sizeof(OLED_RAM_Buffer.line2) - 1; char_index++) {
        OLED_RAM_Buffer.line2[char_index] = ' ';    
    }
    for (uint8_t char_index = strlen(OLED_RAM_Buffer.line3); char_index < sizeof(OLED_RAM_Buffer.line3) - 1; char_index++) {
        OLED_RAM_Buffer.line3[char_index] = ' ';    
    }

    OLED_YX(0,0);
    OLED_WriteString(OLED_RAM_Buffer.line0);
    OLED_YX(1,0);
    OLED_WriteString(OLED_RAM_Buffer.line1);
    OLED_YX(2,0);
    OLED_WriteString(OLED_RAM_Buffer.line2);
    OLED_YX(3,0);
    OLED_WriteString(OLED_RAM_Buffer.line3);
    
}

// This function is called by a timer ISR and updates the OLED display 
// based on the OLED_Frame enumeration
void OLED_updateHandler(void) {
 
    switch (OLED_Frame) {
     
        case OLED_Boot_Frame_1:
            
            OLED_update_flag = false;
            
            // Print boot message 1
            strcpy(OLED_RAM_Buffer.line0, "QI Charger w/");
            strcpy(OLED_RAM_Buffer.line1, "Digital Monitor");
            strcpy(OLED_RAM_Buffer.line2, "Cause of Reset:");
            strcpy(OLED_RAM_Buffer.line3, getCauseOfResetStringSmall(reset_cause));
            OLED_UpdateFromRAMBuffer();
            OLED_Frame = OLED_Boot_Frame_2;
            OLED_update_time = 3;
            
            break;
            
        case OLED_Boot_Frame_2:
            
            OLED_update_flag = false;
            
            // Print boot message 2
            // Device ID
            strcpy(OLED_RAM_Buffer.line0, "Device ID:");
            char dev_id_str[17];
            sprintf(dev_id_str,"0x%X",getDeviceID());
            strcpy(OLED_RAM_Buffer.line1, dev_id_str);
            
            // Rev ID
            strcpy(OLED_RAM_Buffer.line2, "Revision ID:");
            char rev_id_str[17];
            sprintf(rev_id_str, "%c%03d", (char) getMajorRevisionID() + 65, getMinorRevisionID());
            strcpy(OLED_RAM_Buffer.line3, rev_id_str);
            
            OLED_UpdateFromRAMBuffer();
            OLED_Frame = OLED_Boot_Frame_3;
            OLED_update_time = 3;
            
            break;
            
        case OLED_Boot_Frame_3:
            
            OLED_update_flag = false;
            
            strcpy(OLED_RAM_Buffer.line0, "COM Port Setup:");
            strcpy(OLED_RAM_Buffer.line1, "115.2 kbs");
            strcpy(OLED_RAM_Buffer.line2, "8bit, no parity");
            strcpy(OLED_RAM_Buffer.line3, "1 stp, no flow");
            
            OLED_UpdateFromRAMBuffer();
            OLED_Frame = OLED_Boot_Frame_4;
            OLED_update_time = 3;
            
            break;
            
        case OLED_Boot_Frame_4:
            
            OLED_update_flag = false;
            
            strcpy(OLED_RAM_Buffer.line0, "Boot Complete");
            strcpy(OLED_RAM_Buffer.line1, "QI Enabled");
            strcpy(OLED_RAM_Buffer.line2, "More Settings");
            strcpy(OLED_RAM_Buffer.line3, "via USB, 'Help'");
            
            OLED_UpdateFromRAMBuffer();
            OLED_Frame = OLED_Charge_Status;
            OLED_update_time = 3;
            
            break;
            
        case OLED_Charge_Status:
            
            OLED_update_flag = false;
            
            strcpy(OLED_RAM_Buffer.line0, "Charge Status:");
            strcpy(OLED_RAM_Buffer.line1, " ");
            strcpy(OLED_RAM_Buffer.line2, getNXQChargeStateStringCaps());
            strcpy(OLED_RAM_Buffer.line3, " ");
            
            OLED_UpdateFromRAMBuffer();
            OLED_Frame = OLED_Charge_Status;
            OLED_update_time = 1;
            
            break;
            
        case OLED_POS12_Voltage:
            
            OLED_update_flag = false;
            
            strcpy(OLED_RAM_Buffer.line0, "+12V Voltage:");
            sprintf(OLED_RAM_Buffer.line1, "%+.3fV", adc_results.pos12_adc_result);
            strcpy(OLED_RAM_Buffer.line2, " ");
            strcpy(OLED_RAM_Buffer.line3, " ");
            
            OLED_UpdateFromRAMBuffer();
            OLED_Frame = OLED_POS12_Voltage;
            OLED_update_time = 1;
            
            break;
            
        case OLED_POS5_Voltage:
            
            OLED_update_flag = false;
            
            strcpy(OLED_RAM_Buffer.line0, "+5V Voltage:");
            sprintf(OLED_RAM_Buffer.line1, "%+.3fV", adc_results.pos5_adc_result);
            strcpy(OLED_RAM_Buffer.line2, " ");
            strcpy(OLED_RAM_Buffer.line3, " ");
            
            OLED_UpdateFromRAMBuffer();
            OLED_Frame = OLED_POS5_Voltage;
            OLED_update_time = 1;
            
            break;
            
        case OLED_POS12_Current:
            
            OLED_update_flag = false;
            
            strcpy(OLED_RAM_Buffer.line0, "+12V Current:");
            sprintf(OLED_RAM_Buffer.line1, "%+.3fA", adc_results.pos12_isns_adc_result);
            strcpy(OLED_RAM_Buffer.line2, " ");
            strcpy(OLED_RAM_Buffer.line3, " ");
            
            OLED_UpdateFromRAMBuffer();
            OLED_Frame = OLED_POS12_Current;
            OLED_update_time = 1;
            
            break;
            
        case OLED_QI_Current:
            
            OLED_update_flag = false;
            
            strcpy(OLED_RAM_Buffer.line0, "QI Current:");
            sprintf(OLED_RAM_Buffer.line1, "%+.3fA", adc_results.qi_isns_adc_result);
            strcpy(OLED_RAM_Buffer.line2, " ");
            strcpy(OLED_RAM_Buffer.line3, " ");
            
            OLED_UpdateFromRAMBuffer();
            OLED_Frame = OLED_QI_Current;
            OLED_update_time = 1;
            
            break;
            
        case OLED_Input_Power:
            
            OLED_update_flag = false;
            
            strcpy(OLED_RAM_Buffer.line0, "Input Power:");
            sprintf(OLED_RAM_Buffer.line1, "%+.3fW", adc_calculations.input_power);
            strcpy(OLED_RAM_Buffer.line2, " ");
            strcpy(OLED_RAM_Buffer.line3, " ");
            
            OLED_UpdateFromRAMBuffer();
            OLED_Frame = OLED_Input_Power;
            OLED_update_time = 1;
            
            break;
            
        case OLED_Output_Power:
            
            OLED_update_flag = false;
            
            strcpy(OLED_RAM_Buffer.line0, "Output Power:");
            sprintf(OLED_RAM_Buffer.line1, "%+.3fW", adc_calculations.output_power);
            strcpy(OLED_RAM_Buffer.line2, " ");
            strcpy(OLED_RAM_Buffer.line3, " ");
            
            OLED_UpdateFromRAMBuffer();
            OLED_Frame = OLED_Output_Power;
            OLED_update_time = 1;
            
            break;
            
        case OLED_Efficiency:
            
            OLED_update_flag = false;
            
            strcpy(OLED_RAM_Buffer.line0, "Efficiency:");
            sprintf(OLED_RAM_Buffer.line1, "%+.3f%%", adc_calculations.efficiency);
            strcpy(OLED_RAM_Buffer.line2, " ");
            strcpy(OLED_RAM_Buffer.line3, " ");
            
            OLED_UpdateFromRAMBuffer();
            OLED_Frame = OLED_Efficiency;
            OLED_update_time = 1;
            
            break;
            
        case OLED_QI_Temp:
            
            OLED_update_flag = false;
            
            strcpy(OLED_RAM_Buffer.line0, "QI Temp:");
            sprintf(OLED_RAM_Buffer.line1, "%+.3fC", LM73_temp_results.QI_temp_result);
            strcpy(OLED_RAM_Buffer.line2, " ");
            strcpy(OLED_RAM_Buffer.line3, " ");
            
            OLED_UpdateFromRAMBuffer();
            OLED_Frame = OLED_QI_Temp;
            OLED_update_time = 1;
            
            break;
            
        case OLED_POS5_Temp:
            
            OLED_update_flag = false;
            
            strcpy(OLED_RAM_Buffer.line0, "+5V Temp:");
            sprintf(OLED_RAM_Buffer.line1, "%+.3fC", LM73_temp_results.POS5_temp_result);
            strcpy(OLED_RAM_Buffer.line2, " ");
            strcpy(OLED_RAM_Buffer.line3, " ");
            
            OLED_UpdateFromRAMBuffer();
            OLED_Frame = OLED_POS5_Temp;
            OLED_update_time = 1;
            
            break;
            
        case OLED_Ambient_Temp:
            
            OLED_update_flag = false;
            
            strcpy(OLED_RAM_Buffer.line0, "Ambient Temp:");
            sprintf(OLED_RAM_Buffer.line1, "%+.3fC", LM73_temp_results.Ambient_temp_result);
            strcpy(OLED_RAM_Buffer.line2, " ");
            strcpy(OLED_RAM_Buffer.line3, " ");
            
            OLED_UpdateFromRAMBuffer();
            OLED_Frame = OLED_Ambient_Temp;
            OLED_update_time = 1;
            
            break;
            
        case OLED_Micro_Temp:
            
            OLED_update_flag = false;
            
            strcpy(OLED_RAM_Buffer.line0, "Micro Temp:");
            sprintf(OLED_RAM_Buffer.line1, "%+.3fC", adc_results.die_temp_adc_result);
            strcpy(OLED_RAM_Buffer.line2, " ");
            strcpy(OLED_RAM_Buffer.line3, " ");
            
            OLED_UpdateFromRAMBuffer();
            OLED_Frame = OLED_Micro_Temp;
            OLED_update_time = 1;
            
            break;
            
        case OLED_POS5_FSW:
            
            OLED_update_flag = false;
            
            strcpy(OLED_RAM_Buffer.line0, "+5V Sw. Freq:");
            if (nxq_charge_state == QI_Idle || nxq_charge_state == QI_Error) strcpy(OLED_RAM_Buffer.line1, "Burst Mode");
            else strcpy(OLED_RAM_Buffer.line1, "2.5MHz");
            strcpy(OLED_RAM_Buffer.line2, " ");
            strcpy(OLED_RAM_Buffer.line3, " ");
            
            OLED_UpdateFromRAMBuffer();
            OLED_Frame = OLED_POS5_FSW;
            OLED_update_time = 1;
            
            break;
            
        case OLED_QI_FSW:
            
            OLED_update_flag = false;
            
            strcpy(OLED_RAM_Buffer.line0, "QI Sw. Freq:");
            if (nxq_charge_state == QI_Idle || nxq_charge_state == QI_Error) strcpy(OLED_RAM_Buffer.line1, "Burst Mode");
            else sprintf(OLED_RAM_Buffer.line1, "%+.3fkHz", freq_meas_results.QI_Freq_Meas / 1000.0);
            strcpy(OLED_RAM_Buffer.line2, " ");
            strcpy(OLED_RAM_Buffer.line3, " ");
            
            OLED_UpdateFromRAMBuffer();
            OLED_Frame = OLED_QI_FSW;
            OLED_update_time = 1;
            
            break;
            
            
        case OLED_Dev_On_Time:
            
            OLED_update_flag = false;
            
            strcpy(OLED_RAM_Buffer.line0, "Dev. On Time:");
            
            // If we've been on longer than a year
            if (device_on_time >= 31536000) {
             
                sprintf(OLED_RAM_Buffer.line1, "%u years", getYearsFromOnTime(device_on_time));
                sprintf(OLED_RAM_Buffer.line2, "%u days", getDaysFromOnTime(device_on_time));
                sprintf(OLED_RAM_Buffer.line3, "%u hours", getHoursFromOnTime(device_on_time));
                
                
            }
            
            // Else if we've been on for longer than a day, don't show seconds
            else if (device_on_time >= 86400) {
                
                sprintf(OLED_RAM_Buffer.line1, "%u days", getDaysFromOnTime(device_on_time));
                sprintf(OLED_RAM_Buffer.line2, "%u hours", getHoursFromOnTime(device_on_time));
                sprintf(OLED_RAM_Buffer.line3, "%u minutes", getMinutesFromOnTime(device_on_time));
                
            }
            
            // Else if we've been on longer than an hour
            else if (device_on_time >= 3600) {
                
                sprintf(OLED_RAM_Buffer.line1, "%u hours", getHoursFromOnTime(device_on_time));
                sprintf(OLED_RAM_Buffer.line2, "%u minutes", getMinutesFromOnTime(device_on_time));
                sprintf(OLED_RAM_Buffer.line3, "%u seconds", getSecondsFromOnTime(device_on_time));
                
            }
            
            // Else if we've been on longer than a minute
            else if (device_on_time >= 60) {
             
                sprintf(OLED_RAM_Buffer.line1, "%u minutes", getMinutesFromOnTime(device_on_time));
                sprintf(OLED_RAM_Buffer.line2, "%u seconds", getSecondsFromOnTime(device_on_time));
                strcpy(OLED_RAM_Buffer.line3, " ");
                
            }
            
            // Else we've been on less than a minute
            else {
               
                sprintf(OLED_RAM_Buffer.line1, "%u seconds", getSecondsFromOnTime(device_on_time));
                strcpy(OLED_RAM_Buffer.line2, " ");
                strcpy(OLED_RAM_Buffer.line3, " ");
                
            }
            
            
            OLED_UpdateFromRAMBuffer();
            OLED_Frame = OLED_Dev_On_Time;
            OLED_update_time = 1;
            
            break;
            
        case OLED_Cause_Of_Reset:
            
            OLED_update_flag = false;
            
            strcpy(OLED_RAM_Buffer.line0, "Cause of Reset:");
            strcpy(OLED_RAM_Buffer.line1, " ");
            strcpy(OLED_RAM_Buffer.line2, getCauseOfResetStringSmall(reset_cause));
            strcpy(OLED_RAM_Buffer.line3, " ");
            
            OLED_UpdateFromRAMBuffer();
            OLED_Frame = OLED_Cause_Of_Reset;
            OLED_update_time = 255;
            
            break;
            
        case OLED_Dev_Rev_ID:
            
            OLED_update_flag = false;
            
            // Print boot message 2
            // Device ID
            strcpy(OLED_RAM_Buffer.line0, "Device ID:");
            char dev_id_str[17];
            sprintf(dev_id_str,"0x%X",getDeviceID());
            strcpy(OLED_RAM_Buffer.line1, dev_id_str);
            
            // Rev ID
            strcpy(OLED_RAM_Buffer.line2, "Revision ID:");
            char rev_id_str[17];
            sprintf(rev_id_str, "%c%03d", (char) getMajorRevisionID() + 65, getMinorRevisionID());
            strcpy(OLED_RAM_Buffer.line3, rev_id_str);
            
            OLED_UpdateFromRAMBuffer();
            OLED_Frame = OLED_Dev_Rev_ID;
            OLED_update_time = 255;
            
            break;
            
        case OLED_COM_PORT_SET:
            
            OLED_update_flag = false;
            
            strcpy(OLED_RAM_Buffer.line0, "COM Port Setup:");
            strcpy(OLED_RAM_Buffer.line1, "115.2 kbs");
            strcpy(OLED_RAM_Buffer.line2, "8bit, no parity");
            strcpy(OLED_RAM_Buffer.line3, "1 stp, no flow");
            
            OLED_UpdateFromRAMBuffer();
            OLED_Frame = OLED_COM_PORT_SET;
            OLED_update_time = 255;
            
            break;
            
        case OLED_TITLE_FRAME:
            
            OLED_update_flag = false;
            
            strcpy(OLED_RAM_Buffer.line0, "QI Charger w/");
            strcpy(OLED_RAM_Buffer.line1, "Digital Monitor");
            strcpy(OLED_RAM_Buffer.line2, "Drew Maatman");
            strcpy(OLED_RAM_Buffer.line3, "Spring 2019");
            
            OLED_UpdateFromRAMBuffer();
            OLED_Frame = OLED_TITLE_FRAME;
            OLED_update_time = 255;
            
            break;
            
        case OLED_Idle:
            
            OLED_update_flag = false;
            
            break;
            
        default:
            
            OLED_update_flag = false;
            
            error_handler.I2C_OLED_error_flag = true;
            break;
        
    }
    
}
