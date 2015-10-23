----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:51:47 10/21/2015 
-- Design Name: 
-- Module Name:    Lab08_kjb5568_rjl5336 - Structural 
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
library kjb5568_rjl5336_Library;
use     kjb5568_rjl5336_Library.kjb5568_rjl5336_Components.all;

entity Lab08_kjb5568_rjl5336 is
    Port ( Switch 	: in  STD_LOGIC_VECTOR (11 downto 0);
			  --BUTTON 	: in  STD_LOGIC_VECTOR (4 downto 0);
           Clk 		: in  STD_LOGIC;
           HSYNC 		: out  STD_LOGIC;
           VSYNC 		: out  STD_LOGIC;
           RGB_out 	: out  STD_LOGIC_VECTOR (11 downto 0));
end Lab08_kjb5568_rjl5336;

architecture Structural of Lab08_kjb5568_rjl5336 is

component VGA_Control is
    Port ( X_out 		: out  STD_LOGIC_VECTOR (9 downto 0);
           Y_out 		: out  STD_LOGIC_VECTOR (9 downto 0);
           RGB_in 	: in  STD_LOGIC_VECTOR (11 downto 0);
           Clk 		: in  STD_LOGIC;
           HSYNC 		: out  STD_LOGIC;
           VSYNC 		: out  STD_LOGIC;
           RGB_out 	: out  STD_LOGIC_VECTOR (11 downto 0));
end component;


begin

Inst_VGA_Control: VGA_Control PORT MAP(
		X_out => OPEN,
		Y_out => OPEN,
		RGB_in => SWITCH(11 downto 0),
		Clk => CLK,
		HSYNC => HSYNC,
		VSYNC => VSYNC,
		RGB_out => RGB_out
	);



end Structural;

