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

-- DATE "09/08/2022 00:26:59"

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

ENTITY 	Top IS
    PORT (
	XY : IN std_logic_vector(1 DOWNTO 0);
	But : IN std_logic;
	Clk : IN std_logic;
	Rst : IN std_logic;
	LEDs : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END Top;

-- Design Ports Information
-- LEDs[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[7]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XY[0]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XY[1]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rst	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- But	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_XY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_But : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_Rst : std_logic;
SIGNAL ww_LEDs : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U1|EnHz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \LEDs[0]~output_o\ : std_logic;
SIGNAL \LEDs[1]~output_o\ : std_logic;
SIGNAL \LEDs[2]~output_o\ : std_logic;
SIGNAL \LEDs[3]~output_o\ : std_logic;
SIGNAL \LEDs[4]~output_o\ : std_logic;
SIGNAL \LEDs[5]~output_o\ : std_logic;
SIGNAL \LEDs[6]~output_o\ : std_logic;
SIGNAL \LEDs[7]~output_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \XY[1]~input_o\ : std_logic;
SIGNAL \XY[0]~input_o\ : std_logic;
SIGNAL \U1|Count100M~0_combout\ : std_logic;
SIGNAL \Rst~input_o\ : std_logic;
SIGNAL \U1|Count100M~q\ : std_logic;
SIGNAL \U1|EnHz~feeder_combout\ : std_logic;
SIGNAL \U1|EnHz~q\ : std_logic;
SIGNAL \U1|EnHz~clkctrl_outclk\ : std_logic;
SIGNAL \But~input_o\ : std_logic;
SIGNAL \U2|flipflops[0]~feeder_combout\ : std_logic;
SIGNAL \U2|flipflops[1]~feeder_combout\ : std_logic;
SIGNAL \U2|counter_set~combout\ : std_logic;
SIGNAL \U2|count[0]~19_combout\ : std_logic;
SIGNAL \U2|count[18]~49_combout\ : std_logic;
SIGNAL \U2|count[0]~20\ : std_logic;
SIGNAL \U2|count[1]~21_combout\ : std_logic;
SIGNAL \U2|count[1]~22\ : std_logic;
SIGNAL \U2|count[2]~23_combout\ : std_logic;
SIGNAL \U2|count[2]~24\ : std_logic;
SIGNAL \U2|count[3]~25_combout\ : std_logic;
SIGNAL \U2|count[3]~26\ : std_logic;
SIGNAL \U2|count[4]~27_combout\ : std_logic;
SIGNAL \U2|count[4]~28\ : std_logic;
SIGNAL \U2|count[5]~29_combout\ : std_logic;
SIGNAL \U2|count[5]~30\ : std_logic;
SIGNAL \U2|count[6]~31_combout\ : std_logic;
SIGNAL \U2|count[6]~32\ : std_logic;
SIGNAL \U2|count[7]~33_combout\ : std_logic;
SIGNAL \U2|count[7]~34\ : std_logic;
SIGNAL \U2|count[8]~35_combout\ : std_logic;
SIGNAL \U2|count[8]~36\ : std_logic;
SIGNAL \U2|count[9]~37_combout\ : std_logic;
SIGNAL \U2|count[9]~38\ : std_logic;
SIGNAL \U2|count[10]~39_combout\ : std_logic;
SIGNAL \U2|count[10]~40\ : std_logic;
SIGNAL \U2|count[11]~41_combout\ : std_logic;
SIGNAL \U2|count[11]~42\ : std_logic;
SIGNAL \U2|count[12]~43_combout\ : std_logic;
SIGNAL \U2|count[12]~44\ : std_logic;
SIGNAL \U2|count[13]~45_combout\ : std_logic;
SIGNAL \U2|count[13]~46\ : std_logic;
SIGNAL \U2|count[14]~47_combout\ : std_logic;
SIGNAL \U2|count[14]~48\ : std_logic;
SIGNAL \U2|count[15]~50_combout\ : std_logic;
SIGNAL \U2|count[15]~51\ : std_logic;
SIGNAL \U2|count[16]~52_combout\ : std_logic;
SIGNAL \U2|count[16]~53\ : std_logic;
SIGNAL \U2|count[17]~54_combout\ : std_logic;
SIGNAL \U2|count[17]~55\ : std_logic;
SIGNAL \U2|count[18]~56_combout\ : std_logic;
SIGNAL \U2|sigdB~0_combout\ : std_logic;
SIGNAL \U2|sigdB~2_combout\ : std_logic;
SIGNAL \U2|sigdB~1_combout\ : std_logic;
SIGNAL \U2|sigdB~3_combout\ : std_logic;
SIGNAL \U2|sigdB~4_combout\ : std_logic;
SIGNAL \U2|sigdB~5_combout\ : std_logic;
SIGNAL \U2|sigdB~feeder_combout\ : std_logic;
SIGNAL \U2|sigdB~q\ : std_logic;
SIGNAL \U1|input~q\ : std_logic;
SIGNAL \U1|rising_edge_det~0_combout\ : std_logic;
SIGNAL \U1|rising_edge_det~q\ : std_logic;
SIGNAL \U1|Equal0~0_combout\ : std_logic;
SIGNAL \U1|Selector1~0_combout\ : std_logic;
SIGNAL \U1|pres_state.S1~q\ : std_logic;
SIGNAL \U1|Selector2~0_combout\ : std_logic;
SIGNAL \U1|Selector2~1_combout\ : std_logic;
SIGNAL \U1|pres_state.S2~q\ : std_logic;
SIGNAL \U1|Selector3~0_combout\ : std_logic;
SIGNAL \U1|Selector3~1_combout\ : std_logic;
SIGNAL \U1|pres_state.S3~q\ : std_logic;
SIGNAL \U1|Selector4~0_combout\ : std_logic;
SIGNAL \U1|pres_state.S4~q\ : std_logic;
SIGNAL \U1|Selector5~0_combout\ : std_logic;
SIGNAL \U1|Selector5~1_combout\ : std_logic;
SIGNAL \U1|pres_state.S5~q\ : std_logic;
SIGNAL \U1|Selector6~0_combout\ : std_logic;
SIGNAL \U1|pres_state.S6~q\ : std_logic;
SIGNAL \U1|Selector11~0_combout\ : std_logic;
SIGNAL \U1|Selector11~1_combout\ : std_logic;
SIGNAL \U1|Selector8~0_combout\ : std_logic;
SIGNAL \U1|Selector8~1_combout\ : std_logic;
SIGNAL \U1|pres_state.SE1~q\ : std_logic;
SIGNAL \U1|Selector9~0_combout\ : std_logic;
SIGNAL \U1|Selector9~1_combout\ : std_logic;
SIGNAL \U1|pres_state.SE2~q\ : std_logic;
SIGNAL \U1|Selector10~0_combout\ : std_logic;
SIGNAL \U1|Selector10~1_combout\ : std_logic;
SIGNAL \U1|pres_state.SE3~q\ : std_logic;
SIGNAL \U1|Selector11~2_combout\ : std_logic;
SIGNAL \U1|pres_state.SE4~q\ : std_logic;
SIGNAL \U1|Selector12~0_combout\ : std_logic;
SIGNAL \U1|Selector12~1_combout\ : std_logic;
SIGNAL \U1|pres_state.SE5~q\ : std_logic;
SIGNAL \U1|Selector13~0_combout\ : std_logic;
SIGNAL \U1|pres_state.SE6~q\ : std_logic;
SIGNAL \U1|Selector0~0_combout\ : std_logic;
SIGNAL \U1|Selector0~1_combout\ : std_logic;
SIGNAL \U1|Selector0~2_combout\ : std_logic;
SIGNAL \U1|Selector0~3_combout\ : std_logic;
SIGNAL \U1|Selector0~4_combout\ : std_logic;
SIGNAL \U1|Selector0~5_combout\ : std_logic;
SIGNAL \U1|pres_state.S0~q\ : std_logic;
SIGNAL \U1|pres_state~36_combout\ : std_logic;
SIGNAL \U1|pres_state.SE0~q\ : std_logic;
SIGNAL \U1|WideOr20~0_combout\ : std_logic;
SIGNAL \U1|WideOr18~0_combout\ : std_logic;
SIGNAL \U1|WideOr18~combout\ : std_logic;
SIGNAL \U1|WideOr16~0_combout\ : std_logic;
SIGNAL \U1|WideOr17~combout\ : std_logic;
SIGNAL \U1|WideOr15~0_combout\ : std_logic;
SIGNAL \U1|WideOr15~combout\ : std_logic;
SIGNAL \U2|count\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \U2|flipflops\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U1|busLed\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_Rst~input_o\ : std_logic;
SIGNAL \U1|ALT_INV_WideOr16~0_combout\ : std_logic;
SIGNAL \U1|ALT_INV_WideOr18~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_XY <= XY;
ww_But <= But;
ww_Clk <= Clk;
ww_Rst <= Rst;
LEDs <= ww_LEDs;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\U1|EnHz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U1|EnHz~q\);

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);
\ALT_INV_Rst~input_o\ <= NOT \Rst~input_o\;
\U1|ALT_INV_WideOr16~0_combout\ <= NOT \U1|WideOr16~0_combout\;
\U1|ALT_INV_WideOr18~combout\ <= NOT \U1|WideOr18~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y43_N16
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

