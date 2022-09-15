library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity decoder is
port(
	A : in STD_LOGIC_VECTOR(3 downto 0);
	B : out STD_LOGIC_VECTOR(15 downto 0)
);
end decoder;

architecture bhv of decoder is
begin 
 process(A)
	begin 
		case A is 
			when "0000" => B <= "0000000000000001";
			when "0001" => B <= "0000000000000010";
			when "0010" => B <= "0000000000000100";
			when "0011" => B <= "0000000000001000";
			when "0100" => B <= "0000000000010000";
			when "0101" => B <= "0000000000100000";
			when "0110" => B <= "0000000001000000";
			when "0111" => B <= "0000000010000000";
			when "1000" => B <= "0000000100000000";
			when "1001" => B <= "0000001000000000";
			when "1010" => B <= "0000010000000000";
			when "1011" => B <= "0000100000000000";
			when "1100" => B <= "0001000000000000";
			when "1101" => B <= "0010000000000000";
			when "1110" => B <= "0100000000000000";
			when "1111" => B <= "1000000000000000";
		end case;
	 end process;
end bhv;

