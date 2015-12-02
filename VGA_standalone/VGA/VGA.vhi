
-- VHDL Instantiation Created from source file VGA.vhd -- 01:13:08 12/02/2015
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

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

	Inst_VGA: VGA PORT MAP(
		Switch => ,
		BUTTON => ,
		Clk => ,
		pixelCLK => ,
		HSYNC => ,
		VSYNC => ,
		ANODE => ,
		SEGMENT => ,
		RGB_out => 
	);


