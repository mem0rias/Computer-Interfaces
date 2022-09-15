-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "09/14/2022 20:27:43"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          RIVETER
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY RIVETER_vhd_vec_tst IS
END RIVETER_vhd_vec_tst;
ARCHITECTURE RIVETER_arch OF RIVETER_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL Clk : STD_LOGIC;
SIGNAL En : STD_LOGIC;
SIGNAL En_De : STD_LOGIC;
SIGNAL Input0 : STD_LOGIC;
SIGNAL Input1 : STD_LOGIC;
SIGNAL Reg_Debug : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL Rst : STD_LOGIC;
COMPONENT RIVETER
	PORT (
	A : OUT STD_LOGIC;
	B : OUT STD_LOGIC;
	Clk : IN STD_LOGIC;
	En : IN STD_LOGIC;
	En_De : OUT STD_LOGIC;
	Input0 : IN STD_LOGIC;
	Input1 : IN STD_LOGIC;
	Reg_Debug : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	Rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : RIVETER
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	Clk => Clk,
	En => En,
	En_De => En_De,
	Input0 => Input0,
	Input1 => Input1,
	Reg_Debug => Reg_Debug,
	Rst => Rst
	);

-- Clk
t_prcs_Clk: PROCESS
BEGIN
LOOP
	Clk <= '0';
	WAIT FOR 5000 ps;
	Clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clk;

-- En
t_prcs_En: PROCESS
BEGIN
	En <= '1';
WAIT;
END PROCESS t_prcs_En;

-- Rst
t_prcs_Rst: PROCESS
BEGIN
	Rst <= '0';
	WAIT FOR 20000 ps;
	Rst <= '1';
	WAIT FOR 10000 ps;
	Rst <= '0';
WAIT;
END PROCESS t_prcs_Rst;

-- Input0
t_prcs_Input0: PROCESS
BEGIN
	Input0 <= '0';
	WAIT FOR 220000 ps;
	Input0 <= '1';
	WAIT FOR 20000 ps;
	Input0 <= '0';
WAIT;
END PROCESS t_prcs_Input0;

-- Input1
t_prcs_Input1: PROCESS
BEGIN
	Input1 <= '0';
	WAIT FOR 100000 ps;
	Input1 <= '1';
	WAIT FOR 30000 ps;
	Input1 <= '0';
	WAIT FOR 90000 ps;
	Input1 <= '1';
	WAIT FOR 20000 ps;
	Input1 <= '0';
	WAIT FOR 50000 ps;
	Input1 <= '1';
	WAIT FOR 100000 ps;
	Input1 <= '0';
WAIT;
END PROCESS t_prcs_Input1;
END RIVETER_arch;