-- Location: IOOBUF_X46_Y54_N2
\LEDs[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|WideOr20~0_combout\,
	devoe => ww_devoe,
	o => \LEDs[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\LEDs[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|WideOr18~0_combout\,
	devoe => ww_devoe,
	o => \LEDs[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\LEDs[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ALT_INV_WideOr18~combout\,
	devoe => ww_devoe,
	o => \LEDs[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\LEDs[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|WideOr17~combout\,
	devoe => ww_devoe,
	o => \LEDs[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\LEDs[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ALT_INV_WideOr16~0_combout\,
	devoe => ww_devoe,
	o => \LEDs[4]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\LEDs[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|busLed\(5),
	devoe => ww_devoe,
	o => \LEDs[5]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\LEDs[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|WideOr15~combout\,
	devoe => ww_devoe,
	o => \LEDs[6]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\LEDs[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|busLed\(5),
	devoe => ww_devoe,
	o => \LEDs[7]~output_o\);

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

-- Location: IOIBUF_X51_Y54_N29
\XY[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_XY(1),
	o => \XY[1]~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\XY[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_XY(0),
	o => \XY[0]~input_o\);

-- Location: LCCOMB_X45_Y51_N16
\U1|Count100M~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Count100M~0_combout\ = !\U1|Count100M~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Count100M~q\,
	combout => \U1|Count100M~0_combout\);

-- Location: IOIBUF_X56_Y54_N1
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

-- Location: FF_X45_Y51_N17
\U1|Count100M\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|Count100M~0_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Count100M~q\);

-- Location: LCCOMB_X45_Y51_N18
\U1|EnHz~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|EnHz~feeder_combout\ = \U1|Count100M~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|Count100M~q\,
	combout => \U1|EnHz~feeder_combout\);

-- Location: FF_X45_Y51_N19
\U1|EnHz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|EnHz~feeder_combout\,
	ena => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|EnHz~q\);

-- Location: CLKCTRL_G12
\U1|EnHz~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U1|EnHz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U1|EnHz~clkctrl_outclk\);

-- Location: IOIBUF_X51_Y54_N1
\But~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_But,
	o => \But~input_o\);

-- Location: LCCOMB_X51_Y51_N28
\U2|flipflops[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|flipflops[0]~feeder_combout\ = \But~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \But~input_o\,
	combout => \U2|flipflops[0]~feeder_combout\);

-- Location: FF_X51_Y51_N29
\U2|flipflops[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|flipflops[0]~feeder_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|flipflops\(0));

-- Location: LCCOMB_X51_Y51_N18
\U2|flipflops[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|flipflops[1]~feeder_combout\ = \U2|flipflops\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|flipflops\(0),
	combout => \U2|flipflops[1]~feeder_combout\);

-- Location: FF_X51_Y51_N19
\U2|flipflops[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|flipflops[1]~feeder_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|flipflops\(1));

-- Location: LCCOMB_X51_Y51_N26
\U2|counter_set\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|counter_set~combout\ = \U2|flipflops\(0) $ (\U2|flipflops\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|flipflops\(0),
	datad => \U2|flipflops\(1),
	combout => \U2|counter_set~combout\);

-- Location: LCCOMB_X52_Y52_N14
\U2|count[0]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|count[0]~19_combout\ = \U2|count\(0) $ (VCC)
-- \U2|count[0]~20\ = CARRY(\U2|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(0),
	datad => VCC,
	combout => \U2|count[0]~19_combout\,
	cout => \U2|count[0]~20\);

-- Location: LCCOMB_X52_Y51_N20
\U2|count[18]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|count[18]~49_combout\ = (\U2|sigdB~4_combout\ & !\Rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|sigdB~4_combout\,
	datad => \Rst~input_o\,
	combout => \U2|count[18]~49_combout\);

-- Location: FF_X52_Y52_N15
\U2|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|count[0]~19_combout\,
	sclr => \U2|counter_set~combout\,
	ena => \U2|count[18]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(0));

-- Location: LCCOMB_X52_Y52_N16
\U2|count[1]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|count[1]~21_combout\ = (\U2|count\(1) & (!\U2|count[0]~20\)) # (!\U2|count\(1) & ((\U2|count[0]~20\) # (GND)))
-- \U2|count[1]~22\ = CARRY((!\U2|count[0]~20\) # (!\U2|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(1),
	datad => VCC,
	cin => \U2|count[0]~20\,
	combout => \U2|count[1]~21_combout\,
	cout => \U2|count[1]~22\);

-- Location: FF_X52_Y52_N17
\U2|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|count[1]~21_combout\,
	sclr => \U2|counter_set~combout\,
	ena => \U2|count[18]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(1));

-- Location: LCCOMB_X52_Y52_N18
\U2|count[2]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|count[2]~23_combout\ = (\U2|count\(2) & (\U2|count[1]~22\ $ (GND))) # (!\U2|count\(2) & (!\U2|count[1]~22\ & VCC))
-- \U2|count[2]~24\ = CARRY((\U2|count\(2) & !\U2|count[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(2),
	datad => VCC,
	cin => \U2|count[1]~22\,
	combout => \U2|count[2]~23_combout\,
	cout => \U2|count[2]~24\);

-- Location: FF_X52_Y52_N19
\U2|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|count[2]~23_combout\,
	sclr => \U2|counter_set~combout\,
	ena => \U2|count[18]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(2));

-- Location: LCCOMB_X52_Y52_N20
\U2|count[3]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|count[3]~25_combout\ = (\U2|count\(3) & (!\U2|count[2]~24\)) # (!\U2|count\(3) & ((\U2|count[2]~24\) # (GND)))
-- \U2|count[3]~26\ = CARRY((!\U2|count[2]~24\) # (!\U2|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(3),
	datad => VCC,
	cin => \U2|count[2]~24\,
	combout => \U2|count[3]~25_combout\,
	cout => \U2|count[3]~26\);

-- Location: FF_X52_Y52_N21
\U2|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|count[3]~25_combout\,
	sclr => \U2|counter_set~combout\,
	ena => \U2|count[18]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(3));

-- Location: LCCOMB_X52_Y52_N22
\U2|count[4]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|count[4]~27_combout\ = (\U2|count\(4) & (\U2|count[3]~26\ $ (GND))) # (!\U2|count\(4) & (!\U2|count[3]~26\ & VCC))
-- \U2|count[4]~28\ = CARRY((\U2|count\(4) & !\U2|count[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(4),
	datad => VCC,
	cin => \U2|count[3]~26\,
	combout => \U2|count[4]~27_combout\,
	cout => \U2|count[4]~28\);

-- Location: FF_X52_Y52_N23
\U2|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|count[4]~27_combout\,
	sclr => \U2|counter_set~combout\,
	ena => \U2|count[18]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(4));

-- Location: LCCOMB_X52_Y52_N24
\U2|count[5]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|count[5]~29_combout\ = (\U2|count\(5) & (!\U2|count[4]~28\)) # (!\U2|count\(5) & ((\U2|count[4]~28\) # (GND)))
-- \U2|count[5]~30\ = CARRY((!\U2|count[4]~28\) # (!\U2|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(5),
	datad => VCC,
	cin => \U2|count[4]~28\,
	combout => \U2|count[5]~29_combout\,
	cout => \U2|count[5]~30\);

-- Location: FF_X52_Y52_N25
\U2|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|count[5]~29_combout\,
	sclr => \U2|counter_set~combout\,
	ena => \U2|count[18]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(5));

-- Location: LCCOMB_X52_Y52_N26
\U2|count[6]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|count[6]~31_combout\ = (\U2|count\(6) & (\U2|count[5]~30\ $ (GND))) # (!\U2|count\(6) & (!\U2|count[5]~30\ & VCC))
-- \U2|count[6]~32\ = CARRY((\U2|count\(6) & !\U2|count[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(6),
	datad => VCC,
	cin => \U2|count[5]~30\,
	combout => \U2|count[6]~31_combout\,
	cout => \U2|count[6]~32\);

-- Location: FF_X52_Y52_N27
\U2|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|count[6]~31_combout\,
	sclr => \U2|counter_set~combout\,
	ena => \U2|count[18]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(6));

-- Location: LCCOMB_X52_Y52_N28
\U2|count[7]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|count[7]~33_combout\ = (\U2|count\(7) & (!\U2|count[6]~32\)) # (!\U2|count\(7) & ((\U2|count[6]~32\) # (GND)))
-- \U2|count[7]~34\ = CARRY((!\U2|count[6]~32\) # (!\U2|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(7),
	datad => VCC,
	cin => \U2|count[6]~32\,
	combout => \U2|count[7]~33_combout\,
	cout => \U2|count[7]~34\);

-- Location: FF_X52_Y52_N29
\U2|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|count[7]~33_combout\,
	sclr => \U2|counter_set~combout\,
	ena => \U2|count[18]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(7));

-- Location: LCCOMB_X52_Y52_N30
\U2|count[8]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|count[8]~35_combout\ = (\U2|count\(8) & (\U2|count[7]~34\ $ (GND))) # (!\U2|count\(8) & (!\U2|count[7]~34\ & VCC))
-- \U2|count[8]~36\ = CARRY((\U2|count\(8) & !\U2|count[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(8),
	datad => VCC,
	cin => \U2|count[7]~34\,
	combout => \U2|count[8]~35_combout\,
	cout => \U2|count[8]~36\);

-- Location: FF_X52_Y52_N31
\U2|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|count[8]~35_combout\,
	sclr => \U2|counter_set~combout\,
	ena => \U2|count[18]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(8));

-- Location: LCCOMB_X52_Y51_N0
\U2|count[9]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|count[9]~37_combout\ = (\U2|count\(9) & (!\U2|count[8]~36\)) # (!\U2|count\(9) & ((\U2|count[8]~36\) # (GND)))
-- \U2|count[9]~38\ = CARRY((!\U2|count[8]~36\) # (!\U2|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(9),
	datad => VCC,
	cin => \U2|count[8]~36\,
	combout => \U2|count[9]~37_combout\,
	cout => \U2|count[9]~38\);

-- Location: FF_X52_Y51_N1
\U2|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|count[9]~37_combout\,
	sclr => \U2|counter_set~combout\,
	ena => \U2|count[18]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(9));

-- Location: LCCOMB_X52_Y51_N2
\U2|count[10]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|count[10]~39_combout\ = (\U2|count\(10) & (\U2|count[9]~38\ $ (GND))) # (!\U2|count\(10) & (!\U2|count[9]~38\ & VCC))
-- \U2|count[10]~40\ = CARRY((\U2|count\(10) & !\U2|count[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(10),
	datad => VCC,
	cin => \U2|count[9]~38\,
	combout => \U2|count[10]~39_combout\,
	cout => \U2|count[10]~40\);

-- Location: FF_X52_Y51_N3
\U2|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|count[10]~39_combout\,
	sclr => \U2|counter_set~combout\,
	ena => \U2|count[18]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(10));

-- Location: LCCOMB_X52_Y51_N4
\U2|count[11]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|count[11]~41_combout\ = (\U2|count\(11) & (!\U2|count[10]~40\)) # (!\U2|count\(11) & ((\U2|count[10]~40\) # (GND)))
-- \U2|count[11]~42\ = CARRY((!\U2|count[10]~40\) # (!\U2|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(11),
	datad => VCC,
	cin => \U2|count[10]~40\,
	combout => \U2|count[11]~41_combout\,
	cout => \U2|count[11]~42\);

-- Location: FF_X52_Y51_N5
\U2|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|count[11]~41_combout\,
	sclr => \U2|counter_set~combout\,
	ena => \U2|count[18]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(11));

-- Location: LCCOMB_X52_Y51_N6
\U2|count[12]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|count[12]~43_combout\ = (\U2|count\(12) & (\U2|count[11]~42\ $ (GND))) # (!\U2|count\(12) & (!\U2|count[11]~42\ & VCC))
-- \U2|count[12]~44\ = CARRY((\U2|count\(12) & !\U2|count[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(12),
	datad => VCC,
	cin => \U2|count[11]~42\,
	combout => \U2|count[12]~43_combout\,
	cout => \U2|count[12]~44\);

-- Location: FF_X52_Y51_N7
\U2|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|count[12]~43_combout\,
	sclr => \U2|counter_set~combout\,
	ena => \U2|count[18]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(12));

-- Location: LCCOMB_X52_Y51_N8
\U2|count[13]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|count[13]~45_combout\ = (\U2|count\(13) & (!\U2|count[12]~44\)) # (!\U2|count\(13) & ((\U2|count[12]~44\) # (GND)))
-- \U2|count[13]~46\ = CARRY((!\U2|count[12]~44\) # (!\U2|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(13),
	datad => VCC,
	cin => \U2|count[12]~44\,
	combout => \U2|count[13]~45_combout\,
	cout => \U2|count[13]~46\);

-- Location: FF_X52_Y51_N9
\U2|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|count[13]~45_combout\,
	sclr => \U2|counter_set~combout\,
	ena => \U2|count[18]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(13));

-- Location: LCCOMB_X52_Y51_N10
\U2|count[14]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|count[14]~47_combout\ = (\U2|count\(14) & (\U2|count[13]~46\ $ (GND))) # (!\U2|count\(14) & (!\U2|count[13]~46\ & VCC))
-- \U2|count[14]~48\ = CARRY((\U2|count\(14) & !\U2|count[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(14),
	datad => VCC,
	cin => \U2|count[13]~46\,
	combout => \U2|count[14]~47_combout\,
	cout => \U2|count[14]~48\);

-- Location: FF_X52_Y51_N11
\U2|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|count[14]~47_combout\,
	sclr => \U2|counter_set~combout\,
	ena => \U2|count[18]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(14));

-- Location: LCCOMB_X52_Y51_N12
\U2|count[15]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|count[15]~50_combout\ = (\U2|count\(15) & (!\U2|count[14]~48\)) # (!\U2|count\(15) & ((\U2|count[14]~48\) # (GND)))
-- \U2|count[15]~51\ = CARRY((!\U2|count[14]~48\) # (!\U2|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(15),
	datad => VCC,
	cin => \U2|count[14]~48\,
	combout => \U2|count[15]~50_combout\,
	cout => \U2|count[15]~51\);

-- Location: FF_X52_Y51_N13
\U2|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|count[15]~50_combout\,
	sclr => \U2|counter_set~combout\,
	ena => \U2|count[18]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(15));

-- Location: LCCOMB_X52_Y51_N14
\U2|count[16]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|count[16]~52_combout\ = (\U2|count\(16) & (\U2|count[15]~51\ $ (GND))) # (!\U2|count\(16) & (!\U2|count[15]~51\ & VCC))
-- \U2|count[16]~53\ = CARRY((\U2|count\(16) & !\U2|count[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(16),
	datad => VCC,
	cin => \U2|count[15]~51\,
	combout => \U2|count[16]~52_combout\,
	cout => \U2|count[16]~53\);

-- Location: FF_X52_Y51_N15
\U2|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|count[16]~52_combout\,
	sclr => \U2|counter_set~combout\,
	ena => \U2|count[18]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(16));

-- Location: LCCOMB_X52_Y51_N16
\U2|count[17]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|count[17]~54_combout\ = (\U2|count\(17) & (!\U2|count[16]~53\)) # (!\U2|count\(17) & ((\U2|count[16]~53\) # (GND)))
-- \U2|count[17]~55\ = CARRY((!\U2|count[16]~53\) # (!\U2|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(17),
	datad => VCC,
	cin => \U2|count[16]~53\,
	combout => \U2|count[17]~54_combout\,
	cout => \U2|count[17]~55\);

-- Location: FF_X52_Y51_N17
\U2|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|count[17]~54_combout\,
	sclr => \U2|counter_set~combout\,
	ena => \U2|count[18]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(17));

-- Location: LCCOMB_X52_Y51_N18
\U2|count[18]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|count[18]~56_combout\ = \U2|count\(18) $ (!\U2|count[17]~55\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(18),
	cin => \U2|count[17]~55\,
	combout => \U2|count[18]~56_combout\);

-- Location: FF_X52_Y51_N19
\U2|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|count[18]~56_combout\,
	sclr => \U2|counter_set~combout\,
	ena => \U2|count[18]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(18));

-- Location: LCCOMB_X52_Y51_N28
\U2|sigdB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|sigdB~0_combout\ = (((!\U2|count\(16)) # (!\U2|count\(18))) # (!\U2|count\(17))) # (!\U2|count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(15),
	datab => \U2|count\(17),
	datac => \U2|count\(18),
	datad => \U2|count\(16),
	combout => \U2|sigdB~0_combout\);

-- Location: LCCOMB_X52_Y51_N30
\U2|sigdB~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|sigdB~2_combout\ = (!\U2|count\(11) & (!\U2|count\(12) & (!\U2|count\(10) & !\U2|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(11),
	datab => \U2|count\(12),
	datac => \U2|count\(10),
	datad => \U2|count\(9),
	combout => \U2|sigdB~2_combout\);

-- Location: LCCOMB_X52_Y52_N8
\U2|sigdB~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|sigdB~1_combout\ = ((!\U2|count\(6) & (!\U2|count\(5) & !\U2|count\(7)))) # (!\U2|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(6),
	datab => \U2|count\(5),
	datac => \U2|count\(8),
	datad => \U2|count\(7),
	combout => \U2|sigdB~1_combout\);

-- Location: LCCOMB_X52_Y51_N24
\U2|sigdB~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|sigdB~3_combout\ = (\U2|count\(13) & ((!\U2|sigdB~1_combout\) # (!\U2|sigdB~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(13),
	datac => \U2|sigdB~2_combout\,
	datad => \U2|sigdB~1_combout\,
	combout => \U2|sigdB~3_combout\);

-- Location: LCCOMB_X52_Y51_N26
\U2|sigdB~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|sigdB~4_combout\ = (\U2|counter_set~combout\) # ((\U2|sigdB~0_combout\) # ((!\U2|count\(14) & !\U2|sigdB~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|counter_set~combout\,
	datab => \U2|sigdB~0_combout\,
	datac => \U2|count\(14),
	datad => \U2|sigdB~3_combout\,
	combout => \U2|sigdB~4_combout\);

-- Location: LCCOMB_X51_Y51_N12
\U2|sigdB~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|sigdB~5_combout\ = (\U2|sigdB~4_combout\ & ((\U2|sigdB~q\))) # (!\U2|sigdB~4_combout\ & (\U2|flipflops\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|flipflops\(1),
	datac => \U2|sigdB~q\,
	datad => \U2|sigdB~4_combout\,
	combout => \U2|sigdB~5_combout\);

-- Location: LCCOMB_X51_Y51_N16
\U2|sigdB~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|sigdB~feeder_combout\ = \U2|sigdB~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|sigdB~5_combout\,
	combout => \U2|sigdB~feeder_combout\);

-- Location: FF_X51_Y51_N17
\U2|sigdB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|sigdB~feeder_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|sigdB~q\);

-- Location: FF_X50_Y50_N3
\U1|input\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|EnHz~clkctrl_outclk\,
	asdata => \U2|sigdB~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|input~q\);

-- Location: LCCOMB_X50_Y50_N14
\U1|rising_edge_det~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|rising_edge_det~0_combout\ = (\U2|sigdB~q\ & !\U1|input~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|sigdB~q\,
	datad => \U1|input~q\,
	combout => \U1|rising_edge_det~0_combout\);

-- Location: FF_X50_Y50_N15
\U1|rising_edge_det\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|EnHz~clkctrl_outclk\,
	d => \U1|rising_edge_det~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|rising_edge_det~q\);

