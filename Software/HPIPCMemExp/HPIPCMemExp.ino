/*
HP IPC Memory Expansion controller
*/

#include "stm32f4xx.h"


 

//pointer used to write to start address of FSMC
 

volatile uint16_t* sram = (uint16_t*)0x68000000;
volatile uint16_t* flash = (uint16_t*)0x6C000000;

volatile uint16_t dummy;

 

void FSMC_setup(void){
 

    //enable RCC for FSMC and both GPIO ports
 

    RCC->AHB3ENR |= RCC_AHB3ENR_FSMCEN;
    RCC->AHB1ENR |= RCC_AHB1ENR_GPIODEN | RCC_AHB1ENR_GPIOEEN | RCC_AHB1ENR_GPIOFEN | RCC_AHB1ENR_GPIOGEN;

    //setup other pins as AF
 

    GPIOD->MODER |= GPIO_MODER_MODER0_1 | GPIO_MODER_MODER1_1 | GPIO_MODER_MODER4_1 | GPIO_MODER_MODER5_1  | GPIO_MODER_MODER8_1 | GPIO_MODER_MODER9_1 | GPIO_MODER_MODER10_1 | GPIO_MODER_MODER11_1 | GPIO_MODER_MODER12_1 | GPIO_MODER_MODER13_1 | GPIO_MODER_MODER14_1 | GPIO_MODER_MODER15_1;
    GPIOE->MODER |= GPIO_MODER_MODER0_1 | GPIO_MODER_MODER1_1 | GPIO_MODER_MODER3_1 | GPIO_MODER_MODER4_1 | GPIO_MODER_MODER5_1 | GPIO_MODER_MODER6_1 |  GPIO_MODER_MODER7_1  | GPIO_MODER_MODER8_1  | GPIO_MODER_MODER9_1  | GPIO_MODER_MODER10_1  | GPIO_MODER_MODER11_1 | GPIO_MODER_MODER12_1 | GPIO_MODER_MODER13_1 | GPIO_MODER_MODER14_1 |  GPIO_MODER_MODER15_1;    
    GPIOF->MODER |= GPIO_MODER_MODER0_1 | GPIO_MODER_MODER1_1 | GPIO_MODER_MODER2_1 | GPIO_MODER_MODER3_1 | GPIO_MODER_MODER4_1 | GPIO_MODER_MODER5_1 | GPIO_MODER_MODER12_1 |  GPIO_MODER_MODER13_1  | GPIO_MODER_MODER14_1  | GPIO_MODER_MODER15_1;
    GPIOG->MODER |= GPIO_MODER_MODER0_1 | GPIO_MODER_MODER1_1 | GPIO_MODER_MODER2_1 | GPIO_MODER_MODER3_1 | GPIO_MODER_MODER4_1 | GPIO_MODER_MODER5_1 |  GPIO_MODER_MODER10_1 |  GPIO_MODER_MODER12_1;
    //setup pins as PP
 

    GPIOD->OTYPER = 0x00000000;
    GPIOE->OTYPER = 0x00000000;
    GPIOF->OTYPER = 0x00000000;
    GPIOG->OTYPER = 0x00000000;
 

    //set speed to 100MHz
 

    GPIOD->OSPEEDR = 0xFFFFFFFF;
    GPIOE->OSPEEDR = 0xFFFFFFFF;
    GPIOF->OSPEEDR = 0xFFFFFFFF;
    GPIOG->OSPEEDR = 0xFFFFFFFF;
 

    //set NO pull-up or pull-down
 

    GPIOD->PUPDR = 0x00000000;
    GPIOE->PUPDR = 0x00000000;
    GPIOF->PUPDR = 0x00000000;
    GPIOG->PUPDR = 0x00000000;
 

    //set other pins to AF12 i.e as FSMC pins
 

    GPIOD->AFR[0] |= (GPIO_AF12_FSMC << (0 * 4)) | (GPIO_AF12_FSMC << (1 * 4)) | (GPIO_AF12_FSMC << (4 * 4)) | (GPIO_AF12_FSMC << (5 * 4));
    GPIOD->AFR[1] |= (GPIO_AF12_FSMC << ((8 - 8) * 4)) | (GPIO_AF12_FSMC << ((9 - 8) * 4)) | (GPIO_AF12_FSMC << ((10 - 8) * 4)) | (GPIO_AF12_FSMC << ((11 - 8) * 4)) | (GPIO_AF12_FSMC << ((12 - 8) * 4)) | (GPIO_AF12_FSMC << ((13 - 8) * 4)) | (GPIO_AF12_FSMC << ((14 - 8) * 4)) | (GPIO_AF12_FSMC << ((15 - 8) * 4));
    GPIOE->AFR[0] |= (GPIO_AF12_FSMC << (0 * 4)) | (GPIO_AF12_FSMC << (1 * 4))  | (GPIO_AF12_FSMC << (3 * 4)) | (GPIO_AF12_FSMC << (4 * 4)) | (GPIO_AF12_FSMC << (5 * 4)) | (GPIO_AF12_FSMC << (6 * 4)) | (GPIO_AF12_FSMC << (7 * 4));
    GPIOE->AFR[1] |= (GPIO_AF12_FSMC << ((8 - 8) * 4)) | (GPIO_AF12_FSMC << ((9 - 8) * 4)) | (GPIO_AF12_FSMC << ((10 - 8) * 4)) | (GPIO_AF12_FSMC << ((11 - 8) * 4)) | (GPIO_AF12_FSMC << ((12 - 8) * 4)) | (GPIO_AF12_FSMC << ((13 - 8) * 4)) | (GPIO_AF12_FSMC << ((14 - 8) * 4)) | (GPIO_AF12_FSMC << ((15 - 8) * 4));
    GPIOF->AFR[0] |= (GPIO_AF12_FSMC << (0 * 4)) | (GPIO_AF12_FSMC << (1 * 4)) | (GPIO_AF12_FSMC << (2 * 4)) | (GPIO_AF12_FSMC << (3 * 4)) | (GPIO_AF12_FSMC << (4 * 4)) | (GPIO_AF12_FSMC << (5 * 4));
    GPIOF->AFR[1] |= (GPIO_AF12_FSMC << ((12 - 8) * 4)) | (GPIO_AF12_FSMC << ((13 - 8) * 4)) | (GPIO_AF12_FSMC << ((14 - 8) * 4)) | (GPIO_AF12_FSMC << ((15 - 8) * 4));
    GPIOG->AFR[0] |= (GPIO_AF12_FSMC << (0 * 4)) | (GPIO_AF12_FSMC << (1 * 4)) | (GPIO_AF12_FSMC << (2 * 4)) | (GPIO_AF12_FSMC << (3 * 4)) | (GPIO_AF12_FSMC << (4 * 4)) | (GPIO_AF12_FSMC << (5 * 4));
    GPIOG->AFR[1] |= (GPIO_AF12_FSMC << ((10 - 8) * 4)) | (GPIO_AF12_FSMC << ((12 - 8) * 4)) ;

 

    //setup FSMC on Bank1 NORSRAM1


    //disable ASYNCWAIT:
    FSMC_Bank1->BTCR[4] &= ~FSMC_BCR1_ASYNCWAIT;
    //disable Extended mode
    FSMC_Bank1->BTCR[4] &= ~FSMC_BCR1_EXTMOD;
    //disable the wait for NWAIT signal
    FSMC_Bank1->BTCR[4] &= ~FSMC_BCR1_WAITEN;
    //write enable
    FSMC_Bank1->BTCR[4] |= FSMC_BCR1_WREN;
    //disable wrap mode
    FSMC_Bank1->BTCR[4] &= ~FSMC_BCR1_WRAPMOD;
    //disable Burst mode
    FSMC_Bank1->BTCR[4] &= ~FSMC_BCR1_BURSTEN;
    //enable Flash access
    FSMC_Bank1->BTCR[4] |= FSMC_BCR1_FACCEN;
    //set data bus width to 16 bit
    FSMC_Bank1->BTCR[4] |= FSMC_BCR1_MWID_0;
    //set to SRAM type
    FSMC_Bank1->BTCR[4] &= ~(FSMC_BCR1_MTYP_0 | FSMC_BCR1_MTYP_1);
    //disable Address/data multiplexing
    FSMC_Bank1->BTCR[4] &= ~FSMC_BCR1_MUXEN;
    //enable Memory bank
    FSMC_Bank1->BTCR[4] |= FSMC_BCR1_MBKEN;
    //setup timings of FSCM
    //FSMC_Bank1->BTCR[5] |= FSMC_BTR1_ADDSET_1 | FSMC_BTR1_DATAST_1;
    // Bank1 NOR/SRAM control register configuration
    //set access mode A
    //FSMC_Bank1->BTCR[5] &= ~FSMC_BTR1_ACCMOD;
    // Access mode 0 , 55 ns
    FSMC_Bank1->BTCR[5]  = 1 << 16 | 9 << 8 | 1;
    //set short bus turn around
    //FSMC_Bank1->BTCR[5] &= ~(FSMC_BTR1_BUSTURN_0 | FSMC_BTR1_BUSTURN_1 | FSMC_BTR1_BUSTURN_2 |FSMC_BTR1_BUSTURN_3);



    //setup FSMC on Bank1 NORSRAM1


    //disable ASYNCWAIT:
    FSMC_Bank1->BTCR[6] &= ~FSMC_BCR1_ASYNCWAIT;
    //disable Extended mode
    FSMC_Bank1->BTCR[6] &= ~FSMC_BCR1_EXTMOD;
    //disable the wait for NWAIT signal
    FSMC_Bank1->BTCR[6] &= ~FSMC_BCR1_WAITEN;
    //write enable
    FSMC_Bank1->BTCR[6] |= FSMC_BCR1_WREN;
    //disable wrap mode
    FSMC_Bank1->BTCR[6] &= ~FSMC_BCR1_WRAPMOD;
    //disable Burst mode
    FSMC_Bank1->BTCR[6] &= ~FSMC_BCR1_BURSTEN;
    //enable Flash access
    FSMC_Bank1->BTCR[6] |= FSMC_BCR1_FACCEN;
    //set data bus width to 16 bit
    FSMC_Bank1->BTCR[6] |= FSMC_BCR1_MWID_0;
    //set to NOR FLASH type
    FSMC_Bank1->BTCR[6] &= ~FSMC_BCR1_MTYP_0;
    FSMC_Bank1->BTCR[6] |= FSMC_BCR1_MTYP_1;
    //disable Address/data multiplexing
    FSMC_Bank1->BTCR[6] &= ~FSMC_BCR1_MUXEN;
    //enable Memory bank
    FSMC_Bank1->BTCR[6] |= FSMC_BCR1_MBKEN;
    //setup timings of FSCM
    //FSMC_Bank1->BTCR[7] |= FSMC_BTR1_ADDSET_1 | FSMC_BTR1_DATAST_0 ;
    // Access mode 0 , 90 ns
    FSMC_Bank1->BTCR[7]  = 1 << 16 | 24 << 8 | 1;
    // Bank1 NOR/SRAM control register configuration
    //set access mode A
    //FSMC_Bank1->BTCR[7] &= ~FSMC_BTR1_ACCMOD;
    //set short bus turn around
    //FSMC_Bank1->BTCR[7] &= ~(FSMC_BTR1_BUSTURN_0 | FSMC_BTR1_BUSTURN_1 | FSMC_BTR1_BUSTURN_2 |FSMC_BTR1_BUSTURN_3);
}

