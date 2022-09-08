library ieee;
use ieee.std_logic_1164.all;

entity debounce is
  generic(
    clk_freq    : integer := 50_000_000;  --system clock frequency in Hz
    stable_time : integer := 10);          --time button must remain stable in ms
  port(
    clk     : IN  STD_LOGIC;  --input clock
    rst   : IN  STD_LOGIC;  --asynchronous active low reset
    sigB : IN  STD_LOGIC;  --input signal to be debounced
    sigdB: OUT STD_LOGIC); --debounced signal
end debounce;

architecture logic of debounce is
  signal flipflops   : STD_LOGIC_VECTOR(1 DOWNTO 0); --input flip flops
  signal counter_set : STD_LOGIC;                    --sync reset to zero
begin

  counter_set <= flipflops(0) xor flipflops(1);      --determine when to start/reset counter
  
  process(clk, rst)
    variable count :  integer range 0 TO clk_freq*stable_time/1000;  --counter for timing
  begin
    if(rst = '1') then                               --reset
      flipflops(1 downto 0) <= "00";                 --clear input flipflops
      sigdB <= '0';                                  --clear result register
    elsif (rising_edge(clk)) then                    --rising clock edge
      flipflops(0) <= sigB;                          --store button value in 1st flipflop
      flipflops(1) <= flipflops(0);                  --store 1st flipflop value in 2nd flipflop
      if(counter_set = '1') then                     --reset counter because input is changing
        count := 0;                                  --clear the counter
      elsif(count < clk_freq*stable_time/1000) then  --stable input time is not yet met
        count := count + 1;                          --increment counter
      else                                           --stable input time is met
        sigdB <= flipflops(1);                       --output the stable value
      end if;
	 end if;
  end process;
  
end logic;
