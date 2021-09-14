----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:58:41 03/30/2021 
-- Design Name: 
-- Module Name:    main - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity main is
    Port ( ADRIN : std_logic_vector(4 downto 0) := (others => '0');
           NLD : in  STD_LOGIC;
           NUD : in  STD_LOGIC;
           NPS : in  STD_LOGIC;
           RNW : in  STD_LOGIC;
           FLASH_RY : in  STD_LOGIC;
           STM32_BUSEN : in  STD_LOGIC;
           DIPSW0 : in  STD_LOGIC;
           DIPSW1 : in  STD_LOGIC;
           DIPSW2 : in  STD_LOGIC;
           DIPSW3 : in  STD_LOGIC;
           DIPSW4 : in  STD_LOGIC;
           DIPSW5 : in  STD_LOGIC;
           NCERAM : out  STD_LOGIC;
           NCEROM : out  STD_LOGIC;
           NOE : out  STD_LOGIC;
           NWE : out  STD_LOGIC;
           IMA : out  STD_LOGIC;
			  DTACK: out STD_LOGIC;
           D0 : out  STD_LOGIC;
           D1 : out  STD_LOGIC;
           D2 : out  STD_LOGIC;
           D3 : out  STD_LOGIC;
           D7 : out  STD_LOGIC;
			  ROMADR : out std_logic_vector(3 downto 0) := (others => '0');
           OE245 : out  STD_LOGIC);
end main;

architecture Behavioral of main is

begin

logic: PROCESS (ADRIN, NLD, NUD, NPS, RNW, FLASH_RY, STM32_BUSEN, DIPSW0, DIPSW1, DIPSW2, DIPSW3, DIPSW4, DIPSW5)
VARIABLE vNCEROM, vIMA, vDS, vNCERAM, vNWE, vNOE, vDTACK : STD_LOGIC;
VARIABLE vROMADR : std_logic_vector(3 downto 0) := (others => '0');
BEGIN
		vNCEROM := '1';
		vNCERAM := '1';
      vROMADR := "ZZZZ";
		vDS := '0';
		vIMA := '0';
		vDTACK := '0';
		IF (NLD = '0' OR NUD = '0') THEN
		  vDS := '1';
		END IF;
		
		IF (RNW = '1' AND vDS = '1') THEN
		  vNOE := '0';
		ELSE 
		  vNOE := '1';
		END IF;
		
		IF (RNW = '0' AND vDS = '1') THEN
		  vNWE := '0';
		ELSE
		  vNWE := '1';
		END IF;
-- RAM FROM 0x0800000 to 0x0E00000		
		IF ((ADRIN >= "10000") AND  (ADRIN <= "11101" )) THEN
		  vNCERAM := '0';
		  vROMADR := ADRIN(3 DOWNTO 0);
		END IF;
-- SYS V ROM		
		IF ( DIPSW0 = '0' AND DIPSW1 = '0' AND ADRIN = "00000") THEN
		  vNCEROM := '0';
		  vROMADR := "0000";
		END IF;
-- SYS III ROM		
		IF ( DIPSW0 = '0' AND DIPSW1 = '1' AND ADRIN = "00000") THEN
		  vNCEROM := '0';
		  vROMADR := "0001";
		END IF;
-- DIAG ROM
		IF ( DIPSW0 = '1' AND DIPSW1 = '0' AND  ADRIN = "00000") THEN
		  vNCEROM := '0';
        vROMADR := "0010";
		END IF;
--BASIC ROM
		IF ( DIPSW2 = '1' AND ADRIN = "00001") THEN
		  vNCEROM := '0';
	     vROMADR := "0011";
		END IF;
-- SE ROM 		
		IF ( DIPSW3 = '0' AND DIPSW4 = '0' AND ADRIN = "00010") THEN
		  vNCEROM := '0';
	     vROMADR := "0100";
		END IF;		
		
		IF ( DIPSW3 = '0' AND DIPSW4 = '0' AND ADRIN = "00011") THEN
		  vNCEROM := '0';
	     vROMADR := "0101";
		END IF;	
		IF ( DIPSW3 = '0' AND DIPSW4 = '0' AND ADRIN = "00100") THEN
		  vNCEROM := '0';
	     vROMADR := "0110";
		END IF;		
		
		IF ( DIPSW3 = '0' AND DIPSW4 = '0' AND ADRIN = "00101") THEN
		  vNCEROM := '0';
	     vROMADR := "0111";
		END IF;		
