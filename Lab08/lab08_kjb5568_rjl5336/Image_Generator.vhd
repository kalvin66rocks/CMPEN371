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
           Button : in  STD_LOGIC_VECTOR (0 to 4);
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
signal box_border_u : std_logic_vector ( 9 downto 0) := "0100000100"; --240 +20
signal box_border_d : std_logic_vector ( 9 downto 0) := "0011011100"; --240 -20
signal box_border_l : std_logic_vector ( 9 downto 0) := "0100101100"; --320 -20
signal box_border_r : std_logic_vector ( 9 downto 0) := "0101010100"; --320 +20


begin

--four comparators needed here
--12 bit border 
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
	B =>	"1001101100", --currently set to 620 rather than 628
	OUTPUT =>	h_grt628);
borderbottom : LST generic map (10) port map (
	A =>	y_in,
	B =>	"0011011100", --200
	OUTPUT =>	box_d);
bordertop : CompareGRT generic map (10) port map (
	A =>	y_in,
	B =>	"0100000100",
	OUTPUT =>	box_u);
borderright : LST generic map (10) port map (
	A =>	x_in,
	B =>	"0101010100",
	OUTPUT =>	box_r);
borderleft : CompareGRT generic map (10) port map (
	A =>	x_in,
	B =>	"0100101100",
	OUTPUT =>	box_l);
	
	
RGB_out <= not switch when (v_les12 = '1' or v_grt468 = '1' or h_les12 = '1' or h_grt628 = '1') else
		 "111111111111" when ( box_u = '1' and box_d = '1' and box_l = '1' and box_r = '1') else 
		  switch;
	

end Behavioral;

