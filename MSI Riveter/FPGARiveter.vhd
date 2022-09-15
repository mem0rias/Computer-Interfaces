----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:40:51 10/09/2021 
-- Design Name: 
-- Module Name:    Top - Behavioral 
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

entity FPGARiveter is
    Port ( 
			SensorInps : in STD_LOGIC_VECTOR(3 downto 0);
			Clk : in STD_LOGIC;
			Rst : in STD_LOGIC;
			En  : in STD_LOGIC;
			A   : out STD_LOGIC;
			B   : out STD_LOGIC
	 );
end FPGARiveter;

architecture Behavioral of FPGARiveter is

	component debounce
	port (
		     clk    : IN  STD_LOGIC;  --input clock
			  rst    : IN  STD_LOGIC;  --asynchronous active low reset
			  sigB   : IN  STD_LOGIC;  --input signal to be debounced
			  sigdB  : OUT STD_LOGIC);
	end component;
	
	component RIVETER
	port (
			Input0   : in STD_LOGIC;
			Input1   : in STD_LOGIC;
			Clk  : in STD_LOGIC;
			Rst  : in STD_LOGIC;
			En   : in STD_LOGIC;
			A    : out STD_LOGIC;
			B    : out STD_LOGIC;
			En_De : out STD_LOGIC;
			Reg_Debug : out STD_LOGIC_VECTOR(1 downto 0));
	end component;
	
	signal dBEn : STD_LOGIC;
	signal EncInpus : STD_LOGIC_VECTOR(1 downto 0);
	signal input : STD_LOGIC;
	signal rising_edge_det : STD_LOGIC;
	signal Ren : STD_LOGIC;
begin
	
	
	U1 : debounce
	port map(
		clk => Clk,
		rst => Rst,
		sigB => En,
		sigDB => dBEn
		
	);
	
	U2 : RIVETER
	port map (
		Input0 => EncInpus(1),
		Input1 => EncInpus(0),
		Clk => Clk,
		Rst => Rst,
		En => Ren,
		A => A,
		B => B
	);
	
	Sensors: process(SensorInps)
	begin
	
		case SensorInps(3 downto 2) is
			when "10"  => EncInpus(1) <= '1';
			when others => EncInpus(1) <= '0';
		end case;
		
		case SensorInps(1 downto 0) is
			when "01" => EncInpus(0)  <=  '1';
			when others => EncInpus(0) <= '0';
		end case;
	
	end process Sensors;
	
	DetectRisingEdge : process(Clk, dBEn) -- Nos ha salvado
	
	begin
		if(rising_edge(Clk)) then
			input <= dBEn;
			rising_edge_det <= dBEn and (not input);
		end if;
		Ren <= rising_edge_det;
	end process;
	
end Behavioral;

