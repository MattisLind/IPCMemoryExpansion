--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:23:50 09/10/2021
-- Design Name:   
-- Module Name:   C:/Users/mattis/IntegralMemExp/tb.vhd
-- Project Name:  IntegralMemExp
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: main
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb IS
END tb;
 
ARCHITECTURE behavior OF tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT main
    PORT(
         ADRIN : IN  std_logic_vector(4 downto 0);
         NLD : IN  std_logic;
         NUD : IN  std_logic;
         NPS : IN  std_logic;
         RNW : IN  std_logic;
         FLASH_RY : IN  std_logic;
         STM32_BUSEN : IN  std_logic;
         DIPSW0 : IN  std_logic;
         DIPSW1 : IN  std_logic;
         DIPSW2 : IN  std_logic;
         DIPSW3 : IN  std_logic;
         DIPSW4 : IN  std_logic;
         DIPSW5 : IN  std_logic;
         NCERAM : OUT  std_logic;
         NCEROM : OUT  std_logic;
         NOE : OUT  std_logic;
         NWE : OUT  std_logic;
         IMA : OUT  std_logic;
         DTACK : OUT  std_logic;
         D0 : OUT  std_logic;
         D1 : OUT  std_logic;
         D2 : OUT  std_logic;
         D3 : OUT  std_logic;
         D7 : OUT  std_logic;
         ROMADR : OUT  std_logic_vector(3 downto 0);
         OE245 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal ADRIN : std_logic_vector(4 downto 0) := (others => '0');
   signal NLD : std_logic := '0';
   signal NUD : std_logic := '0';
   signal NPS : std_logic := '0';
   signal RNW : std_logic := '0';
   signal FLASH_RY : std_logic := '0';
   signal STM32_BUSEN : std_logic := '0';
   signal DIPSW0 : std_logic := '0';
   signal DIPSW1 : std_logic := '0';
   signal DIPSW2 : std_logic := '0';
   signal DIPSW3 : std_logic := '0';
   signal DIPSW4 : std_logic := '0';
   signal DIPSW5 : std_logic := '0';

 	--Outputs
   signal NCERAM : std_logic;
   signal NCEROM : std_logic;
   signal NOE : std_logic;
   signal NWE : std_logic;
   signal IMA : std_logic;
   signal DTACK : std_logic;
   signal D0 : std_logic;
   signal D1 : std_logic;
   signal D2 : std_logic;
   signal D3 : std_logic;
   signal D7 : std_logic;
   signal ROMADR : std_logic_vector(3 downto 0);
   signal OE245 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: main PORT MAP (
          ADRIN => ADRIN,
          NLD => NLD,
          NUD => NUD,
          NPS => NPS,
          RNW => RNW,
          FLASH_RY => FLASH_RY,
          STM32_BUSEN => STM32_BUSEN,
          DIPSW0 => DIPSW0,
          DIPSW1 => DIPSW1,
          DIPSW2 => DIPSW2,
          DIPSW3 => DIPSW3,
          DIPSW4 => DIPSW4,
          DIPSW5 => DIPSW5,
          NCERAM => NCERAM,
          NCEROM => NCEROM,
          NOE => NOE,
          NWE => NWE,
          IMA => IMA,
          DTACK => DTACK,
          D0 => D0,
          D1 => D1,
          D2 => D2,
          D3 => D3,
          D7 => D7,
          ROMADR => ROMADR,
          OE245 => OE245
        );

   -- Clock process definitions
   test : process
   begin
	   wait for 10 ns;
	   ADRIN <= "00000";
	   DIPSW0 <= '0';
		DIPSW1 <= '0';
		DIPSW2 <= '0';
		DIPSW3 <= '0';
		DIPSW4 <= '0';
		DIPSW5 <= '0';
		NLD <= '0';
		NUD <= '0';
		NPS <= '1';
      RNW <= '1';
      FLASH_RY <= '1';
      STM32_BUSEN <= '1';
		wait for 10 ns;
		assert (NCERAM = '1') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '0') report "NCEROM should have been 0." severity error;
		assert (NOE = '0') report "NOE should have been 0." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '1') report "IMA should have been 1." severity error;
		assert (DTACK = '1') report "DTACK should have been 1." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "0000") report "ROMADR should have been 0000." severity error;
		assert (OE245 = '0') report "OE245 should have been 0." severity error;
		wait for 10 ns;		
		ADRIN <= "00000";
		NLD <= '1';
		NUD <= '0';
		wait for 10 ns;
		assert (NCERAM = '1') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '0') report "NCEROM should have been 0." severity error;
		assert (NOE = '0') report "NOE should have been 0." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '1') report "IMA should have been 1." severity error;
		assert (DTACK = '1') report "DTACK should have been 1." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "0000") report "ROMADR should have been 0000." severity error;
		assert (OE245 = '0') report "OE245 should have been 0." severity error;
		wait for 10 ns;
		NLD <= '0';
		NUD <= '1';
		wait for 10 ns;
		assert (NCERAM = '1') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '0') report "NCEROM should have been 0." severity error;
		assert (NOE = '0') report "NOE should have been 0." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '1') report "IMA should have been 1." severity error;
		assert (DTACK = '1') report "DTACK should have been 1." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "0000") report "ROMADR should have been 0000." severity error;
		assert (OE245 = '0') report "OE245 should have been 0." severity error;		
		NLD <= '1';
		NUD <= '1';
		wait for 10 ns;
		assert (NCERAM = '1') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '0') report "NCEROM should have been 0." severity error;
		assert (NOE = '1') report "NOE should have been 1." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '0') report "IMA should have been 0." severity error;
		assert (DTACK = '0') report "DTACK should have been 0." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "0000") report "ROMADR should have been 0000." severity error;
		assert (OE245 = '1') report "OE245 should have been 1." severity error;	