-- Location: LCCOMB_X50_Y50_N2
\U1|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Equal0~0_combout\ = (\XY[1]~input_o\ & (!\XY[0]~input_o\ & \U1|rising_edge_det~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XY[1]~input_o\,
	datab => \XY[0]~input_o\,
	datad => \U1|rising_edge_det~q\,
	combout => \U1|Equal0~0_combout\);

-- Location: LCCOMB_X49_Y50_N2
\U1|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Selector1~0_combout\ = (\U1|Equal0~0_combout\ & (((!\U1|rising_edge_det~q\ & \U1|pres_state.S1~q\)) # (!\U1|pres_state.S0~q\))) # (!\U1|Equal0~0_combout\ & (!\U1|rising_edge_det~q\ & (\U1|pres_state.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~0_combout\,
	datab => \U1|rising_edge_det~q\,
	datac => \U1|pres_state.S1~q\,
	datad => \U1|pres_state.S0~q\,
	combout => \U1|Selector1~0_combout\);

-- Location: FF_X49_Y50_N3
\U1|pres_state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|Selector1~0_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	ena => \U1|EnHz~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|pres_state.S1~q\);

-- Location: LCCOMB_X51_Y50_N0
\U1|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Selector2~0_combout\ = (!\XY[1]~input_o\ & (!\XY[0]~input_o\ & (\U1|rising_edge_det~q\ & \U1|pres_state.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XY[1]~input_o\,
	datab => \XY[0]~input_o\,
	datac => \U1|rising_edge_det~q\,
	datad => \U1|pres_state.S1~q\,
	combout => \U1|Selector2~0_combout\);

-- Location: LCCOMB_X51_Y50_N16
\U1|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Selector2~1_combout\ = (\U1|Selector2~0_combout\) # ((!\U1|rising_edge_det~q\ & \U1|pres_state.S2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|rising_edge_det~q\,
	datac => \U1|pres_state.S2~q\,
	datad => \U1|Selector2~0_combout\,
	combout => \U1|Selector2~1_combout\);

-- Location: FF_X51_Y50_N17
\U1|pres_state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|Selector2~1_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	ena => \U1|EnHz~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|pres_state.S2~q\);

-- Location: LCCOMB_X51_Y50_N24
\U1|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Selector3~0_combout\ = (!\XY[1]~input_o\ & (\XY[0]~input_o\ & (\U1|rising_edge_det~q\ & \U1|pres_state.S2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XY[1]~input_o\,
	datab => \XY[0]~input_o\,
	datac => \U1|rising_edge_det~q\,
	datad => \U1|pres_state.S2~q\,
	combout => \U1|Selector3~0_combout\);

-- Location: LCCOMB_X51_Y50_N20
\U1|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Selector3~1_combout\ = (\U1|Selector3~0_combout\) # ((\U1|pres_state.S3~q\ & !\U1|rising_edge_det~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Selector3~0_combout\,
	datac => \U1|pres_state.S3~q\,
	datad => \U1|rising_edge_det~q\,
	combout => \U1|Selector3~1_combout\);

-- Location: FF_X51_Y50_N21
\U1|pres_state.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|Selector3~1_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	ena => \U1|EnHz~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|pres_state.S3~q\);

-- Location: LCCOMB_X50_Y50_N18
\U1|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Selector4~0_combout\ = (\U1|Equal0~0_combout\ & ((\U1|pres_state.S3~q\) # ((\U1|pres_state.S4~q\ & !\U1|rising_edge_det~q\)))) # (!\U1|Equal0~0_combout\ & (((\U1|pres_state.S4~q\ & !\U1|rising_edge_det~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~0_combout\,
	datab => \U1|pres_state.S3~q\,
	datac => \U1|pres_state.S4~q\,
	datad => \U1|rising_edge_det~q\,
	combout => \U1|Selector4~0_combout\);

-- Location: FF_X50_Y50_N19
\U1|pres_state.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|Selector4~0_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	ena => \U1|EnHz~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|pres_state.S4~q\);

-- Location: LCCOMB_X50_Y50_N26
\U1|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Selector5~0_combout\ = (\XY[1]~input_o\ & (\XY[0]~input_o\ & \U1|rising_edge_det~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XY[1]~input_o\,
	datac => \XY[0]~input_o\,
	datad => \U1|rising_edge_det~q\,
	combout => \U1|Selector5~0_combout\);

-- Location: LCCOMB_X50_Y50_N24
\U1|Selector5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Selector5~1_combout\ = (\U1|pres_state.S5~q\ & (((\U1|pres_state.S4~q\ & \U1|Selector5~0_combout\)) # (!\U1|rising_edge_det~q\))) # (!\U1|pres_state.S5~q\ & (\U1|pres_state.S4~q\ & (\U1|Selector5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|pres_state.S5~q\,
	datab => \U1|pres_state.S4~q\,
	datac => \U1|Selector5~0_combout\,
	datad => \U1|rising_edge_det~q\,
	combout => \U1|Selector5~1_combout\);

-- Location: FF_X50_Y50_N9
\U1|pres_state.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \U1|Selector5~1_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	sload => VCC,
	ena => \U1|EnHz~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|pres_state.S5~q\);

-- Location: LCCOMB_X50_Y50_N22
\U1|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Selector6~0_combout\ = (\U1|Equal0~0_combout\ & ((\U1|pres_state.S5~q\) # ((!\U1|rising_edge_det~q\ & \U1|pres_state.S6~q\)))) # (!\U1|Equal0~0_combout\ & (!\U1|rising_edge_det~q\ & (\U1|pres_state.S6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~0_combout\,
	datab => \U1|rising_edge_det~q\,
	datac => \U1|pres_state.S6~q\,
	datad => \U1|pres_state.S5~q\,
	combout => \U1|Selector6~0_combout\);

-- Location: FF_X50_Y50_N23
\U1|pres_state.S6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|Selector6~0_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	ena => \U1|EnHz~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|pres_state.S6~q\);

-- Location: LCCOMB_X51_Y50_N4
\U1|Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Selector11~0_combout\ = (!\XY[1]~input_o\) # (!\XY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \XY[0]~input_o\,
	datac => \XY[1]~input_o\,
	combout => \U1|Selector11~0_combout\);

-- Location: LCCOMB_X51_Y50_N10
\U1|Selector11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Selector11~1_combout\ = (\U1|rising_edge_det~q\ & (((\U1|Selector11~0_combout\ & \U1|pres_state.S4~q\)))) # (!\U1|rising_edge_det~q\ & (\U1|pres_state.SE4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|pres_state.SE4~q\,
	datab => \U1|Selector11~0_combout\,
	datac => \U1|rising_edge_det~q\,
	datad => \U1|pres_state.S4~q\,
	combout => \U1|Selector11~1_combout\);

