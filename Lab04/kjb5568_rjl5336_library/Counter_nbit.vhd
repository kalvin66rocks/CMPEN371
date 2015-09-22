----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:31:33 09/17/2015 
-- Design Name: 
-- Module Name:    Counter_nbit - Behavioral 
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

entity Counter_nbit is
 generic (n : integer := 8);
 port (EN : in STD_LOGIC;
 CLK : in STD_LOGIC;
 CLR : in STD_LOGIC;
 Q : out STD_LOGIC_VECTOR (n-1 downto 0));
end Counter_nbit;

architecture Behavioral of Counter_nbit is

begin

process(CLK) is 
begin
	if(clk'event and clk = '1') then
		if(clr = '1') then
			Q <= (others => '0');
		elsif(load ='1') then
			Q <= D;
		end if;
	end if;
end process;	


end Behavioral;

