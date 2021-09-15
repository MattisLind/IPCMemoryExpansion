HP Integral PC Diagnostic ROM Files README	Mark Bielman January 2018
=========================================================================

This archive contains 2 sets of EPROM files extracted from EPROMS that were
found in my parts stash. (from my work at HP-Corvallis on the Integral)
The sets are quite different! (but the PC boards are identical)

Designated as "Board A" and "Board B", each directory contains HEX and BIN
versions of each of the 4 EPROMS. (U1 through U4) Since the 68000 has a
16-bit data bus, the ROMs are accessed in pairs: U1/U2 and U3/U4.

I also included 'merged' files of the ROM pairs in order to view the ASCII
text messages that might appear. (errors, etc)

Board A
=======
When installed, the PC opens a small screen stating the amount internal RAM
and plug-in RAM. It then asks that a "boot disc" be installed. (no idea!)
Not a full diagnostic but should verify the PC core is working. From the text,
it appears that 0.5 MB of internal RAM is always reported. (?)

U1 = U2 = U3 = U4 = 2764

Board B
=======
From the messages/errors listed, this looks like the ROMs I used in manufacturing.
These are NOT the ROMs described in the Service Manual! (best I can tell) When
installed, the display will say it's running a quick system test (RAM, keyboard,
GPU, etc) then bring up softkeys to run specific tests. Best I can tell, they work.

U1= U2 = 27128
U3 = U4 = 2764

Notes on the PCB
================
I have NOT beeped out the boards so not sure how they handle DTACK here.

