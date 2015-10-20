----------------------------------------------------------------------------
-- Entity:        LightShowROM 
-- Written By:    E. George Walters
-- Date Created:  7 Oct 14
-- Description:   VHDL model of ROM for CMPEN 371 FA15 Lab07 programmable 
--    light show.
--
-- Revision History (date, initials, description):
--    11 Oct 15, egw100, updated for FA 15
-- Dependencies:
--		(none)
----------------------------------------------------------------------------
library IEEE;
use     IEEE.STD_LOGIC_1164.ALL;
use     IEEE.NUMERIC_STD.ALL;

----------------------------------------------------------------------------
entity LightShowROM is
	port (ADDRESS  : in  STD_LOGIC_VECTOR (9 downto 0);
         CLK      : in  STD_LOGIC;
		   DATA_out : out STD_LOGIC_VECTOR (19 downto 0));
end LightShowROM;
----------------------------------------------------------------------------

architecture Behavioral of LightShowROM is

	type ROM_TYPE is ARRAY (0 to 1023) of STD_LOGIC_VECTOR(19 downto 0);
	constant ROM : ROM_TYPE := (
      -- opCode   Data
          x"4"  & "1000000000000001", -- Load LED
          x"1"  & "0000000001111111", -- Delay 127 ms (approx 1/8 sec)
          x"4"  & "0100000000000010", -- Load LED
          x"1"  & "0000000001111111", -- Delay 127 ms (approx 1/8 sec)
          x"4"  & "0010000000000100", -- Load LED
          x"1"  & "0000000001111111", -- Delay 127 ms (approx 1/8 sec)
          x"4"  & "0001000000001000", -- Load LED
          x"1"  & "0000000001111111", -- Delay 127 ms (approx 1/8 sec)
          x"4"  & "0000100000010000", -- Load LED
          x"1"  & "0000000001111111", -- Delay 127 ms (approx 1/8 sec)
          x"4"  & "0000010000100000", -- Load LED
          x"1"  & "0000000001111111", -- Delay 127 ms (approx 1/8 sec)
          x"4"  & "0000001001000000", -- Load LED
          x"1"  & "0000000001111111", -- Delay 127 ms (approx 1/8 sec)
          x"4"  & "0000000110000000", -- Load LED
          x"1"  & "0000000001111111", -- Delay 127 ms (approx 1/8 sec)

          x"4"  & "0000001001000000", -- Load LED
          x"1"  & "0000000000001111", -- Delay 31 ms (approx 1/64 sec)
          x"4"  & "0000010000100000", -- Load LED
          x"1"  & "0000000000001111", -- Delay 31 ms (approx 1/64 sec)
          x"4"  & "0000100000010000", -- Load LED
          x"1"  & "0000000000001111", -- Delay 31 ms (approx 1/64 sec)
          x"4"  & "0001000000001000", -- Load LED
          x"1"  & "0000000000001111", -- Delay 31 ms (approx 1/64 sec)
          x"4"  & "0010000000000100", -- Load LED
          x"1"  & "0000000000001111", -- Delay 31 ms (approx 1/64 sec)
          x"4"  & "0100000000000010", -- Load LED
          x"1"  & "0000000000001111", -- Delay 31 ms (approx 1/64 sec)
          x"4"  & "1000000000000001", -- Load LED
          x"1"  & "0000000000001111", -- Delay 31 ms (approx 1/64 sec)

          x"8"  & "0000000000000000", -- Jump 0
          x"9"  & "0000000000000000", -- Branch if right is pushed
          x"10" & "0000000000000000", -- Branch if center is pushed
			 x"12" & "0000000000000000", -- Branch if left is pushed
                --"0000001111111111"
          
          others => (others => '0')
	);
   
begin

	process (CLK)
	begin
      if (CLK'event and CLK = '1') then
         DATA_out <= ROM(to_integer(unsigned(ADDRESS)));
      end if;
	end process;
	
end Behavioral;

