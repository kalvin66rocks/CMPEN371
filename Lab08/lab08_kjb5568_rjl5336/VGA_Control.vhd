----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:06:43 10/21/2015 
-- Design Name: 
-- Module Name:    VGA_Control - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity VGA_Control is
    Port ( X_out 		: out  STD_LOGIC_VECTOR (9 downto 0);
           Y_out 		: out  STD_LOGIC_VECTOR (9 downto 0);
           RGB_in 	: in  STD_LOGIC_VECTOR (11 downto 0);
           Clk 		: in  STD_LOGIC;
           HSYNC 		: out  STD_LOGIC;
           VSYNC 		: out  STD_LOGIC;
           RGB_out 	: out  STD_LOGIC_VECTOR (11 downto 0));
end VGA_Control;

architecture Behavioral of VGA_Control is


signal pixelCLK : std_logic;
signal RollH	 : std_logic;
signal RollV	 : std_logic;
signal HActive	 : std_logic;
signal VActive	 : std_logic;
signal H_lt_656 : std_logic;
signal V_lt_490 : std_logic;
signal V_gt_491 : std_logic;
signal H_gt_751 : std_logic;
signal sel		 : std_logic;
signal RGB_enable_Reg		 : std_logic;
signal X_out_int : STD_LOGIC_VECTOR (9 downto 0);
signal y_out_int : STD_LOGIC_VECTOR (9 downto 0);
signal v799		 : STD_LOGIC_VECTOR (9 downto 0) := "1100011111";
signal v524		 : STD_LOGIC_VECTOR (9 downto 0) := "1000001100";
signal v640		 : STD_LOGIC_VECTOR (9 downto 0) := "1010000000";
signal v656		 : STD_LOGIC_VECTOR (9 downto 0) := "1010010000";
signal v751		 : STD_LOGIC_VECTOR (9 downto 0) := "1011101111";
signal v480		 : STD_LOGIC_VECTOR (9 downto 0) := "0111100000";
signal v490		 : STD_LOGIC_VECTOR (9 downto 0) := "0111101010";
signal v491		 : STD_LOGIC_VECTOR (9 downto 0) := "0111101011";

begin

Pulse25 : Pulse_Gen generic map (4, 16) port map (
		EN    => '1',
		CLK   => CLK,
		CLR   => '0',
		PULSE => pixelCLK );
		
Hcount : Counter_nbit generic map (10) port map (
		EN    => pixelCLK,
		CLK   => CLK,
		CLR   => pixelCLK and RollH,
		Q		=> X_out_int );
		
Vcount : Counter_nbit generic map (10) port map (
		EN    => pixelCLK and RollH,
		CLK   => CLK,
		CLR   => pixelCLK and RollV and RollH,
		Q		=> Y_out_int );
		
EQ799 : CompareEQU generic map (10) port map (
		X => X_out_int,
		Y => v799,
		EQU => RollH);
		
LES640 : LST generic map (10) port map (
		A =>	X_out_int,
		B =>	v640,
		OUTPUT =>	HActive);
		
LES656 : LST generic map (10) port map (
		A =>	X_out_int,
		B =>	v656,
		OUTPUT =>	H_LT_656);
		
GRT751 : CompareGRT generic map (10) port map (
		A =>	X_out_int,
		B =>	v751,
		OUTPUT =>	H_GT_751);	
		
EQ524 : CompareEQU generic map (10) port map (
		X => Y_out_int,
		Y => v799,
		EQU => RollV);
		
LES480 : LST generic map (10) port map (
		A =>	Y_out_int,
		B =>	v480,
		OUTPUT =>	VActive);
		
LES490 : LST generic map (10) port map (
		A =>	Y_out_int,
		B =>	v490,
		OUTPUT =>	V_LT_490);
		
GRT491 : CompareGRT generic map (10) port map (
		A =>	Y_out_int,
		B =>	v491,
		OUTPUT =>	V_GT_491);	
		
hold_Hsync : DFF_CE port map (
		D => H_GT_751 or H_LT_656,
		CE => pixelCLK,
		CLK => CLK,
		Q => Hsync);
		
hold_Vsync : DFF_CE port map (
		D => V_GT_491 or V_LT_490,
		CE => pixelCLK,
		CLK => CLK,
		Q => Vsync);
	
hold_rgb_enable : DFF_CE port map (
		D => HActive and VActive,
		CE => pixelCLK,
		CLK => CLK,
		Q => RGB_enable_Reg);

sel <= RGB_enable_Reg;

with sel select
	RGB_out	 <= RGB_in when '1',
					 x"000" when '0';
	


end Behavioral;