-- Location: LCCOMB_X50_Y50_N0
\U1|Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Selector8~0_combout\ = (\XY[0]~input_o\ & (((\U1|pres_state.S1~q\)))) # (!\XY[0]~input_o\ & (\XY[1]~input_o\ & ((\U1|pres_state.SE0~q\) # (\U1|pres_state.S1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|pres_state.SE0~q\,
	datab => \XY[1]~input_o\,
	datac => \XY[0]~input_o\,
	datad => \U1|pres_state.S1~q\,
	combout => \U1|Selector8~0_combout\);

-- Location: LCCOMB_X50_Y50_N12
\U1|Selector8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Selector8~1_combout\ = (\U1|rising_edge_det~q\ & ((\U1|Selector8~0_combout\))) # (!\U1|rising_edge_det~q\ & (\U1|pres_state.SE1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|rising_edge_det~q\,
	datac => \U1|pres_state.SE1~q\,
	datad => \U1|Selector8~0_combout\,
	combout => \U1|Selector8~1_combout\);

-- Location: FF_X50_Y50_N13
\U1|pres_state.SE1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|Selector8~1_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	ena => \U1|EnHz~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|pres_state.SE1~q\);

-- Location: LCCOMB_X51_Y50_N18
\U1|Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Selector9~0_combout\ = (\XY[1]~input_o\ & (((\U1|pres_state.S2~q\)))) # (!\XY[1]~input_o\ & (!\XY[0]~input_o\ & ((\U1|pres_state.SE1~q\) # (\U1|pres_state.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|pres_state.SE1~q\,
	datab => \XY[0]~input_o\,
	datac => \XY[1]~input_o\,
	datad => \U1|pres_state.S2~q\,
	combout => \U1|Selector9~0_combout\);

