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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "09/14/2022 21:03:21"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	FPGARiveter IS
    PORT (
	SensorInps : IN std_logic_vector(3 DOWNTO 0);
	Clk : IN std_logic;
	Rst : IN std_logic;
	En : IN std_logic;
	A : OUT std_logic;
	B : OUT std_logic
	);
END FPGARiveter;

-- Design Ports Information
-- A	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SensorInps[3]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SensorInps[2]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SensorInps[0]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SensorInps[1]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rst	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- En	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FPGARiveter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SensorInps : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Clk : std_logic;
SIGNAL ww_Rst : std_logic;
SIGNAL ww_En : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \A~output_o\ : std_logic;
SIGNAL \B~output_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \SensorInps[3]~input_o\ : std_logic;
SIGNAL \SensorInps[2]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \SensorInps[1]~input_o\ : std_logic;
SIGNAL \SensorInps[0]~input_o\ : std_logic;
SIGNAL \U2|U1|Mux15~1_combout\ : std_logic;
SIGNAL \En~input_o\ : std_logic;
SIGNAL \Rst~input_o\ : std_logic;
SIGNAL \U1|flipflops[1]~feeder_combout\ : std_logic;
SIGNAL \U1|count[0]~19_combout\ : std_logic;
SIGNAL \U1|counter_set~combout\ : std_logic;
SIGNAL \U1|count[18]~49_combout\ : std_logic;
SIGNAL \U1|count[0]~20\ : std_logic;
SIGNAL \U1|count[1]~21_combout\ : std_logic;
SIGNAL \U1|count[1]~22\ : std_logic;
SIGNAL \U1|count[2]~23_combout\ : std_logic;
SIGNAL \U1|count[2]~24\ : std_logic;
SIGNAL \U1|count[3]~25_combout\ : std_logic;
SIGNAL \U1|count[3]~26\ : std_logic;
SIGNAL \U1|count[4]~27_combout\ : std_logic;
SIGNAL \U1|count[4]~28\ : std_logic;
SIGNAL \U1|count[5]~29_combout\ : std_logic;
SIGNAL \U1|count[5]~30\ : std_logic;
SIGNAL \U1|count[6]~31_combout\ : std_logic;
SIGNAL \U1|count[6]~32\ : std_logic;
SIGNAL \U1|count[7]~33_combout\ : std_logic;
SIGNAL \U1|count[7]~34\ : std_logic;
SIGNAL \U1|count[8]~35_combout\ : std_logic;
SIGNAL \U1|count[8]~36\ : std_logic;
SIGNAL \U1|count[9]~37_combout\ : std_logic;
SIGNAL \U1|count[9]~38\ : std_logic;
SIGNAL \U1|count[10]~39_combout\ : std_logic;
SIGNAL \U1|count[10]~40\ : std_logic;
SIGNAL \U1|count[11]~41_combout\ : std_logic;
SIGNAL \U1|count[11]~42\ : std_logic;
SIGNAL \U1|count[12]~43_combout\ : std_logic;
SIGNAL \U1|count[12]~44\ : std_logic;
SIGNAL \U1|count[13]~45_combout\ : std_logic;
SIGNAL \U1|count[13]~46\ : std_logic;
SIGNAL \U1|count[14]~47_combout\ : std_logic;
SIGNAL \U1|count[14]~48\ : std_logic;
SIGNAL \U1|count[15]~50_combout\ : std_logic;
SIGNAL \U1|count[15]~51\ : std_logic;
SIGNAL \U1|count[16]~52_combout\ : std_logic;
SIGNAL \U1|count[16]~53\ : std_logic;
SIGNAL \U1|count[17]~54_combout\ : std_logic;
SIGNAL \U1|count[17]~55\ : std_logic;
SIGNAL \U1|count[18]~56_combout\ : std_logic;
SIGNAL \U1|sigdB~0_combout\ : std_logic;
SIGNAL \U1|sigdB~2_combout\ : std_logic;
SIGNAL \U1|sigdB~1_combout\ : std_logic;
SIGNAL \U1|sigdB~3_combout\ : std_logic;
SIGNAL \U1|sigdB~4_combout\ : std_logic;
SIGNAL \U1|sigdB~5_combout\ : std_logic;
SIGNAL \U1|sigdB~q\ : std_logic;
SIGNAL \input~feeder_combout\ : std_logic;
SIGNAL \input~q\ : std_logic;
SIGNAL \rising_edge_det~0_combout\ : std_logic;
SIGNAL \rising_edge_det~q\ : std_logic;
SIGNAL \U2|U3|y~0_combout\ : std_logic;
SIGNAL \U2|U2|Regist[0]~0_combout\ : std_logic;
SIGNAL \U2|EnIn~0_combout\ : std_logic;
SIGNAL \U2|U4|y~0_combout\ : std_logic;
SIGNAL \U2|U2|Regist[1]~1_combout\ : std_logic;
SIGNAL \U2|U1|Mux15~0_combout\ : std_logic;
SIGNAL \U2|U5|Mux13~0_combout\ : std_logic;
SIGNAL \U1|count\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \U2|U2|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U1|flipflops\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U2|U1|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \ALT_INV_Rst~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_SensorInps <= SensorInps;
ww_Clk <= Clk;
ww_Rst <= Rst;
ww_En <= En;
A <= ww_A;
B <= ww_B;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);
\U2|U1|ALT_INV_Mux15~0_combout\ <= NOT \U2|U1|Mux15~0_combout\;
\ALT_INV_Rst~input_o\ <= NOT \Rst~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N4
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X46_Y54_N23
\A~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|U1|ALT_INV_Mux15~0_combout\,
	devoe => ww_devoe,
	o => \A~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\B~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|U5|Mux13~0_combout\,
	devoe => ww_devoe,
	o => \B~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\Clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G19
\Clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X54_Y54_N22
\SensorInps[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SensorInps(3),
	o => \SensorInps[3]~input_o\);

-- Location: IOIBUF_X54_Y54_N29
\SensorInps[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SensorInps(2),
	o => \SensorInps[2]~input_o\);

-- Location: LCCOMB_X54_Y50_N24
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\SensorInps[3]~input_o\ & !\SensorInps[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SensorInps[3]~input_o\,
	datad => \SensorInps[2]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X51_Y54_N1
\SensorInps[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SensorInps(1),
	o => \SensorInps[1]~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\SensorInps[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SensorInps(0),
	o => \SensorInps[0]~input_o\);

-- Location: LCCOMB_X51_Y50_N24
\U2|U1|Mux15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U1|Mux15~1_combout\ = (!\SensorInps[1]~input_o\ & \SensorInps[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SensorInps[1]~input_o\,
	datad => \SensorInps[0]~input_o\,
	combout => \U2|U1|Mux15~1_combout\);

-- Location: IOIBUF_X51_Y54_N29
\En~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_En,
	o => \En~input_o\);

-- Location: IOIBUF_X69_Y54_N1
\Rst~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rst,
	o => \Rst~input_o\);

-- Location: FF_X51_Y50_N21
\U1|flipflops[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \En~input_o\,
	clrn => \ALT_INV_Rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|flipflops\(0));

-- Location: LCCOMB_X51_Y50_N2
\U1|flipflops[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|flipflops[1]~feeder_combout\ = \U1|flipflops\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|flipflops\(0),
	combout => \U1|flipflops[1]~feeder_combout\);

-- Location: FF_X51_Y50_N3
\U1|flipflops[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|flipflops[1]~feeder_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|flipflops\(1));

-- Location: LCCOMB_X52_Y51_N14
\U1|count[0]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|count[0]~19_combout\ = \U1|count\(0) $ (VCC)
-- \U1|count[0]~20\ = CARRY(\U1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(0),
	datad => VCC,
	combout => \U1|count[0]~19_combout\,
	cout => \U1|count[0]~20\);

-- Location: LCCOMB_X51_Y50_N4
\U1|counter_set\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|counter_set~combout\ = \U1|flipflops\(0) $ (\U1|flipflops\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|flipflops\(0),
	datad => \U1|flipflops\(1),
	combout => \U1|counter_set~combout\);

-- Location: LCCOMB_X52_Y50_N20
\U1|count[18]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|count[18]~49_combout\ = (!\Rst~input_o\ & \U1|sigdB~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rst~input_o\,
	datac => \U1|sigdB~4_combout\,
	combout => \U1|count[18]~49_combout\);

-- Location: FF_X52_Y51_N15
\U1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|count[0]~19_combout\,
	sclr => \U1|counter_set~combout\,
	ena => \U1|count[18]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(0));