-- ALTERNATE ROM AT 1M TO 3M		
		IF ( DIPSW3 = '0' AND DIPSW4 = '1' AND ADRIN = "00010") THEN
		  vNCEROM := '0';
	     vROMADR := "1000";
		END IF;		
		
		IF ( DIPSW3 = '0' AND DIPSW4 = '1' AND ADRIN = "00011") THEN
		  vNCEROM := '0';
	     vROMADR := "1001";
		END IF;	
		IF ( DIPSW3 = '0' AND DIPSW4 = '1' AND ADRIN = "00100") THEN
		  vNCEROM := '0';
	     vROMADR := "1010";
		END IF;		
		
		IF ( DIPSW3 = '0' AND DIPSW4 = '1' AND ADRIN = "00101") THEN
		  vNCEROM := '0';
	     vROMADR := "1011";
		END IF;	
-- ENABLE ROM AT 3M TO 5M
		IF ( DIPSW5 = '1'  AND ADRIN = "00110") THEN
		  vNCEROM := '0';
	     vROMADR := "1100";
		END IF;		
		
		IF ( DIPSW5 = '1' AND ADRIN = "00111") THEN
		  vNCEROM := '0';
	     vROMADR := "1101";
		END IF;	
		IF ( DIPSW5 = '1' AND ADRIN = "01000") THEN
		  vNCEROM := '0';
	     vROMADR := "1110";
		END IF;		
		
		IF ( DIPSW5 = '1' AND ADRIN = "01001") THEN
		  vNCEROM := '0';
	     vROMADR := "1111";
		END IF;	

-- IMA SIGNAL - ALSO USED AS DTACK WHEN BOARD IS ACCESSED		
		IF ((vNCEROM = '0' OR vNCERAM = '0' OR NPS = '0') AND vDS = '1') THEN
         vIMA := '1';
			vDTACK := '1';
		END IF;

-- THE ID PORT AND READY SIGNAL FROM FLASH IS ENABLED WHEN THE BOARD IS ACCESSED BY THE NPS SIGNAL	IN READ MODE	
		IF (STM32_BUSEN = '1') THEN
			IF (NPS = '0' AND NLD = '0' AND RNW = '1') THEN
			    D0 <= '1';
			    D1 <= '1';
			    D2 <= '1';
			    D3 <= '1';
			    D7 <= FLASH_RY;
				 vNOE := 'Z';
				 vNCEROM := 'Z';
				 vNCERAM := 'Z';
				 vNWE := 'Z';
			ELSE 
				 D0 <= 'Z';
				 D1 <= 'Z';
				 D2 <= 'Z';
				 D3 <= 'Z';
				 D7 <= 'Z';
			END IF;
	   ELSE 
		  D0 <= 'Z';
		  D1 <= 'Z';
		  D2 <= 'Z';
		  D3 <= 'Z';
		  D7 <= 'Z';
		END IF;
-- ENABLE 245 DATA BUS IF NOT STM32 ACTIVE. IF BOARD IS ADDRESSED ENABLE DRIVERS.		
		IF (STM32_BUSEN = '1') THEN		
		   IF (vIMA = '1') THEN 
		     OE245 <= '0';	
			ELSE 
		     OE245 <= '1';
			END IF;
         NCEROM <= vNCEROM;
		   ROMADR <= vROMADR;
         NCERAM <= vNCERAM;
         NOE <= vNOE;
         NWE <= vNWE;  			
		ELSE
		   OE245 <= '1';
			NCEROM <= 'Z';
			ROMADR(0) <= ADRIN(0);
			ROMADR(1) <= ADRIN(1);
			ROMADR(2) <= ADRIN(2);
			ROMADR(3) <= ADRIN(3);
			NCERAM <= 'Z';
         NOE <= 'Z';
         NWE <= 'Z';
	   END IF;
      IMA <= vIMA;
		DTACK <= vDTACK;
END PROCESS logic;

end Behavioral;

