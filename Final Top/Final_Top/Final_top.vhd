----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:48:39 12/01/2015 
-- Design Name: 
-- Module Name:    Final_top - Behavioral 
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

entity Final_top is
    Port ( Switch 	: in  STD_LOGIC_VECTOR (15 downto 0);
			  BUTTON 	: in  STD_LOGIC_VECTOR (4 downto 0);
           Clk 		: in  STD_LOGIC;
           HSYNC : OUT std_logic;
			  VSYNC : OUT std_logic;
			  ANODE : OUT std_logic_vector(7 downto 0);
			  SEGMENT : OUT std_logic_vector(0 to 6);
			  RGB_out : OUT std_logic_vector(11 downto 0));
end Final_top;

architecture Behavioral of Final_top is

COMPONENT VGA
	PORT(
		Switch : IN std_logic_vector(11 downto 0);
		BUTTON : IN std_logic_vector(4 downto 0);
		Clk : IN std_logic;
		pixelCLK : IN std_logic;          
		HSYNC : OUT std_logic;
		VSYNC : OUT std_logic;
		ANODE : OUT std_logic_vector(7 downto 0);
		SEGMENT : OUT std_logic_vector(0 to 6);
		RGB_out : OUT std_logic_vector(11 downto 0)
		);
	END COMPONENT;
	
COMPONENT SVGA
	PORT(
		Switch : IN std_logic_vector(11 downto 0);
		BUTTON : IN std_logic_vector(4 downto 0);
		Clk : IN std_logic;
		pixelCLK : IN std_logic;          
		HSYNC : OUT std_logic;
		VSYNC : OUT std_logic;
		ANODE : OUT std_logic_vector(7 downto 0);
		SEGMENT : OUT std_logic_vector(0 to 6);
		RGB_out : OUT std_logic_vector(11 downto 0)
		);
	END COMPONENT;
	
COMPONENT XGA
	PORT(
		Switch : IN std_logic_vector(11 downto 0);
		BUTTON : IN std_logic_vector(4 downto 0);
		Clk : IN std_logic;
		pixelCLK : IN std_logic;          
		HSYNC : OUT std_logic;
		VSYNC : OUT std_logic;
		ANODE : OUT std_logic_vector(7 downto 0);
		SEGMENT : OUT std_logic_vector(0 to 6);
		RGB_out : OUT std_logic_vector(11 downto 0)
		);
	END COMPONENT;
	
COMPONENT SXGA
	PORT(
		Switch : IN std_logic_vector(11 downto 0);
		BUTTON : IN std_logic_vector(4 downto 0);
		Clk : IN std_logic;
		pixelCLK : IN std_logic;          
		HSYNC : OUT std_logic;
		VSYNC : OUT std_logic;
		ANODE : OUT std_logic_vector(7 downto 0);
		SEGMENT : OUT std_logic_vector(0 to 6);
		RGB_out : OUT std_logic_vector(11 downto 0)
		);
	END COMPONENT;
	
component clk_wiz_v3_6
port
 (-- Clock in ports
  CLK_IN1           : in     std_logic;
  -- Clock out ports
  CLK_OUT1          : out    std_logic;
  CLK_OUT2          : out    std_logic;
  CLK_OUT3          : out    std_logic;
  CLK_OUT4          : out    std_logic;
  CLK_OUT5          : out    std_logic;
  CLK_OUT6          : out    std_logic
 );
end component;

signal board_clk : std_logic;	
signal vga_clk : std_logic;	
signal svga_clk : std_logic;	
signal xga_clk : std_logic;	
signal sxga_clk : std_logic;	
signal custom  : std_logic;
signal HSYNC_vga : std_logic;
signal VSYNC_vga : std_logic;
signal ANODE_vga : std_logic_vector(7 downto 0); 
signal SEGMENT_vga : std_logic_vector(0 to 6);	
signal RGB_vga : std_logic_vector (11 downto 0);
signal HSYNC_svga : std_logic;
signal VSYNC_svga : std_logic;
signal ANODE_svga : std_logic_vector(7 downto 0); 
signal SEGMENT_svga : std_logic_vector (0 to 6);	
signal RGB_svga : std_logic_vector (11 downto 0);
signal HSYNC_xga : std_logic;
signal VSYNC_xga : std_logic;
signal ANODE_xga : std_logic_vector(7 downto 0); 
signal SEGMENT_xga : std_logic_vector (0 to 6);	
signal RGB_xga : std_logic_vector (11 downto 0);		
signal HSYNC_sxga : std_logic;
signal VSYNC_sxga : std_logic;
signal ANODE_sxga : std_logic_vector(7 downto 0); 
signal SEGMENT_sxga : std_logic_vector (0 to 6);	
signal RGB_sxga : std_logic_vector (11 downto 0);
signal HSYNC_custom : std_logic;
signal VSYNC_custom : std_logic;
signal ANODE_custom : std_logic_vector(7 downto 0); 
signal SEGMENT_custom : std_logic_vector (0 to 6);	
signal RGB_custom : std_logic_vector (11 downto 0);		