-- Location: LCCOMB_X52_Y51_N16
\U1|count[1]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|count[1]~21_combout\ = (\U1|count\(1) & (!\U1|count[0]~20\)) # (!\U1|count\(1) & ((\U1|count[0]~20\) # (GND)))
-- \U1|count[1]~22\ = CARRY((!\U1|count[0]~20\) # (!\U1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(1),
	datad => VCC,
	cin => \U1|count[0]~20\,
	combout => \U1|count[1]~21_combout\,
	cout => \U1|count[1]~22\);

-- Location: FF_X52_Y51_N17
\U1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|count[1]~21_combout\,
	sclr => \U1|counter_set~combout\,
	ena => \U1|count[18]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(1));

-- Location: LCCOMB_X52_Y51_N18
\U1|count[2]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|count[2]~23_combout\ = (\U1|count\(2) & (\U1|count[1]~22\ $ (GND))) # (!\U1|count\(2) & (!\U1|count[1]~22\ & VCC))
-- \U1|count[2]~24\ = CARRY((\U1|count\(2) & !\U1|count[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(2),
	datad => VCC,
	cin => \U1|count[1]~22\,
	combout => \U1|count[2]~23_combout\,
	cout => \U1|count[2]~24\);

-- Location: FF_X52_Y51_N19
\U1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|count[2]~23_combout\,
	sclr => \U1|counter_set~combout\,
	ena => \U1|count[18]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(2));

-- Location: LCCOMB_X52_Y51_N20
\U1|count[3]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|count[3]~25_combout\ = (\U1|count\(3) & (!\U1|count[2]~24\)) # (!\U1|count\(3) & ((\U1|count[2]~24\) # (GND)))
-- \U1|count[3]~26\ = CARRY((!\U1|count[2]~24\) # (!\U1|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(3),
	datad => VCC,
	cin => \U1|count[2]~24\,
	combout => \U1|count[3]~25_combout\,
	cout => \U1|count[3]~26\);

-- Location: FF_X52_Y51_N21
\U1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|count[3]~25_combout\,
	sclr => \U1|counter_set~combout\,
	ena => \U1|count[18]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(3));

-- Location: LCCOMB_X52_Y51_N22
\U1|count[4]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|count[4]~27_combout\ = (\U1|count\(4) & (\U1|count[3]~26\ $ (GND))) # (!\U1|count\(4) & (!\U1|count[3]~26\ & VCC))
-- \U1|count[4]~28\ = CARRY((\U1|count\(4) & !\U1|count[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(4),
	datad => VCC,
	cin => \U1|count[3]~26\,
	combout => \U1|count[4]~27_combout\,
	cout => \U1|count[4]~28\);

-- Location: FF_X52_Y51_N23
\U1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|count[4]~27_combout\,
	sclr => \U1|counter_set~combout\,
	ena => \U1|count[18]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(4));

-- Location: LCCOMB_X52_Y51_N24
\U1|count[5]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|count[5]~29_combout\ = (\U1|count\(5) & (!\U1|count[4]~28\)) # (!\U1|count\(5) & ((\U1|count[4]~28\) # (GND)))
-- \U1|count[5]~30\ = CARRY((!\U1|count[4]~28\) # (!\U1|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(5),
	datad => VCC,
	cin => \U1|count[4]~28\,
	combout => \U1|count[5]~29_combout\,
	cout => \U1|count[5]~30\);

-- Location: FF_X52_Y51_N25
\U1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|count[5]~29_combout\,
	sclr => \U1|counter_set~combout\,
	ena => \U1|count[18]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(5));

