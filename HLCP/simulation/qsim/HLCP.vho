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

-- DATE "09/07/2022 18:15:10"

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

ENTITY 	HLCP IS
    PORT (
	Rst : IN std_logic;
	Clk : IN std_logic;
	but : IN std_logic;
	XY : IN std_logic_vector(1 DOWNTO 0);
	busLed : OUT std_logic_vector(6 DOWNTO 0);
	led : OUT std_logic;
	EnClk : OUT std_logic
	);
END HLCP;

-- Design Ports Information
-- busLed[0]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busLed[1]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busLed[2]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busLed[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busLed[4]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busLed[5]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busLed[6]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EnClk	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XY[1]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XY[0]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rst	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- but	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF HLCP IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Rst : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_but : std_logic;
SIGNAL ww_XY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_busLed : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led : std_logic;
SIGNAL ww_EnClk : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \EnHz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \busLed[0]~output_o\ : std_logic;
SIGNAL \busLed[1]~output_o\ : std_logic;
SIGNAL \busLed[2]~output_o\ : std_logic;
SIGNAL \busLed[3]~output_o\ : std_logic;
SIGNAL \busLed[4]~output_o\ : std_logic;
SIGNAL \busLed[5]~output_o\ : std_logic;
SIGNAL \busLed[6]~output_o\ : std_logic;
SIGNAL \led~output_o\ : std_logic;
SIGNAL \EnClk~output_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Rst~input_o\ : std_logic;
SIGNAL \Count100M~0_combout\ : std_logic;
SIGNAL \Count100M~q\ : std_logic;
SIGNAL \EnHz~0_combout\ : std_logic;
SIGNAL \EnHz~feeder_combout\ : std_logic;
SIGNAL \EnHz~q\ : std_logic;
SIGNAL \EnHz~clkctrl_outclk\ : std_logic;
SIGNAL \but~input_o\ : std_logic;
SIGNAL \input~feeder_combout\ : std_logic;
SIGNAL \input~q\ : std_logic;
SIGNAL \rising_edge_det~0_combout\ : std_logic;
SIGNAL \rising_edge_det~q\ : std_logic;
SIGNAL \XY[1]~input_o\ : std_logic;
SIGNAL \pres_state.S1~0_combout\ : std_logic;
SIGNAL \XY[0]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \pres_state.SE1~q\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \pres_state.S2~q\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \pres_state.SE2~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \pres_state.S0~q\ : std_logic;
SIGNAL \pres_state.S1~1_combout\ : std_logic;
SIGNAL \pres_state.S1~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \pres_state.SE0~q\ : std_logic;
SIGNAL \WideOr18~0_combout\ : std_logic;
SIGNAL \WideOr16~0_combout\ : std_logic;
SIGNAL \WideOr16~combout\ : std_logic;
SIGNAL \ALT_INV_Rst~input_o\ : std_logic;
SIGNAL \ALT_INV_WideOr16~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Rst <= Rst;
ww_Clk <= Clk;
ww_but <= but;
ww_XY <= XY;
busLed <= ww_busLed;
led <= ww_led;
EnClk <= ww_EnClk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\EnHz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \EnHz~q\);

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);
\ALT_INV_Rst~input_o\ <= NOT \Rst~input_o\;
\ALT_INV_WideOr16~combout\ <= NOT \WideOr16~combout\;
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

-- Location: IOOBUF_X49_Y54_N23
\busLed[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr18~0_combout\,
	devoe => ww_devoe,
	o => \busLed[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\busLed[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr16~0_combout\,
	devoe => ww_devoe,
	o => \busLed[1]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\busLed[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr16~combout\,
	devoe => ww_devoe,
	o => \busLed[2]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\busLed[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \busLed[3]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\busLed[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \busLed[4]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\busLed[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \busLed[5]~output_o\);

-- Location: IOOBUF_X71_Y54_N30
\busLed[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \busLed[6]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\led~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rising_edge_det~q\,
	devoe => ww_devoe,
	o => \led~output_o\);

-- Location: IOOBUF_X46_Y54_N16
\EnClk~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EnHz~q\,
	devoe => ww_devoe,
	o => \EnClk~output_o\);

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

-- Location: IOIBUF_X49_Y54_N29
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

-- Location: LCCOMB_X45_Y53_N18
\Count100M~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Count100M~0_combout\ = !\Count100M~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Count100M~q\,
	combout => \Count100M~0_combout\);

-- Location: FF_X45_Y53_N19
Count100M : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Count100M~0_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count100M~q\);

-- Location: LCCOMB_X45_Y53_N14
\EnHz~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \EnHz~0_combout\ = (\Rst~input_o\ & (\EnHz~q\)) # (!\Rst~input_o\ & ((\Count100M~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rst~input_o\,
	datac => \EnHz~q\,
	datad => \Count100M~q\,
	combout => \EnHz~0_combout\);

-- Location: LCCOMB_X45_Y53_N28
\EnHz~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \EnHz~feeder_combout\ = \EnHz~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EnHz~0_combout\,
	combout => \EnHz~feeder_combout\);

-- Location: FF_X45_Y53_N29
EnHz : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \EnHz~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EnHz~q\);

