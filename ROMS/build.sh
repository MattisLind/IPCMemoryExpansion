#!/bin/bash
dd if=system_v.bin   of=flash-image.bin seek=0x000000 bs=1
dd if=DiagA.bin      of=flash-image.bin seek=0x080000 bs=1
dd if=DiagB.bin      of=flash-image.bin seek=0x100000 bs=1
dd if=tech_basic.bin of=flash-image.bin seek=0x180000 bs=1
dd if=se_rom.bin     of=flash-image.bin seek=0x200000 bs=1