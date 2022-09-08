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
-- Generated on "09/07/2022 18:15:09"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          HLCP
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY HLCP_vhd_vec_tst IS
END HLCP_vhd_vec_tst;
ARCHITECTURE HLCP_arch OF HLCP_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL busLed : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL but : STD_LOGIC;
SIGNAL Clk : STD_LOGIC;
SIGNAL EnClk : STD_LOGIC;
SIGNAL led : STD_LOGIC;
SIGNAL Rst : STD_LOGIC;
SIGNAL XY : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT HLCP
	PORT (
	busLed : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	but : IN STD_LOGIC;
	Clk : IN STD_LOGIC;
	EnClk : OUT STD_LOGIC;
	led : OUT STD_LOGIC;
	Rst : IN STD_LOGIC;
	XY : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : HLCP
	PORT MAP (
-- list connections between master ports and signals
	busLed => busLed,
	but => but,
	Clk => Clk,
	EnClk => EnClk,
	led => led,
	Rst => Rst,
	XY => XY
	);

-- but
t_prcs_but: PROCESS
BEGIN
	but <= '0';
	WAIT FOR 180000 ps;
	but <= '1';
	WAIT FOR 100000 ps;
	but <= '0';
WAIT;
END PROCESS t_prcs_but;

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

-- Rst
t_prcs_Rst: PROCESS
BEGIN
	Rst <= '0';
WAIT;
END PROCESS t_prcs_Rst;
-- XY[1]
t_prcs_XY_1: PROCESS
BEGIN
	XY(1) <= '0';
WAIT;
END PROCESS t_prcs_XY_1;
-- XY[0]
t_prcs_XY_0: PROCESS
BEGIN
	XY(0) <= '0';
WAIT;
END PROCESS t_prcs_XY_0;
END HLCP_arch;
