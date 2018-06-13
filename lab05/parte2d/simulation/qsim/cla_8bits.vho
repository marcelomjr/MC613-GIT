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

-- DATE "04/04/2018 16:19:35"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cla_8bits IS
    PORT (
	x : IN std_logic_vector(7 DOWNTO 0);
	y : IN std_logic_vector(7 DOWNTO 0);
	cin : IN std_logic;
	sum : OUT std_logic_vector(7 DOWNTO 0);
	cout : OUT std_logic
	);
END cla_8bits;

-- Design Ports Information
-- sum[0]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[1]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[2]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[3]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[4]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[6]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[7]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cout	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[0]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[0]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cin	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[4]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[5]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[6]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[7]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[7]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cla_8bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_cin : std_logic;
SIGNAL ww_sum : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_cout : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \cin~input_o\ : std_logic;
SIGNAL \y[0]~input_o\ : std_logic;
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \sum~0_combout\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \y[1]~input_o\ : std_logic;
SIGNAL \sum~1_combout\ : std_logic;
SIGNAL \y[2]~input_o\ : std_logic;
SIGNAL \carry[2]~0_combout\ : std_logic;
SIGNAL \x[2]~input_o\ : std_logic;
SIGNAL \sum~2_combout\ : std_logic;
SIGNAL \x[3]~input_o\ : std_logic;
SIGNAL \y[3]~input_o\ : std_logic;
SIGNAL \sum~3_combout\ : std_logic;
SIGNAL \x[4]~input_o\ : std_logic;
SIGNAL \y[4]~input_o\ : std_logic;
SIGNAL \sum~4_combout\ : std_logic;
SIGNAL \sum~5_combout\ : std_logic;
SIGNAL \x[5]~input_o\ : std_logic;
SIGNAL \y[5]~input_o\ : std_logic;
SIGNAL \carry[4]~1_combout\ : std_logic;
SIGNAL \sum~6_combout\ : std_logic;
SIGNAL \x[6]~input_o\ : std_logic;
SIGNAL \y[6]~input_o\ : std_logic;
SIGNAL \sum~7_combout\ : std_logic;
SIGNAL \sum~8_combout\ : std_logic;
SIGNAL \x[7]~input_o\ : std_logic;
SIGNAL \y[7]~input_o\ : std_logic;
SIGNAL \carry[6]~2_combout\ : std_logic;
SIGNAL \sum~9_combout\ : std_logic;
SIGNAL \carry~3_combout\ : std_logic;
SIGNAL \ALT_INV_y[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_cin~input_o\ : std_logic;
SIGNAL \ALT_INV_y[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_carry[6]~2_combout\ : std_logic;
SIGNAL \ALT_INV_sum~7_combout\ : std_logic;
SIGNAL \ALT_INV_carry[4]~1_combout\ : std_logic;
SIGNAL \ALT_INV_sum~4_combout\ : std_logic;
SIGNAL \ALT_INV_carry[2]~0_combout\ : std_logic;

BEGIN

ww_x <= x;
ww_y <= y;
ww_cin <= cin;
sum <= ww_sum;
cout <= ww_cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_y[7]~input_o\ <= NOT \y[7]~input_o\;
\ALT_INV_x[7]~input_o\ <= NOT \x[7]~input_o\;
\ALT_INV_y[6]~input_o\ <= NOT \y[6]~input_o\;
\ALT_INV_x[6]~input_o\ <= NOT \x[6]~input_o\;
\ALT_INV_y[5]~input_o\ <= NOT \y[5]~input_o\;
\ALT_INV_x[5]~input_o\ <= NOT \x[5]~input_o\;
\ALT_INV_y[4]~input_o\ <= NOT \y[4]~input_o\;
\ALT_INV_x[4]~input_o\ <= NOT \x[4]~input_o\;
\ALT_INV_y[3]~input_o\ <= NOT \y[3]~input_o\;
\ALT_INV_x[3]~input_o\ <= NOT \x[3]~input_o\;
\ALT_INV_y[2]~input_o\ <= NOT \y[2]~input_o\;
\ALT_INV_x[2]~input_o\ <= NOT \x[2]~input_o\;
\ALT_INV_y[1]~input_o\ <= NOT \y[1]~input_o\;
\ALT_INV_x[1]~input_o\ <= NOT \x[1]~input_o\;
\ALT_INV_cin~input_o\ <= NOT \cin~input_o\;
\ALT_INV_y[0]~input_o\ <= NOT \y[0]~input_o\;
\ALT_INV_x[0]~input_o\ <= NOT \x[0]~input_o\;
\ALT_INV_carry[6]~2_combout\ <= NOT \carry[6]~2_combout\;
\ALT_INV_sum~7_combout\ <= NOT \sum~7_combout\;
\ALT_INV_carry[4]~1_combout\ <= NOT \carry[4]~1_combout\;
\ALT_INV_sum~4_combout\ <= NOT \sum~4_combout\;
\ALT_INV_carry[2]~0_combout\ <= NOT \carry[2]~0_combout\;

-- Location: IOOBUF_X89_Y16_N22
\sum[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum~0_combout\,
	devoe => ww_devoe,
	o => ww_sum(0));

-- Location: IOOBUF_X89_Y25_N39
\sum[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum~1_combout\,
	devoe => ww_devoe,
	o => ww_sum(1));

-- Location: IOOBUF_X89_Y15_N5
\sum[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum~2_combout\,
	devoe => ww_devoe,
	o => ww_sum(2));

-- Location: IOOBUF_X89_Y11_N62
\sum[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum~3_combout\,
	devoe => ww_devoe,
	o => ww_sum(3));

-- Location: IOOBUF_X89_Y25_N56
\sum[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum~5_combout\,
	devoe => ww_devoe,
	o => ww_sum(4));

-- Location: IOOBUF_X89_Y15_N56
\sum[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum~6_combout\,
	devoe => ww_devoe,
	o => ww_sum(5));

-- Location: IOOBUF_X89_Y16_N39
\sum[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum~8_combout\,
	devoe => ww_devoe,
	o => ww_sum(6));

-- Location: IOOBUF_X89_Y23_N56
\sum[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum~9_combout\,
	devoe => ww_devoe,
	o => ww_sum(7));

-- Location: IOOBUF_X89_Y15_N22
\cout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \carry~3_combout\,
	devoe => ww_devoe,
	o => ww_cout);

-- Location: IOIBUF_X89_Y20_N61
\cin~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cin,
	o => \cin~input_o\);

