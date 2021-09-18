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



// the setup function runs once when you press reset or power the board
void setup() {
  // initialize digital pin LED_BUILTIN as an output.
  pinMode(PG6, OUTPUT);
  pinMode(PG7, OUTPUT);
  pinMode(PG8, OUTPUT);
  pinMode(PG13, OUTPUT);
  //pinMode(PD8, INPUT_PULLDOWN);
  //digitalWrite(PD8,LOW);
  Serial.begin(9600);
  FSMC_setup();
}

void flashSectorErase (uint16_t sector) {
  flash[0x555] = 0xAA;
  flash[0x2AA] = 0x55;
  flash[0x555] = 0x80;
  flash[0x555] = 0xAA;
  flash[0x2AA] = 0x55;
  flash[sector] = 0x50; 
  while ((flash[0]&0x80) == 0) delay(1); 
}

void flashBlockErase (uint16_t block) {
  flash[0x555] = 0xAA;
  flash[0x2AA] = 0x55;
  flash[0x555] = 0x80;
  flash[0x555] = 0xAA;
  flash[0x2AA] = 0x55;
  flash[block] = 0x30; 
  while ((flash[0]&0x80) == 0) delay(1); 
}

void flashChipErase () {
  //
  flash[0x555] = 0xAA;
  flash[0x2AA] = 0x55;
  flash[0x555] = 0x80;
  flash[0x555] = 0xAA;
  flash[0x2AA] = 0x55;
  flash[0x555] = 0x10;
  while ((flash[0]&0x80) == 0) {
    Serial.print(".");
    delay(1000);
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
  while ((flash[address]&0x80) != (data & 0x80)) {
    //Serial.println(flash[address], HEX);
    //delay(1);
    dummy = address;
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
    flashWordProgram(i, (i>>16) ^ (i & 0xffff));
    if ((i % 65536) == 0) {
      Serial.print(".");
    }
  }
  Serial.println("OK");
  Serial.println("CHECKING");
  for (i=0; i<4194304; i++) {
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

char ch=0x41;
uint16_t data=0, readin;
uint16_t flashdata=0;
// the loop function runs over and over again forever
void loop() {
  
  digitalWrite(PG13, LOW);  // Enable the STM32 on the bus. Disable LVC245 drivers.
  
  
  Serial.println("FLASH ERASE");
  digitalWrite(PG8, HIGH);
  digitalWrite(PG7, HIGH);   // turn the LED on (HIGH is the voltage level)
  digitalWrite(PG6, LOW);   // turn the LED on (HIGH is the voltage level)
  flashChipErase();
  Serial.print("Manufacturer ID:");
  Serial.print(flashReadManufacturerID(), HEX);
  Serial.println();
  Serial.println("FLASH EMPTY CHECK");
  flashEmptyCheck ();
  digitalWrite(PG8, HIGH);
  digitalWrite(PG7, LOW);   // turn the LED on (HIGH is the voltage level)
  digitalWrite(PG6, HIGH);   // turn the LED on (HIGH is the voltage level)
  Serial.print("Device ID:");
  Serial.print(flashReadDeviceID(), HEX);
  Serial.println();
  delay(200);
  Serial.println("SRAMTEST");
  sramTest  ();
  digitalWrite(PG8, LOW);
  digitalWrite(PG7, HIGH);    // turn the LED off by making the voltage LOW
  digitalWrite(PG6, HIGH);   // turn the LED on (HIGH is the voltage level)
  Serial.println("FLASHTEST");
  flashTest();
}