-- Location: CLKCTRL_G10
\EnHz~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \EnHz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \EnHz~clkctrl_outclk\);

-- Location: IOIBUF_X46_Y54_N29
\but~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_but,
	o => \but~input_o\);

-- Location: LCCOMB_X45_Y53_N24
\input~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \input~feeder_combout\ = \but~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \but~input_o\,
	combout => \input~feeder_combout\);

-- Location: FF_X45_Y53_N25
input : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EnHz~clkctrl_outclk\,
	d => \input~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input~q\);

-- Location: LCCOMB_X45_Y53_N16
\rising_edge_det~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rising_edge_det~0_combout\ = (\but~input_o\ & !\input~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \but~input_o\,
	datad => \input~q\,
	combout => \rising_edge_det~0_combout\);

-- Location: FF_X45_Y53_N17
rising_edge_det : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EnHz~clkctrl_outclk\,
	d => \rising_edge_det~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rising_edge_det~q\);

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

-- Location: LCCOMB_X46_Y53_N30
\pres_state.S1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pres_state.S1~0_combout\ = (\pres_state.S1~q\ & ((!\EnHz~q\) # (!\rising_edge_det~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rising_edge_det~q\,
	datac => \EnHz~q\,
	datad => \pres_state.S1~q\,
	combout => \pres_state.S1~0_combout\);

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

-- Location: LCCOMB_X46_Y53_N28
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\XY[0]~input_o\ & (\rising_edge_det~q\ & \XY[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XY[0]~input_o\,
	datab => \rising_edge_det~q\,
	datad => \XY[1]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X46_Y53_N0
\Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\Equal0~0_combout\ & ((\pres_state.SE0~q\) # ((!\rising_edge_det~q\ & \pres_state.SE1~q\)))) # (!\Equal0~0_combout\ & (!\rising_edge_det~q\ & (\pres_state.SE1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \rising_edge_det~q\,
	datac => \pres_state.SE1~q\,
	datad => \pres_state.SE0~q\,
	combout => \Selector6~0_combout\);

-- Location: FF_X46_Y53_N1
\pres_state.SE1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Selector6~0_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	ena => \EnHz~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pres_state.SE1~q\);

-- Location: LCCOMB_X46_Y53_N24
\Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (!\XY[0]~input_o\ & (!\XY[1]~input_o\ & (\rising_edge_det~q\ & \pres_state.SE1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XY[0]~input_o\,
	datab => \XY[1]~input_o\,
	datac => \rising_edge_det~q\,
	datad => \pres_state.SE1~q\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X46_Y53_N22
\Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (!\XY[0]~input_o\ & (\rising_edge_det~q\ & (!\XY[1]~input_o\ & \pres_state.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XY[0]~input_o\,
	datab => \rising_edge_det~q\,
	datac => \XY[1]~input_o\,
	datad => \pres_state.S1~q\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X46_Y53_N12
\Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\Selector2~0_combout\) # ((\pres_state.S2~q\ & !\rising_edge_det~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector2~0_combout\,
	datac => \pres_state.S2~q\,
	datad => \rising_edge_det~q\,
	combout => \Selector2~1_combout\);

-- Location: FF_X46_Y53_N13
\pres_state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Selector2~1_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	ena => \EnHz~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pres_state.S2~q\);

-- Location: LCCOMB_X46_Y53_N26
\Selector7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\Selector7~0_combout\) # ((\rising_edge_det~q\ & ((\pres_state.S2~q\))) # (!\rising_edge_det~q\ & (\pres_state.SE2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~0_combout\,
	datab => \rising_edge_det~q\,
	datac => \pres_state.SE2~q\,
	datad => \pres_state.S2~q\,
	combout => \Selector7~1_combout\);

-- Location: FF_X46_Y53_N27
\pres_state.SE2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Selector7~1_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	ena => \EnHz~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pres_state.SE2~q\);

-- Location: LCCOMB_X46_Y53_N2
\Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\XY[0]~input_o\ & (((\pres_state.SE0~q\) # (\pres_state.SE1~q\)))) # (!\XY[0]~input_o\ & ((\XY[1]~input_o\ & ((\pres_state.SE1~q\))) # (!\XY[1]~input_o\ & (\pres_state.SE0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XY[0]~input_o\,
	datab => \XY[1]~input_o\,
	datac => \pres_state.SE0~q\,
	datad => \pres_state.SE1~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X46_Y53_N16
\Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\rising_edge_det~q\ & (!\pres_state.SE2~q\ & ((!\Selector0~0_combout\)))) # (!\rising_edge_det~q\ & (((\pres_state.S0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pres_state.SE2~q\,
	datab => \rising_edge_det~q\,
	datac => \pres_state.S0~q\,
	datad => \Selector0~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: FF_X46_Y53_N17
\pres_state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Selector0~1_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	ena => \EnHz~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pres_state.S0~q\);

-- Location: LCCOMB_X46_Y53_N18
\pres_state.S1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pres_state.S1~1_combout\ = (\pres_state.S1~0_combout\) # ((\Equal0~0_combout\ & (\EnHz~q\ & !\pres_state.S0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pres_state.S1~0_combout\,
	datab => \Equal0~0_combout\,
	datac => \EnHz~q\,
	datad => \pres_state.S0~q\,
	combout => \pres_state.S1~1_combout\);

-- Location: FF_X46_Y53_N19
\pres_state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \pres_state.S1~1_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pres_state.S1~q\);