-- Location: LCCOMB_X52_Y51_N26
\U1|count[6]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|count[6]~31_combout\ = (\U1|count\(6) & (\U1|count[5]~30\ $ (GND))) # (!\U1|count\(6) & (!\U1|count[5]~30\ & VCC))
-- \U1|count[6]~32\ = CARRY((\U1|count\(6) & !\U1|count[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(6),
	datad => VCC,
	cin => \U1|count[5]~30\,
	combout => \U1|count[6]~31_combout\,
	cout => \U1|count[6]~32\);

-- Location: FF_X52_Y51_N27
\U1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|count[6]~31_combout\,
	sclr => \U1|counter_set~combout\,
	ena => \U1|count[18]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(6));

-- Location: LCCOMB_X52_Y51_N28
\U1|count[7]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|count[7]~33_combout\ = (\U1|count\(7) & (!\U1|count[6]~32\)) # (!\U1|count\(7) & ((\U1|count[6]~32\) # (GND)))
-- \U1|count[7]~34\ = CARRY((!\U1|count[6]~32\) # (!\U1|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(7),
	datad => VCC,
	cin => \U1|count[6]~32\,
	combout => \U1|count[7]~33_combout\,
	cout => \U1|count[7]~34\);

-- Location: FF_X52_Y51_N29
\U1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|count[7]~33_combout\,
	sclr => \U1|counter_set~combout\,
	ena => \U1|count[18]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(7));

-- Location: LCCOMB_X52_Y51_N30
\U1|count[8]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|count[8]~35_combout\ = (\U1|count\(8) & (\U1|count[7]~34\ $ (GND))) # (!\U1|count\(8) & (!\U1|count[7]~34\ & VCC))
-- \U1|count[8]~36\ = CARRY((\U1|count\(8) & !\U1|count[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(8),
	datad => VCC,
	cin => \U1|count[7]~34\,
	combout => \U1|count[8]~35_combout\,
	cout => \U1|count[8]~36\);

-- Location: FF_X52_Y51_N31
\U1|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|count[8]~35_combout\,
	sclr => \U1|counter_set~combout\,
	ena => \U1|count[18]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(8));

-- Location: LCCOMB_X52_Y50_N0
\U1|count[9]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|count[9]~37_combout\ = (\U1|count\(9) & (!\U1|count[8]~36\)) # (!\U1|count\(9) & ((\U1|count[8]~36\) # (GND)))
-- \U1|count[9]~38\ = CARRY((!\U1|count[8]~36\) # (!\U1|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(9),
	datad => VCC,
	cin => \U1|count[8]~36\,
	combout => \U1|count[9]~37_combout\,
	cout => \U1|count[9]~38\);

-- Location: FF_X52_Y50_N1
\U1|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|count[9]~37_combout\,
	sclr => \U1|counter_set~combout\,
	ena => \U1|count[18]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(9));

-- Location: LCCOMB_X52_Y50_N2
\U1|count[10]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|count[10]~39_combout\ = (\U1|count\(10) & (\U1|count[9]~38\ $ (GND))) # (!\U1|count\(10) & (!\U1|count[9]~38\ & VCC))
-- \U1|count[10]~40\ = CARRY((\U1|count\(10) & !\U1|count[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(10),
	datad => VCC,
	cin => \U1|count[9]~38\,
	combout => \U1|count[10]~39_combout\,
	cout => \U1|count[10]~40\);

-- Location: FF_X52_Y50_N3
\U1|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|count[10]~39_combout\,
	sclr => \U1|counter_set~combout\,
	ena => \U1|count[18]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(10));

-- Location: LCCOMB_X52_Y50_N4
\U1|count[11]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|count[11]~41_combout\ = (\U1|count\(11) & (!\U1|count[10]~40\)) # (!\U1|count\(11) & ((\U1|count[10]~40\) # (GND)))
-- \U1|count[11]~42\ = CARRY((!\U1|count[10]~40\) # (!\U1|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(11),
	datad => VCC,
	cin => \U1|count[10]~40\,
	combout => \U1|count[11]~41_combout\,
	cout => \U1|count[11]~42\);

-- Location: FF_X52_Y50_N5
\U1|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|count[11]~41_combout\,
	sclr => \U1|counter_set~combout\,
	ena => \U1|count[18]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(11));

