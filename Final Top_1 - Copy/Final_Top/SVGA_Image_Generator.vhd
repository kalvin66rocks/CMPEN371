----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:32:01 12/01/2015 
-- Design Name: 
-- Module Name:    SVGA_Image_Generator - Behavioral 
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

entity SVGA_Image_Generator is
    Port ( Switch : in  STD_LOGIC_VECTOR (11 downto 0);
           Button : in  STD_LOGIC_VECTOR (4 downto 0);
			  clk 	: in 	STD_LOGIC;
			  active 	: in 	STD_LOGIC;
           X_in : in  STD_LOGIC_VECTOR (10 downto 0);
           Y_in : in  STD_LOGIC_VECTOR (10 downto 0);
           RGB_out : out  STD_LOGIC_VECTOR (11 downto 0));
end SVGA_Image_Generator;

architecture Behavioral of SVGA_Image_Generator is

component CircleROM is
	port(	ADDRESS	:	in std_logic_vector(8 downto 0);
			CLK		:	in std_logic;
			DATA_OUT	:	out std_logic_vector(11 downto 0)
	);
end component;

signal v_les10 : std_logic;
signal v_grt590 : std_logic;
signal h_les10 : std_logic;
signal h_grt790 : std_logic;
signal box_u : std_logic;
signal box_d : std_logic;
signal box_l : std_logic;
signal box_r : std_logic;
signal right_border : std_logic;
signal left_border  : std_logic;
signal top_border   : std_logic;
signal bottom_border : std_logic;
signal box_border_u : std_logic_vector ( 10 downto 0) ;--:= "0100000100"; --240 +20
signal box_border_d : std_logic_vector ( 10 downto 0) ;--:= "0011011100"; --240 -20
signal box_border_l : std_logic_vector ( 10 downto 0); --:= "0100101100"; --320 -20
signal box_border_r : std_logic_vector ( 10 downto 0); --320 +20      := "0101010100"
signal horizontal_count : std_logic_vector ( 10 downto 0);
signal vertical_count : std_logic_vector ( 10 downto 0);
signal pulse_debounce : std_logic;
signal button_d : std_logic_vector (4 downto 0);

-- signals for smiley --
signal rom_count : std_logic_vector(8 downto 0);
signal rom_count_clr : std_logic;
signal rom_count_clr_int : std_logic;
signal circle_data : std_logic_vector(11 downto 0);
signal isBox : std_logic;
signal rom_count_int :std_logic_vector(9 downto 0);

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

vles10 : LST generic map (11) port map (
	A =>	y_in,
	B =>	"00000001010",
	OUTPUT =>	v_les10);
	
vgrt590 : CompareGRT generic map (11) port map (
	A =>	y_in,
	B =>	"01001001110",
	OUTPUT =>	v_grt590);
	
hles10 : LST generic map (11) port map (
	A =>	x_in,
	B =>	"00000001010",
	OUTPUT =>	h_les10);
	
hgrt790 : CompareGRT generic map (11) port map (
	A =>	x_in,
	B =>	"01100010110", --currently set to 620 rather than 628
	OUTPUT =>	h_grt790);
borderbottom : LST generic map (11) port map (
	A =>	y_in,
	B =>	box_border_u, --260
	OUTPUT =>	box_d);
bordertop : CompareGRT generic map (11) port map (
	A =>	y_in,
	B =>	box_border_d,--220
	OUTPUT =>	box_u);
borderright : LST generic map (11) port map (
	A =>	x_in,
	B =>	box_border_r,
	OUTPUT =>	box_r);
borderleft : CompareGRT generic map (11) port map (
	A =>	x_in,
	B =>	box_border_l,
	OUTPUT =>	box_l);
hboxright : LST generic map (11) port map (
	A =>	box_border_r,
	B =>	"01100010111",
	OUTPUT =>	right_border);
