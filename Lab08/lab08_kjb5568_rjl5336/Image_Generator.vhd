----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:26:10 10/24/2015 
-- Design Name: 
-- Module Name:    Image_Generator - Behavioral 
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
use IEEE.numeric_STD.ALL; 
library kjb5568_rjl5336_Library;
use     kjb5568_rjl5336_Library.kjb5568_rjl5336_Components.all;

entity Image_Generator is
    Port ( Switch : in  STD_LOGIC_VECTOR (11 downto 0);
           Button : in  STD_LOGIC_VECTOR (4 downto 0);
			  clk 	: in 	STD_LOGIC;
           X_in : in  STD_LOGIC_VECTOR (9 downto 0);
           Y_in : in  STD_LOGIC_VECTOR (9 downto 0);
           RGB_out : out  STD_LOGIC_VECTOR (11 downto 0));
end Image_Generator;

architecture Behavioral of Image_Generator is

signal v_les12 : std_logic;
signal v_grt468 : std_logic;
signal h_les12 : std_logic;
signal h_grt628 : std_logic;
signal box_u : std_logic;
signal box_d : std_logic;
signal box_l : std_logic;
signal box_r : std_logic;
signal right_border : std_logic;
signal left_border : std_logic;
signal box_border_u : std_logic_vector ( 9 downto 0) := "0100000100"; --240 +20
signal box_border_d : std_logic_vector ( 9 downto 0) := "0011011100"; --240 -20
signal box_border_l : std_logic_vector ( 9 downto 0); --:= "0100101100"; --320 -20
signal box_border_r : std_logic_vector ( 9 downto 0); --320 +20      := "0101010100"
signal horizontal_count : std_logic_vector ( 9 downto 0);
signal pulse_debounce : std_logic;
signal button_d : std_logic_vector (4 downto 0);


begin

Pulse_d : Pulse_Gen generic map (20, 1000000) port map (
		EN    => '1',
		CLK   => CLK,
		CLR   => '0',
		PULSE => pulse_debounce );
		
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

vles12 : LST generic map (10) port map (
	A =>	y_in,
	B =>	"0000001100",
	OUTPUT =>	v_les12);
	
vgrt468 : CompareGRT generic map (10) port map (
	A =>	y_in,
	B =>	"0111010100",
	OUTPUT =>	v_grt468);
	
hles12 : LST generic map (10) port map (
	A =>	x_in,
	B =>	"0000001100",
	OUTPUT =>	h_les12);
	
hgrt628 : CompareGRT generic map (10) port map (
	A =>	x_in,
	B =>	"1001110100", --currently set to 620 rather than 628
	OUTPUT =>	h_grt628);
borderbottom : LST generic map (10) port map (
	A =>	y_in,
	B =>	"0100000100", --260
	OUTPUT =>	box_d);
bordertop : CompareGRT generic map (10) port map (
	A =>	y_in,
	B =>	"0011011100",--220
	OUTPUT =>	box_u);
borderright : LST generic map (10) port map (
	A =>	x_in,
	B =>	box_border_r, --340
	OUTPUT =>	box_r);
borderleft : CompareGRT generic map (10) port map (
	A =>	x_in,
	B =>	box_border_l, --300
	OUTPUT =>	box_l);
hboxright : LST generic map (10) port map (
	A =>	box_border_r,
	B =>	"1001110101",
	OUTPUT =>	right_border);
hboxleft : CompareGRT generic map (10) port map (
	A =>	box_border_l,
	B =>	"0000001011",
	OUTPUT =>	left_border);
	
	
	
RightAdder: Ripple_Carry_Adder generic map (10) port map (
	A => "0000010000",
	B => box_border_l,
	C_in => '0',
	C_out => OPEN,
	Sum => box_border_r
	);
	
LeftAdder: Ripple_Carry_Adder generic map (10) port map (
	A => "0100101100",
	B => horizontal_count,
	C_in => '0',
	C_out => OPEN,
	Sum => box_border_l
	);
horizontalCounter : CounterUpDown_nbit generic map (10) port map (
		EN => pulse_debounce,
		UP => button_d(2) and right_border,
	 DOWN => button_d(0) and left_border,
	  CLK => clk,
	  CLR => '0',
	    Q => horizontal_count);
	




--UpAdder: Ripple_Carry_Adder generic map (10) port map (
--	A => "0000010000",
--	B => box_border_d,
--	C_in => '0',
--	C_out => OPEN,
--	Sum => box_border_u
--	);
--	
--DownAdder: Ripple_Carry_Adder generic map (10) port map (
--	A => "0011011100",
--	B => vertical_count,
--	C_in => '0',
--	C_out => OPEN,
--	Sum => box_border_d
--	);
--verticalCounter : CounterUpDown_nbit generic map (10) port map (
--		EN => pulse_debounce,
--		UP => button_d(4),
--	 DOWN => button_d(1),
--	  CLK => clk,
--	  CLR => '0',
--	    Q => vertical_count);
	
	--up 4
	--down 1
	
RGB_out <= not switch when (v_les12 = '1' or v_grt468 = '1' or h_les12 = '1' or h_grt628 = '1') else
		 "111111111111" when (box_l = '1' and box_r = '1' and box_u = '1' and box_d = '1') else 
		  switch;
	

end Behavioral;