begin

Inst_VGA: VGA PORT MAP(
		Switch => Switch(11 downto 0),
		BUTTON => Button(4 downto 0),
		Clk => board_clk,
		pixelCLK => vga_clk,
		HSYNC => HSYNC_vga,
		VSYNC => VSYNC_vga,
		ANODE => ANODE_vga,
		SEGMENT => SEGMENT_vga,
		RGB_out => RGB_vga
	);
	
Inst_SVGA: SVGA PORT MAP(
		Switch => Switch(11 downto 0),
		BUTTON => Button(4 downto 0),
		Clk => board_clk,
		pixelCLK => svga_clk,
		HSYNC => HSYNC_svga,
		VSYNC => VSYNC_svga,
		ANODE => ANODE_svga,
		SEGMENT => SEGMENT_svga,
		RGB_out => RGB_svga
	);
	
Inst_XGA: XGA PORT MAP(
		Switch => Switch(11 downto 0),
		BUTTON => Button(4 downto 0),
		Clk => board_clk,
		pixelCLK => xga_clk,
		HSYNC => HSYNC_xga,
		VSYNC => VSYNC_xga,
		ANODE => ANODE_xga,
		SEGMENT => SEGMENT_xga,
		RGB_out => RGB_xga 
	);
	
Inst_SXGA: SXGA PORT MAP(
		Switch => Switch(11 downto 0),
		BUTTON => Button(4 downto 0),
		Clk => board_clk,
		pixelCLK => sxga_clk,
		HSYNC => HSYNC_sxga,
		VSYNC => VSYNC_sxga,
		ANODE => ANODE_sxga,
		SEGMENT => SEGMENT_sxga,
		RGB_out => RGB_sxga 
	);
	
your_instance_name : clk_wiz_v3_6
  port map
   (-- Clock in ports
    CLK_IN1 => CLK,
    -- Clock out ports
    CLK_OUT1 => board_clk,
    CLK_OUT2 => vga_clk,
    CLK_OUT3 => svga_clk,
    CLK_OUT4 => xga_clk,
    CLK_OUT5 => sxga_clk,
    CLK_OUT6 => custom);

HSYNC <=  HSYNC_vga when switch(15 downto 12) = "0000" else
			 HSYNC_Svga when switch(15 downto 12) = "0001" else
			 HSYNC_xga when switch(15 downto 12) = "0010" else
			 HSYNC_sxga when switch(15 downto 12) = "0100" else
			 HSYNC_vga;
			
VSYNC <= VSYNC_vga when switch(15 downto 12) = "0000" else
			VSYNC_Svga when switch(15 downto 12) = "0001" else
			VSYNC_xga when switch(15 downto 12) = "0010" else
			VSYNC_sxga when switch(15 downto 12) = "0100" else
			VSYNC_vga;
ANODE <= ANODE_vga when switch(15 downto 12) = "0000" else
			ANODE_Svga when switch(15 downto 12) = "0001" else
			ANODE_xga when switch(15 downto 12) = "0010" else
			ANODE_sxga when switch(15 downto 12) = "0100" else
			ANODE_vga;			

SEGMENT <= SEGMENT_vga when switch(15 downto 12) = "0000" else
			SEGMENT_Svga when switch(15 downto 12) = "0001" else
			SEGMENT_xga when switch(15 downto 12) = "0010" else
			SEGMENT_sxga when switch(15 downto 12) = "0100" else
			SEGMENT_vga;

RGB_out <= RGB_vga when switch(15 downto 12) = "0000" else
			RGB_Svga when switch(15 downto 12) = "0001" else
			RGB_xga when switch(15 downto 12) = "0010" else
			RGB_sxga when switch(15 downto 12) = "0100" else
			RGB_vga;

			
			
end Behavioral;