-- Location: LCCOMB_X51_Y50_N6
\U1|Selector9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Selector9~1_combout\ = (\U1|rising_edge_det~q\ & ((\U1|Selector9~0_combout\))) # (!\U1|rising_edge_det~q\ & (\U1|pres_state.SE2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|rising_edge_det~q\,
	datac => \U1|pres_state.SE2~q\,
	datad => \U1|Selector9~0_combout\,
	combout => \U1|Selector9~1_combout\);

-- Location: FF_X51_Y50_N7
\U1|pres_state.SE2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|Selector9~1_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	ena => \U1|EnHz~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|pres_state.SE2~q\);

-- Location: LCCOMB_X51_Y50_N22
\U1|Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Selector10~0_combout\ = (\XY[0]~input_o\ & ((\U1|pres_state.S3~q\) # ((\U1|pres_state.SE2~q\ & !\XY[1]~input_o\)))) # (!\XY[0]~input_o\ & (((!\XY[1]~input_o\ & \U1|pres_state.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|pres_state.SE2~q\,
	datab => \XY[0]~input_o\,
	datac => \XY[1]~input_o\,
	datad => \U1|pres_state.S3~q\,
	combout => \U1|Selector10~0_combout\);

-- Location: LCCOMB_X50_Y50_N30
\U1|Selector10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Selector10~1_combout\ = (\U1|rising_edge_det~q\ & ((\U1|Selector10~0_combout\))) # (!\U1|rising_edge_det~q\ & (\U1|pres_state.SE3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|rising_edge_det~q\,
	datac => \U1|pres_state.SE3~q\,
	datad => \U1|Selector10~0_combout\,
	combout => \U1|Selector10~1_combout\);

