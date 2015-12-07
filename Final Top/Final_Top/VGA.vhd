----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:03:06 12/02/2015 
-- Design Name: 
-- Module Name:    VGA - Behavioral 
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

entity VGA is
    Port ( Switch 	: in  STD_LOGIC_VECTOR (11 downto 0);
			  BUTTON 	: in  STD_LOGIC_VECTOR (4 downto 0);
           Clk 		: in  STD_LOGIC;
           pixelCLK	: in  STD_LOGIC;
           HSYNC 		: out  STD_LOGIC;
           VSYNC 		: out  STD_LOGIC;
			  ANODE		: out STD_LOGIC_VECTOR(7 downto 0);
			  SEGMENT	: out STD_LOGIC_VECTOR(0 to 6);
           RGB_out 	: out  STD_LOGIC_VECTOR (11 downto 0));
end VGA;

architecture Structural of VGA is

component VGA_Control is
    Port ( X_out 		: out  STD_LOGIC_VECTOR (9 downto 0);
           Y_out 		: out  STD_LOGIC_VECTOR (9 downto 0);
           RGB_in 	: in  STD_LOGIC_VECTOR (11 downto 0);
           Clk 		: in  STD_LOGIC;
           --pixelCLK 	: in  STD_LOGIC;
           HSYNC 		: out  STD_LOGIC;
           VSYNC 		: out  STD_LOGIC;
           RGB_out 	: out  STD_LOGIC_VECTOR (11 downto 0));
end component;

COMPONENT VGA_Image_Generator 
	PORT(
		Switch 	: IN std_logic_vector(11 downto 0);
		Button 	: IN std_logic_vector(4 downto 0);
		clk 	: in 	STD_LOGIC;
		X_in 		: IN std_logic_vector(9 downto 0);
		Y_in 		: IN std_logic_vector(9 downto 0);          
		RGB_out  : OUT std_logic_vector(11 downto 0)
		);
	END COMPONENT;
	
signal strobe : std_logic;		
signal x : std_logic_vector(9 downto 0);
signal y : std_logic_vector(9 downto 0);
signal RGB : std_logic_vector(11 downto 0);
signal word : std_logic_vector(31 downto 0);
signal digit_en	: std_logic_vector (7 downto 0);

begin

Inst_VGA_Control: VGA_Control PORT MAP(
		X_out => x,
		Y_out => y,
		RGB_in => RGB,
		Clk => CLK,
		--pixelCLK => pixelCLK,
		HSYNC => HSYNC,
		VSYNC => VSYNC,
		RGB_out => RGB_out
	);
	
Inst_Image_Generator: VGA_Image_Generator  PORT MAP(
		Switch => Switch,
		Button => button,
		clk => clk,
		X_in => x,
		Y_in => y,
		RGB_out => RGB
	);

pulse_strobe: pulse_gen generic map( n => 16,  maxcount => 50000) port map(
	en => '1',
	clk => Clk,
	clr => '0',
	pulse => strobe);	 
	 
Test_counter : Counter_nbit generic map (32) port map (
		EN    => pixelCLK,
		CLK   => Clk,
		CLR   => '0',
		Q		=> word );

digit_en <= "11111111";
		
sevenseg : WordTo8dig7seg port map(
		 word 		=> word,
		 clk			=> Clk,
		 strobe		=> strobe,
		 Digit_en	=> digit_en,
		 segment		=> Segment,
		 anode 		=> Anode);	



end Structural;

