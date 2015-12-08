----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:39:54 12/01/2015 
-- Design Name: 
-- Module Name:    CircleROM - Behavioral 
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
use ieee.numeric_std.ALL;

entity CircleROM is
	port(	ADDRESS	:	in std_logic_vector(8 downto 0);
			CLK		:	in std_logic;
			DATA_OUT	:	out std_logic_vector(11 downto 0)
	);
end CircleROM;

architecture Behavioral of CircleROM is
	type ROM_TYPE is ARRAY(0 to 511) of std_logic_vector(11 downto 0);
	constant ROM : ROM_TYPE := (
x"fff", x"fff", x"fff", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"fff", x"fff", x"fff", 
x"fff", x"fff", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"fff", x"fff", 
x"fff", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"fff", 
x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"fff", x"fff", x"fff", x"fff", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", 
x"000", x"000", x"000", x"000", x"000", x"000", x"fff", x"fff", x"fff", x"fff", x"fff", x"fff", x"fff", x"fff", x"000", x"000", x"000", x"000", x"000", x"000", 
x"000", x"000", x"000", x"000", x"000", x"fff", x"fff", x"fff", x"fff", x"fff", x"fff", x"fff", x"fff", x"fff", x"fff", x"000", x"000", x"000", x"000", x"000", 
x"000", x"000", x"000", x"000", x"fff", x"fff", x"fff", x"fff", x"fff", x"fff", x"fff", x"fff", x"fff", x"fff", x"fff", x"fff", x"000", x"000", x"000", x"000", 
x"000", x"000", x"000", x"000", x"fff", x"fff", x"fff", x"000", x"000", x"fff", x"fff", x"000", x"000", x"fff", x"fff", x"fff", x"fff", x"000", x"000", x"000", 
x"000", x"000", x"000", x"fff", x"fff", x"fff", x"fff", x"000", x"000", x"fff", x"fff", x"000", x"000", x"fff", x"fff", x"fff", x"fff", x"000", x"000", x"000", 
x"000", x"000", x"000", x"fff", x"fff", x"fff", x"fff", x"fff", x"fff", x"fff", x"fff", x"fff", x"fff", x"fff", x"fff", x"fff", x"fff", x"000", x"000", x"000", 
x"000", x"000", x"000", x"fff", x"fff", x"fff", x"fff", x"fff", x"fff", x"fff", x"fff", x"fff", x"fff", x"fff", x"fff", x"fff", x"fff", x"000", x"000", x"000", 
x"000", x"000", x"000", x"fff", x"fff", x"fff", x"fff", x"fff", x"fff", x"fff", x"fff", x"fff", x"fff", x"fff", x"000", x"fff", x"fff", x"000", x"000", x"000", 
x"000", x"000", x"000", x"000", x"fff", x"fff", x"000", x"000", x"fff", x"fff", x"fff", x"fff", x"fff", x"000", x"000", x"fff", x"fff", x"000", x"000", x"000", 
x"000", x"000", x"000", x"000", x"fff", x"fff", x"fff", x"000", x"000", x"fff", x"fff", x"fff", x"000", x"000", x"fff", x"fff", x"000", x"000", x"000", x"000", 
x"000", x"000", x"000", x"000", x"000", x"fff", x"fff", x"fff", x"000", x"000", x"000", x"000", x"000", x"fff", x"fff", x"000", x"000", x"000", x"000", x"000", 
x"000", x"000", x"000", x"000", x"000", x"000", x"fff", x"fff", x"fff", x"fff", x"fff", x"fff", x"fff", x"fff", x"000", x"000", x"000", x"000", x"000", x"000", 
x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"fff", x"fff", x"fff", x"fff", x"fff", x"fff", x"000", x"000", x"000", x"000", x"000", x"000", x"000", 
x"fff", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"fff", 
x"fff", x"fff", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"fff", x"fff", 
x"fff", x"fff", x"fff", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"fff", x"fff", x"fff", 
x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", 
x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", 
x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", 
x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", 
x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", 
x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000", x"000"
	);		

begin
	
	process(CLK) is
		begin
			if(CLK'event and CLK = '1') then
				DATA_OUT <= ROM(to_integer(unsigned(ADDRESS)));
			end if;
	end process;

end Behavioral;