int toggle = 1;

// the setup function runs once when you press reset or power the board
void setup() {
  // initialize digital pin LED_BUILTIN as an output.
  pinMode(PG6, OUTPUT);
  pinMode(PG7, OUTPUT);
  pinMode(PG8, OUTPUT);
  pinMode(PG13, OUTPUT);
  pinMode(PD6, INPUT);
  pinMode(PG10, INPUT);
  pinMode(PG12, INPUT);
  pinMode(PD4, INPUT);
  pinMode(PD5, INPUT);
  pinMode(PE0, INPUT);
  pinMode(PE1, INPUT);
  //pinMode(PD8, INPUT_PULLDOWN);
  //digitalWrite(PD8,LOW);
  Serial.begin(9600);
  digitalWrite(PG13, toggle);  // Enable the STM32 on the bus. Disable LVC245 drivers.
  //FSMC_setup();
  Serial.write("IPCMEMTESTER> ");
}

void flashSectorErase (uint16_t sector) {
  flash[0x555] = 0xAA;
  flash[0x2AA] = 0x55;
  flash[0x555] = 0x80;
  flash[0x555] = 0xAA;
  flash[0x2AA] = 0x55;
  flash[sector] = 0x50; 
  dummy++;
  dummy++;
  dummy++;
    while (digitalRead(PD6)==0) {
    dummy = 1;
  } 
}

