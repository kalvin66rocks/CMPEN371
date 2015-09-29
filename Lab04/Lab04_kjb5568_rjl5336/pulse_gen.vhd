----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:12:07 09/28/2015 
-- Design Name: 
-- Module Name:    pulse_gen - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;
library kjb5568_rjl5336_library;
use kjb5568_rjl5336_library.kjb5568_rjl5336_components.all;


entity pulse_gen is
 generic (n : integer := 4;
	maxCount : natural := 9);
	port (EN : in STD_LOGIC;
	CLK : in STD_LOGIC;
	CLR : in STD_LOGIC;
	PULSE : out STD_LOGIC);
end pulse_gen;
----------------------

architecture Behavioral of pulse_gen is

signal counter	: integer := 0;

begin

process (CLK) is
	begin
		if (counter < maxCount and EN = '1' and CLR = '0' and CLK = '1' and CLK'event) 
			then counter <= counter + 1; PULSE <= '0';
		end if;
		if ((counter = maxCount)) 
			then PULSE <= '1'; counter <= 0;
		end if;
		if (CLR = '1' and EN = '1') then counter <= 0;
		end if;
end process;



end Behavioral;