-- Location: FF_X50_Y50_N31
\U1|pres_state.SE3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|Selector10~1_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	ena => \U1|EnHz~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|pres_state.SE3~q\);

-- Location: LCCOMB_X51_Y50_N14
\U1|Selector11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Selector11~2_combout\ = (\U1|Selector11~1_combout\) # ((\U1|pres_state.SE3~q\ & \U1|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Selector11~1_combout\,
	datac => \U1|pres_state.SE3~q\,
	datad => \U1|Equal0~0_combout\,
	combout => \U1|Selector11~2_combout\);

-- Location: FF_X51_Y50_N15
\U1|pres_state.SE4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|Selector11~2_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	ena => \U1|EnHz~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|pres_state.SE4~q\);

-- Location: LCCOMB_X50_Y50_N6
\U1|Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Selector12~0_combout\ = (\U1|Selector5~0_combout\ & ((\U1|pres_state.SE4~q\) # ((\U1|pres_state.SE5~q\ & !\U1|rising_edge_det~q\)))) # (!\U1|Selector5~0_combout\ & (\U1|pres_state.SE5~q\ & (!\U1|rising_edge_det~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Selector5~0_combout\,
	datab => \U1|pres_state.SE5~q\,
	datac => \U1|rising_edge_det~q\,
	datad => \U1|pres_state.SE4~q\,
	combout => \U1|Selector12~0_combout\);

-- Location: LCCOMB_X50_Y50_N4
\U1|Selector12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Selector12~1_combout\ = (\U1|Selector12~0_combout\) # ((\U1|rising_edge_det~q\ & (!\U1|Equal0~0_combout\ & \U1|pres_state.S5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|rising_edge_det~q\,
	datab => \U1|Equal0~0_combout\,
	datac => \U1|Selector12~0_combout\,
	datad => \U1|pres_state.S5~q\,
	combout => \U1|Selector12~1_combout\);