-- Location: LCCOMB_X46_Y53_N20
\Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\XY[0]~input_o\ & (((!\pres_state.S1~q\ & \pres_state.S0~q\)))) # (!\XY[0]~input_o\ & ((\XY[1]~input_o\ & (!\pres_state.S1~q\)) # (!\XY[1]~input_o\ & ((\pres_state.S0~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XY[1]~input_o\,
	datab => \pres_state.S1~q\,
	datac => \XY[0]~input_o\,
	datad => \pres_state.S0~q\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X46_Y53_N14
\Selector5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\rising_edge_det~q\ & ((!\Selector5~0_combout\))) # (!\rising_edge_det~q\ & (\pres_state.SE0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rising_edge_det~q\,
	datac => \pres_state.SE0~q\,
	datad => \Selector5~0_combout\,
	combout => \Selector5~1_combout\);

-- Location: FF_X46_Y53_N15
\pres_state.SE0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Selector5~1_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	ena => \EnHz~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pres_state.SE0~q\);

-- Location: LCCOMB_X46_Y53_N8
\WideOr18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr18~0_combout\ = (!\pres_state.SE0~q\ & \pres_state.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pres_state.SE0~q\,
	datad => \pres_state.S0~q\,
	combout => \WideOr18~0_combout\);

-- Location: LCCOMB_X46_Y53_N10
\WideOr16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr16~0_combout\ = (!\pres_state.S1~q\ & (!\pres_state.SE1~q\ & (!\pres_state.SE0~q\ & \pres_state.S0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pres_state.S1~q\,
	datab => \pres_state.SE1~q\,
	datac => \pres_state.SE0~q\,
	datad => \pres_state.S0~q\,
	combout => \WideOr16~0_combout\);

-- Location: LCCOMB_X46_Y53_N4
WideOr16 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr16~combout\ = ((\pres_state.SE2~q\) # (\pres_state.S2~q\)) # (!\WideOr16~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr16~0_combout\,
	datac => \pres_state.SE2~q\,
	datad => \pres_state.S2~q\,
	combout => \WideOr16~combout\);

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

ww_busLed(0) <= \busLed[0]~output_o\;

ww_busLed(1) <= \busLed[1]~output_o\;

ww_busLed(2) <= \busLed[2]~output_o\;

ww_busLed(3) <= \busLed[3]~output_o\;

ww_busLed(4) <= \busLed[4]~output_o\;

ww_busLed(5) <= \busLed[5]~output_o\;

ww_busLed(6) <= \busLed[6]~output_o\;

ww_led <= \led~output_o\;

ww_EnClk <= \EnClk~output_o\;
END structure;