-- TEST WRITE
		NLD <= '0';
		RNW <= '0';
		wait for 10 ns;
		assert (NCERAM = '1') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '0') report "NCEROM should have been 0." severity error;
		assert (NOE = '1') report "NOE should have been 0." severity error;
		assert (NWE = '0') report "NWE should have been 1." severity error;
		assert (IMA = '1') report "IMA should have been 1." severity error;
		assert (DTACK = '1') report "DTACK should have been 1." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "0000") report "ROMADR should have been 0000." severity error;
		assert (OE245 = '0') report "OE245 should have been 0." severity error;	
		
-- TEST NPS
		RNW <= '1';
		NPS <= '0';
		FLASH_RY <= '1';
		wait for 10 ns;
		assert (NCERAM = 'Z') report "NCERAM should have been 1." severity error;
		assert (NCEROM = 'Z') report "NCEROM should have been 1." severity error;
		assert (NOE = 'Z') report "NOE should have been 1." severity error;
		assert (NWE = 'Z') report "NWE should have been 1." severity error;
		assert (IMA = '1') report "IMA should have been 1." severity error;
		assert (DTACK = '1') report "DTACK should have been 1." severity error;
		assert (D0 = '1') report "D0 should have been 1." severity error;
		assert (D1 = '1') report "D1 should have been 1." severity error;
		assert (D2 = '1') report "D2 should have been 1." severity error;
		assert (D3 = '1') report "D3 should have been 1." severity error;
		assert (D7 = '1') report "D7 should have been 1." severity error;
		assert (ROMADR = "0000") report "ROMADR should have been 0000." severity error;
		assert (OE245 = '0') report "OE245 should have been 0." severity error;	
		FLASH_RY <= '0';
		wait for 10 ns;
		assert (NCERAM = 'Z') report "NCERAM should have been 1." severity error;
		assert (NCEROM = 'Z') report "NCEROM should have been 1." severity error;
		assert (NOE = 'Z') report "NOE should have been 1." severity error;
		assert (NWE = 'Z') report "NWE should have been 1." severity error;
		assert (IMA = '1') report "IMA should have been 1." severity error;
		assert (DTACK = '1') report "DTACK should have been 1." severity error;
		assert (D0 = '1') report "D0 should have been 1." severity error;
		assert (D1 = '1') report "D1 should have been 1." severity error;
		assert (D2 = '1') report "D2 should have been 1." severity error;
		assert (D3 = '1') report "D3 should have been 1." severity error;
		assert (D7 = '0') report "D7 should have been 1." severity error;
		assert (ROMADR = "0000") report "ROMADR should have been 0000." severity error;
		assert (OE245 = '0') report "OE245 should have been 0." severity error;
-- TEST ADRESSING 000000 - 07FFFF DIPSW0 = 0 DIPSW1 = 1 SYS III ROM
		NPS <= '1';
		DIPSW1 <= '1';
		wait for 10 ns;
		report "TEST ADRESSING 000000 - 07FFFF DIPSW0 = 0 DIPSW1 = 1 SYS III ROM";
		assert (NCERAM = '1') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '0') report "NCEROM should have been 0." severity error;
		assert (NOE = '0') report "NOE should have been 0." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '1') report "IMA should have been 1." severity error;
		assert (DTACK = '1') report "DTACK should have been 1." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "0001") report "ROMADR should have been 0000." severity error;
		assert (OE245 = '0') report "OE245 should have been 0." severity error;		