-- Location: FF_X50_Y50_N5
\U1|pres_state.SE5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|Selector12~1_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	ena => \U1|EnHz~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|pres_state.SE5~q\);

-- Location: LCCOMB_X49_Y50_N14
\U1|Selector13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Selector13~0_combout\ = (\U1|Equal0~0_combout\ & ((\U1|pres_state.SE5~q\) # ((!\U1|rising_edge_det~q\ & \U1|pres_state.SE6~q\)))) # (!\U1|Equal0~0_combout\ & (!\U1|rising_edge_det~q\ & (\U1|pres_state.SE6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~0_combout\,
	datab => \U1|rising_edge_det~q\,
	datac => \U1|pres_state.SE6~q\,
	datad => \U1|pres_state.SE5~q\,
	combout => \U1|Selector13~0_combout\);

-- Location: FF_X49_Y50_N15
\U1|pres_state.SE6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|Selector13~0_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	ena => \U1|EnHz~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|pres_state.SE6~q\);

-- Location: LCCOMB_X50_Y50_N20
\U1|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Selector0~0_combout\ = (\U1|rising_edge_det~q\ & ((\U1|pres_state.S6~q\) # ((\U1|pres_state.SE6~q\)))) # (!\U1|rising_edge_det~q\ & (((!\U1|pres_state.S0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|pres_state.S6~q\,
	datab => \U1|pres_state.S0~q\,
	datac => \U1|rising_edge_det~q\,
	datad => \U1|pres_state.SE6~q\,
	combout => \U1|Selector0~0_combout\);

-- Location: LCCOMB_X50_Y50_N8
\U1|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Selector0~1_combout\ = (\U1|pres_state.SE3~q\) # ((\U1|pres_state.SE5~q\) # (\U1|pres_state.SE0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|pres_state.SE3~q\,
	datab => \U1|pres_state.SE5~q\,
	datad => \U1|pres_state.SE0~q\,
	combout => \U1|Selector0~1_combout\);

-- Location: LCCOMB_X51_Y50_N8
\U1|Selector0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Selector0~2_combout\ = (\XY[0]~input_o\) # ((\U1|pres_state.SE4~q\) # (\U1|pres_state.SE2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \XY[0]~input_o\,
	datac => \U1|pres_state.SE4~q\,
	datad => \U1|pres_state.SE2~q\,
	combout => \U1|Selector0~2_combout\);

