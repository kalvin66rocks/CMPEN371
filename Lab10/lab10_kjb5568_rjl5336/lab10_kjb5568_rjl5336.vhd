----------------------------------------------------------------------------
-- Entity:        lab10 top level
-- Written By:    Kevin Brenneman Richard Lucas
-- Date Created:  11/7/2015
-- Description:   AdderSubtractor_4bit top level
--
-- Revision History (date, initials, description): 11/7/2015, KB RL, Initial Build
-- 
-- Dependencies:
--		kjb5568_rjl5366_library
----------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library kjb5568_rjl5336_library;
use kjb5568_rjl5336_library.kjb5568_rjl5336_components.all;

entity lab10_kjb5568_rjl5336 is
port( SWITCH 	: in STD_LOGIC_VECTOR(15 downto 0);
		CLK		: in STD_LOGIC;
		BUTTON	: in STD_LOGIC_VECTOR(4 downto 0);
		ANODE		: out STD_LOGIC_VECTOR(7 downto 0);
		SEGMENT	: out STD_LOGIC_VECTOR(0 to 6);
		LED		: out STD_LOGIC_VECTOR(15 downto 0));
end lab10_kjb5568_rjl5336;

architecture Behavioral of lab10_kjb5568_rjl5336 is

COMPONENT BCD_Adder
	PORT(
		A : IN std_logic_vector(15 downto 0);
		B : IN std_logic_vector(15 downto 0);
		sub : IN std_logic;
		cbi : IN std_logic;          
		cbo : OUT std_logic;
		sum : OUT std_logic_vector(15 downto 0)
		);
END COMPONENT;


--signal btnr_os 	: std_logic;
--signal btnl_os 	: std_logic;
signal overflow	: std_logic;
signal strobe		: STD_LOGIC;

signal A_reg 		: std_logic_vector (15 downto 0);
signal B_reg 		: std_logic_vector (15 downto 0);
signal answer		: std_logic_vector (15 downto 0);
signal display_word: std_logic_vector (31 downto 0);
signal digit_en	: std_logic_vector (7 downto 0);


begin

pulse_strobe: pulse_gen generic map( n => 16,  maxcount => 50000) port map(
	en => '1',
	clk => clk,
	clr => '0',
	pulse => strobe);

store_A : Reg_nbit generic map (16) port map (
		D => switch,
		Load => button(0),
		clk => clk,
		clr => '0',
		Q => A_reg
	);

store_B : Reg_nbit generic map (16) port map (
		D => switch,
		Load => button(2),
		clk => clk,
		clr => '0',
		Q => B_reg
	);

Inst_BCD_Adder: BCD_Adder PORT MAP(
		A => A_reg,
		B => B_reg,
		sub => button(1),
		cbi => '0',
		cbo => overflow,
		sum => answer
	);

digit_en <= "00011111" when button(4) = '1' else  
				"00001111" when button(1) = '1' else
				"11111111";

display_word <= x"0000" & answer when button(1) = '1' else
					 "000000000000000" & overflow & answer when button(4) = '1' else
					 x"00000000" when button(3) = '1' else
					 a_reg & b_reg;


sevenseg : WordTo8dig7seg port map(
		 word 		=> display_word,
		 clk			=> clk,
		 strobe		=> strobe,
		 Digit_en	=> digit_en,
		 segment		=> Segment,
		 anode 		=> Anode);
led <= switch;
end Behavioral;