-- TEST ADRESSING 000000 - 07FFFF DIPSW0 = 1 DIPSW1 = 0 Diag ROM
		NPS <= '1';
		DIPSW1 <= '0';
		DIPSW0 <= '1';		
		wait for 10 ns;
		report "TEST ADRESSING 000000 - 07FFFF DIPSW0 = 1 DIPSW1 = 0 Diag ROM";
		assert (NCERAM = '1') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '0') report "NCEROM should have been 0." severity error;
		assert (NOE = '0') report "NOE should have been 0." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '1') report "IMA should have been 1." severity error;
		assert (DTACK = '1') report "DTACK should have been 1." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "0010") report "ROMADR should have been 0010." severity error;
		assert (OE245 = '0') report "OE245 should have been 0." severity error;	
-- TEST ADRESSING 000000 - 07FFFF DIPSW0 = 1 DIPSW1 = 1 ROM Disabled use internal ROM cart.
		
		NPS <= '1';
		DIPSW1 <= '1';
		DIPSW0 <= '1';		
		wait for 10 ns;
		report "TEST ADRESSING 000000 - 07FFFF DIPSW0 = 1 DIPSW1 = 1 ROM Disabled use internal ROM cart.";
		assert (NCERAM = '1') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '1') report "NCEROM should have been 1." severity error;
		assert (NOE = '0') report "NOE should have been 1." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '0') report "IMA should have been 0." severity error;
		assert (DTACK = '0') report "DTACK should have been 0." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "ZZZZ") report "ROMADR should have been ZZZZ." severity error;
		assert (OE245 = '1') report "OE245 should have been 1." severity error;		
-- TEST ADRESSING 080000 - 0FFFFF DIPSW2 = 0 Region disabled		
		ADRIN <= "00001";
		wait for 10 ns;
		report "TEST ADRESSING 080000 - 0FFFFF DIPSW2 = 0 Region disabled";
		assert (NCERAM = '1') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '1') report "NCEROM should have been 1." severity error;
		assert (NOE = '0') report "NOE should have been 1." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '0') report "IMA should have been 0." severity error;
		assert (DTACK = '0') report "DTACK should have been 0." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "ZZZZ") report "ROMADR should have been ZZZZ." severity error;
		assert (OE245 = '1') report "OE245 should have been 1." severity error;
-- TEST ADDRESSING 080000 -0FFFFF DIPSW2 = 1 BASIC ROM ENABLED
		NPS <= '1';
		ADRIN <= "00001";
		DIPSW2 <= '1';
		wait for 10 ns;
		report "TEST ADDRESSING 080000 -0FFFFF DIPSW2 = 1 BASIC ROM ENABLED";
		assert (NCERAM = '1') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '0') report "NCEROM should have been 0." severity error;
		assert (NOE = '0') report "NOE should have been 0." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '1') report "IMA should have been 1." severity error;
		assert (DTACK = '1') report "DTACK should have been 1." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "0011") report "ROMADR should have been 0000." severity error;
		assert (OE245 = '0') report "OE245 should have been 0." severity error;		
-- TEST ADRESSING 100000 - 2FFFFF DIPSW3 = 0	DIPSW4 = 0 Software engineering ROM	
		ADRIN <= "00010";
		DIPSW3 <= '0';
		DIPSW4 <= '0';
		wait for 10 ns;
		report "TEST ADRESSING 100000 - 2FFFFF DIPSW3=0 DIPSW4=0 Software engineering ROM";
		assert (NCERAM = '1') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '0') report "NCEROM should have been 0." severity error;
		assert (NOE = '0') report "NOE should have been 0." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '1') report "IMA should have been 1." severity error;
		assert (DTACK = '1') report "DTACK should have been 1." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "0100") report "ROMADR should have been 0000." severity error;
		assert (OE245 = '0') report "OE245 should have been 0." severity error;
		ADRIN <= "00011";
		wait for 10 ns;
		assert (NCERAM = '1') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '0') report "NCEROM should have been 0." severity error;
		assert (NOE = '0') report "NOE should have been 0." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '1') report "IMA should have been 1." severity error;
		assert (DTACK = '1') report "DTACK should have been 1." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "0101") report "ROMADR should have been 0000." severity error;
		assert (OE245 = '0') report "OE245 should have been 0." severity error;	
		ADRIN <= "00100";
		wait for 10 ns;
		assert (NCERAM = '1') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '0') report "NCEROM should have been 0." severity error;
		assert (NOE = '0') report "NOE should have been 0." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '1') report "IMA should have been 1." severity error;
		assert (DTACK = '1') report "DTACK should have been 1." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "0110") report "ROMADR should have been 0000." severity error;
		assert (OE245 = '0') report "OE245 should have been 0." severity error;	
		ADRIN <= "00101";
		wait for 10 ns;
		assert (NCERAM = '1') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '0') report "NCEROM should have been 0." severity error;
		assert (NOE = '0') report "NOE should have been 0." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '1') report "IMA should have been 1." severity error;
		assert (DTACK = '1') report "DTACK should have been 1." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "0111") report "ROMADR should have been 0000." severity error;
		assert (OE245 = '0') report "OE245 should have been 0." severity error;

