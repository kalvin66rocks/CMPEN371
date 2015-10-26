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
			  BUTTON 	: in  STD_LOGIC_VECTOR (4 downto 0);
           Clk 		: in  STD_LOGIC;
           HSYNC 		: out  STD_LOGIC;
           VSYNC 		: out  STD_LOGIC;
           RGB_out 	: out  STD_LOGIC_VECTOR (11 downto 0));
end Lab08_kjb5568_rjl5336;

architecture Structural of Lab08_kjb5568_rjl5336 is
signal button_d : std_logic_vector (4 downto 0);

component VGA_Control is
    Port ( X_out 		: out  STD_LOGIC_VECTOR (9 downto 0);
           Y_out 		: out  STD_LOGIC_VECTOR (9 downto 0);
           RGB_in 	: in  STD_LOGIC_VECTOR (11 downto 0);
           Clk 		: in  STD_LOGIC;
           HSYNC 		: out  STD_LOGIC;
           VSYNC 		: out  STD_LOGIC;
           RGB_out 	: out  STD_LOGIC_VECTOR (11 downto 0));
end component;

COMPONENT Image_Generator
	PORT(
		Switch 	: IN std_logic_vector(11 downto 0);
		Button 	: IN std_logic_vector(4 downto 0);
		clk 	: in 	STD_LOGIC;
		X_in 		: IN std_logic_vector(9 downto 0);
		Y_in 		: IN std_logic_vector(9 downto 0);          
		RGB_out  : OUT std_logic_vector(11 downto 0)
		);
	END COMPONENT;
	
signal x : std_logic_vector(9 downto 0);
signal y : std_logic_vector(9 downto 0);
signal RGB : std_logic_vector(11 downto 0);
signal pulse_debounce : std_logic;

begin

Pulse_d : Pulse_Gen generic map (20, 1000000) port map (
		EN    => '1',
		CLK   => CLK,
		CLR   => '0',
		PULSE => pulse_debounce );

Inst_VGA_Control: VGA_Control PORT MAP(
		X_out => x,
		Y_out => y,
		RGB_in => RGB,
		Clk => CLK,
		HSYNC => HSYNC,
		VSYNC => VSYNC,
		RGB_out => RGB_out
	);
	
Inst_Image_Generator: Image_Generator PORT MAP(
		Switch => Switch,
		Button => button_d,
		clk => clk,
		X_in => x,
		Y_in => y,
		RGB_out => RGB
	);
	
DB0 : Debouncer port map(
	D => button(0),
	CLK => clk,
	PULSE => pulse_debounce,
	Q => button_d(0)
	);

DB1 : Debouncer port map(
	D => button(1),
	CLK => clk,
	PULSE => pulse_debounce,
	Q => button_d(1)
	);
	
DB2 : Debouncer port map(
	D => button(2),
	CLK => clk,
	PULSE => pulse_debounce,
	Q => button_d(2)
	);
	
DB3 : Debouncer port map(
	D => button(3),
	CLK => clk,
	PULSE => pulse_debounce,
	Q => button_d(3)
	);
	
DB4 : Debouncer port map(
	D => button(4),
	CLK => clk,
	PULSE => pulse_debounce,
	Q => button_d(4)
	);
	



end Structural;