-- Location: LCCOMB_X52_Y50_N6
\U1|count[12]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|count[12]~43_combout\ = (\U1|count\(12) & (\U1|count[11]~42\ $ (GND))) # (!\U1|count\(12) & (!\U1|count[11]~42\ & VCC))
-- \U1|count[12]~44\ = CARRY((\U1|count\(12) & !\U1|count[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(12),
	datad => VCC,
	cin => \U1|count[11]~42\,
	combout => \U1|count[12]~43_combout\,
	cout => \U1|count[12]~44\);

-- Location: FF_X52_Y50_N7
\U1|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|count[12]~43_combout\,
	sclr => \U1|counter_set~combout\,
	ena => \U1|count[18]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(12));

-- Location: LCCOMB_X52_Y50_N8
\U1|count[13]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|count[13]~45_combout\ = (\U1|count\(13) & (!\U1|count[12]~44\)) # (!\U1|count\(13) & ((\U1|count[12]~44\) # (GND)))
-- \U1|count[13]~46\ = CARRY((!\U1|count[12]~44\) # (!\U1|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(13),
	datad => VCC,
	cin => \U1|count[12]~44\,
	combout => \U1|count[13]~45_combout\,
	cout => \U1|count[13]~46\);

-- Location: FF_X52_Y50_N9
\U1|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|count[13]~45_combout\,
	sclr => \U1|counter_set~combout\,
	ena => \U1|count[18]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(13));

-- Location: LCCOMB_X52_Y50_N10
\U1|count[14]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|count[14]~47_combout\ = (\U1|count\(14) & (\U1|count[13]~46\ $ (GND))) # (!\U1|count\(14) & (!\U1|count[13]~46\ & VCC))
-- \U1|count[14]~48\ = CARRY((\U1|count\(14) & !\U1|count[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(14),
	datad => VCC,
	cin => \U1|count[13]~46\,
	combout => \U1|count[14]~47_combout\,
	cout => \U1|count[14]~48\);

-- Location: FF_X52_Y50_N11
\U1|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|count[14]~47_combout\,
	sclr => \U1|counter_set~combout\,
	ena => \U1|count[18]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(14));

-- Location: LCCOMB_X52_Y50_N12
\U1|count[15]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|count[15]~50_combout\ = (\U1|count\(15) & (!\U1|count[14]~48\)) # (!\U1|count\(15) & ((\U1|count[14]~48\) # (GND)))
-- \U1|count[15]~51\ = CARRY((!\U1|count[14]~48\) # (!\U1|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(15),
	datad => VCC,
	cin => \U1|count[14]~48\,
	combout => \U1|count[15]~50_combout\,
	cout => \U1|count[15]~51\);

-- Location: FF_X52_Y50_N13
\U1|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|count[15]~50_combout\,
	sclr => \U1|counter_set~combout\,
	ena => \U1|count[18]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(15));

-- Location: LCCOMB_X52_Y50_N14
\U1|count[16]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|count[16]~52_combout\ = (\U1|count\(16) & (\U1|count[15]~51\ $ (GND))) # (!\U1|count\(16) & (!\U1|count[15]~51\ & VCC))
-- \U1|count[16]~53\ = CARRY((\U1|count\(16) & !\U1|count[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(16),
	datad => VCC,
	cin => \U1|count[15]~51\,
	combout => \U1|count[16]~52_combout\,
	cout => \U1|count[16]~53\);

-- Location: FF_X52_Y50_N15
\U1|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|count[16]~52_combout\,
	sclr => \U1|counter_set~combout\,
	ena => \U1|count[18]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(16));

-- Location: LCCOMB_X52_Y50_N16
\U1|count[17]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|count[17]~54_combout\ = (\U1|count\(17) & (!\U1|count[16]~53\)) # (!\U1|count\(17) & ((\U1|count[16]~53\) # (GND)))
-- \U1|count[17]~55\ = CARRY((!\U1|count[16]~53\) # (!\U1|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(17),
	datad => VCC,
	cin => \U1|count[16]~53\,
	combout => \U1|count[17]~54_combout\,
	cout => \U1|count[17]~55\);

-- Location: FF_X52_Y50_N17
\U1|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|count[17]~54_combout\,
	sclr => \U1|counter_set~combout\,
	ena => \U1|count[18]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(17));