-- Location: LCCOMB_X51_Y50_N26
\U1|Selector0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Selector0~3_combout\ = (\XY[1]~input_o\ & (((\U1|pres_state.SE2~q\)) # (!\XY[0]~input_o\))) # (!\XY[1]~input_o\ & ((\U1|pres_state.SE4~q\) # ((!\XY[0]~input_o\ & \U1|pres_state.SE2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XY[1]~input_o\,
	datab => \XY[0]~input_o\,
	datac => \U1|pres_state.SE4~q\,
	datad => \U1|pres_state.SE2~q\,
	combout => \U1|Selector0~3_combout\);

-- Location: LCCOMB_X50_Y50_N16
\U1|Selector0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Selector0~4_combout\ = (\U1|Selector0~3_combout\ & ((\U1|pres_state.SE1~q\) # ((\U1|Selector0~2_combout\)))) # (!\U1|Selector0~3_combout\ & ((\U1|Selector0~1_combout\) # ((\U1|pres_state.SE1~q\ & \U1|Selector0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|pres_state.SE1~q\,
	datab => \U1|Selector0~1_combout\,
	datac => \U1|Selector0~2_combout\,
	datad => \U1|Selector0~3_combout\,
	combout => \U1|Selector0~4_combout\);

-- Location: LCCOMB_X50_Y50_N28
\U1|Selector0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Selector0~5_combout\ = (!\U1|Selector0~0_combout\ & ((!\U1|Selector0~4_combout\) # (!\U1|rising_edge_det~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|rising_edge_det~q\,
	datac => \U1|Selector0~0_combout\,
	datad => \U1|Selector0~4_combout\,
	combout => \U1|Selector0~5_combout\);

-- Location: FF_X50_Y50_N29
\U1|pres_state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|Selector0~5_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	ena => \U1|EnHz~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|pres_state.S0~q\);

-- Location: LCCOMB_X50_Y50_N10
\U1|pres_state~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|pres_state~36_combout\ = (!\U1|Equal0~0_combout\ & ((\U1|rising_edge_det~q\ & ((!\U1|pres_state.S0~q\))) # (!\U1|rising_edge_det~q\ & (\U1|pres_state.SE0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~0_combout\,
	datab => \U1|rising_edge_det~q\,
	datac => \U1|pres_state.SE0~q\,
	datad => \U1|pres_state.S0~q\,
	combout => \U1|pres_state~36_combout\);

-- Location: FF_X50_Y50_N11
\U1|pres_state.SE0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|pres_state~36_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	ena => \U1|EnHz~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|pres_state.SE0~q\);

-- Location: LCCOMB_X49_Y50_N12
\U1|WideOr20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|WideOr20~0_combout\ = (!\U1|pres_state.SE0~q\ & \U1|pres_state.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|pres_state.SE0~q\,
	datad => \U1|pres_state.S0~q\,
	combout => \U1|WideOr20~0_combout\);

-- Location: LCCOMB_X49_Y50_N24
\U1|WideOr18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|WideOr18~0_combout\ = (!\U1|pres_state.S1~q\ & (!\U1|pres_state.SE1~q\ & (!\U1|pres_state.SE0~q\ & \U1|pres_state.S0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|pres_state.S1~q\,
	datab => \U1|pres_state.SE1~q\,
	datac => \U1|pres_state.SE0~q\,
	datad => \U1|pres_state.S0~q\,
	combout => \U1|WideOr18~0_combout\);

-- Location: LCCOMB_X51_Y50_N12
\U1|WideOr18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|WideOr18~combout\ = ((\U1|pres_state.S2~q\) # (\U1|pres_state.SE2~q\)) # (!\U1|WideOr18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|WideOr18~0_combout\,
	datab => \U1|pres_state.S2~q\,
	datac => \U1|pres_state.SE2~q\,
	combout => \U1|WideOr18~combout\);

-- Location: LCCOMB_X49_Y50_N4
\U1|WideOr16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|WideOr16~0_combout\ = (!\U1|pres_state.SE5~q\ & (!\U1|pres_state.SE6~q\ & (!\U1|pres_state.S5~q\ & !\U1|pres_state.S6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|pres_state.SE5~q\,
	datab => \U1|pres_state.SE6~q\,
	datac => \U1|pres_state.S5~q\,
	datad => \U1|pres_state.S6~q\,
	combout => \U1|WideOr16~0_combout\);

-- Location: LCCOMB_X49_Y50_N6
\U1|WideOr17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|WideOr17~combout\ = (\U1|pres_state.SE4~q\) # ((\U1|pres_state.S4~q\) # (!\U1|WideOr16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|pres_state.SE4~q\,
	datab => \U1|WideOr16~0_combout\,
	datac => \U1|pres_state.S4~q\,
	combout => \U1|WideOr17~combout\);

-- Location: LCCOMB_X49_Y50_N20
\U1|busLed[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|busLed\(5) = (\U1|pres_state.SE6~q\) # (\U1|pres_state.S6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|pres_state.SE6~q\,
	datad => \U1|pres_state.S6~q\,
	combout => \U1|busLed\(5));

-- Location: LCCOMB_X49_Y50_N10
\U1|WideOr15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|WideOr15~0_combout\ = (\U1|pres_state.S1~q\) # (((\U1|pres_state.S5~q\) # (\U1|pres_state.S6~q\)) # (!\U1|pres_state.S0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|pres_state.S1~q\,
	datab => \U1|pres_state.S0~q\,
	datac => \U1|pres_state.S5~q\,
	datad => \U1|pres_state.S6~q\,
	combout => \U1|WideOr15~0_combout\);

-- Location: LCCOMB_X51_Y50_N30
\U1|WideOr15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|WideOr15~combout\ = (\U1|pres_state.S3~q\) # ((\U1|pres_state.S2~q\) # ((\U1|WideOr15~0_combout\) # (\U1|pres_state.S4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|pres_state.S3~q\,
	datab => \U1|pres_state.S2~q\,
	datac => \U1|WideOr15~0_combout\,
	datad => \U1|pres_state.S4~q\,
	combout => \U1|WideOr15~combout\);

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

ww_LEDs(0) <= \LEDs[0]~output_o\;

ww_LEDs(1) <= \LEDs[1]~output_o\;

ww_LEDs(2) <= \LEDs[2]~output_o\;

ww_LEDs(3) <= \LEDs[3]~output_o\;

ww_LEDs(4) <= \LEDs[4]~output_o\;

ww_LEDs(5) <= \LEDs[5]~output_o\;

ww_LEDs(6) <= \LEDs[6]~output_o\;

ww_LEDs(7) <= \LEDs[7]~output_o\;
END structure;