-- TEST ADRESSING 100000 - 2FFFFF DIPSW3 = 0 DIPSW4 = 1 AUX ROM	
		ADRIN <= "00010";
		DIPSW3 <= '0';
		DIPSW4 <= '1';
		wait for 10 ns;
		report "TEST ADRESSING 100000 - 2FFFFF DIPSW3 = 0 DIPSW4 = 1 AUX ROM";
		assert (NCERAM = '1') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '0') report "NCEROM should have been 0." severity error;
		assert (NOE = '0') report "NOE should have been 0." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '1') report "IMA should have been 1." severity error;
		assert (DTACK = '1') report "DTACK should have been 1." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "1000") report "ROMADR should have been 0000." severity error;
		assert (OE245 = '0') report "OE245 should have been 0." severity error;
		ADRIN <= "00011";
		wait for 10 ns;
		assert (NCERAM = '1') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '0') report "NCEROM should have been 0." severity error;
		assert (NOE = '0') report "NOE should have been 0." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '1') report "IMA should have been 1." severity error;
		assert (DTACK = '1') report "DTACK should have been 1." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "1001") report "ROMADR should have been 0000." severity error;
		assert (OE245 = '0') report "OE245 should have been 0." severity error;	
		ADRIN <= "00100";
		wait for 10 ns;
		assert (NCERAM = '1') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '0') report "NCEROM should have been 0." severity error;
		assert (NOE = '0') report "NOE should have been 0." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '1') report "IMA should have been 1." severity error;
		assert (DTACK = '1') report "DTACK should have been 1." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "1010") report "ROMADR should have been 0000." severity error;
		assert (OE245 = '0') report "OE245 should have been 0." severity error;	
		ADRIN <= "00101";
		wait for 10 ns;
		assert (NCERAM = '1') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '0') report "NCEROM should have been 0." severity error;
		assert (NOE = '0') report "NOE should have been 0." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '1') report "IMA should have been 1." severity error;
		assert (DTACK = '1') report "DTACK should have been 1." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "1011") report "ROMADR should have been 0000." severity error;
		assert (OE245 = '0') report "OE245 should have been 0." severity error;
		
		
-- TEST ADRESSING 100000 - 2FFFFF DIPSW3 = 0 DIPSW4 = X Disabled
		ADRIN <= "00010";
		DIPSW3 <= '1';
		DIPSW4 <= 'X';
		wait for 10 ns;
		report "TEST ADRESSING 100000 - 2FFFFF DIPSW3 = 0 DIPSW4 = X Disabled";
		assert (NCERAM = '1') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '1') report "NCEROM should have been 1." severity error;
		assert (NOE = '0') report "NOE should have been 0." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '0') report "IMA should have been 0." severity error;
		assert (DTACK = '0') report "DTACK should have been 0." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "ZZZZ") report "ROMADR should have been ZZZZ." severity error;
		assert (OE245 = '1') report "OE245 should have been 1." severity error;
		ADRIN <= "00011";
		wait for 10 ns;
		assert (NCERAM = '1') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '1') report "NCEROM should have been 1." severity error;
		assert (NOE = '0') report "NOE should have been 0." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '0') report "IMA should have been 0." severity error;
		assert (DTACK = '0') report "DTACK should have been 0." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "ZZZZ") report "ROMADR should have been ZZZZ." severity error;
		assert (OE245 = '1') report "OE245 should have been 1." severity error;	
		ADRIN <= "00100";
		wait for 10 ns;
		assert (NCERAM = '1') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '1') report "NCEROM should have been 0." severity error;
		assert (NOE = '0') report "NOE should have been 0." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '0') report "IMA should have been 0." severity error;
		assert (DTACK = '0') report "DTACK should have been 0." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "ZZZZ") report "ROMADR should have been ZZZZ." severity error;
		assert (OE245 = '1') report "OE245 should have been 1." severity error;	
		ADRIN <= "00101";
		wait for 10 ns;
		assert (NCERAM = '1') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '1') report "NCEROM should have been 1." severity error;
		assert (NOE = '0') report "NOE should have been 0." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '0') report "IMA should have been 0." severity error;
		assert (DTACK = '0') report "DTACK should have been 0." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "ZZZZ") report "ROMADR should have been ZZZZ." severity error;
		assert (OE245 = '1') report "OE245 should have been 1." severity error;		
