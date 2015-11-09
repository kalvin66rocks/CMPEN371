----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:49:10 11/09/2015 
-- Design Name: 
-- Module Name:    Multiplier - Behavioral 
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
library kjb5568_rjl5336_library;
use kjb5568_rjl5336_library.kjb5568_rjl5336_components.all;

entity Multiplier is
Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
       B : in  STD_LOGIC_VECTOR (31 downto 0);
	  CLK	: in STD_LOGIC;
 product : out  STD_LOGIC_VECTOR (31 downto 0));
end Multiplier;

architecture Behavioral of Multiplier is

signal ones 	 : STD_LOGIC_VECTOR(31 downto 0);
signal tens 	 : STD_LOGIC_VECTOR(31 downto 0);
signal hundreds : STD_LOGIC_VECTOR(31 downto 0);
signal thousands: STD_LOGIC_VECTOR(31 downto 0);
signal ones_reg : STD_LOGIC_VECTOR(31 downto 0);
signal lst_b1	 : STD_logic;

COMPONENT BCD_32bit
	PORT(
		A : IN std_logic_vector(31 downto 0);
		B : IN std_logic_vector(31 downto 0);
		sub : IN std_logic;
		cbi : IN std_logic;          
		cbo : OUT std_logic;
		sum : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

begin

Inst_BCD_Adder1: BCD_32bit PORT MAP(
		A => A,
		B => ones_reg,
		sub => '0',
		cbi => '0',
		cbo => open,
		sum => ones
	);
	
ones_reg: Reg_nbit generic map (32) PORT MAP (
	d => ones,
	en => lst_b1,
	clk => clk,
	clr => '0',
	q => ones_reg
	);



end Behavioral;

