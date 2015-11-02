----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:03:17 10/28/2015 
-- Design Name: 
-- Module Name:    lab09_kjb5568_rjl5336 - Behavioral 
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

entity lab09_kjb5568_rjl5336 is
		port( SWITCH 	: in STD_LOGIC_VECTOR(15 downto 0);
				CLK		: in STD_LOGIC;
				ANODE		: out STD_LOGIC_VECTOR(7 downto 0);
				SEGMENT	: out STD_LOGIC_VECTOR(0 to 6);
				LED		: out STD_LOGIC_VECTOR(15 downto 0);
				RGB1_RED	: out STD_LOGIC;
				RGB1_BLU	: out STD_LOGIC;
				RGB1_GRN	: out STD_LOGIC;
				RGB2_RED	: out STD_LOGIC;
				RGB2_BLU	: out STD_LOGIC;
				RGB2_GRN	: out STD_LOGIC);
end lab09_kjb5568_rjl5336;

architecture Behavioral of lab09_kjb5568_rjl5336 is

component PWM is
	port( PD 		: in  STD_LOGIC;
			PW			: in  STD_LOGIC;
			CLK		: in  STD_LOGIC;
			PMW_out  : out STD_LOGIC);
end component;

begin

PWM_INST1: PWM is port map(
			PD 		=> ,
			PW			=> ,
			CLK		=> CLK,
			PMW_out  =>  );
end PWM;

PWM_INST2: PWM is port map(
			PD 		=> ,
			PW			=> ,
			CLK		=> CLK,
			PMW_out  =>  );
end PWM;

PWM_INST1: PWM is port map(
			PD 		=> ,
			PW			=> ,
			CLK		=> CLK,
			PMW_out  =>  );
end PWM;
end Behavioral;

