----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:41:56 10/03/2015 
-- Design Name: 
-- Module Name:    lab05_kjb5568_rjl5336 - Behavioral 
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
library kjb5568_rjl5336_library;
use kjb5568_rjl5336_library.kjb5568_rjl5336_components.all;

entity lab05_kjb5568_rjl5336 is
	 Port ( CLK			: in  STD_LOGIC;
			  SWITCH		: in	STD_LOGIC_VECTOR(15 downto 0);
			  BUTTON		: in	STD_LOGIC_VECTOR(4 downto 0);
			  ANODE		: out	STD_LOGIC_VECTOR(7 downto 0);
			  SEGMENT	: out STD_LOGIC_VECTOR(0   to   6);
			  LED			: out STD_LOGIC_VECTOR(15 downto 0));
end lab05_kjb5568_rjl5336;

architecture Behavioral of lab05_kjb5568_rjl5336 is
	signal pulse_16		 : STD_LOGIC;
	signal pulse_50		 : STD_LOGIC;
	signal pulse_ping		 : STD_LOGIC;
	signal strobe			 : STD_LOGIC;
	signal pulse_1000		 : STD_LOGIC;
	signal store_enable	 : STD_LOGIC;
	signal corrected 		 : std_logic_vector (4 downto 0);
	signal debounced  	 : std_logic_vector (4 downto 0);
	signal control 		 : std_logic_vector (2 downto 0);
	signal word_int		 : STD_LOGIC_VECTOR (31 downto 0);
	signal digit_en		 : STD_LOGIC_VECTOR (7 downto 0);
	signal led_ping		 : STD_LOGIC_VECTOR (15 downto 0);
	signal led_false		 : STD_LOGIC_VECTOR (15 downto 0);
	
	alias BTNU is button(4);
	alias BTNC is button(3);
	alias BTNR is button(2);
	alias BTND is button(1);
	alias BTNL is button(0);


	begin

		Up_debounce: Debouncer port map(
			D => BTNU,
			CLK => CLK,
			pulse => pulse_1000,
			Q => debounced(4));
			
		Up_steady: OneShot port map(
			D => debounced(4),
			CLK => CLK,
			Q => corrected(4));
			
		Center_debounce: Debouncer port map(
			D => BTNC,
			CLK => CLK,
			pulse => pulse_1000,
			Q => debounced(3));
		Center_steady: OneShot port map(
			D => debounced(3),
			CLK => CLK,
			Q => corrected(3));	
			
		Right_debounce: Debouncer port map(
			D => BTNR,
			CLK => CLK,
			pulse => pulse_1000,
			Q => debounced(2));
		Right_steady: OneShot port map(
			D => debounced(2),
			CLK => CLK,
			Q => corrected(2));
					
		down_debounce: Debouncer port map(
			D => BTND,
			CLK => CLK,
			pulse => pulse_1000,
			Q => debounced(1));
		down_steady: OneShot port map(
			D => debounced(1),
			CLK => CLK,
			Q => corrected(1));
			
		Left_debounce: Debouncer port map(
			D => BTNL,
			CLK => CLK,
			pulse => pulse_1000,
			Q => debounced(0));
		Left_steady: OneShot port map(
			D => debounced(0),
			CLK => CLK,
			Q => corrected(0));
			
		pulse1000: pulse_gen generic map( n => 16,  maxcount => 10000) port map(
			en => '1',
			clk => clk,
			clr => SWITCH(0),
			pulse => pulse_1000);
			
		pulse500: pulse_gen generic map( n => 16,  maxcount => 100000) port map(
			en => '1',
			clk => clk,
			clr => Switch(0),
			pulse => strobe);
		pulseping: pulse_gen generic map( n => 16,  maxcount => 5000000) port map(
			en => '1',
			clk => clk,
			clr => Switch(0),
			pulse => pulse_ping);
			
		Top_FSM : FSM port map(
			button => corrected,
			clk => clk,
			reset => switch (0),
			enable => store_enable,
			control => control);
		pingpoing: pingpong_fsm port map(
			pulse => pulse_ping,
			clr => switch(0),
			led => led_ping);
			
word_int <= "00000000000000000000000000000" & control;
digit_en <= "00000001";
					
		display: wordto8dig7seg port map (
			word => word_int,
			clk => clk,
			strobe => strobe,
			digit_en => digit_en,
			segment => segment,
			anode => anode);
			
led_false <= "0000111100110000";
			
led <= led_ping when control = "001" else 
		 led_false;
		 
--feed the control into a register, change the way that top_fsm sends out signals, plus implement an enable into it.

			


end Behavioral;

