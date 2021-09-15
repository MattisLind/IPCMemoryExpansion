# HP Integral PC Memory Expansion board

![HP Integral PC](http://storage.datormuseum.se/u/96935524/Datormusuem/HP_IntegralPC.png)

The HP Integral PC was a portable 68000 UNIX based computer introduced in 1984. The computer included a floppy drive as mass storage and a printer was built in. The screen was a electroluminicent screen. The computer has a HPIB connector to attach to external devices. External disks can be attached through HPIB.

The computer has a two expansion slot where various peripherals can be installed. For example serial boards or memory expansion boards. It was also possible to install ROM boards. The software engineering ROM has 2Mbyte of ROM expansion and when installed appear as 8 disk devices in the Unix system.

The project aims at creating a 7M RAM and 8M ROM memory expansion to the HP Integral computer. RAM is implemented using a single SRAM chip and ROM is implemented using a single NOR FLASH ROM chip. DIP-switches are used to map the ROM into the various ROM areas of the Integral.


## ROM
The mapping of the FLASH ROM memory is controlled by six dipswitches as follows:

| Integral address range | DIPSW0 | DIPSW1 | DIPSW2 | DIPSW3 | DIPSW4 | DIPSW5 | Flash memory range | Used for |
|------------------------|--------|--------|--------|--------|--------|--------|--------------------|----------|
| 000000 - 07FFFF        |   0    |   0    |   X    |   X    |   X    |   X    |  000000-07FFFF     | SYS V ROM|
| 000000 - 07FFFF        |   0    |   1    |   X    |   X    |   X    |   X    |  080000-0FFFFF     | SYS III ROM|
| 000000 - 07FFFF        |   1    |   0    |   X    |   X    |   X    |   X    |  100000-17FFFF     | Diag. ROM|
| 000000 - 07FFFF        |   1    |   1    |   X    |   X    |   X    |   X    |  NONE    | Internal ROM used |
| 080000 - 0FFFFF        |   X    |   X    |   0    |   X    |   X    |   X    |  NONE     | NONE |
| 080000 - 0FFFFF        |   X    |   X    |   1    |   X    |   X    |   X    |  180000-1FFFFF     | BASIC ROM |
| 100000 - 2FFFFF        |   X    |   X    |   X    |   0    |   0    |   X    |  200000-3FFFFF     | SE ROM |
| 100000 - 2FFFFF        |   X    |   X    |   X    |   0    |   1    |   X    |  400000-5FFFFF     | AUX ROM 1|
| 100000 - 2FFFFF        |   X    |   X    |   X    |   1    |   X    |   X    |  NONE     | NONE |
| 300000 - 4FFFFF        |   X    |   X    |   X    |   X    |   X    |   0    |  NONE     | NONE |
| 300000 - 4FFFFF        |   X    |   X    |   X    |   X    |   X    |   1    |  600000-7FFFFF     | AUX ROM 2 |

There is a STM32F407ZET SoC that is used for reading files from a FAT fromatted file system on a SD card and program those into the FLASH area. The mapping between files and flash area is controlled by a configuration file on the SD card.

If DIPSW 6 is enabled the SoC will check the ROM contents and to see if it needs to be updated. If DIPSW6 is disabled the SoC will remain idle and do nothing unless commanded though the USB port command interface. The ROM is implemented in one single 8 Mbyte SST38VF6401 chip.

## RAM

Normally Integral memory is implemented using memory board sized up to 1 MByte. Each memory board responds to a read port which provide an ID for the board and a writable base address register. The Integral will use these to identfiy each memory board and configure its starting address. However the memory sizing of HP-UX system is completely independent of the memory configuration descibed preiously meaning that these configuaration is not necessary to get the INtegral to detect the full memory. This has been verified using the MAME emulation of the Integral.

All this obviously that it would be very much easier to implement a RAM expansion board since it only requires that it would match the RAM address range 800000-EFFFFF.

The RAM is implemented in one single AS6C6416 4M x 16 SRAM memory chip. 

## Levelshifting

All signals are level shifted from 5V TTL to 3.3V LVTTL using six 74LVC245 which has 5V tolerant inputs. The two open-collector signals, NBDTACK and NBIMA is handled by 1 74LS38 chip.

## Address decoding

A Xilinx XC2C32A CPLD is used for all address decoding and ROM remapping. The VHDL is provided [here](https://raw.githubusercontent.com/MattisLind/IPCMemoryExpansion/main/XILINX/IntegralMemExp/main.vhd).

## Schematic 

![Schematic](https://raw.githubusercontent.com/MattisLind/IPCMemoryExpansion/main/IPCMemoryExpansionBoard/IPCMemoryExpansionBoard.png)

## Links

[HP Museum page on the Integral PC](http://www.hpmuseum.net/display_item.php?hw=122)
[Peter Johnsons page on the Integral PC](http://www.coho.org/~pete/IPC/integral.html)

