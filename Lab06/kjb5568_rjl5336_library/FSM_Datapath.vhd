----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:21:18 10/13/2015 
-- Design Name: 
-- Module Name:    FSM_Datapath - Behavioral 
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


entity FSM_Datapath is
port (   Code_Ready 		: in  std_logic;
			load				: in  std_logic;
			PS2KBD_DATA_in : in  std_logic;
			PS2KBD_CLK_in	: in  std_logic;
			clk				: in  std_logic;
			clr				: in  std_logic;
			TIMEOUT			: out  std_logic;
			word				: out std_logic_vector(31 downto 0));
end FSM_Datapath;

architecture Behavioral of FSM_Datapath is

signal Code_Ready_One_Shot : std_logic;
signal pulse_1000		 : STD_LOGIC;
signal word_int		 : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
signal word_int1		 : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
signal kb_int			 : STD_LOGIC_VECTOR (9 downto 0);

begin

CR_Oneshot: OneShot port map(
			D => Code_Ready,
			CLK => CLK,
			Q => Code_Ready_One_Shot);
			
shift10right: shift10 port map(
		d =>PS2KBD_DATA_in,
		load => load,
		clk => clk,
		q => kb_int);
		
TIMEOUT_PULSE: pulse_gen generic map( n => 16,  maxcount => 100) port map(
			en => PS2KBD_CLK_in,
			clk => clk,
			clr => not PS2KBD_CLK_in,
			pulse => TIMEOUT);

shift_right: shiftregister_32bit port map(
		D 	=> kb_int ( 8 downto 1),
		q	=>	word_int,
		load	=> Code_Ready_One_Shot,
		clk	=> clk,
		word_out =>	word_int1);
word_int <= word_int1;
word <= word_int1;


end Behavioral;