-- Location: LCCOMB_X52_Y50_N18
\U1|count[18]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|count[18]~56_combout\ = \U1|count\(18) $ (!\U1|count[17]~55\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(18),
	cin => \U1|count[17]~55\,
	combout => \U1|count[18]~56_combout\);

-- Location: FF_X52_Y50_N19
\U1|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|count[18]~56_combout\,
	sclr => \U1|counter_set~combout\,
	ena => \U1|count[18]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(18));

-- Location: LCCOMB_X52_Y50_N28
\U1|sigdB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|sigdB~0_combout\ = (((!\U1|count\(17)) # (!\U1|count\(18))) # (!\U1|count\(16))) # (!\U1|count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(15),
	datab => \U1|count\(16),
	datac => \U1|count\(18),
	datad => \U1|count\(17),
	combout => \U1|sigdB~0_combout\);

-- Location: LCCOMB_X52_Y50_N26
\U1|sigdB~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|sigdB~2_combout\ = (!\U1|count\(10) & (!\U1|count\(12) & (!\U1|count\(11) & !\U1|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(10),
	datab => \U1|count\(12),
	datac => \U1|count\(11),
	datad => \U1|count\(9),
	combout => \U1|sigdB~2_combout\);

-- Location: LCCOMB_X52_Y51_N4
\U1|sigdB~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|sigdB~1_combout\ = ((!\U1|count\(6) & (!\U1|count\(5) & !\U1|count\(7)))) # (!\U1|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(6),
	datab => \U1|count\(5),
	datac => \U1|count\(8),
	datad => \U1|count\(7),
	combout => \U1|sigdB~1_combout\);

-- Location: LCCOMB_X52_Y50_N24
\U1|sigdB~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|sigdB~3_combout\ = (\U1|count\(13) & ((!\U1|sigdB~1_combout\) # (!\U1|sigdB~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(13),
	datac => \U1|sigdB~2_combout\,
	datad => \U1|sigdB~1_combout\,
	combout => \U1|sigdB~3_combout\);

-- Location: LCCOMB_X52_Y50_N22
\U1|sigdB~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|sigdB~4_combout\ = (\U1|sigdB~0_combout\) # ((\U1|counter_set~combout\) # ((!\U1|count\(14) & !\U1|sigdB~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|sigdB~0_combout\,
	datab => \U1|count\(14),
	datac => \U1|counter_set~combout\,
	datad => \U1|sigdB~3_combout\,
	combout => \U1|sigdB~4_combout\);

-- Location: LCCOMB_X51_Y50_N26
\U1|sigdB~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|sigdB~5_combout\ = (\U1|sigdB~4_combout\ & ((\U1|sigdB~q\))) # (!\U1|sigdB~4_combout\ & (\U1|flipflops\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|flipflops\(1),
	datac => \U1|sigdB~q\,
	datad => \U1|sigdB~4_combout\,
	combout => \U1|sigdB~5_combout\);

-- Location: FF_X51_Y50_N27
\U1|sigdB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|sigdB~5_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|sigdB~q\);

-- Location: LCCOMB_X51_Y50_N12
\input~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \input~feeder_combout\ = \U1|sigdB~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|sigdB~q\,
	combout => \input~feeder_combout\);

-- Location: FF_X51_Y50_N13
input : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \input~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input~q\);

-- Location: LCCOMB_X51_Y50_N8
\rising_edge_det~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rising_edge_det~0_combout\ = (\U1|sigdB~q\ & !\input~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|sigdB~q\,
	datad => \input~q\,
	combout => \rising_edge_det~0_combout\);

-- Location: FF_X51_Y50_N9
rising_edge_det : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \rising_edge_det~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rising_edge_det~q\);

