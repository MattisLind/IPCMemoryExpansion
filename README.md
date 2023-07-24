# HP Integral PC Memory Expansion board

![HP Integral PC](https://i.imgur.com/NDTg9vS.jpg)

The HP Integral PC was a portable 68000 UNIX based computer introduced in 1984. The computer included a floppy drive as mass storage and a printer was built in. The screen was a electroluminicent screen. The computer has a HPIB connector to attach to external devices. External disks can be attached through HPIB.

The computer has a two expansion slot where various peripherals can be installed. For example serial boards or memory expansion boards. It was also possible to install ROM boards. The software engineering ROM has 2Mbyte of ROM expansion and when installed appear as 8 disk devices in the Unix system.

The project aims at creating a 7M RAM and 8M ROM memory expansion to the HP Integral computer. RAM is implemented using a single SRAM chip and ROM is implemented using a single NOR FLASH ROM chip. DIP-switches are used to map the ROM into the various ROM areas of the Integral.


## ROM
The mapping of the FLASH ROM memory is controlled by six dipswitches as follows:

| Integral address range | DIPSW0 | DIPSW1 | DIPSW2 | DIPSW3 | DIPSW4 | DIPSW5 | Flash memory range | Used for |
|------------------------|--------|--------|--------|--------|--------|--------|--------------------|----------|
| 000000 - 07FFFF        |   0    |   0    |   X    |   X    |   X    |   X    |  000000-07FFFF     | SYS V ROM|
| 000000 - 07FFFF        |   0    |   1    |   X    |   X    |   X    |   X    |  080000-0FFFFF     | DiagA ROM|
| 000000 - 07FFFF        |   1    |   0    |   X    |   X    |   X    |   X    |  100000-17FFFF     | DiagB ROM|
| 000000 - 07FFFF        |   1    |   1    |   X    |   X    |   X    |   X    |  NONE    | Internal ROM used |
| 080000 - 0FFFFF        |   X    |   X    |   0    |   X    |   X    |   X    |  NONE     | NONE |
| 080000 - 0FFFFF        |   X    |   X    |   1    |   X    |   X    |   X    |  180000-1FFFFF     | BASIC ROM |
| 100000 - 1FFFFF        |   X    |   X    |   X    |   X    |   X    |   0    |  NONE              |           |
| 100000 - 1FFFFF        |   X    |   X    |   X    |   X    |   X    |   1    |  600000-6FFFFF     | AUX ROM 3|
| 200000 - 3FFFFF        |   X    |   X    |   X    |   0    |   0    |   X    |  200000-3FFFFF     | SE ROM |
| 200000 - 3FFFFF        |   X    |   X    |   X    |   0    |   1    |   X    |  400000-5FFFFF     | AUX ROM 1|
| 200000 - 3FFFFF        |   X    |   X    |   X    |   1    |   X    |   X    |  NONE     | NONE |
| 300000 - 4FFFFF        |   X    |   X    |   X    |   X    |   X    |   0    |  NONE     | NONE |
| 300000 - 4FFFFF        |   X    |   X    |   X    |   X    |   X    |   1    |  700000-7FFFFF     | AUX ROM 2 |

There is a STM32F407ZET SoC makes the board look like a USB stick when the USB port is connected to a host computer. 

The ROM is implemented in one single 8 Mbyte SST38VF6401 chip.

DIPSW7 is used for enabling and disabling the busdrivers and DIPSW6 is connected to RESET of the processor. Thus the processort portion can be completely disabled when both these switches are pushed down (on). They should be in the UP (off) position so that the processor runs and can access the memory when trying to upload to the flash memory onboard. When used in the Integral PC they should be in the DOWN (on) position to stop the processor and disable processor access to the memory.

## RAM

Normally Integral memory is implemented using memory board sized up to 1 MByte. Each memory board responds to a read port which provide an ID for the board and a writable base address register. The Integral will use these to identfiy each memory board and configure its starting address. However the memory sizing of HP-UX system is completely independent of the memory configuration descibed preiously meaning that these configuaration is not necessary to get the INtegral to detect the full memory. This has been verified using the MAME emulation of the Integral.

All this obviously that it would be very much easier to implement a RAM expansion board since it only requires that it would match the RAM address range 800000-EFFFFF.

The RAM is implemented in one single AS6C6416 4M x 16 SRAM memory chip. 

## Levelshifting

All signals are level shifted from 5V TTL to 3.3V LVTTL using six 74LVC245 which has 5V tolerant inputs. The two open-collector signals, NBDTACK and NBIMA is handled by 1 74LS38 chip.

## Address decoding

A Xilinx XC2C32A CPLD is used for all address decoding and ROM remapping. The VHDL is provided [here](https://raw.githubusercontent.com/MattisLind/IPCMemoryExpansion/main/XILINX/IntegralMemExp/main.vhd).

## Testing and design fault finding.

Obviously when testing the board for the first time it didn't work at all. Of course I tested many different ways to get it working. But in the end I think that one main problem was the use of UDS/LDS instead of AS strobe. On the standard 68000 that would probably have worked just fine. But on the HP Integral he AS strobe is not at all the AS strobe from the processor. It has gone through plenty of logic until the AS signal found in the expasion connector is generated. Thus the use of the AS signal is a must. Gating with that signal made the RAM expansio work fine.

Since the 74LVC245 inputs are CMOS there wil be no current flowing towards the expansion board. When I attached a bus extender board to be able to measure on the board the added buslength seemed to cause trouble. Adding bus terminating resistors at the 74LVC245 inputs seemed to fix the issue. To better adapt the 74LVC245 driver to the bus impedance a low ohm resistor was inserted in the bus line path for the data bus.

All these changes resulted in a second spin of the board.

## Spin 2

![Boards](https://github.com/MattisLind/IPCMemoryExpansion/blob/main/IPC-ExpMemory.jpeg)

Spin 1 became quite messy when trying to fix all small problems so I decided on a spin 2. I also added test points to make it easier to measure on the board, a major issue on the first spin was that it was so hard to take measurements. After spin 2 came back from the JLCPCB I found that it was virtually impossible to get hold of the STM32 chip and the CPLD, so the project got dormant until sping 2023 when I eventually was able to order chips.

There were some small changes made to the CPLD VHDL code for spin 2 which to this date has not yet been tested (2023-07-24). I hope to be able to test the board soon.

## Firmware

There are two firmwares. One Arduino style .ino-sketch which I used for testing and the a STM32Cube applicaton that is the production code. I used STM32 because it was so simple to wrap up the USB mass storage stuff. The code essentially enables the FSMC controller of the chip and enables the USB mass storage code, then it responds to read and writes to the memory. While the USB-cable is connected the green LED will blink. The yellow LED will blink when a read is performed and the red will blink when a write is performed.

The idea is to use the Linux dd command to transfer the image-file generated by the build.sh shellscript in ROMS folder. When doing so the red and green LEDs should blink. It should also be possible to read back the content stored using dd and compare with the actual file.



## Schematic 

![Schematic](https://raw.githubusercontent.com/MattisLind/IPCMemoryExpansion/main/IPCMemoryExpansionBoard/IPCMemoryExpansionBoard.png)

## Links

[HP Museum page on the Integral PC](http://www.hpmuseum.net/display_item.php?hw=122)
<BR>[Peter Johnsons page on the Integral PC](http://www.coho.org/~pete/IPC/integral.html)