-- Location: IOIBUF_X89_Y16_N4
\y[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(0),
	o => \y[0]~input_o\);

-- Location: IOIBUF_X89_Y21_N4
\x[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(0),
	o => \x[0]~input_o\);

-- Location: LABCELL_X88_Y21_N30
\sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum~0_combout\ = ( \y[0]~input_o\ & ( \x[0]~input_o\ & ( \cin~input_o\ ) ) ) # ( !\y[0]~input_o\ & ( \x[0]~input_o\ & ( !\cin~input_o\ ) ) ) # ( \y[0]~input_o\ & ( !\x[0]~input_o\ & ( !\cin~input_o\ ) ) ) # ( !\y[0]~input_o\ & ( !\x[0]~input_o\ & ( 
-- \cin~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_cin~input_o\,
	datae => \ALT_INV_y[0]~input_o\,
	dataf => \ALT_INV_x[0]~input_o\,
	combout => \sum~0_combout\);

-- Location: IOIBUF_X89_Y21_N55
\x[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(1),
	o => \x[1]~input_o\);

-- Location: IOIBUF_X89_Y23_N4
\y[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(1),
	o => \y[1]~input_o\);

-- Location: LABCELL_X88_Y21_N39
\sum~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum~1_combout\ = ( \y[0]~input_o\ & ( \y[1]~input_o\ & ( !\x[1]~input_o\ $ (((\x[0]~input_o\) # (\cin~input_o\))) ) ) ) # ( !\y[0]~input_o\ & ( \y[1]~input_o\ & ( !\x[1]~input_o\ $ (((\cin~input_o\ & \x[0]~input_o\))) ) ) ) # ( \y[0]~input_o\ & ( 
-- !\y[1]~input_o\ & ( !\x[1]~input_o\ $ (((!\cin~input_o\ & !\x[0]~input_o\))) ) ) ) # ( !\y[0]~input_o\ & ( !\y[1]~input_o\ & ( !\x[1]~input_o\ $ (((!\cin~input_o\) # (!\x[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011010010110101111000011110000101001011010010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cin~input_o\,
	datac => \ALT_INV_x[1]~input_o\,
	datad => \ALT_INV_x[0]~input_o\,
	datae => \ALT_INV_y[0]~input_o\,
	dataf => \ALT_INV_y[1]~input_o\,
	combout => \sum~1_combout\);

-- Location: IOIBUF_X89_Y16_N55
\y[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(2),
	o => \y[2]~input_o\);

-- Location: LABCELL_X88_Y21_N42
\carry[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \carry[2]~0_combout\ = ( \y[0]~input_o\ & ( \y[1]~input_o\ & ( ((\cin~input_o\) # (\x[1]~input_o\)) # (\x[0]~input_o\) ) ) ) # ( !\y[0]~input_o\ & ( \y[1]~input_o\ & ( ((\x[0]~input_o\ & \cin~input_o\)) # (\x[1]~input_o\) ) ) ) # ( \y[0]~input_o\ & ( 
-- !\y[1]~input_o\ & ( (\x[1]~input_o\ & ((\cin~input_o\) # (\x[0]~input_o\))) ) ) ) # ( !\y[0]~input_o\ & ( !\y[1]~input_o\ & ( (\x[0]~input_o\ & (\x[1]~input_o\ & \cin~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000100110001001100110111001101110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[0]~input_o\,
	datab => \ALT_INV_x[1]~input_o\,
	datac => \ALT_INV_cin~input_o\,
	datae => \ALT_INV_y[0]~input_o\,
	dataf => \ALT_INV_y[1]~input_o\,
	combout => \carry[2]~0_combout\);

-- Location: IOIBUF_X89_Y15_N38
\x[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(2),
	o => \x[2]~input_o\);

-- Location: LABCELL_X88_Y21_N51
\sum~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum~2_combout\ = ( \x[2]~input_o\ & ( !\y[2]~input_o\ $ (\carry[2]~0_combout\) ) ) # ( !\x[2]~input_o\ & ( !\y[2]~input_o\ $ (!\carry[2]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010101001011010010101011010010110101010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y[2]~input_o\,
	datac => \ALT_INV_carry[2]~0_combout\,
	datae => \ALT_INV_x[2]~input_o\,
	combout => \sum~2_combout\);

-- Location: IOIBUF_X89_Y23_N21
\x[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(3),
	o => \x[3]~input_o\);

-- Location: IOIBUF_X89_Y25_N21
\y[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(3),
	o => \y[3]~input_o\);

-- Location: LABCELL_X88_Y21_N24
\sum~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum~3_combout\ = ( \y[3]~input_o\ & ( !\x[3]~input_o\ $ (((!\carry[2]~0_combout\ & (\y[2]~input_o\ & \x[2]~input_o\)) # (\carry[2]~0_combout\ & ((\x[2]~input_o\) # (\y[2]~input_o\))))) ) ) # ( !\y[3]~input_o\ & ( !\x[3]~input_o\ $ 
-- (((!\carry[2]~0_combout\ & ((!\y[2]~input_o\) # (!\x[2]~input_o\))) # (\carry[2]~0_combout\ & (!\y[2]~input_o\ & !\x[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001101010010101100110101010101001100101011010100110010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[3]~input_o\,
	datab => \ALT_INV_carry[2]~0_combout\,
	datac => \ALT_INV_y[2]~input_o\,
	datad => \ALT_INV_x[2]~input_o\,
	dataf => \ALT_INV_y[3]~input_o\,
	combout => \sum~3_combout\);

-- Location: IOIBUF_X89_Y21_N21
\x[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(4),
	o => \x[4]~input_o\);

-- Location: IOIBUF_X89_Y25_N4
\y[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(4),
	o => \y[4]~input_o\);

-- Location: LABCELL_X88_Y21_N0
\sum~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum~4_combout\ = ( \y[4]~input_o\ & ( !\x[4]~input_o\ ) ) # ( !\y[4]~input_o\ & ( \x[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_x[4]~input_o\,
	dataf => \ALT_INV_y[4]~input_o\,
	combout => \sum~4_combout\);

-- Location: LABCELL_X88_Y21_N6
\sum~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum~5_combout\ = ( \sum~4_combout\ & ( \y[3]~input_o\ & ( (!\x[3]~input_o\ & ((!\carry[2]~0_combout\ & ((!\y[2]~input_o\) # (!\x[2]~input_o\))) # (\carry[2]~0_combout\ & (!\y[2]~input_o\ & !\x[2]~input_o\)))) ) ) ) # ( !\sum~4_combout\ & ( \y[3]~input_o\ 
-- & ( ((!\carry[2]~0_combout\ & (\y[2]~input_o\ & \x[2]~input_o\)) # (\carry[2]~0_combout\ & ((\x[2]~input_o\) # (\y[2]~input_o\)))) # (\x[3]~input_o\) ) ) ) # ( \sum~4_combout\ & ( !\y[3]~input_o\ & ( (!\x[3]~input_o\) # ((!\carry[2]~0_combout\ & 
-- ((!\y[2]~input_o\) # (!\x[2]~input_o\))) # (\carry[2]~0_combout\ & (!\y[2]~input_o\ & !\x[2]~input_o\))) ) ) ) # ( !\sum~4_combout\ & ( !\y[3]~input_o\ & ( (\x[3]~input_o\ & ((!\carry[2]~0_combout\ & (\y[2]~input_o\ & \x[2]~input_o\)) # 
-- (\carry[2]~0_combout\ & ((\x[2]~input_o\) # (\y[2]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010101111111101110101001010111011111111010100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[3]~input_o\,
	datab => \ALT_INV_carry[2]~0_combout\,
	datac => \ALT_INV_y[2]~input_o\,
	datad => \ALT_INV_x[2]~input_o\,
	datae => \ALT_INV_sum~4_combout\,
	dataf => \ALT_INV_y[3]~input_o\,
	combout => \sum~5_combout\);

-- Location: IOIBUF_X89_Y20_N44
\x[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(5),
	o => \x[5]~input_o\);

-- Location: IOIBUF_X89_Y20_N78
\y[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(5),
	o => \y[5]~input_o\);

-- Location: LABCELL_X88_Y21_N27
\carry[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \carry[4]~1_combout\ = ( \y[3]~input_o\ & ( ((!\carry[2]~0_combout\ & (\x[2]~input_o\ & \y[2]~input_o\)) # (\carry[2]~0_combout\ & ((\y[2]~input_o\) # (\x[2]~input_o\)))) # (\x[3]~input_o\) ) ) # ( !\y[3]~input_o\ & ( (\x[3]~input_o\ & 
-- ((!\carry[2]~0_combout\ & (\x[2]~input_o\ & \y[2]~input_o\)) # (\carry[2]~0_combout\ & ((\y[2]~input_o\) # (\x[2]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010101000000010001010101010111011111110101011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[3]~input_o\,
	datab => \ALT_INV_carry[2]~0_combout\,
	datac => \ALT_INV_x[2]~input_o\,
	datad => \ALT_INV_y[2]~input_o\,
	dataf => \ALT_INV_y[3]~input_o\,
	combout => \carry[4]~1_combout\);

-- Location: LABCELL_X88_Y21_N3
\sum~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum~6_combout\ = ( \y[4]~input_o\ & ( !\x[5]~input_o\ $ (!\y[5]~input_o\ $ (((\carry[4]~1_combout\) # (\x[4]~input_o\)))) ) ) # ( !\y[4]~input_o\ & ( !\x[5]~input_o\ $ (!\y[5]~input_o\ $ (((\x[4]~input_o\ & \carry[4]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001101001010110100110100101101001101001010110100110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[5]~input_o\,
	datab => \ALT_INV_x[4]~input_o\,
	datac => \ALT_INV_y[5]~input_o\,
	datad => \ALT_INV_carry[4]~1_combout\,
	dataf => \ALT_INV_y[4]~input_o\,
	combout => \sum~6_combout\);

-- Location: IOIBUF_X89_Y23_N38
\x[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(6),
	o => \x[6]~input_o\);

-- Location: IOIBUF_X89_Y11_N78
\y[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(6),
	o => \y[6]~input_o\);

-- Location: LABCELL_X88_Y21_N15
\sum~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum~7_combout\ = ( \y[6]~input_o\ & ( !\x[6]~input_o\ ) ) # ( !\y[6]~input_o\ & ( \x[6]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_x[6]~input_o\,
	dataf => \ALT_INV_y[6]~input_o\,
	combout => \sum~7_combout\);

-- Location: LABCELL_X88_Y21_N18
\sum~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum~8_combout\ = ( \carry[4]~1_combout\ & ( \y[4]~input_o\ & ( !\sum~7_combout\ $ (((!\y[5]~input_o\ & !\x[5]~input_o\))) ) ) ) # ( !\carry[4]~1_combout\ & ( \y[4]~input_o\ & ( !\sum~7_combout\ $ (((!\y[5]~input_o\ & ((!\x[5]~input_o\) # 
-- (!\x[4]~input_o\))) # (\y[5]~input_o\ & (!\x[5]~input_o\ & !\x[4]~input_o\)))) ) ) ) # ( \carry[4]~1_combout\ & ( !\y[4]~input_o\ & ( !\sum~7_combout\ $ (((!\y[5]~input_o\ & ((!\x[5]~input_o\) # (!\x[4]~input_o\))) # (\y[5]~input_o\ & (!\x[5]~input_o\ & 
-- !\x[4]~input_o\)))) ) ) ) # ( !\carry[4]~1_combout\ & ( !\y[4]~input_o\ & ( !\sum~7_combout\ $ (((!\y[5]~input_o\) # (!\x[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011000110110001101100110110000110110011011000110110001101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y[5]~input_o\,
	datab => \ALT_INV_sum~7_combout\,
	datac => \ALT_INV_x[5]~input_o\,
	datad => \ALT_INV_x[4]~input_o\,
	datae => \ALT_INV_carry[4]~1_combout\,
	dataf => \ALT_INV_y[4]~input_o\,
	combout => \sum~8_combout\);

-- Location: IOIBUF_X89_Y20_N95
\x[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(7),
	o => \x[7]~input_o\);

-- Location: IOIBUF_X89_Y21_N38
\y[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(7),
	o => \y[7]~input_o\);

-- Location: LABCELL_X88_Y21_N12
\carry[6]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \carry[6]~2_combout\ = ( \y[5]~input_o\ & ( ((!\x[4]~input_o\ & (\y[4]~input_o\ & \carry[4]~1_combout\)) # (\x[4]~input_o\ & ((\carry[4]~1_combout\) # (\y[4]~input_o\)))) # (\x[5]~input_o\) ) ) # ( !\y[5]~input_o\ & ( (\x[5]~input_o\ & ((!\x[4]~input_o\ & 
-- (\y[4]~input_o\ & \carry[4]~1_combout\)) # (\x[4]~input_o\ & ((\carry[4]~1_combout\) # (\y[4]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010101000000010001010101010111011111110101011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[5]~input_o\,
	datab => \ALT_INV_x[4]~input_o\,
	datac => \ALT_INV_y[4]~input_o\,
	datad => \ALT_INV_carry[4]~1_combout\,
	dataf => \ALT_INV_y[5]~input_o\,
	combout => \carry[6]~2_combout\);

-- Location: LABCELL_X88_Y21_N54
\sum~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum~9_combout\ = ( \carry[6]~2_combout\ & ( !\x[7]~input_o\ $ (!\y[7]~input_o\ $ (((\x[6]~input_o\) # (\y[6]~input_o\)))) ) ) # ( !\carry[6]~2_combout\ & ( !\x[7]~input_o\ $ (!\y[7]~input_o\ $ (((\y[6]~input_o\ & \x[6]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011011001001001101101100100101101100100100110110110010010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y[6]~input_o\,
	datab => \ALT_INV_x[7]~input_o\,
	datac => \ALT_INV_x[6]~input_o\,
	datad => \ALT_INV_y[7]~input_o\,
	dataf => \ALT_INV_carry[6]~2_combout\,
	combout => \sum~9_combout\);

-- Location: LABCELL_X88_Y21_N57
\carry~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \carry~3_combout\ = ( \carry[6]~2_combout\ & ( (!\x[7]~input_o\ & (\y[7]~input_o\ & ((\x[6]~input_o\) # (\y[6]~input_o\)))) # (\x[7]~input_o\ & (((\x[6]~input_o\) # (\y[7]~input_o\)) # (\y[6]~input_o\))) ) ) # ( !\carry[6]~2_combout\ & ( (!\x[7]~input_o\ 
-- & (\y[6]~input_o\ & (\y[7]~input_o\ & \x[6]~input_o\))) # (\x[7]~input_o\ & (((\y[6]~input_o\ & \x[6]~input_o\)) # (\y[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010111000000110001011100010111001111110001011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y[6]~input_o\,
	datab => \ALT_INV_x[7]~input_o\,
	datac => \ALT_INV_y[7]~input_o\,
	datad => \ALT_INV_x[6]~input_o\,
	dataf => \ALT_INV_carry[6]~2_combout\,
	combout => \carry~3_combout\);

-- Location: MLABCELL_X47_Y62_N0
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


