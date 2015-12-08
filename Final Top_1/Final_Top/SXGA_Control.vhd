----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:15:12 11/30/2015 
-- Design Name: 
-- Module Name:    SXGA_Control - Behavioral 
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

entity SXGA_Control is
    Port ( X_out 		: out  STD_LOGIC_VECTOR (10 downto 0);
           Y_out 		: out  STD_LOGIC_VECTOR (10 downto 0);
           RGB_in 	: in  STD_LOGIC_VECTOR (11 downto 0);
           Clk 		: in  STD_LOGIC;
           pixelCLK	: in  STD_LOGIC;
			  active 		: out  STD_LOGIC;
           HSYNC 		: out  STD_LOGIC;
           VSYNC 		: out  STD_LOGIC;
           RGB_out 	: out  STD_LOGIC_VECTOR (11 downto 0));
end SXGA_Control;

architecture Behavioral of SXGA_Control is

signal RollH	 : std_logic;
signal RollV	 : std_logic;
signal Vcount_clear	 : std_logic;
signal Hcount_clear	 : std_logic;
signal Vcount_en	 : std_logic;
signal holdActive	 : std_logic;
signal DholdH	 : std_logic;
signal DholdV	 : std_logic;
signal HActive	 : std_logic;
signal VActive	 : std_logic;
signal H_lt_1280 : std_logic;
signal V_lt_1025 : std_logic;
signal V_gt_1027 : std_logic;
signal H_gt_1439 : std_logic;
signal RGB_enable_Reg		 : std_logic;
signal X_out_int : STD_LOGIC_VECTOR (10 downto 0);
signal y_out_int : STD_LOGIC_VECTOR (10 downto 0);

begin

Hcount_clear <= '1' when ( pixelCLK = '1' and RollH = '1') else '0';
--horizontal
		
Hcount : Counter_nbit generic map (11) port map (
		EN    => pixelCLK,
		CLK   => CLK,
		CLR   => Hcount_clear,
		Q		=> X_out_int );
		
EQ1688 : CompareEQU generic map (11) port map ( -- total count
		X => X_out_int,
		Y => "11010011000",
		EQU => RollH);
		
LES1280 : LST generic map (11) port map (
		A =>	X_out_int,
		B =>	"10100000000",
		OUTPUT =>	 H_lt_1280);
		
LES1328 : LST generic map (11) port map (
		A =>	X_out_int,
		B =>	"10100110000",
		OUTPUT =>	HActive);
		
GRT1439 : CompareGRT generic map (11) port map (
		A =>	X_out_int,
		B =>	"10110011111",
		OUTPUT =>	H_gt_1439);
		
x_out <= X_out_int;
		
-----------------------------------------------------------------
Vcount_clear <= '1' when (pixelCLK = '1' and RollV = '1' and RollH = '1') else '0';
Vcount_en <= '1' when (pixelCLK = '1' and RollH = '1') else '0';	
--vertical		
		
Vcount : Counter_nbit generic map (11) port map (
		EN    => Vcount_en,
		CLK   => CLK,
		CLR   => Vcount_clear,
		Q		=> Y_out_int );
		
EQ1066 : CompareEQU generic map (11) port map (
		X => Y_out_int,
		Y => "10000101010",
		EQU => RollV);
		
LES1024 : LST generic map (11) port map (
		A =>	Y_out_int,
		B =>	"10000000000",
		OUTPUT =>	VActive);
		
LES1025 : LST generic map (11) port map (
		A =>	Y_out_int,
		B =>	"10000000001",
		OUTPUT =>	V_lt_1025 );
		
GRT1027 : CompareGRT generic map (11) port map (
		A =>	Y_out_int,
		B =>	"10000000011",
		OUTPUT =>	V_gt_1027 );	
		
y_out <= y_out_int;		

----------------------------------------------------------------
--flip flops

DholdH <= '1' when ( H_gt_1439 = '1' or  H_lt_1280 = '1') else '0';
hold_Hsync : DFF_CE port map (
		D => DholdH,
		CE => pixelCLK,
		CLK => CLK,
		Q => Hsync);
	
DholdV <= '1' when ( V_gt_1027  = '1' or V_lt_1025  = '1') else '0';
hold_Vsync : DFF_CE port map (
		D => DholdV,
		CE => pixelCLK,
		CLK => CLK,
		Q => Vsync);


holdActive <= HActive and VActive;
hold_rgb_enable : DFF_CE port map (
		D => holdActive,
		CE => pixelCLK,
		CLK => CLK,
		Q => RGB_enable_Reg);

RGB_out	 <= RGB_in when( RGB_enable_Reg = '1') else
				x"000";

active <= holdActive;

end Behavioral;