void flashBlockErase (uint16_t block) {
  flash[0x555] = 0xAA;
  flash[0x2AA] = 0x55;
  flash[0x555] = 0x80;
  flash[0x555] = 0xAA;
  flash[0x2AA] = 0x55;
  flash[block] = 0x30; 
  dummy++;
  dummy++;
  dummy++;
    while (digitalRead(PD6)==0) {
    dummy = 1;
  } 
}

void flashChipErase () {
  //
  flash[0x555] = 0xAA;
  flash[0x2AA] = 0x55;
  flash[0x555] = 0x80;
  flash[0x555] = 0xAA;
  flash[0x2AA] = 0x55;
  flash[0x555] = 0x10;
  dummy++;
  dummy++;
  dummy++;
  while (digitalRead(PD6)==0) {
    dummy++;
    dummy++;
    dummy++;
  }
}

uint16_t flashReadManufacturerID () {
  uint16_t tmp;
  flash[0x555] = 0xAA;
  flash[0x2AA] = 0x55;
  flash[0x555] = 0x90;
  tmp = flash[0];
  flash[0x555] = 0xAA;
  flash[0x2AA] = 0x55;
  flash[0x555] = 0xF0;
  return tmp;    
}

uint16_t flashReadDeviceID () {
  uint16_t tmp;
  flash[0x555] = 0xAA;
  flash[0x2AA] = 0x55;
  flash[0x555] = 0x90;
  tmp = flash[1];
  flash[0x555] = 0xAA;
  flash[0x2AA] = 0x55;
  flash[0x555] = 0xF0;
  return tmp;    
}

