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

entity Top is
    Port ( 
				XY  : in STD_LOGIC_VECTOR(1 downto 0);
				But : in STD_LOGIC;
				Clk : in STD_LOGIC;
				Rst : in STD_LOGIC;
				LEDs : out STD_LOGIC_VECTOR(7 downto 0));
end Top;

architecture Behavioral of Top is

	component HLCP
	port (
			  Rst : in STD_LOGIC;
			  Clk : in STD_LOGIC;
			  but : in STD_LOGIC;
			  XY  : in STD_LOGIC_VECTOR(1 downto 0);
			  busLed : out STD_LOGIC_VECTOR(6 downto 0);
			  led : out STD_LOGIC
	);
	end component;
	component Debounce
	port (
		   clk   : IN  STD_LOGIC;  --input clock
			rst   : IN  STD_LOGIC;  --asynchronous active low reset
			sigB  : IN  STD_LOGIC;  --input signal to be debounced
			sigdB : OUT STD_LOGIC);
	end component;
	
	signal DbBut : STD_LOGIC;
	
	
begin
	
	
	
	U1 : HLCP
	port map (
		XY => XY,
		Clk => Clk,
		but => DbBut,
		Rst => Rst,
		busLed => LEDs(6 downto 0),
		led => LEDs(7)
		);
		
	U2 : debounce
	port map (
		clk => Clk,
		rst => Rst,
		sigB => But,
		sigdB => DbBut
		);

end Behavioral;

