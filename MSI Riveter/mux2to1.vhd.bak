library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity mux2to1 is
port(
	y : out STD_LOGIC;
	sel, x1, x0: in STD_LOGIC
);
end mux2to1;

architecture bhv of mux2to1 is


begin 
    	 
	 y <= x0 when Sel = '0' else
         x1 when Sel = '1';
	 
end bhv;	

  