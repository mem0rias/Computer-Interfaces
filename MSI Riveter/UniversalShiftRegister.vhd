
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.

--library UNISIM;
--use UNISIM.VComponents.all;

entity UniversalShiftRegister is
    Port ( Data : in  STD_LOGIC_VECTOR(7 downto 0);
           Reloj: in  STD_LOGIC;
			  Clr  : in STD_LOGIC;
			  En   : in STD_LOGIC;
			  SEL  : in STD_LOGIC_VECTOR(3 downto 0);
			  N    : in STD_LOGIC_VECTOR(7 downto 0);
           Pout : out  STD_LOGIC_VECTOR (7 downto 0));
end UniversalShiftRegister;

architecture Behavioral of UniversalShiftRegister is
	signal Regist : std_logic_vector(7 downto 0);
	signal clk	:	std_logic;
--	constant BoardFreq : integer := 49_999_999;
--	signal Count : integer range 0 to BoardFreq;
begin
	clk <= Reloj;
	Shifter: process(Data,Clk, Clr, En, Regist)
	
	begin
		if(Clr = '1') then
				Regist <= "00000000";
		elsif(rising_edge(clk) and En = '1') then		
-- All choice expressions in a VHDL case statement must be constant
-- and unique.	Also, the case statement must be complete, or it must
-- include an others clause. 
			case SEL is
				when "0000"  => Regist <= Regist; -- No hacer nada
			-- Sequential Statement(s)
				when "0001"  => Regist <= Data;  -- Load
			-- Sequential Statement(s)
				when "0010"  => Regist <= Regist + 1; -- INC
				when "0011"  => Regist <= Regist - 1; -- DEC
				when "0100"  => Regist <= Regist(6 downto 0) & "0"; -- SHIFT L
				when "0101"  => Regist <= "0" & Regist(7 downto 1); -- SHIFT R
				when "0110"  => Regist <= Regist(6 downto 0) & Regist(7); -- ROL
				when "1000"  => Regist <= Regist(0) & Regist(7 downto 1); -- ROR
				when "0111"  => Regist <= Regist + N; -- Suma de N al registro
				when "1001"  => Regist <= x"00";      -- Reset desde el SEL
				when "1010"  => Regist <= not(Regist) + 1; -- complemento a 2 del numero guardado.
				when "1011"  => Regist <= not(Regist);
			-- Sequential Statement(s)
				when others => Regist <= Regist;
			end case;
	end if;
			
		
		--Sout <= Data;
			
	end process Shifter;
	Pout <= Regist;
	

end Behavioral;