-- Location: LCCOMB_X51_Y50_N18
\U2|U3|y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U3|y~0_combout\ = (!\U2|U2|Regist\(0) & ((\Mux0~0_combout\ & (\U2|U1|Mux15~1_combout\ & \U2|U2|Regist\(1))) # (!\Mux0~0_combout\ & (!\U2|U1|Mux15~1_combout\ & !\U2|U2|Regist\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \U2|U1|Mux15~1_combout\,
	datac => \U2|U2|Regist\(1),
	datad => \U2|U2|Regist\(0),
	combout => \U2|U3|y~0_combout\);

-- Location: LCCOMB_X51_Y50_N16
\U2|U2|Regist[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U2|Regist[0]~0_combout\ = (\U2|EnIn~0_combout\ & ((\rising_edge_det~q\ & ((\U2|U3|y~0_combout\))) # (!\rising_edge_det~q\ & (\U2|U2|Regist\(0))))) # (!\U2|EnIn~0_combout\ & (((\U2|U2|Regist\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|EnIn~0_combout\,
	datab => \rising_edge_det~q\,
	datac => \U2|U2|Regist\(0),
	datad => \U2|U3|y~0_combout\,
	combout => \U2|U2|Regist[0]~0_combout\);

-- Location: FF_X51_Y50_N17
\U2|U2|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|U2|Regist[0]~0_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U2|Regist\(0));

-- Location: LCCOMB_X51_Y50_N10
\U2|EnIn~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|EnIn~0_combout\ = (\U2|U2|Regist\(1) & (\U2|U1|Mux15~1_combout\ & (\Mux0~0_combout\ $ (\U2|U2|Regist\(0))))) # (!\U2|U2|Regist\(1) & (!\Mux0~0_combout\ & (\U2|U1|Mux15~1_combout\ $ (!\U2|U2|Regist\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \U2|U1|Mux15~1_combout\,
	datac => \U2|U2|Regist\(1),
	datad => \U2|U2|Regist\(0),
	combout => \U2|EnIn~0_combout\);

-- Location: LCCOMB_X51_Y50_N28
\U2|U4|y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U4|y~0_combout\ = (\U2|U1|Mux15~1_combout\ & ((\Mux0~0_combout\ & (\U2|U2|Regist\(1) & !\U2|U2|Regist\(0))) # (!\Mux0~0_combout\ & (!\U2|U2|Regist\(1) & \U2|U2|Regist\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \U2|U1|Mux15~1_combout\,
	datac => \U2|U2|Regist\(1),
	datad => \U2|U2|Regist\(0),
	combout => \U2|U4|y~0_combout\);

-- Location: LCCOMB_X51_Y50_N22
\U2|U2|Regist[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U2|Regist[1]~1_combout\ = (\U2|EnIn~0_combout\ & ((\rising_edge_det~q\ & ((\U2|U4|y~0_combout\))) # (!\rising_edge_det~q\ & (\U2|U2|Regist\(1))))) # (!\U2|EnIn~0_combout\ & (((\U2|U2|Regist\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|EnIn~0_combout\,
	datab => \rising_edge_det~q\,
	datac => \U2|U2|Regist\(1),
	datad => \U2|U4|y~0_combout\,
	combout => \U2|U2|Regist[1]~1_combout\);

-- Location: FF_X51_Y50_N23
\U2|U2|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|U2|Regist[1]~1_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U2|Regist\(1));

-- Location: LCCOMB_X51_Y50_N20
\U2|U1|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U1|Mux15~0_combout\ = (!\U2|U2|Regist\(1) & !\U2|U2|Regist\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U2|Regist\(1),
	datad => \U2|U2|Regist\(0),
	combout => \U2|U1|Mux15~0_combout\);

-- Location: LCCOMB_X51_Y50_N30
\U2|U5|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U5|Mux13~0_combout\ = (\U2|U2|Regist\(1) & !\U2|U2|Regist\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|U2|Regist\(1),
	datad => \U2|U2|Regist\(0),
	combout => \U2|U5|Mux13~0_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_A <= \A~output_o\;

ww_B <= \B~output_o\;
END structure;


