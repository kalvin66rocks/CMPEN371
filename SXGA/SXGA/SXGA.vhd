----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:12:07 11/30/2015 
-- Design Name: 
-- Module Name:    SXGA - Behavioral 
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

entity SXGA is
    Port ( Switch 	: in  STD_LOGIC_VECTOR (11 downto 0);
			  BUTTON 	: in  STD_LOGIC_VECTOR (4 downto 0);
           Clk 		: in  STD_LOGIC;
           HSYNC 		: out  STD_LOGIC;
           VSYNC 		: out  STD_LOGIC;
			  ANODE		: out STD_LOGIC_VECTOR(7 downto 0);
			  SEGMENT	: out STD_LOGIC_VECTOR(0 to 6);
           RGB_out 	: out  STD_LOGIC_VECTOR (11 downto 0));
end SXGA;

architecture Behavioral of SXGA is

component SXGA_Control is
    Port ( X_out 		: out  STD_LOGIC_VECTOR (10 downto 0);
           Y_out 		: out  STD_LOGIC_VECTOR (10 downto 0);
           RGB_in 	: in  STD_LOGIC_VECTOR (11 downto 0);
           Clk 		: in  STD_LOGIC;
           pixelCLK 	: in  STD_LOGIC;
           HSYNC 		: out  STD_LOGIC;
           VSYNC 		: out  STD_LOGIC;
           RGB_out 	: out  STD_LOGIC_VECTOR (11 downto 0));
end component;

COMPONENT Image_Generator
	PORT(
		Switch 	: IN std_logic_vector(11 downto 0);
		Button 	: IN std_logic_vector(4 downto 0);
		clk 	: in 	STD_LOGIC;
		X_in 		: IN std_logic_vector(10 downto 0);
		Y_in 		: IN std_logic_vector(10 downto 0);          
		RGB_out  : OUT std_logic_vector(11 downto 0)
		);
	END COMPONENT;
	
component clk_wiz_v3_6
port
 (-- Clock in ports
  CLK_IN1           : in     std_logic;
  -- Clock out ports
  CLK_OUT1          : out    std_logic;
  CLK_OUT2          : out    std_logic;
  CLK_OUT3          : out    std_logic;
  CLK_OUT4          : out    std_logic;
  CLK_OUT5          : out    std_logic;
  CLK_OUT6          : out    std_logic
 );
end component;

signal pixelCLK : std_logic;	
signal board_clk : std_logic;	
signal strobe : std_logic;	
signal x : std_logic_vector(10 downto 0);
signal y : std_logic_vector(10 downto 0);
signal RGB : std_logic_vector(11 downto 0);
signal word : std_logic_vector(31 downto 0);
signal digit_en	: std_logic_vector (7 downto 0);

begin

Inst_SXGA_Control: SXGA_Control PORT MAP(
		X_out => x,
		Y_out => y,
		RGB_in => RGB,
		Clk => board_clk,
		pixelCLK => pixelCLK,
		HSYNC => HSYNC,
		VSYNC => VSYNC,
		RGB_out => RGB_out
	);
	
Inst_Image_Generator: Image_Generator PORT MAP(
		Switch => Switch,
		Button => button,
		clk => board_clk,
		X_in => x,
		Y_in => y,
		RGB_out => RGB
	);
	
clocks : clk_wiz_v3_6
  port map
   (-- Clock in ports
    CLK_IN1 => clk,
    -- Clock out ports
    CLK_OUT1 => board_clk,
    CLK_OUT2 => open,
    CLK_OUT3 => open,
    CLK_OUT4 => open,
    CLK_OUT5 => pixelCLK, --108mhz
    CLK_OUT6 => open);

pulse_strobe: pulse_gen generic map( n => 16,  maxcount => 50000) port map(
	en => '1',
	clk => board_clk,
	clr => '0',
	pulse => strobe);	 
	 
Test_counter : Counter_nbit generic map (32) port map (
		EN    => pixelCLK,
		CLK   => board_clk,
		CLR   => '0',
		Q		=> word );

digit_en <= "11111111";
		
sevenseg : WordTo8dig7seg port map(
		 word 		=> word,
		 clk			=> board_clk,
		 strobe		=> strobe,
		 Digit_en	=> digit_en,
		 segment		=> Segment,
		 anode 		=> Anode);


end Behavioral;

