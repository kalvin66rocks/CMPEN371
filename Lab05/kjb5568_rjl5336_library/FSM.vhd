----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:09:26 10/03/2015 
-- Design Name: 
-- Module Name:    FSM - Behavioral 
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


entity FSM is
	port ( BUTTON		: in	STD_LOGIC_VECTOR(4 downto 0);
			 CLK 			: in	STD_LOGIC;
			 reset 			: in	STD_LOGIC;
	       CONTROL		: out	STD_LOGIC_VECTOR(2 downto 0)
	);
end FSM;

architecture Behavioral of FSM is

type state_type is (OFF,C,CC,CCC,CCCC,PHYSICS,L,LU,TRAIN,LC,WALL,LCR,LCRC,PINGPONG);

signal presentstate : state_type;
signal nextstate	  : state_type;

alias btnU is button(4);
alias btnC is button(3);
alias btnR is button(2);
alias btnD is button(1);
alias btnL is button(0);


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

process(presentstate, button)
begin
	Case presentstate is
		when off =>
			control <= "000";
				if ( button = "00001") then 
					nextstate <= l;
				elsif ( button = "01000") then 
					nextstate <= c;
				elsif ( button = "00111") then 
					nextstate <= off;
				else
					nextstate <= off;
				end if;
		when L =>
			control <= "000";
				if (button = "10000") then
					nextstate <= lu;
				elsif ( button = "01000") then 
					nextstate <= lc;
				elsif ( button = "00000") then 
					nextstate <= L;
				else
					nextstate <= off;
				end if;
		when LU =>
			control <= "000";
				if (button = "00100") then
					nextstate <= train;
				elsif ( button = "00000") then 
					nextstate <= LU;
				else
					nextstate <= off;
				end if;
		when LC =>
			control <= "000";
				if (button = "00001") then
					nextstate <= wall;
				elsif (button = "00100") then
					nextstate <= lcr;
				elsif ( button = "00000") then 
					nextstate <= LC;
				else
					nextstate <= off;
				end if;
		when LCR =>
			control <= "000";
				if (button = "01000") then
					nextstate <= lcrc;
				elsif ( button = "00000") then 
					nextstate <= LCR;
				else
					nextstate <= off;
				end if;
		when LCRC =>
			control <= "000";
				if (button = "00001") then
					nextstate <= Pingpong;
				elsif ( button = "00000") then 
					nextstate <= LCRC;
				else
					nextstate <= off;
				end if;
		when C =>
			control <= "000";
				if (button = "01000") then
					nextstate <= cc;
				elsif ( button = "00000") then 
					nextstate <= C;
				else
					nextstate <= off;
				end if;
		when Cc =>
			control <= "000";
				if (button = "01000") then
					nextstate <= ccc;
				elsif ( button = "00000") then 
					nextstate <= CC;
				else
					nextstate <= off;
				end if;
		when Ccc =>
			control <= "000";
				if (button = "01000") then
					nextstate <= cccc;
				elsif ( button = "00000") then 
					nextstate <= CCC;
				else
					nextstate <= off;
				end if;
		when Cccc =>
			control <= "000";
				if (button = "01000") then
					nextstate <= physics;
				elsif ( button = "00000") then 
					nextstate <= CCCC;
				else
					nextstate <= off;
				end if;
		when pingpong =>
			control <= "001";
				if ( button = "00000") then 
					nextstate <= PINGPONG;
				elsif ( button = "00001") then 
					nextstate <= l;
				elsif ( button = "01000") then 
					nextstate <= c;
				else
					nextstate <= off;
				end if;
		when wall =>
			control <= "010";
				if ( button = "00000") then 
					nextstate <= WALL;
				elsif ( button = "00001") then 
					nextstate <= l;
				elsif ( button = "01000") then 
					nextstate <= c;
				else
					nextstate <= off;
				end if;
		when train =>
			control <= "011";
				if ( button = "00000") then 
					nextstate <= TRAIN;
				elsif ( button = "00001") then 
					nextstate <= l;
				elsif ( button = "01000") then 
					nextstate <= c;
				else
					nextstate <= off;
				end if;
		when physics =>
			control <= "100";
				if ( button = "00000") then 
					nextstate <= PHYSICS;
				elsif ( button = "00001") then 
					nextstate <= l;
				elsif ( button = "01000") then 
					nextstate <= c;
				else
					nextstate <= off;
				end if;
		
		
	end case;
				
end process;

end Behavioral;

