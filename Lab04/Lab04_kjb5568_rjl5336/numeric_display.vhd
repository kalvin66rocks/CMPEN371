----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:14:16 09/27/2015 
-- Design Name: 
-- Module Name:    numeric_display - Behavioral 
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity WordTo8dig7seg is
port ( word 		: in std_logic_vector(31 downto 0);
		 clk			: in std_logic;
		 --strobe		: in std_logic;
		 Digit_en	: in std_logic_vector (7 downto 0);
		 segment		: out std_logic_vector (6 downto 0);
		 anode 		: out std_logic_vector (7 downto 0));
end WordTo8dig7seg;

architecture Behavioral of WordTo8dig7seg is

signal count_int : std_logic_vector (2 downto 0);
signal mux_int	  : std_logic_vector (7 downto 0);
signal anode_int : std_logic_vector (7 downto 0);
signal w2h : std_logic_vector (3 downto 0);
signal   count : integer := 0 ;
signal   count_track : integer := 0 ;

begin

process (CLK) is 
	begin 
		if (CLK'event and CLK='1') then 
			if(CLR = '1') then 
				count <= 0;
			elsif (Strobe = '1') then
				count_track <= count_track + 1 ; 
			end if;
			elsif (count_track = 200000) then
					if(count > 7) then
						count <= 0;
					end if;
				count_int <= STD_LOGIC_VECTOR (to_unsigned(count, count_int'length));
				count <= count +1; 
				count_track <= 0;
		end if;
end process;

w2h <= word( 31 downto 28) when count_int = "111" else
		 word( 27 downto 24) when count_int = "110" else
		 word( 23 downto 20) when count_int = "101" else
		 word( 19 downto 16) when count_int = "010" else
		 word( 15 downto 12) when count_int = "011" else
		 word( 11 downto 8) when count_int = "010" else
		 word( 7 downto 4) when count_int = "001" else
		 word( 3 downto 0);

h27: hextosevenseg port map(
	hex => w2h,
	segment => segment);
	
anode_int <= "11110001";

mux_int   <= anode_int(7) when count_int = "111" else
				 anode_int(6) when count_int = "110" else
				 anode_int(5) when count_int = "101" else
				 anode_int(4) when count_int = "010" else
				 anode_int(3) when count_int = "011" else
				 anode_int(2) when count_int = "010" else
				 anode_int(1) when count_int = "001" else
				 anode_int(0);
				 
anode(7) <= digit_en(7) and mux_int(7);
anode(6) <= digit_en(6) and mux_int(6);
anode(5) <= digit_en(5) and mux_int(5);
anode(4) <= digit_en(4) and mux_int(4);
anode(3) <= digit_en(3) and mux_int(3);
anode(2) <= digit_en(2) and mux_int(2);
anode(1) <= digit_en(1) and mux_int(1);
anode(0) <= digit_en(0) and mux_int(0);
end Behavioral;