void flashWordProgram ( uint32_t address, uint16_t data ) {
  
  //Serial.print("FLASH WORD PROGRAM");
  //Serial.print(address, HEX);
  //Serial.print(" ");
  //Serial.print(data, HEX);
  //Serial.println();
  flash[0x555] = 0xAA;
  flash[0x2AA] = 0x55;
  flash[0x555] = 0xA0;  
  flash[address] = data;
  dummy++;
  dummy++;
  dummy++;
  while (digitalRead(PD6)==0) {
    dummy++;
    dummy++;
  }
}

void sramTest () {
  int i; 
  for (i=0; i<4194304; i++) {
    sram[i] = (i>>16) ^ (i & 0xffff) ;
  }
  for (i=0; i<4194304; i++) {
    if (((i>>16) ^ (i & 0xffff)) != sram[i]) {
      Serial.print("SRAM ERROR: ");
      Serial.print(i,HEX);
      Serial.print(" ");
      Serial.println(sram[i],HEX);
      delay(1);
    }
    if ((i % 65536) == 0) {
      Serial.print(".");
    }
  } 
  Serial.println("OK"); 
}

void flashTest () {
  int i; 
  Serial.println("FLASH PROGRAMMING");
  for (i=0; i<4194304; i++) {
  //for (i=0; i<65536; i++) {
    flashWordProgram(i, (i>>16) ^ (i & 0xffff));
    if ((i % 65536) == 0) {
      Serial.print(".");
    }
  }
  Serial.println("OK");
  Serial.println("CHECKING");
  for (i=0; i<4194304; i++) {
  //for (i=0; i<65536; i++) {
    if (((i>>16) ^ (i & 0xffff)) != flash[i]) {
      Serial.print("FLASH ERROR: ");
      Serial.print(i,HEX);
      Serial.print(" ");
      Serial.println(flash[i],HEX);
      delay(1);
    }
    if ((i % 65536) == 0) {
      Serial.print(".");
    }
  } 
  Serial.println("OK");   
}

