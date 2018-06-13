-- Copyright (C) 2017  Intel Corporation. All rights reserved.
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
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "06/12/2018 22:22:14"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	stock_component IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	load : IN std_logic;
	positive_signal : IN std_logic;
	input_value : IN std_logic_vector(7 DOWNTO 0);
	total_value : OUT std_logic_vector(7 DOWNTO 0)
	);
END stock_component;

-- Design Ports Information
-- total_value[0]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_value[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_value[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_value[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_value[4]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_value[5]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_value[6]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_value[7]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_value[0]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_value[1]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_value[2]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_value[3]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_value[4]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_value[5]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_value[6]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_value[7]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- positive_signal	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF stock_component IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_load : std_logic;
SIGNAL ww_positive_signal : std_logic;
SIGNAL ww_input_value : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_total_value : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \input_value[0]~input_o\ : std_logic;
SIGNAL \total[0]~1_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \positive_signal~input_o\ : std_logic;
SIGNAL \Add0~34_cout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \total[0]~3_combout\ : std_logic;
SIGNAL \load~input_o\ : std_logic;
SIGNAL \total[0]~_emulated_q\ : std_logic;
SIGNAL \total[0]~2_combout\ : std_logic;
SIGNAL \input_value[1]~input_o\ : std_logic;
SIGNAL \total[1]~5_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \total[1]~7_combout\ : std_logic;
SIGNAL \total[1]~_emulated_q\ : std_logic;
SIGNAL \total[1]~6_combout\ : std_logic;
SIGNAL \input_value[2]~input_o\ : std_logic;
SIGNAL \total[2]~9_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \total[2]~11_combout\ : std_logic;
SIGNAL \total[2]~_emulated_q\ : std_logic;
SIGNAL \total[2]~10_combout\ : std_logic;
SIGNAL \input_value[3]~input_o\ : std_logic;
SIGNAL \total[3]~13_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \total[3]~15_combout\ : std_logic;
SIGNAL \total[3]~_emulated_q\ : std_logic;
SIGNAL \total[3]~14_combout\ : std_logic;
SIGNAL \input_value[4]~input_o\ : std_logic;
SIGNAL \total[4]~17_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \total[4]~19_combout\ : std_logic;
SIGNAL \total[4]~_emulated_q\ : std_logic;
SIGNAL \total[4]~18_combout\ : std_logic;
SIGNAL \input_value[5]~input_o\ : std_logic;
SIGNAL \total[5]~21_combout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \total[5]~23_combout\ : std_logic;
SIGNAL \total[5]~_emulated_q\ : std_logic;
SIGNAL \total[5]~22_combout\ : std_logic;
SIGNAL \input_value[6]~input_o\ : std_logic;
SIGNAL \total[6]~25_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \total[6]~27_combout\ : std_logic;
SIGNAL \total[6]~_emulated_q\ : std_logic;
SIGNAL \total[6]~26_combout\ : std_logic;
SIGNAL \input_value[7]~input_o\ : std_logic;
SIGNAL \total[7]~29_combout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \total[7]~31_combout\ : std_logic;
SIGNAL \total[7]~_emulated_q\ : std_logic;
SIGNAL \total[7]~30_combout\ : std_logic;
SIGNAL \ALT_INV_total[3]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_total[2]~10_combout\ : std_logic;
SIGNAL \ALT_INV_total[2]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_total[1]~6_combout\ : std_logic;
SIGNAL \ALT_INV_total[1]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_total[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_total[0]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ALT_INV_positive_signal~input_o\ : std_logic;
SIGNAL \ALT_INV_input_value[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_input_value[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_input_value[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_input_value[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_input_value[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_input_value[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_input_value[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_input_value[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_total[7]~29_combout\ : std_logic;
SIGNAL \ALT_INV_total[6]~25_combout\ : std_logic;
SIGNAL \ALT_INV_total[5]~21_combout\ : std_logic;
SIGNAL \ALT_INV_total[4]~17_combout\ : std_logic;
SIGNAL \ALT_INV_total[3]~13_combout\ : std_logic;
SIGNAL \ALT_INV_total[2]~9_combout\ : std_logic;
SIGNAL \ALT_INV_total[1]~5_combout\ : std_logic;
SIGNAL \ALT_INV_total[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_total[7]~30_combout\ : std_logic;
SIGNAL \ALT_INV_total[7]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_total[6]~26_combout\ : std_logic;
SIGNAL \ALT_INV_total[6]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_total[5]~22_combout\ : std_logic;
SIGNAL \ALT_INV_total[5]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_total[4]~18_combout\ : std_logic;
SIGNAL \ALT_INV_total[4]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_total[3]~14_combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_load <= load;
ww_positive_signal <= positive_signal;
ww_input_value <= input_value;
total_value <= ww_total_value;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_total[3]~_emulated_q\ <= NOT \total[3]~_emulated_q\;
\ALT_INV_total[2]~10_combout\ <= NOT \total[2]~10_combout\;
\ALT_INV_total[2]~_emulated_q\ <= NOT \total[2]~_emulated_q\;
\ALT_INV_total[1]~6_combout\ <= NOT \total[1]~6_combout\;
\ALT_INV_total[1]~_emulated_q\ <= NOT \total[1]~_emulated_q\;
\ALT_INV_total[0]~2_combout\ <= NOT \total[0]~2_combout\;
\ALT_INV_total[0]~_emulated_q\ <= NOT \total[0]~_emulated_q\;
\ALT_INV_Add0~29_sumout\ <= NOT \Add0~29_sumout\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
\ALT_INV_positive_signal~input_o\ <= NOT \positive_signal~input_o\;
\ALT_INV_input_value[7]~input_o\ <= NOT \input_value[7]~input_o\;
\ALT_INV_input_value[6]~input_o\ <= NOT \input_value[6]~input_o\;
\ALT_INV_input_value[5]~input_o\ <= NOT \input_value[5]~input_o\;
\ALT_INV_input_value[4]~input_o\ <= NOT \input_value[4]~input_o\;
\ALT_INV_input_value[3]~input_o\ <= NOT \input_value[3]~input_o\;
\ALT_INV_input_value[2]~input_o\ <= NOT \input_value[2]~input_o\;
\ALT_INV_input_value[1]~input_o\ <= NOT \input_value[1]~input_o\;
\ALT_INV_input_value[0]~input_o\ <= NOT \input_value[0]~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_total[7]~29_combout\ <= NOT \total[7]~29_combout\;
\ALT_INV_total[6]~25_combout\ <= NOT \total[6]~25_combout\;
\ALT_INV_total[5]~21_combout\ <= NOT \total[5]~21_combout\;
\ALT_INV_total[4]~17_combout\ <= NOT \total[4]~17_combout\;
\ALT_INV_total[3]~13_combout\ <= NOT \total[3]~13_combout\;
\ALT_INV_total[2]~9_combout\ <= NOT \total[2]~9_combout\;
\ALT_INV_total[1]~5_combout\ <= NOT \total[1]~5_combout\;
\ALT_INV_total[0]~1_combout\ <= NOT \total[0]~1_combout\;
\ALT_INV_total[7]~30_combout\ <= NOT \total[7]~30_combout\;
\ALT_INV_total[7]~_emulated_q\ <= NOT \total[7]~_emulated_q\;
\ALT_INV_total[6]~26_combout\ <= NOT \total[6]~26_combout\;
\ALT_INV_total[6]~_emulated_q\ <= NOT \total[6]~_emulated_q\;
\ALT_INV_total[5]~22_combout\ <= NOT \total[5]~22_combout\;
\ALT_INV_total[5]~_emulated_q\ <= NOT \total[5]~_emulated_q\;
\ALT_INV_total[4]~18_combout\ <= NOT \total[4]~18_combout\;
\ALT_INV_total[4]~_emulated_q\ <= NOT \total[4]~_emulated_q\;
\ALT_INV_total[3]~14_combout\ <= NOT \total[3]~14_combout\;

-- Location: IOOBUF_X36_Y81_N19
\total_value[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \total[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_total_value(0));

-- Location: IOOBUF_X34_Y81_N76
\total_value[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \total[1]~6_combout\,
	devoe => ww_devoe,
	o => ww_total_value(1));

-- Location: IOOBUF_X34_Y81_N59
\total_value[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \total[2]~10_combout\,
	devoe => ww_devoe,
	o => ww_total_value(2));

-- Location: IOOBUF_X36_Y81_N53
\total_value[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \total[3]~14_combout\,
	devoe => ww_devoe,
	o => ww_total_value(3));

-- Location: IOOBUF_X32_Y81_N53
\total_value[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \total[4]~18_combout\,
	devoe => ww_devoe,
	o => ww_total_value(4));

-- Location: IOOBUF_X32_Y81_N19
\total_value[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \total[5]~22_combout\,
	devoe => ww_devoe,
	o => ww_total_value(5));

-- Location: IOOBUF_X36_Y81_N2
\total_value[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \total[6]~26_combout\,
	devoe => ww_devoe,
	o => ww_total_value(6));

-- Location: IOOBUF_X36_Y81_N36
\total_value[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \total[7]~30_combout\,
	devoe => ww_devoe,
	o => ww_total_value(7));

-- Location: IOIBUF_X40_Y81_N18
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X38_Y81_N1
\input_value[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_value(0),
	o => \input_value[0]~input_o\);

-- Location: LABCELL_X40_Y80_N9
\total[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \total[0]~1_combout\ = ( \reset~input_o\ & ( \total[0]~1_combout\ & ( \input_value[0]~input_o\ ) ) ) # ( !\reset~input_o\ & ( \total[0]~1_combout\ ) ) # ( \reset~input_o\ & ( !\total[0]~1_combout\ & ( \input_value[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010111111111111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_value[0]~input_o\,
	datae => \ALT_INV_reset~input_o\,
	dataf => \ALT_INV_total[0]~1_combout\,
	combout => \total[0]~1_combout\);

-- Location: IOIBUF_X89_Y25_N21
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G10
\clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock~input_o\,
	outclk => \clock~inputCLKENA0_outclk\);

-- Location: IOIBUF_X32_Y81_N35
\positive_signal~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_positive_signal,
	o => \positive_signal~input_o\);

-- Location: MLABCELL_X39_Y80_N0
\Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~34_cout\ = CARRY(( !\positive_signal~input_o\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_positive_signal~input_o\,
	cin => GND,
	cout => \Add0~34_cout\);

-- Location: MLABCELL_X39_Y80_N3
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( !\positive_signal~input_o\ $ (\input_value[0]~input_o\) ) + ( \total[0]~2_combout\ ) + ( \Add0~34_cout\ ))
-- \Add0~2\ = CARRY(( !\positive_signal~input_o\ $ (\input_value[0]~input_o\) ) + ( \total[0]~2_combout\ ) + ( \Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_positive_signal~input_o\,
	datab => \ALT_INV_total[0]~2_combout\,
	datac => \ALT_INV_input_value[0]~input_o\,
	cin => \Add0~34_cout\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: LABCELL_X40_Y80_N30
\total[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \total[0]~3_combout\ = ( \Add0~1_sumout\ & ( !\total[0]~1_combout\ ) ) # ( !\Add0~1_sumout\ & ( \total[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_total[0]~1_combout\,
	dataf => \ALT_INV_Add0~1_sumout\,
	combout => \total[0]~3_combout\);

-- Location: IOIBUF_X34_Y81_N92
\load~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load,
	o => \load~input_o\);

-- Location: FF_X40_Y80_N32
\total[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \total[0]~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \total[0]~_emulated_q\);

-- Location: LABCELL_X40_Y80_N54
\total[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \total[0]~2_combout\ = ( \total[0]~1_combout\ & ( \total[0]~_emulated_q\ & ( (\reset~input_o\ & \input_value[0]~input_o\) ) ) ) # ( !\total[0]~1_combout\ & ( \total[0]~_emulated_q\ & ( (!\reset~input_o\) # (\input_value[0]~input_o\) ) ) ) # ( 
-- \total[0]~1_combout\ & ( !\total[0]~_emulated_q\ & ( (!\reset~input_o\) # (\input_value[0]~input_o\) ) ) ) # ( !\total[0]~1_combout\ & ( !\total[0]~_emulated_q\ & ( (\reset~input_o\ & \input_value[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111111001111110011110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_input_value[0]~input_o\,
	datae => \ALT_INV_total[0]~1_combout\,
	dataf => \ALT_INV_total[0]~_emulated_q\,
	combout => \total[0]~2_combout\);

-- Location: IOIBUF_X38_Y81_N52
\input_value[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_value(1),
	o => \input_value[1]~input_o\);

-- Location: LABCELL_X40_Y80_N33
\total[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \total[1]~5_combout\ = ( \total[1]~5_combout\ & ( (!\reset~input_o\) # (\input_value[1]~input_o\) ) ) # ( !\total[1]~5_combout\ & ( (\input_value[1]~input_o\ & \reset~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_value[1]~input_o\,
	datad => \ALT_INV_reset~input_o\,
	dataf => \ALT_INV_total[1]~5_combout\,
	combout => \total[1]~5_combout\);

-- Location: MLABCELL_X39_Y80_N6
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \total[1]~6_combout\ ) + ( !\positive_signal~input_o\ $ (\input_value[1]~input_o\) ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( \total[1]~6_combout\ ) + ( !\positive_signal~input_o\ $ (\input_value[1]~input_o\) ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_positive_signal~input_o\,
	datac => \ALT_INV_input_value[1]~input_o\,
	datad => \ALT_INV_total[1]~6_combout\,
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: MLABCELL_X39_Y80_N57
\total[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \total[1]~7_combout\ = ( \Add0~5_sumout\ & ( !\total[1]~5_combout\ ) ) # ( !\Add0~5_sumout\ & ( \total[1]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_total[1]~5_combout\,
	dataf => \ALT_INV_Add0~5_sumout\,
	combout => \total[1]~7_combout\);

-- Location: FF_X39_Y80_N59
\total[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \total[1]~7_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \total[1]~_emulated_q\);

-- Location: MLABCELL_X39_Y80_N36
\total[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \total[1]~6_combout\ = ( \total[1]~5_combout\ & ( (!\reset~input_o\ & ((!\total[1]~_emulated_q\))) # (\reset~input_o\ & (\input_value[1]~input_o\)) ) ) # ( !\total[1]~5_combout\ & ( (!\reset~input_o\ & ((\total[1]~_emulated_q\))) # (\reset~input_o\ & 
-- (\input_value[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111110101111000001011010111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_input_value[1]~input_o\,
	datad => \ALT_INV_total[1]~_emulated_q\,
	dataf => \ALT_INV_total[1]~5_combout\,
	combout => \total[1]~6_combout\);

-- Location: IOIBUF_X38_Y81_N35
\input_value[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_value(2),
	o => \input_value[2]~input_o\);

-- Location: LABCELL_X40_Y80_N39
\total[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \total[2]~9_combout\ = ( \total[2]~9_combout\ & ( (!\reset~input_o\) # (\input_value[2]~input_o\) ) ) # ( !\total[2]~9_combout\ & ( (\input_value[2]~input_o\ & \reset~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_input_value[2]~input_o\,
	datad => \ALT_INV_reset~input_o\,
	dataf => \ALT_INV_total[2]~9_combout\,
	combout => \total[2]~9_combout\);

-- Location: MLABCELL_X39_Y80_N9
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( !\positive_signal~input_o\ $ (\input_value[2]~input_o\) ) + ( \total[2]~10_combout\ ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( !\positive_signal~input_o\ $ (\input_value[2]~input_o\) ) + ( \total[2]~10_combout\ ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_positive_signal~input_o\,
	datab => \ALT_INV_total[2]~10_combout\,
	datad => \ALT_INV_input_value[2]~input_o\,
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: MLABCELL_X39_Y80_N33
\total[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \total[2]~11_combout\ = ( \Add0~9_sumout\ & ( !\total[2]~9_combout\ ) ) # ( !\Add0~9_sumout\ & ( \total[2]~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_total[2]~9_combout\,
	dataf => \ALT_INV_Add0~9_sumout\,
	combout => \total[2]~11_combout\);

-- Location: FF_X39_Y80_N35
\total[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \total[2]~11_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \total[2]~_emulated_q\);

-- Location: MLABCELL_X39_Y80_N48
\total[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \total[2]~10_combout\ = ( \total[2]~9_combout\ & ( (!\reset~input_o\ & (!\total[2]~_emulated_q\)) # (\reset~input_o\ & ((\input_value[2]~input_o\))) ) ) # ( !\total[2]~9_combout\ & ( (!\reset~input_o\ & (\total[2]~_emulated_q\)) # (\reset~input_o\ & 
-- ((\input_value[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111110100000111101011010000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_total[2]~_emulated_q\,
	datad => \ALT_INV_input_value[2]~input_o\,
	dataf => \ALT_INV_total[2]~9_combout\,
	combout => \total[2]~10_combout\);

-- Location: IOIBUF_X38_Y81_N18
\input_value[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_value(3),
	o => \input_value[3]~input_o\);

-- Location: LABCELL_X40_Y80_N21
\total[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \total[3]~13_combout\ = ( \total[3]~13_combout\ & ( \reset~input_o\ & ( \input_value[3]~input_o\ ) ) ) # ( !\total[3]~13_combout\ & ( \reset~input_o\ & ( \input_value[3]~input_o\ ) ) ) # ( \total[3]~13_combout\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_input_value[3]~input_o\,
	datae => \ALT_INV_total[3]~13_combout\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \total[3]~13_combout\);

-- Location: MLABCELL_X39_Y80_N12
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \total[3]~14_combout\ ) + ( !\positive_signal~input_o\ $ (\input_value[3]~input_o\) ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( \total[3]~14_combout\ ) + ( !\positive_signal~input_o\ $ (\input_value[3]~input_o\) ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_positive_signal~input_o\,
	datad => \ALT_INV_total[3]~14_combout\,
	dataf => \ALT_INV_input_value[3]~input_o\,
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: MLABCELL_X39_Y80_N51
\total[3]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \total[3]~15_combout\ = ( \Add0~13_sumout\ & ( !\total[3]~13_combout\ ) ) # ( !\Add0~13_sumout\ & ( \total[3]~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_total[3]~13_combout\,
	dataf => \ALT_INV_Add0~13_sumout\,
	combout => \total[3]~15_combout\);

-- Location: FF_X39_Y80_N52
\total[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \total[3]~15_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \total[3]~_emulated_q\);

-- Location: LABCELL_X40_Y80_N36
\total[3]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \total[3]~14_combout\ = ( \total[3]~_emulated_q\ & ( (!\reset~input_o\ & ((!\total[3]~13_combout\))) # (\reset~input_o\ & (\input_value[3]~input_o\)) ) ) # ( !\total[3]~_emulated_q\ & ( (!\reset~input_o\ & ((\total[3]~13_combout\))) # (\reset~input_o\ & 
-- (\input_value[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101110111011000100011011101100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \ALT_INV_input_value[3]~input_o\,
	datad => \ALT_INV_total[3]~13_combout\,
	dataf => \ALT_INV_total[3]~_emulated_q\,
	combout => \total[3]~14_combout\);

-- Location: IOIBUF_X34_Y81_N41
\input_value[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_value(4),
	o => \input_value[4]~input_o\);

-- Location: LABCELL_X40_Y80_N24
\total[4]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \total[4]~17_combout\ = ( \reset~input_o\ & ( \total[4]~17_combout\ & ( \input_value[4]~input_o\ ) ) ) # ( !\reset~input_o\ & ( \total[4]~17_combout\ ) ) # ( \reset~input_o\ & ( !\total[4]~17_combout\ & ( \input_value[4]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_input_value[4]~input_o\,
	datae => \ALT_INV_reset~input_o\,
	dataf => \ALT_INV_total[4]~17_combout\,
	combout => \total[4]~17_combout\);

-- Location: MLABCELL_X39_Y80_N15
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( !\positive_signal~input_o\ $ (\input_value[4]~input_o\) ) + ( \total[4]~18_combout\ ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( !\positive_signal~input_o\ $ (\input_value[4]~input_o\) ) + ( \total[4]~18_combout\ ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_positive_signal~input_o\,
	datab => \ALT_INV_total[4]~18_combout\,
	datad => \ALT_INV_input_value[4]~input_o\,
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: MLABCELL_X39_Y80_N45
\total[4]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \total[4]~19_combout\ = ( \Add0~17_sumout\ & ( !\total[4]~17_combout\ ) ) # ( !\Add0~17_sumout\ & ( \total[4]~17_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_total[4]~17_combout\,
	dataf => \ALT_INV_Add0~17_sumout\,
	combout => \total[4]~19_combout\);

-- Location: FF_X39_Y80_N47
\total[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \total[4]~19_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \total[4]~_emulated_q\);

-- Location: MLABCELL_X39_Y80_N42
\total[4]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \total[4]~18_combout\ = ( \total[4]~17_combout\ & ( (!\reset~input_o\ & ((!\total[4]~_emulated_q\))) # (\reset~input_o\ & (\input_value[4]~input_o\)) ) ) # ( !\total[4]~17_combout\ & ( (!\reset~input_o\ & ((\total[4]~_emulated_q\))) # (\reset~input_o\ & 
-- (\input_value[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001111110011000000111111001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_input_value[4]~input_o\,
	datac => \ALT_INV_reset~input_o\,
	datad => \ALT_INV_total[4]~_emulated_q\,
	dataf => \ALT_INV_total[4]~17_combout\,
	combout => \total[4]~18_combout\);

-- Location: IOIBUF_X40_Y81_N35
\input_value[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_value(5),
	o => \input_value[5]~input_o\);

-- Location: LABCELL_X40_Y80_N15
\total[5]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \total[5]~21_combout\ = ( \reset~input_o\ & ( \total[5]~21_combout\ & ( \input_value[5]~input_o\ ) ) ) # ( !\reset~input_o\ & ( \total[5]~21_combout\ ) ) # ( \reset~input_o\ & ( !\total[5]~21_combout\ & ( \input_value[5]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_input_value[5]~input_o\,
	datae => \ALT_INV_reset~input_o\,
	dataf => \ALT_INV_total[5]~21_combout\,
	combout => \total[5]~21_combout\);

-- Location: MLABCELL_X39_Y80_N18
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( !\positive_signal~input_o\ $ (\input_value[5]~input_o\) ) + ( \total[5]~22_combout\ ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( !\positive_signal~input_o\ $ (\input_value[5]~input_o\) ) + ( \total[5]~22_combout\ ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_total[5]~22_combout\,
	datac => \ALT_INV_positive_signal~input_o\,
	datad => \ALT_INV_input_value[5]~input_o\,
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: MLABCELL_X39_Y80_N30
\total[5]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \total[5]~23_combout\ = ( \Add0~21_sumout\ & ( !\total[5]~21_combout\ ) ) # ( !\Add0~21_sumout\ & ( \total[5]~21_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_total[5]~21_combout\,
	dataf => \ALT_INV_Add0~21_sumout\,
	combout => \total[5]~23_combout\);

-- Location: FF_X39_Y80_N32
\total[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \total[5]~23_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \total[5]~_emulated_q\);

-- Location: MLABCELL_X39_Y80_N39
\total[5]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \total[5]~22_combout\ = ( \total[5]~_emulated_q\ & ( (!\reset~input_o\ & ((!\total[5]~21_combout\))) # (\reset~input_o\ & (\input_value[5]~input_o\)) ) ) # ( !\total[5]~_emulated_q\ & ( (!\reset~input_o\ & ((\total[5]~21_combout\))) # (\reset~input_o\ & 
-- (\input_value[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111110101111000001011010111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_input_value[5]~input_o\,
	datad => \ALT_INV_total[5]~21_combout\,
	dataf => \ALT_INV_total[5]~_emulated_q\,
	combout => \total[5]~22_combout\);

-- Location: IOIBUF_X40_Y81_N1
\input_value[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_value(6),
	o => \input_value[6]~input_o\);

-- Location: LABCELL_X40_Y80_N51
\total[6]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \total[6]~25_combout\ = ( \reset~input_o\ & ( \input_value[6]~input_o\ ) ) # ( !\reset~input_o\ & ( \total[6]~25_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_input_value[6]~input_o\,
	datad => \ALT_INV_total[6]~25_combout\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \total[6]~25_combout\);

-- Location: MLABCELL_X39_Y80_N21
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \total[6]~26_combout\ ) + ( !\positive_signal~input_o\ $ (\input_value[6]~input_o\) ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( \total[6]~26_combout\ ) + ( !\positive_signal~input_o\ $ (\input_value[6]~input_o\) ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_total[6]~26_combout\,
	datac => \ALT_INV_positive_signal~input_o\,
	dataf => \ALT_INV_input_value[6]~input_o\,
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: LABCELL_X40_Y80_N0
\total[6]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \total[6]~27_combout\ = ( \Add0~25_sumout\ & ( !\total[6]~25_combout\ ) ) # ( !\Add0~25_sumout\ & ( \total[6]~25_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_total[6]~25_combout\,
	dataf => \ALT_INV_Add0~25_sumout\,
	combout => \total[6]~27_combout\);

-- Location: FF_X40_Y80_N2
\total[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \total[6]~27_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \total[6]~_emulated_q\);

-- Location: LABCELL_X40_Y80_N48
\total[6]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \total[6]~26_combout\ = ( \total[6]~25_combout\ & ( (!\reset~input_o\ & ((!\total[6]~_emulated_q\))) # (\reset~input_o\ & (\input_value[6]~input_o\)) ) ) # ( !\total[6]~25_combout\ & ( (!\reset~input_o\ & ((\total[6]~_emulated_q\))) # (\reset~input_o\ & 
-- (\input_value[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101110111011000100011011101100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \ALT_INV_input_value[6]~input_o\,
	datad => \ALT_INV_total[6]~_emulated_q\,
	dataf => \ALT_INV_total[6]~25_combout\,
	combout => \total[6]~26_combout\);

-- Location: IOIBUF_X40_Y81_N52
\input_value[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_value(7),
	o => \input_value[7]~input_o\);

-- Location: LABCELL_X40_Y80_N45
\total[7]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \total[7]~29_combout\ = ( \reset~input_o\ & ( \input_value[7]~input_o\ ) ) # ( !\reset~input_o\ & ( \total[7]~29_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_input_value[7]~input_o\,
	datad => \ALT_INV_total[7]~29_combout\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \total[7]~29_combout\);

-- Location: MLABCELL_X39_Y80_N24
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( \total[7]~30_combout\ ) + ( !\input_value[7]~input_o\ $ (\positive_signal~input_o\) ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111000011110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_input_value[7]~input_o\,
	datac => \ALT_INV_positive_signal~input_o\,
	datad => \ALT_INV_total[7]~30_combout\,
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\);

-- Location: MLABCELL_X39_Y80_N54
\total[7]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \total[7]~31_combout\ = ( \total[7]~29_combout\ & ( !\Add0~29_sumout\ ) ) # ( !\total[7]~29_combout\ & ( \Add0~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~29_sumout\,
	dataf => \ALT_INV_total[7]~29_combout\,
	combout => \total[7]~31_combout\);

-- Location: FF_X39_Y80_N55
\total[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \total[7]~31_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \total[7]~_emulated_q\);

-- Location: LABCELL_X40_Y80_N42
\total[7]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \total[7]~30_combout\ = ( \total[7]~_emulated_q\ & ( (!\reset~input_o\ & (!\total[7]~29_combout\)) # (\reset~input_o\ & ((\input_value[7]~input_o\))) ) ) # ( !\total[7]~_emulated_q\ & ( (!\reset~input_o\ & (\total[7]~29_combout\)) # (\reset~input_o\ & 
-- ((\input_value[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011110001101100011011000110110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \ALT_INV_total[7]~29_combout\,
	datac => \ALT_INV_input_value[7]~input_o\,
	dataf => \ALT_INV_total[7]~_emulated_q\,
	combout => \total[7]~30_combout\);

-- Location: LABCELL_X17_Y49_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