-- TEST ADRESSING 300000 - 4FFFFF DIPSW5=0 Disabled 		
		ADRIN <= "00110";
		wait for 10 ns;
		report "TEST ADRESSING 300000 - 4FFFFF DIPSW5 = 0 Disabled";
		assert (NCERAM = '1') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '1') report "NCEROM should have been 1." severity error;
		assert (NOE = '0') report "NOE should have been 0." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '0') report "IMA should have been 0." severity error;
		assert (DTACK = '0') report "DTACK should have been 0." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "ZZZZ") report "ROMADR should have been ZZZZ." severity error;
		assert (OE245 = '1') report "OE245 should have been 1." severity error;		
		ADRIN <= "00111";
		wait for 10 ns;
		assert (NCERAM = '1') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '1') report "NCEROM should have been 1." severity error;
		assert (NOE = '0') report "NOE should have been 0." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '0') report "IMA should have been 0." severity error;
		assert (DTACK = '0') report "DTACK should have been 0." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "ZZZZ") report "ROMADR should have been ZZZZ." severity error;
		assert (OE245 = '1') report "OE245 should have been 1." severity error;		
		ADRIN <= "01000";
		wait for 10 ns;
		assert (NCERAM = '1') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '1') report "NCEROM should have been 1." severity error;
		assert (NOE = '0') report "NOE should have been 0." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '0') report "IMA should have been 0." severity error;
		assert (DTACK = '0') report "DTACK should have been 0." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "ZZZZ") report "ROMADR should have been ZZZZ." severity error;
		assert (OE245 = '1') report "OE245 should have been 1." severity error;
		ADRIN <= "01001";
		wait for 10 ns;
		assert (NCERAM = '1') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '1') report "NCEROM should have been 1." severity error;
		assert (NOE = '0') report "NOE should have been 0." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '0') report "IMA should have been 0." severity error;
		assert (DTACK = '0') report "DTACK should have been 0." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "ZZZZ") report "ROMADR should have been ZZZZ." severity error;
		assert (OE245 = '1') report "OE245 should have been 1." severity error;		
		