hboxleft : CompareGRT generic map (11) port map (
	A =>	box_border_l,
	B =>	"00000001001",
	OUTPUT =>	left_border);
vboxtop : LST generic map (11) port map (
	A =>	box_border_u,
	B =>	"01001001111",
	OUTPUT =>	top_border);
vboxbottom : CompareGRT generic map (11) port map (
	A =>	box_border_d,
	B =>	"00000001001",
	OUTPUT =>	bottom_border);
	
	
RightAdder: Ripple_Carry_Adder generic map (11) port map (
	A => "00000010000",
	B => box_border_l,
	C_in => '0',
	C_out => OPEN,
	Sum => box_border_r
	);
	
LeftAdder: Ripple_Carry_Adder generic map (11) port map (
	A => "00100101100",
	B => horizontal_count,
	C_in => '0',
	C_out => OPEN,
	Sum => box_border_l
	);
horizontalCounter : CounterUpDown_nbit generic map (11) port map (
		EN => pulse_debounce,
		UP => button_d(2) and right_border,
	 DOWN => button_d(0) and left_border,
	  CLK => clk,
	  CLR => '0',
	    Q => horizontal_count);
	


verticalCounter : CounterUpDown_nbit generic map (11) port map (
		EN => pulse_debounce,
		UP => button_d(1) and top_border,
	 DOWN => button_d(4) and bottom_border,
	  CLK => clk,
	  CLR => '0',
	    Q => vertical_count);

UpAdder: Ripple_Carry_Adder generic map (11) port map (
	A => "00000010000",
	B => box_border_d,
	C_in => '0',
	C_out => OPEN,
	Sum => box_border_u
	);
	
DownAdder: Ripple_Carry_Adder generic map (11) port map (
	A => "00011011100",
	B => vertical_count,
	C_in => '0',
	C_out => OPEN,
	Sum => box_border_d
	);
	
	--up 4
	--down 1
	
-----------------------------------------------------------------------------------------------	
-----------------------------------------------------------------------------------------------	
-----------------------------------------------------------------------------------------------	
									--Make the box into a smiley face--										
Pulse25 : Pulse_Gen generic map (2, 3) port map (
		EN    => '1',
		CLK   => CLK,
		CLR   => '0',
		PULSE => pixelCLK );
Pulse2525 : Pulse_Gen generic map (2, 3) port map (
		EN    => pixelCLK,
		CLK   => CLK,
		CLR   => '0',
		PULSE => pixelCLK_2 );		
																														
isBox		<= '1' WHEN (box_l = '1' and box_r = '1' and box_u = '1' and box_d = '1') ELSE '0';
																												
ROMCounter: Counter_nbit generic map (9) port map (											
	EN 	=>  active and isBox,																						
	CLK 	=> clk,																							
	CLR 	=> rom_count_clr,																				
	Q 		=> rom_count																					
);		

rom_count_int <=  '0' & rom_count;
																																																							-----
ROMCompare: LST generic map (10) port map (														
	A     	=> "0110001110",																			
	B     	=> rom_count_int,																			
	OUTPUT   => rom_count_clr--_int																		
);	

--flippyfloppy: DFF_CE port map (
--	D => rom_count_clr_int,
--	CE => '1',
--	CLK => CLK,
--	Q => rom_count_clr
--);																					
																												
CircROM: CircleROM port map (																			
	ADDRESS	=> rom_count,																				
	CLK		=> CLK,																						
	DATA_OUT	=> circle_data																				
);																												
-----------------------------------------------------------------------------------------------	
-----------------------------------------------------------------------------------------------	
---------------------------------------------------------------------------------------------------------
	
RGB_out <= not switch when (v_les10 = '1' or v_grt590 = '1' or h_les10 = '1' or h_grt790 = '1') else
		   circle_data when (box_l = '1' and box_r = '1' and box_u = '1' and box_d = '1') else 
		  switch;
	

end Behavioral;