void flashEmptyCheck () {
  int i; 
  for (i=0; i<4194304; i++) {
    if (0xffff != flash[i]) {
      Serial.print("FLASH NOT EMPTY: ");
      Serial.print(i,HEX);
      Serial.print(" ");
      Serial.println(flash[i],HEX);
      delay(1);
    }
    if ((i % 65536) == 0) {
      Serial.print(".");
    }
  } 
  Serial.println("OK"); 
}

int state = 0;
int address;
int numHexChars = 0;
int hexValue;
int sramEnabled=1;
uint16_t data=0, readin;
uint16_t flashdata=0;
char command;
// the loop function runs over and over again forever
void loop() {  
  char ch;
  if (Serial.available()) {
    ch = Serial.read();
    if (ch > 0x60) ch -= 0x20;
    if (state == 0) {
      switch (ch) {
        case 'L':
          Serial.write('L');
          Serial.write(' ');
          state = 1;
          hexValue = 0;
          numHexChars = 0;
          command = ch;
        break;
        case 'S':
          Serial.println("SRAM SELECTED");
          Serial.write("IPCMEMTESTER> ");
          sramEnabled = 1;
          break;
        case 'C':
          flashChipErase();
          Serial.println("FLASH CLEARED");
          Serial.write("IPCMEMTESTER> ");
        break;
        case 'H':
          Serial.println();
          Serial.println("H - Help");
          Serial.println("C - Clear flash");
          Serial.println("E - Examine memory");
          Serial.println("D - Deposit into memory");
          Serial.println("S - Select SRAM");
          Serial.println("F - Select Flash");
          Serial.println("L - Load address");
          Serial.println("T - Sector Erase");
          Serial.println("A - Flash test");
          Serial.println("B - SRAM test");
          Serial.println("G - Flash blank check");
          Serial.println("R - Read pins");
          Serial.println("U - Toggle STM32_BUSEN");
          Serial.println();
          Serial.write("IPCMEMTESTER> ");
          break;
        case 'R':
          Serial.println();
          Serial.print("NCEROM: ");
          Serial.println(digitalRead(PG12), DEC); 
          Serial.print("NCERAM: ");
          Serial.println(digitalRead(PG10), DEC);
          Serial.print("NWE: ");
          Serial.println(digitalRead(PD5), DEC);
          Serial.print("NOE: ");
          Serial.println(digitalRead(PD4), DEC);                              
          Serial.print("NLD: ");
          Serial.println(digitalRead(PE0), DEC);                              
          Serial.print("NUD: ");
          Serial.println(digitalRead(PE1), DEC); 
          Serial.println();
          Serial.write("IPCMEMTESTER> ");
          break;  
        case 'U':
           digitalWrite(PG13, toggle ^= 1);   
           Serial.println(); 
           Serial.write("IPCMEMTESTER> ");
           break;                       
        case 'A':
          Serial.println();
          flashTest();
          Serial.println();
          Serial.write("IPCMEMTESTER> ");
          break;
        case 'B':
          Serial.println();
          sramTest();
          Serial.println();
          Serial.write("IPCMEMTESTER> ");
          break;
        case 'G':
          Serial.println();
          flashEmptyCheck();
          Serial.println();
          Serial.write("IPCMEMTESTER> ");
          break;
        case 'T':
          Serial.write('T');
          Serial.write(' ');
          state = 1;
          hexValue = 0;
          numHexChars = 0;
          command = ch;          
          break;
        case 'F':
          Serial.println("FLASH SELECTED");
          Serial.write("IPCMEMTESTER> ");
          sramEnabled = 0;
          break;  
        case 'E':
          Serial.write('E');
          Serial.write(' ');
          Serial.print(address, HEX);
          Serial.write(' ');
          if (sramEnabled) {
            Serial.print(sram[address], HEX );
          } else {
            Serial.print(flash[address], HEX );         
          }
          address++;
          Serial.println();
          Serial.write("IPCMEMTESTER> ");
        break;
        case 'D':
          Serial.write('D');
          Serial.write(' ');
          Serial.print(address, HEX);
          Serial.write(' ');
          if (sramEnabled) {
            Serial.print(sram[address], HEX );
          } else {
            Serial.print(flash[address], HEX );         
          }
          Serial.write(' ');
          hexValue = 0;
          numHexChars = 0;
          command = ch;
          state = 1;
          
        break;
        case '\r':
        case '\n':
          Serial.println();
          Serial.write("IPCMEMTESTER> ");
        break;
      }
    } else if (state == 1) {
        // collect hex digits
        if (ch >= 'A' && ch <= 'F' && numHexChars < 8) {
          Serial.write(ch);
          hexValue = (hexValue << 4) | (0x0f & (ch -'A' + 10)); 
          numHexChars++;  
        } else if (ch >= '0' && ch <= '9' && numHexChars < 8) {
          Serial.write(ch);
          hexValue = (hexValue << 4) | (0x0f & (ch -'0'));
          numHexChars++;
        } else if ((ch == '\r') || (numHexChars >= 8)) {
          switch (command) {
            case 'L':
              address = hexValue;
              break;
            case 'D':
              if (sramEnabled) {
                sram[address] = hexValue;
              } else {
                flashWordProgram(address, hexValue);
              }
              address++;
              break;
            case 'T':
             flashSectorErase(hexValue);
             break; 
          }
          //Serial.println();
          //Serial.print(hexValue, HEX);
          Serial.println();
          Serial.write("IPCMEMTESTER> ");
          state = 0;
        } else {
          Serial.write("?\n\r");
          Serial.write("IPCMEMTESTER> ");
          state = 0;
        }
    }
  }
  /*Serial.println("FLASH ERASE");
  digitalWrite(PG8, HIGH);
  digitalWrite(PG7, HIGH);  
  digitalWrite(PG6, LOW);   
  flashChipErase();
  Serial.print("Manufacturer ID:");
  Serial.print(flashReadManufacturerID(), HEX);
  Serial.println();
  Serial.println("FLASH EMPTY CHECK");
  flashEmptyCheck ();
  digitalWrite(PG8, HIGH);
  digitalWrite(PG7, LOW);   
  digitalWrite(PG6, HIGH);   
  Serial.print("Device ID:");
  Serial.print(flashReadDeviceID(), HEX);
  Serial.println();
  delay(200);
  Serial.println("SRAMTEST");
  sramTest  ();
  digitalWrite(PG8, LOW);
  digitalWrite(PG7, HIGH);  
  digitalWrite(PG6, HIGH);  
  Serial.println("FLASHTEST");
  flashTest(); */
}
