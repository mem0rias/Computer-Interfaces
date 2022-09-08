library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity HLCP is
    Port ( Rst : in STD_LOGIC;
			  Clk : in STD_LOGIC;
			  but : in STD_LOGIC;
			  XY  : in STD_LOGIC_VECTOR(1 downto 0);
			  busLed : out STD_LOGIC_VECTOR(6 downto 0);
			  led : out STD_LOGIC
			  );
                                           
end HLCP;

architecture Arch of HLCP is

	--Freq things
	constant BoardFreq   : integer := 50_000_000;
	constant DesiredFreq : integer := 50_000_000;
	constant MaxCountM   : integer := BoardFreq/DesiredFreq;
	constant HalfMaxCount: integer := MaxCountM / 2;
	signal CountTime : integer range 0 to 30 := 0;
	signal Count100M : integer range 0 to MaxCountM;
	signal EnHz: STD_LOGIC;
	signal input : STD_LOGIC;
	signal Detect : STD_LOGIC;


	signal rising_edge_det : STD_LOGIC;

	-- States
	type state_values is (S0,S1,S2,S3,S4,S5,S6,S7,SE0,SE1,SE2,SE3,SE4,SE5,SE6,SE7);
	--Embedded Signal
	signal pres_state, next_state : state_values;
	
	signal Entradas : STD_LOGIC_VECTOR( 2 downto 0);
	
begin

---------------------------------------------------------------------------
	FreqDiv: process(Clk, Rst) --Derives a 2 hz clock signal
	begin
		if (Rst = '1') then
			Count100M <= 0;
			CountTime <= 0;
		elsif (rising_edge(Clk)) then
			if (Count100M = MaxCountM) then
				EnHz <= '1';
				Count100M <= 0;
				if(CountTime = 30) then
					CountTime <= 0;
				else
					CountTime <= CountTime + 1;
				end if;
			else
				EnHz <= '0';
				Count100M <= Count100M + 1;
			end if;
		end if;
	end process FreqDiv;
-------------------------------------------------------------------------
	
	StateReg: process(Rst, EnHz, Clk) -- Holds the current state and chnges to  the next generation
	begin
		if(Rst = '1') then
			pres_state <= S0;
		elsif(Rising_edge(Clk)) then
			if(EnHz = '1') then
				pres_state <= next_state;
			end if;
		end if;
	end process StateReg;
	
	
	FSM : process(pres_state, CountTime)
	begin
	   Entradas<=XY&Detect;
		
		case(pres_state) is
		
			when S0 => 
				if(Entradas="101") then
					next_state <= S1;
				else if(Entradas(0)='0') then
					next_state <= S0;
				else
				  next_state <= SE0;
				 end if;
				end if;
				
			when S1 => 
				if(Entradas="001") then
					next_state <= S2;
				else if(Entradas(0)='0') then
					next_state <= S1;
				else
				  next_state <= SE1;
				 end if;
				end if;
			when S2 => 
				if(Entradas="011") then
					next_state <= S3;
				else if(Entradas(0)='0') then
					next_state <= S2;
				else
				  next_state <= SE2;
				 end if;
				end if;
				
			when S3 => 
				if(Entradas="101") then
					next_state <= S4;
				else if(Entradas(0)='0') then
					next_state <= S3;
				else
				  next_state <= SE3;
				 end if;
				end if;
			when S4 => 
				if(Entradas="111") then
					next_state <= S5;
				else if(Entradas(0)='0') then
					next_state <= S4;
				else
				  next_state <= SE4;
				 end if;
				end if;
				
			when S5 => 
				if(Entradas="101") then
					next_state <= S6;
				else if(Entradas(0)='0') then
					next_state <= S5;
				else
				  next_state <= SE5;
				 end if;
				end if;
			when S6 => 
				if(Entradas(0)='1') then
				
					next_state <= S0;
				else if(Entradas(0)='0') then
					next_state <= S6;
				else
				  next_state <= S6;
				 end if;
				end if;
	----------------------------------------------------			
				
			when SE0 => 
				if(Entradas="101") then
					next_state <= SE1;
				else if(Entradas(0)='0') then
					next_state <= SE0;
				else
				  next_state <= S0;
				 end if;
				end if;
				
			when SE1 => 
				if(Entradas="001") then
					next_state <= SE2;
				else if(Entradas(0)='0') then
					next_state <= SE1;
				else
				  next_state <= S0;
				 end if;
				end if;
			when SE2 => 
				if(Entradas="011") then
					next_state <= SE3;
				else if(Entradas(0)='0') then
					next_state <= SE2;
				else
				  next_state <= S0;
				 end if;
				end if;
				
			when SE3 => 
				if(Entradas="101") then
					next_state <= SE4;
				else if(Entradas(0)='0') then
					next_state <= SE3;
				else
				  next_state <= S0;
				 end if;
				end if;
			when SE4 => 
				if(Entradas="111") then
					next_state <= SE5;
				else if(Entradas(0)='0') then
					next_state <= SE4;
				else
				  next_state <= S0;
				 end if;
				end if;
				
			when SE5 => 
				if(Entradas="101") then
					next_state <= SE6;
				else if(Entradas(0)='0') then
					next_state <= SE5;
				else
				  next_state <= S0;
				 end if;
				end if;
			when SE6 => 
				if(Entradas(0)='1') then
				
					next_state <= S0;
				else if(Entradas(0)='0') then
					next_state <= SE6;
				else
				  next_state <= S0;
				 end if;
				end if;
				
			
			
				
			when others => next_state <= S0;
		end case;
	end process FSM;
	
	
	Outputs: process(pres_state) 
	begin
		case(pres_state) is
			when S0 => 
					busLed <= "1000000";
					led <= '0';
			when S1 =>
					busLed <= "1000001";
					led <= '0';
			when S2 =>
					busLed <= "1000011";
					led <= '0';
			when S3 =>
					busLed <= "1000111";
					led <= '0';
			when S4 =>
					busLed <= "1001111";
					led <= '0';
			when S5 =>
					busLed <= "1011111";
					led <= '0';
			when S6 =>
					busLed <= "1111111";
					led <= '1';
					
			when SE0 => 
				   busLed <= "0000000";
					led <= '0';
			when SE1 =>
					busLed <= "0000001";
					led <= '0';
			when SE2 =>
					busLed <= "0000011";
					led <= '0';
			when SE3 =>
					busLed <= "0000111";
					led <= '0';
			when SE4 =>
					busLed <= "0001111";
					led <= '0';
			when SE5 =>
					busLed <= "0011111";
					led <= '0';
			when SE6 =>
					busLed <= "0111111";
					led <= '1';		
					
					
			when others =>
					busLed <= "0001000";
					led <= '0';
					
					
		end case;
	end process Outputs;
	
	DetectRisingEdge : process(EnHz, but) -- Nos ha salvado
	
	begin
		if(rising_edge(EnHz)) then
			input <= but;
			rising_edge_det <= but and (not input);
		end if;
		Detect <= rising_edge_det;
	end process;

end Arch;