-- TEST ADRESSING 300000 - 4FFFFF DIPSW5 = 1	AUX ROM 2 		
		ADRIN <= "00110";
		DIPSW5 <= '1';
		wait for 10 ns;
		report "TEST ADRESSING 300000 - 4FFFFF DIPSW5 = 1 AUX ROM 2";
		assert (NCERAM = '1') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '0') report "NCEROM should have been 0." severity error;
		assert (NOE = '0') report "NOE should have been 0." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '1') report "IMA should have been 1." severity error;
		assert (DTACK = '1') report "DTACK should have been 1." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "1100") report "ROMADR should have been 1100." severity error;
		assert (OE245 = '0') report "OE245 should have been 0." severity error;		
		ADRIN <= "00111";
		wait for 10 ns;
		assert (NCERAM = '1') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '0') report "NCEROM should have been 0." severity error;
		assert (NOE = '0') report "NOE should have been 0." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '1') report "IMA should have been 1." severity error;
		assert (DTACK = '1') report "DTACK should have been 1." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "1101") report "ROMADR should have been 1101." severity error;
		assert (OE245 = '0') report "OE245 should have been 0." severity error;		
		ADRIN <= "01000";
		wait for 10 ns;
		assert (NCERAM = '1') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '0') report "NCEROM should have been 0." severity error;
		assert (NOE = '0') report "NOE should have been 0." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '1') report "IMA should have been 1." severity error;
		assert (DTACK = '1') report "DTACK should have been 1." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "1110") report "ROMADR should have been 1110." severity error;
		assert (OE245 = '0') report "OE245 should have been 0." severity error;
		
		ADRIN <= "01001";
		wait for 10 ns;
		assert (NCERAM = '1') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '0') report "NCEROM should have been 0." severity error;
		assert (NOE = '0') report "NOE should have been 0." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '1') report "IMA should have been 1." severity error;
		assert (DTACK = '1') report "DTACK should have been 1." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "1111") report "ROMADR should have been 1111." severity error;
		assert (OE245 = '0') report "OE245 should have been 0." severity error;		

	
		ADRIN <= "01010";
		wait for 10 ns;
		report "Non used memory region.";
		assert (NCERAM = '1') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '1') report "NCEROM should have been 0." severity error;
		assert (NOE = '0') report "NOE should have been 0." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '0') report "IMA should have been 1." severity error;
		assert (DTACK = '0') report "DTACK should have been 1." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "ZZZZ") report "ROMADR should have been 0000." severity error;
		assert (OE245 = '1') report "OE245 should have been 0." severity error;	

		ADRIN <= "01011";
		wait for 10 ns;
		assert (NCERAM = '1') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '1') report "NCEROM should have been 0." severity error;
		assert (NOE = '0') report "NOE should have been 0." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '0') report "IMA should have been 1." severity error;
		assert (DTACK = '0') report "DTACK should have been 1." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "ZZZZ") report "ROMADR should have been 0000." severity error;
		assert (OE245 = '1') report "OE245 should have been 0." severity error;	

		ADRIN <= "01011";
		wait for 10 ns;
		assert (NCERAM = '1') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '1') report "NCEROM should have been 0." severity error;
		assert (NOE = '0') report "NOE should have been 0." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '0') report "IMA should have been 1." severity error;
		assert (DTACK = '0') report "DTACK should have been 1." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "ZZZZ") report "ROMADR should have been 0000." severity error;
		assert (OE245 = '1') report "OE245 should have been 0." severity error;


		ADRIN <= "01011";
		wait for 10 ns;
		assert (NCERAM = '1') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '1') report "NCEROM should have been 0." severity error;
		assert (NOE = '0') report "NOE should have been 0." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '0') report "IMA should have been 1." severity error;
		assert (DTACK = '0') report "DTACK should have been 1." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "ZZZZ") report "ROMADR should have been 0000." severity error;
		assert (OE245 = '1') report "OE245 should have been 0." severity error;	


		ADRIN <= "01100";
		wait for 10 ns;
		assert (NCERAM = '1') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '1') report "NCEROM should have been 0." severity error;
		assert (NOE = '0') report "NOE should have been 0." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '0') report "IMA should have been 1." severity error;
		assert (DTACK = '0') report "DTACK should have been 1." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "ZZZZ") report "ROMADR should have been 0000." severity error;
		assert (OE245 = '1') report "OE245 should have been 0." severity error;


		ADRIN <= "01101";
		wait for 10 ns;
		assert (NCERAM = '1') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '1') report "NCEROM should have been 0." severity error;
		assert (NOE = '0') report "NOE should have been 0." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '0') report "IMA should have been 1." severity error;
		assert (DTACK = '0') report "DTACK should have been 1." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "ZZZZ") report "ROMADR should have been 0000." severity error;
		assert (OE245 = '1') report "OE245 should have been 0." severity error;	


		ADRIN <= "01110";
		wait for 10 ns;
		assert (NCERAM = '1') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '1') report "NCEROM should have been 0." severity error;
		assert (NOE = '0') report "NOE should have been 0." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '0') report "IMA should have been 1." severity error;
		assert (DTACK = '0') report "DTACK should have been 1." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "ZZZZ") report "ROMADR should have been 0000." severity error;
		assert (OE245 = '1') report "OE245 should have been 0." severity error;


		ADRIN <= "01111";
		wait for 10 ns;
		assert (NCERAM = '1') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '1') report "NCEROM should have been 0." severity error;
		assert (NOE = '0') report "NOE should have been 0." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '0') report "IMA should have been 1." severity error;
		assert (DTACK = '0') report "DTACK should have been 1." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "ZZZZ") report "ROMADR should have been 0000." severity error;
		assert (OE245 = '1') report "OE245 should have been 0." severity error;	

		ADRIN <= "10000";
		wait for 10 ns;
		assert (NCERAM = '0') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '1') report "NCEROM should have been 0." severity error;
		assert (NOE = '0') report "NOE should have been 0." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '1') report "IMA should have been 1." severity error;
		assert (DTACK = '1') report "DTACK should have been 1." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "0000") report "ROMADR should have been 0000." severity error;
		assert (OE245 = '0') report "OE245 should have been 0." severity error;


		ADRIN <= "10001";
		wait for 10 ns;
		assert (NCERAM = '0') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '1') report "NCEROM should have been 0." severity error;
		assert (NOE = '0') report "NOE should have been 0." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '1') report "IMA should have been 1." severity error;
		assert (DTACK = '1') report "DTACK should have been 1." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "0001") report "ROMADR should have been 0000." severity error;
		assert (OE245 = '0') report "OE245 should have been 0." severity error;	


		ADRIN <= "10010";
		wait for 10 ns;
		assert (NCERAM = '0') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '1') report "NCEROM should have been 0." severity error;
		assert (NOE = '0') report "NOE should have been 0." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '1') report "IMA should have been 1." severity error;
		assert (DTACK = '1') report "DTACK should have been 1." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "0010") report "ROMADR should have been 0000." severity error;
		assert (OE245 = '0') report "OE245 should have been 0." severity error;

		ADRIN <= "10011";
		wait for 10 ns;
		assert (NCERAM = '0') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '1') report "NCEROM should have been 0." severity error;
		assert (NOE = '0') report "NOE should have been 0." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '1') report "IMA should have been 1." severity error;
		assert (DTACK = '1') report "DTACK should have been 1." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "0011") report "ROMADR should have been 0000." severity error;
		assert (OE245 = '0') report "OE245 should have been 0." severity error;

		ADRIN <= "10100";
		wait for 10 ns;
		assert (NCERAM = '0') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '1') report "NCEROM should have been 0." severity error;
		assert (NOE = '0') report "NOE should have been 0." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '1') report "IMA should have been 1." severity error;
		assert (DTACK = '1') report "DTACK should have been 1." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "0100") report "ROMADR should have been 0000." severity error;
		assert (OE245 = '0') report "OE245 should have been 0." severity error;

		ADRIN <= "10101";
		wait for 10 ns;
		assert (NCERAM = '0') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '1') report "NCEROM should have been 0." severity error;
		assert (NOE = '0') report "NOE should have been 0." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '1') report "IMA should have been 1." severity error;
		assert (DTACK = '1') report "DTACK should have been 1." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "0101") report "ROMADR should have been 0000." severity error;
		assert (OE245 = '0') report "OE245 should have been 0." severity error;

		ADRIN <= "10110";
		wait for 10 ns;
		assert (NCERAM = '0') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '1') report "NCEROM should have been 0." severity error;
		assert (NOE = '0') report "NOE should have been 0." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '1') report "IMA should have been 1." severity error;
		assert (DTACK = '1') report "DTACK should have been 1." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "0110") report "ROMADR should have been 0000." severity error;
		assert (OE245 = '0') report "OE245 should have been 0." severity error;

		ADRIN <= "10111";
		wait for 10 ns;
		assert (NCERAM = '0') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '1') report "NCEROM should have been 0." severity error;
		assert (NOE = '0') report "NOE should have been 0." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '1') report "IMA should have been 1." severity error;
		assert (DTACK = '1') report "DTACK should have been 1." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "0111") report "ROMADR should have been 0000." severity error;
		assert (OE245 = '0') report "OE245 should have been 0." severity error;

		ADRIN <= "11000";
		wait for 10 ns;
		assert (NCERAM = '0') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '1') report "NCEROM should have been 0." severity error;
		assert (NOE = '0') report "NOE should have been 0." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '1') report "IMA should have been 1." severity error;
		assert (DTACK = '1') report "DTACK should have been 1." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "1000") report "ROMADR should have been 0000." severity error;
		assert (OE245 = '0') report "OE245 should have been 0." severity error;

		ADRIN <= "11001";
		wait for 10 ns;
		assert (NCERAM = '0') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '1') report "NCEROM should have been 0." severity error;
		assert (NOE = '0') report "NOE should have been 0." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '1') report "IMA should have been 1." severity error;
		assert (DTACK = '1') report "DTACK should have been 1." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "1001") report "ROMADR should have been 0000." severity error;
		assert (OE245 = '0') report "OE245 should have been 0." severity error;

		ADRIN <= "11010";
		wait for 10 ns;
		assert (NCERAM = '0') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '1') report "NCEROM should have been 0." severity error;
		assert (NOE = '0') report "NOE should have been 0." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '1') report "IMA should have been 1." severity error;
		assert (DTACK = '1') report "DTACK should have been 1." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "1010") report "ROMADR should have been 0000." severity error;
		assert (OE245 = '0') report "OE245 should have been 0." severity error;

		ADRIN <= "11011";
		wait for 10 ns;
		assert (NCERAM = '0') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '1') report "NCEROM should have been 0." severity error;
		assert (NOE = '0') report "NOE should have been 0." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '1') report "IMA should have been 1." severity error;
		assert (DTACK = '1') report "DTACK should have been 1." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "1011") report "ROMADR should have been 0000." severity error;
		assert (OE245 = '0') report "OE245 should have been 0." severity error;

		ADRIN <= "11100";
		wait for 10 ns;
		assert (NCERAM = '0') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '1') report "NCEROM should have been 0." severity error;
		assert (NOE = '0') report "NOE should have been 0." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '1') report "IMA should have been 1." severity error;
		assert (DTACK = '1') report "DTACK should have been 1." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "1100") report "ROMADR should have been 0000." severity error;
		assert (OE245 = '0') report "OE245 should have been 0." severity error;

		ADRIN <= "11101";
		wait for 10 ns;
		assert (NCERAM = '0') report "NCERAM should have been 0." severity error;
		assert (NCEROM = '1') report "NCEROM should have been 1." severity error;
		assert (NOE = '0') report "NOE should have been 0." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '1') report "IMA should have been 1." severity error;
		assert (DTACK = '1') report "DTACK should have been 1." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "1101") report "ROMADR should have been 1101." severity error;
		assert (OE245 = '0') report "OE245 should have been 0." severity error;

		ADRIN <= "11110";
		wait for 10 ns;
		assert (NCERAM = '1') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '1') report "NCEROM should have been 1." severity error;
		assert (NOE = '0') report "NOE should have been 0." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '0') report "IMA should have been 0." severity error;
		assert (DTACK = '0') report "DTACK should have been 0." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "ZZZZ") report "ROMADR should have been ZZZZ." severity error;
		assert (OE245 = '1') report "OE245 should have been 1." severity error;

		ADRIN <= "11111";
		wait for 10 ns;
		assert (NCERAM = '1') report "NCERAM should have been 1." severity error;
		assert (NCEROM = '1') report "NCEROM should have been 1." severity error;
		assert (NOE = '0') report "NOE should have been 0." severity error;
		assert (NWE = '1') report "NWE should have been 1." severity error;
		assert (IMA = '0') report "IMA should have been 0." severity error;
		assert (DTACK = '0') report "DTACK should have been 0." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "ZZZZ") report "ROMADR should have been ZZZZ." severity error;
		assert (OE245 = '1') report "OE245 should have been 1." severity error;

		ADRIN <= "00000";
		STM32_BUSEN <= '0';
		wait for 10 ns;
		report "TEST STM32 MEMORY ACCESS.";
		assert (NCERAM = 'Z') report "NCERAM should have been Z." severity error;
		assert (NCEROM = 'Z') report "NCEROM should have been Z." severity error;
		assert (NOE = 'Z') report "NOE should have been Z." severity error;
		assert (NWE = 'Z') report "NWE should have been Z." severity error;
		assert (IMA = '0') report "IMA should have been 0." severity error;
		assert (DTACK = '0') report "DTACK should have been 0." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "0000") report "ROMADR should have been 0000." severity error;
		assert (OE245 = '1') report "OE245 should have been 1." severity error;
		ADRIN <= "01111";
		STM32_BUSEN <= '0';
		wait for 10 ns;
		report "TEST STM32 MEMORY ACCESS.";
		assert (NCERAM = 'Z') report "NCERAM should have been Z." severity error;
		assert (NCEROM = 'Z') report "NCEROM should have been Z." severity error;
		assert (NOE = 'Z') report "NOE should have been Z." severity error;
		assert (NWE = 'Z') report "NWE should have been Z." severity error;
		assert (IMA = '0') report "IMA should have been 0." severity error;
		assert (DTACK = '0') report "DTACK should have been 0." severity error;
		assert (D0 = 'Z') report "D0 should have been Z." severity error;
		assert (D1 = 'Z') report "D1 should have been Z." severity error;
		assert (D2 = 'Z') report "D2 should have been Z." severity error;
		assert (D3 = 'Z') report "D3 should have been Z." severity error;
		assert (D7 = 'Z') report "D7 should have been Z." severity error;
		assert (ROMADR = "1111") report "ROMADR should have been 1111." severity error;
		assert (OE245 = '1') report "OE245 should have been 1." severity error;
		assert false report "Test done." severity note;
   end process;
 


END;
