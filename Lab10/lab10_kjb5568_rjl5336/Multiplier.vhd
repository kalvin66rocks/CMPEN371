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
signal ones_reg : STD_LOGIC_VECTOR(31 downto 0);
signal ones_reg_ans : STD_LOGIC_VECTOR(31 downto 0);
signal cnt_b1 : STD_LOGIC_VECTOR(3 downto 0);
signal lst_b1	 : STD_logic;
signal not_lst_b1	 : STD_logic;

signal tens 	 : STD_LOGIC_VECTOR(31 downto 0);
signal tens_answer 	 : STD_LOGIC_VECTOR(31 downto 0);
signal tens_reg : STD_LOGIC_VECTOR(31 downto 0);
signal tens_reg_ans : STD_LOGIC_VECTOR(31 downto 0);
signal cnt_b2 : STD_LOGIC_VECTOR(3 downto 0);
signal lst_b2	 : STD_logic;
signal not_lst_b2	 : STD_logic;

signal hund 	 : STD_LOGIC_VECTOR(31 downto 0);
signal hund_answer 	 : STD_LOGIC_VECTOR(31 downto 0);
signal hund_reg : STD_LOGIC_VECTOR(31 downto 0);
signal hund_reg_ans : STD_LOGIC_VECTOR(31 downto 0);
signal cnt_b3 : STD_LOGIC_VECTOR(3 downto 0);
signal lst_b3	 : STD_logic;
signal not_lst_b3	 : STD_logic;

signal thous 	 : STD_LOGIC_VECTOR(31 downto 0);
signal thous_answer 	 : STD_LOGIC_VECTOR(31 downto 0);
signal thous_reg : STD_LOGIC_VECTOR(31 downto 0);
signal thous_reg_ans : STD_LOGIC_VECTOR(31 downto 0);
signal cnt_b4 : STD_LOGIC_VECTOR(3 downto 0);
signal lst_b4	 : STD_logic;
signal not_lst_b4	 : STD_logic;

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
ones_register: Reg_nbit generic map (32) PORT MAP (
	d => ones,
	load => lst_b1,
	clk => clk,
	clr => '0',
	q => ones_reg
	);
lst_b1_cmp : LSTEQ generic map (4) port map (
	A =>cnt_b1,
	B => B(3 downto 0),
	output => lst_b1
	);
b1_cnt : counter_nbit generic map (4) port map (
	en => '1',
	clk => clk,
	clr => '0',
	q => cnt_b1
	);
not_lst_b1 <= not lst_b1;	
ones_regans: Reg_nbit generic map (32) PORT MAP (
	d => ones_reg,
	load => not_lst_b1,
	clk => clk,
	clr => '0',
	q => ones_reg_ans
	);


	
Inst_BCD_Adder2: BCD_32bit PORT MAP(
		A => A,
		B => tens_reg,
		sub => '0',
		cbi => '0',
		cbo => open,
		sum => tens
	);
tens_register: Reg_nbit generic map (32) PORT MAP (
	d => tens,
	load => lst_b2,
	clk => clk,
	clr => '0',
	q => tens_reg
	);
lst_b2_cmp : LSTEQ generic map (4) port map (
	A =>cnt_b2,
	B => B(7 downto 4),
	output => lst_b2
	);
b2_cnt : counter_nbit generic map (4) port map (
	en => '1',
	clk => clk,
	clr => '0',
	q => cnt_b2
	);
not_lst_b2 <= not lst_b2;	
tens_regans: Reg_nbit generic map (32) PORT MAP (
	d => ones_reg,
	load => not_lst_b2,
	clk => clk,
	clr => '0',
	q => tens_reg_ans
	);
	
tens_answer <= tens_reg_ans(27 downto 0) & "0000";


end Behavioral;

