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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity lab05_kjb5568_rjl5336 is
	 Port ( CLK			: in  STD_LOGIC;
			  SWITCH		: in	STD_LOGIC_VECTOR(15 downto 0);
			  BUTTON		: out	STD_LOGIC_VECTOR(4 downto 0);
			  ANODE		: out	STD_LOGIC_VECTOR(7 downto 0);
			  SEGMENT	: out STD_LOGIC_VECTOR(0   to   6);
			  LED			: out STD_LOGIC_VECTOR(15 downto 0));
end lab05_kjb5568_rjl5336;

architecture Behavioral of lab05_kjb5568_rjl5336 is

type state_type is (OFF,L,C,CC,CCC,CCCC,PHYSICS,L,LU,TRAIN,LC,WALL,LCR,LCRC,PINGPONG);

signal presentstate : state_type;
signal nextstate	  : state_type;

signal reset : std_logic;
alias btnU is button(0);
alias btnD is button(0);
alias btnL is button(0);
alias btnR is button(0);
alias btnC is button(0);


begin
process (clk) is
begin
	if(clk'event and clk = '1') then
		if(reset ='1') then
			presentstate <= off;
		else 
			presentstate <= nextstate;
		end if;
	end if;
end process;
		


end Behavioral;

