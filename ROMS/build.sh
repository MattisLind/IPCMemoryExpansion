#!/bin/bash
dd if=system_v.bin   of=flash-image.bin seek=0 bs=1024
dd if=Integral-Diag-ROMS/Board-A/U1+U2.txt of=flash-image.bin seek=512 bs=1024
dd if=Integral-Diag-ROMS/Board-A/U1+U2.txt of=flash-image.bin seek=544 bs=1024
dd if=Integral-Diag-ROMS/Board-A/U1+U2.txt of=flash-image.bin seek=576 bs=1024
dd if=Integral-Diag-ROMS/Board-A/U1+U2.txt of=flash-image.bin seek=608 bs=1024
dd if=Integral-Diag-ROMS/Board-A/U1+U2.txt of=flash-image.bin seek=640 bs=1024
dd if=Integral-Diag-ROMS/Board-A/U1+U2.txt of=flash-image.bin seek=672 bs=1024
dd if=Integral-Diag-ROMS/Board-A/U1+U2.txt of=flash-image.bin seek=704 bs=1024
dd if=Integral-Diag-ROMS/Board-A/U1+U2.txt of=flash-image.bin seek=736 bs=1024
dd if=Integral-Diag-ROMS/Board-A/U3+U4.txt of=flash-image.bin seek=768 bs=1024
dd if=Integral-Diag-ROMS/Board-A/U3+U4.txt of=flash-image.bin seek=800 bs=1024
dd if=Integral-Diag-ROMS/Board-A/U3+U4.txt of=flash-image.bin seek=832 bs=1024
dd if=Integral-Diag-ROMS/Board-A/U3+U4.txt of=flash-image.bin seek=864 bs=1024
dd if=Integral-Diag-ROMS/Board-A/U3+U4.txt of=flash-image.bin seek=896 bs=1024
dd if=Integral-Diag-ROMS/Board-A/U3+U4.txt of=flash-image.bin seek=928 bs=1024
dd if=Integral-Diag-ROMS/Board-A/U3+U4.txt of=flash-image.bin seek=960 bs=1024
dd if=Integral-Diag-ROMS/Board-A/U3+U4.txt of=flash-image.bin seek=992 bs=1024
# Diag B
dd if=Integral-Diag-ROMS/Board-B-Diag/U1+U2.txt of=flash-image.bin seek=1024 bs=1024
dd if=Integral-Diag-ROMS/Board-B-Diag/U1+U2.txt of=flash-image.bin seek=1056 bs=1024
dd if=Integral-Diag-ROMS/Board-B-Diag/U1+U2.txt of=flash-image.bin seek=1088 bs=1024
dd if=Integral-Diag-ROMS/Board-B-Diag/U1+U2.txt of=flash-image.bin seek=1120 bs=1024
dd if=Integral-Diag-ROMS/Board-B-Diag/U1+U2.txt of=flash-image.bin seek=1152 bs=1024
dd if=Integral-Diag-ROMS/Board-B-Diag/U1+U2.txt of=flash-image.bin seek=1184 bs=1024
dd if=Integral-Diag-ROMS/Board-B-Diag/U1+U2.txt of=flash-image.bin seek=1216 bs=1024
dd if=Integral-Diag-ROMS/Board-B-Diag/U1+U2.txt of=flash-image.bin seek=1248 bs=1024
# The second rom pair is 2764 EPROMS thus 16 k
dd if=Integral-Diag-ROMS/Board-B-Diag/U3+U4.txt of=flash-image.bin seek=1280 bs=1024
dd if=Integral-Diag-ROMS/Board-B-Diag/U3+U4.txt of=flash-image.bin seek=1296 bs=1024
dd if=Integral-Diag-ROMS/Board-B-Diag/U3+U4.txt of=flash-image.bin seek=1312 bs=1024
dd if=Integral-Diag-ROMS/Board-B-Diag/U3+U4.txt of=flash-image.bin seek=1328 bs=1024
dd if=Integral-Diag-ROMS/Board-B-Diag/U3+U4.txt of=flash-image.bin seek=1344 bs=1024
dd if=Integral-Diag-ROMS/Board-B-Diag/U3+U4.txt of=flash-image.bin seek=1360 bs=1024
dd if=Integral-Diag-ROMS/Board-B-Diag/U3+U4.txt of=flash-image.bin seek=1376 bs=1024
dd if=Integral-Diag-ROMS/Board-B-Diag/U3+U4.txt of=flash-image.bin seek=1392 bs=1024

dd if=Integral-Diag-ROMS/Board-B-Diag/U3+U4.txt of=flash-image.bin seek=1408 bs=1024
dd if=Integral-Diag-ROMS/Board-B-Diag/U3+U4.txt of=flash-image.bin seek=1424 bs=1024
dd if=Integral-Diag-ROMS/Board-B-Diag/U3+U4.txt of=flash-image.bin seek=1440 bs=1024
dd if=Integral-Diag-ROMS/Board-B-Diag/U3+U4.txt of=flash-image.bin seek=1456 bs=1024
dd if=Integral-Diag-ROMS/Board-B-Diag/U3+U4.txt of=flash-image.bin seek=1472 bs=1024
dd if=Integral-Diag-ROMS/Board-B-Diag/U3+U4.txt of=flash-image.bin seek=1488 bs=1024
dd if=Integral-Diag-ROMS/Board-B-Diag/U3+U4.txt of=flash-image.bin seek=1504 bs=1024
dd if=Integral-Diag-ROMS/Board-B-Diag/U3+U4.txt of=flash-image.bin seek=1520 bs=1024

dd if=tech_basic.bin of=flash-image.bin seek=1536 bs=1024
dd if=se_rom.bin     of=flash-image.bin seek=2048 bs=1024
