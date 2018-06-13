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

-- DATE "04/04/2018 15:35:23"

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

ENTITY 	cla_8bits_partial IS
    PORT (
	x : IN std_logic_vector(7 DOWNTO 0);
	y : IN std_logic_vector(7 DOWNTO 0);
	cin : IN std_logic;
	sum : OUT std_logic_vector(7 DOWNTO 0);
	cout : OUT std_logic
	);
END cla_8bits_partial;

-- Design Ports Information
-- sum[0]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[1]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[2]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[3]	=>  Location: PIN_AJ22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[4]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[5]	=>  Location: PIN_AK23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[6]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[7]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cout	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[0]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[0]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cin	=>  Location: PIN_AK21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[4]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_AK24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[5]	=>  Location: PIN_AJ21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[6]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_AJ20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[7]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[7]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cla_8bits_partial IS
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
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \cin~input_o\ : std_logic;
SIGNAL \y[0]~input_o\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \y[1]~input_o\ : std_logic;
SIGNAL \x[2]~input_o\ : std_logic;
SIGNAL \CLA0|sum[2]~0_combout\ : std_logic;
SIGNAL \y[2]~input_o\ : std_logic;
SIGNAL \CLA0|sum[2]~1_combout\ : std_logic;
SIGNAL \y[3]~input_o\ : std_logic;
SIGNAL \x[3]~input_o\ : std_logic;
SIGNAL \CLA0|sum[3]~2_combout\ : std_logic;
SIGNAL \CLA0|sum[2]~3_combout\ : std_logic;
SIGNAL \CLA0|cout~0_combout\ : std_logic;
SIGNAL \CLA0|carry~0_combout\ : std_logic;
SIGNAL \x[4]~input_o\ : std_logic;
SIGNAL \y[4]~input_o\ : std_logic;
SIGNAL \y[5]~input_o\ : std_logic;
SIGNAL \x[5]~input_o\ : std_logic;
SIGNAL \CLA1|sum[1]~0_combout\ : std_logic;
SIGNAL \x[6]~input_o\ : std_logic;
SIGNAL \CLA1|sum[2]~1_combout\ : std_logic;
SIGNAL \CLA1|sum[2]~2_combout\ : std_logic;
SIGNAL \y[6]~input_o\ : std_logic;
SIGNAL \CLA1|sum[2]~3_combout\ : std_logic;
SIGNAL \y[7]~input_o\ : std_logic;
SIGNAL \x[7]~input_o\ : std_logic;
SIGNAL \CLA1|sum[3]~4_combout\ : std_logic;
SIGNAL \CLA1|cout~0_combout\ : std_logic;
SIGNAL \CLA1|g\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLA1|sum\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLA0|sum\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \CLA1|ALT_INV_sum[2]~2_combout\ : std_logic;
SIGNAL \CLA1|ALT_INV_sum[2]~1_combout\ : std_logic;
SIGNAL \CLA1|ALT_INV_g\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \CLA1|ALT_INV_sum[1]~0_combout\ : std_logic;
SIGNAL \CLA0|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \CLA0|ALT_INV_carry~0_combout\ : std_logic;
SIGNAL \CLA0|ALT_INV_sum[2]~3_combout\ : std_logic;
SIGNAL \CLA0|ALT_INV_sum[2]~0_combout\ : std_logic;

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
\CLA1|ALT_INV_sum[2]~2_combout\ <= NOT \CLA1|sum[2]~2_combout\;
\CLA1|ALT_INV_sum[2]~1_combout\ <= NOT \CLA1|sum[2]~1_combout\;
\CLA1|ALT_INV_g\(1) <= NOT \CLA1|g\(1);
\CLA1|ALT_INV_sum[1]~0_combout\ <= NOT \CLA1|sum[1]~0_combout\;
\CLA0|ALT_INV_cout~0_combout\ <= NOT \CLA0|cout~0_combout\;
\CLA0|ALT_INV_carry~0_combout\ <= NOT \CLA0|carry~0_combout\;
\CLA0|ALT_INV_sum[2]~3_combout\ <= NOT \CLA0|sum[2]~3_combout\;
\CLA0|ALT_INV_sum[2]~0_combout\ <= NOT \CLA0|sum[2]~0_combout\;

-- Location: IOOBUF_X70_Y0_N19
\sum[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CLA0|sum\(0),
	devoe => ww_devoe,
	o => ww_sum(0));

-- Location: IOOBUF_X70_Y0_N36
\sum[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CLA0|sum\(1),
	devoe => ww_devoe,
	o => ww_sum(1));

-- Location: IOOBUF_X70_Y0_N2
\sum[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CLA0|sum[2]~1_combout\,
	devoe => ww_devoe,
	o => ww_sum(2));

-- Location: IOOBUF_X70_Y0_N53
\sum[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CLA0|sum[3]~2_combout\,
	devoe => ww_devoe,
	o => ww_sum(3));

-- Location: IOOBUF_X68_Y0_N2
\sum[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CLA1|sum\(0),
	devoe => ww_devoe,
	o => ww_sum(4));

-- Location: IOOBUF_X72_Y0_N36
\sum[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CLA1|sum\(1),
	devoe => ww_devoe,
	o => ww_sum(5));

-- Location: IOOBUF_X60_Y0_N53
\sum[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CLA1|sum[2]~3_combout\,
	devoe => ww_devoe,
	o => ww_sum(6));

-- Location: IOOBUF_X60_Y0_N2
\sum[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CLA1|sum[3]~4_combout\,
	devoe => ww_devoe,
	o => ww_sum(7));

-- Location: IOOBUF_X64_Y0_N53
\cout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CLA1|cout~0_combout\,
	devoe => ww_devoe,
	o => ww_cout);

-- Location: IOIBUF_X66_Y0_N58
\x[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(0),
	o => \x[0]~input_o\);

-- Location: IOIBUF_X68_Y0_N35
\cin~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cin,
	o => \cin~input_o\);

-- Location: IOIBUF_X66_Y0_N75
\y[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(0),
	o => \y[0]~input_o\);

-- Location: LABCELL_X67_Y1_N0
\CLA0|sum[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CLA0|sum\(0) = ( \y[0]~input_o\ & ( !\x[0]~input_o\ $ (\cin~input_o\) ) ) # ( !\y[0]~input_o\ & ( !\x[0]~input_o\ $ (!\cin~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100110011000011001100110011110011001100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_x[0]~input_o\,
	datad => \ALT_INV_cin~input_o\,
	datae => \ALT_INV_y[0]~input_o\,
	combout => \CLA0|sum\(0));

-- Location: IOIBUF_X66_Y0_N92
\x[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(1),
	o => \x[1]~input_o\);

-- Location: IOIBUF_X68_Y0_N52
\y[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(1),
	o => \y[1]~input_o\);

-- Location: LABCELL_X67_Y1_N36
\CLA0|sum[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CLA0|sum\(1) = ( \y[0]~input_o\ & ( \y[1]~input_o\ & ( !\x[1]~input_o\ $ (((\cin~input_o\) # (\x[0]~input_o\))) ) ) ) # ( !\y[0]~input_o\ & ( \y[1]~input_o\ & ( !\x[1]~input_o\ $ (((\x[0]~input_o\ & \cin~input_o\))) ) ) ) # ( \y[0]~input_o\ & ( 
-- !\y[1]~input_o\ & ( !\x[1]~input_o\ $ (((!\x[0]~input_o\ & !\cin~input_o\))) ) ) ) # ( !\y[0]~input_o\ & ( !\y[1]~input_o\ & ( !\x[1]~input_o\ $ (((!\x[0]~input_o\) # (!\cin~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111100001111001111000011110000110000111100001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_x[0]~input_o\,
	datac => \ALT_INV_x[1]~input_o\,
	datad => \ALT_INV_cin~input_o\,
	datae => \ALT_INV_y[0]~input_o\,
	dataf => \ALT_INV_y[1]~input_o\,
	combout => \CLA0|sum\(1));

-- Location: IOIBUF_X74_Y0_N58
\x[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(2),
	o => \x[2]~input_o\);

-- Location: LABCELL_X67_Y1_N15
\CLA0|sum[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CLA0|sum[2]~0_combout\ = ( \y[1]~input_o\ & ( ((!\x[0]~input_o\ & (\y[0]~input_o\ & \cin~input_o\)) # (\x[0]~input_o\ & ((\cin~input_o\) # (\y[0]~input_o\)))) # (\x[1]~input_o\) ) ) # ( !\y[1]~input_o\ & ( (\x[1]~input_o\ & ((!\x[0]~input_o\ & 
-- (\y[0]~input_o\ & \cin~input_o\)) # (\x[0]~input_o\ & ((\cin~input_o\) # (\y[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010101000000010001010101010111011111110101011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[1]~input_o\,
	datab => \ALT_INV_x[0]~input_o\,
	datac => \ALT_INV_y[0]~input_o\,
	datad => \ALT_INV_cin~input_o\,
	dataf => \ALT_INV_y[1]~input_o\,
	combout => \CLA0|sum[2]~0_combout\);

-- Location: IOIBUF_X68_Y0_N18
\y[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(2),
	o => \y[2]~input_o\);

-- Location: LABCELL_X67_Y1_N12
\CLA0|sum[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CLA0|sum[2]~1_combout\ = ( \y[2]~input_o\ & ( !\x[2]~input_o\ $ (\CLA0|sum[2]~0_combout\) ) ) # ( !\y[2]~input_o\ & ( !\x[2]~input_o\ $ (!\CLA0|sum[2]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_x[2]~input_o\,
	datad => \CLA0|ALT_INV_sum[2]~0_combout\,
	dataf => \ALT_INV_y[2]~input_o\,
	combout => \CLA0|sum[2]~1_combout\);

-- Location: IOIBUF_X66_Y0_N41
\y[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(3),
	o => \y[3]~input_o\);

-- Location: IOIBUF_X72_Y0_N1
\x[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(3),
	o => \x[3]~input_o\);

-- Location: LABCELL_X67_Y1_N51
\CLA0|sum[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CLA0|sum[3]~2_combout\ = ( \x[2]~input_o\ & ( !\y[3]~input_o\ $ (!\x[3]~input_o\ $ (((\y[2]~input_o\) # (\CLA0|sum[2]~0_combout\)))) ) ) # ( !\x[2]~input_o\ & ( !\y[3]~input_o\ $ (!\x[3]~input_o\ $ (((\CLA0|sum[2]~0_combout\ & \y[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001101001011001100110100101101001100110010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y[3]~input_o\,
	datab => \ALT_INV_x[3]~input_o\,
	datac => \CLA0|ALT_INV_sum[2]~0_combout\,
	datad => \ALT_INV_y[2]~input_o\,
	dataf => \ALT_INV_x[2]~input_o\,
	combout => \CLA0|sum[3]~2_combout\);

-- Location: LABCELL_X67_Y1_N27
\CLA0|sum[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CLA0|sum[2]~3_combout\ = ( \y[0]~input_o\ & ( \y[1]~input_o\ & ( (\x[0]~input_o\) # (\cin~input_o\) ) ) ) # ( !\y[0]~input_o\ & ( \y[1]~input_o\ & ( (\cin~input_o\ & \x[0]~input_o\) ) ) ) # ( \y[0]~input_o\ & ( !\y[1]~input_o\ & ( (\x[1]~input_o\ & 
-- ((\x[0]~input_o\) # (\cin~input_o\))) ) ) ) # ( !\y[0]~input_o\ & ( !\y[1]~input_o\ & ( (\x[1]~input_o\ & (\cin~input_o\ & \x[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000101010001010100000011000000110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[1]~input_o\,
	datab => \ALT_INV_cin~input_o\,
	datac => \ALT_INV_x[0]~input_o\,
	datae => \ALT_INV_y[0]~input_o\,
	dataf => \ALT_INV_y[1]~input_o\,
	combout => \CLA0|sum[2]~3_combout\);

-- Location: LABCELL_X67_Y1_N30
\CLA0|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CLA0|cout~0_combout\ = ( \x[1]~input_o\ & ( \x[2]~input_o\ & ( (!\y[3]~input_o\ & (\x[3]~input_o\ & ((\y[2]~input_o\) # (\y[1]~input_o\)))) # (\y[3]~input_o\ & (((\x[3]~input_o\) # (\y[2]~input_o\)) # (\y[1]~input_o\))) ) ) ) # ( !\x[1]~input_o\ & ( 
-- \x[2]~input_o\ & ( (!\y[2]~input_o\ & (\y[3]~input_o\ & \x[3]~input_o\)) # (\y[2]~input_o\ & ((\x[3]~input_o\) # (\y[3]~input_o\))) ) ) ) # ( \x[1]~input_o\ & ( !\x[2]~input_o\ & ( (!\y[3]~input_o\ & (\y[1]~input_o\ & (\y[2]~input_o\ & \x[3]~input_o\))) # 
-- (\y[3]~input_o\ & (((\y[1]~input_o\ & \y[2]~input_o\)) # (\x[3]~input_o\))) ) ) ) # ( !\x[1]~input_o\ & ( !\x[2]~input_o\ & ( (\y[3]~input_o\ & \x[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000010001111100000011001111110000011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y[1]~input_o\,
	datab => \ALT_INV_y[2]~input_o\,
	datac => \ALT_INV_y[3]~input_o\,
	datad => \ALT_INV_x[3]~input_o\,
	datae => \ALT_INV_x[1]~input_o\,
	dataf => \ALT_INV_x[2]~input_o\,
	combout => \CLA0|cout~0_combout\);

-- Location: LABCELL_X67_Y1_N48
\CLA0|carry~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CLA0|carry~0_combout\ = ( \x[2]~input_o\ & ( (!\y[3]~input_o\ & !\x[3]~input_o\) ) ) # ( !\x[2]~input_o\ & ( (!\y[2]~input_o\) # ((!\y[3]~input_o\ & !\x[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100011111000111110001111100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y[3]~input_o\,
	datab => \ALT_INV_x[3]~input_o\,
	datac => \ALT_INV_y[2]~input_o\,
	dataf => \ALT_INV_x[2]~input_o\,
	combout => \CLA0|carry~0_combout\);

-- Location: IOIBUF_X64_Y0_N35
\x[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(4),
	o => \x[4]~input_o\);

-- Location: IOIBUF_X72_Y0_N52
\y[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(4),
	o => \y[4]~input_o\);

-- Location: LABCELL_X67_Y1_N9
\CLA1|sum[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CLA1|sum\(0) = ( \x[4]~input_o\ & ( \y[4]~input_o\ & ( ((\CLA0|sum[2]~3_combout\ & !\CLA0|carry~0_combout\)) # (\CLA0|cout~0_combout\) ) ) ) # ( !\x[4]~input_o\ & ( \y[4]~input_o\ & ( (!\CLA0|cout~0_combout\ & ((!\CLA0|sum[2]~3_combout\) # 
-- (\CLA0|carry~0_combout\))) ) ) ) # ( \x[4]~input_o\ & ( !\y[4]~input_o\ & ( (!\CLA0|cout~0_combout\ & ((!\CLA0|sum[2]~3_combout\) # (\CLA0|carry~0_combout\))) ) ) ) # ( !\x[4]~input_o\ & ( !\y[4]~input_o\ & ( ((\CLA0|sum[2]~3_combout\ & 
-- !\CLA0|carry~0_combout\)) # (\CLA0|cout~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100001111101000001111000010100000111100000101111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CLA0|ALT_INV_sum[2]~3_combout\,
	datac => \CLA0|ALT_INV_cout~0_combout\,
	datad => \CLA0|ALT_INV_carry~0_combout\,
	datae => \ALT_INV_x[4]~input_o\,
	dataf => \ALT_INV_y[4]~input_o\,
	combout => \CLA1|sum\(0));

-- Location: IOIBUF_X64_Y0_N18
\y[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(5),
	o => \y[5]~input_o\);

-- Location: IOIBUF_X62_Y0_N52
\x[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(5),
	o => \x[5]~input_o\);

-- Location: LABCELL_X67_Y1_N45
\CLA1|sum[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CLA1|sum[1]~0_combout\ = !\y[5]~input_o\ $ (!\x[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y[5]~input_o\,
	datab => \ALT_INV_x[5]~input_o\,
	combout => \CLA1|sum[1]~0_combout\);

-- Location: LABCELL_X67_Y1_N18
\CLA1|sum[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CLA1|sum\(1) = ( \x[4]~input_o\ & ( \y[4]~input_o\ & ( !\CLA1|sum[1]~0_combout\ ) ) ) # ( !\x[4]~input_o\ & ( \y[4]~input_o\ & ( !\CLA1|sum[1]~0_combout\ $ (((!\CLA0|cout~0_combout\ & ((!\CLA0|sum[2]~3_combout\) # (\CLA0|carry~0_combout\))))) ) ) ) # ( 
-- \x[4]~input_o\ & ( !\y[4]~input_o\ & ( !\CLA1|sum[1]~0_combout\ $ (((!\CLA0|cout~0_combout\ & ((!\CLA0|sum[2]~3_combout\) # (\CLA0|carry~0_combout\))))) ) ) ) # ( !\x[4]~input_o\ & ( !\y[4]~input_o\ & ( \CLA1|sum[1]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001110011100110000111001110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CLA0|ALT_INV_carry~0_combout\,
	datab => \CLA1|ALT_INV_sum[1]~0_combout\,
	datac => \CLA0|ALT_INV_sum[2]~3_combout\,
	datad => \CLA0|ALT_INV_cout~0_combout\,
	datae => \ALT_INV_x[4]~input_o\,
	dataf => \ALT_INV_y[4]~input_o\,
	combout => \CLA1|sum\(1));

-- Location: IOIBUF_X64_Y0_N1
\x[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(6),
	o => \x[6]~input_o\);

-- Location: LABCELL_X67_Y1_N42
\CLA1|sum[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CLA1|sum[2]~1_combout\ = (!\y[5]~input_o\ & !\x[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y[5]~input_o\,
	datab => \ALT_INV_x[5]~input_o\,
	combout => \CLA1|sum[2]~1_combout\);

-- Location: LABCELL_X67_Y1_N54
\CLA1|sum[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CLA1|sum[2]~2_combout\ = ( \x[4]~input_o\ & ( \y[4]~input_o\ & ( !\CLA1|sum[2]~1_combout\ ) ) ) # ( !\x[4]~input_o\ & ( \y[4]~input_o\ & ( (!\CLA1|sum[2]~1_combout\ & (((!\CLA0|carry~0_combout\ & \CLA0|sum[2]~3_combout\)) # (\CLA0|cout~0_combout\))) ) ) 
-- ) # ( \x[4]~input_o\ & ( !\y[4]~input_o\ & ( (!\CLA1|sum[2]~1_combout\ & (((!\CLA0|carry~0_combout\ & \CLA0|sum[2]~3_combout\)) # (\CLA0|cout~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001110110000000000111011000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CLA0|ALT_INV_carry~0_combout\,
	datab => \CLA0|ALT_INV_cout~0_combout\,
	datac => \CLA0|ALT_INV_sum[2]~3_combout\,
	datad => \CLA1|ALT_INV_sum[2]~1_combout\,
	datae => \ALT_INV_x[4]~input_o\,
	dataf => \ALT_INV_y[4]~input_o\,
	combout => \CLA1|sum[2]~2_combout\);

-- Location: LABCELL_X63_Y1_N30
\CLA1|g[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CLA1|g\(1) = ( \y[5]~input_o\ & ( \x[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_x[5]~input_o\,
	dataf => \ALT_INV_y[5]~input_o\,
	combout => \CLA1|g\(1));

-- Location: IOIBUF_X62_Y0_N35
\y[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(6),
	o => \y[6]~input_o\);

-- Location: LABCELL_X63_Y1_N9
\CLA1|sum[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CLA1|sum[2]~3_combout\ = ( \y[6]~input_o\ & ( !\x[6]~input_o\ $ (((\CLA1|g\(1)) # (\CLA1|sum[2]~2_combout\))) ) ) # ( !\y[6]~input_o\ & ( !\x[6]~input_o\ $ (((!\CLA1|sum[2]~2_combout\ & !\CLA1|g\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110101001101010100101011001010101101010011010101001010110010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[6]~input_o\,
	datab => \CLA1|ALT_INV_sum[2]~2_combout\,
	datac => \CLA1|ALT_INV_g\(1),
	datae => \ALT_INV_y[6]~input_o\,
	combout => \CLA1|sum[2]~3_combout\);

-- Location: IOIBUF_X62_Y0_N18
\y[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(7),
	o => \y[7]~input_o\);

-- Location: IOIBUF_X62_Y0_N1
\x[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(7),
	o => \x[7]~input_o\);

-- Location: LABCELL_X63_Y1_N12
\CLA1|sum[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CLA1|sum[3]~4_combout\ = ( \x[7]~input_o\ & ( \x[6]~input_o\ & ( !\y[7]~input_o\ $ ((((\CLA1|sum[2]~2_combout\) # (\CLA1|g\(1))) # (\y[6]~input_o\))) ) ) ) # ( !\x[7]~input_o\ & ( \x[6]~input_o\ & ( !\y[7]~input_o\ $ (((!\y[6]~input_o\ & (!\CLA1|g\(1) & 
-- !\CLA1|sum[2]~2_combout\)))) ) ) ) # ( \x[7]~input_o\ & ( !\x[6]~input_o\ & ( !\y[7]~input_o\ $ (((\y[6]~input_o\ & ((\CLA1|sum[2]~2_combout\) # (\CLA1|g\(1)))))) ) ) ) # ( !\x[7]~input_o\ & ( !\x[6]~input_o\ & ( !\y[7]~input_o\ $ (((!\y[6]~input_o\) # 
-- ((!\CLA1|g\(1) & !\CLA1|sum[2]~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111001011010111000011010010101111000111100001000011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y[6]~input_o\,
	datab => \CLA1|ALT_INV_g\(1),
	datac => \ALT_INV_y[7]~input_o\,
	datad => \CLA1|ALT_INV_sum[2]~2_combout\,
	datae => \ALT_INV_x[7]~input_o\,
	dataf => \ALT_INV_x[6]~input_o\,
	combout => \CLA1|sum[3]~4_combout\);

-- Location: LABCELL_X63_Y1_N48
\CLA1|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CLA1|cout~0_combout\ = ( \x[7]~input_o\ & ( \x[6]~input_o\ & ( (((\CLA1|sum[2]~2_combout\) # (\y[7]~input_o\)) # (\CLA1|g\(1))) # (\y[6]~input_o\) ) ) ) # ( !\x[7]~input_o\ & ( \x[6]~input_o\ & ( (\y[7]~input_o\ & (((\CLA1|sum[2]~2_combout\) # 
-- (\CLA1|g\(1))) # (\y[6]~input_o\))) ) ) ) # ( \x[7]~input_o\ & ( !\x[6]~input_o\ & ( ((\y[6]~input_o\ & ((\CLA1|sum[2]~2_combout\) # (\CLA1|g\(1))))) # (\y[7]~input_o\) ) ) ) # ( !\x[7]~input_o\ & ( !\x[6]~input_o\ & ( (\y[6]~input_o\ & (\y[7]~input_o\ & 
-- ((\CLA1|sum[2]~2_combout\) # (\CLA1|g\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000101000111110101111100000111000011110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y[6]~input_o\,
	datab => \CLA1|ALT_INV_g\(1),
	datac => \ALT_INV_y[7]~input_o\,
	datad => \CLA1|ALT_INV_sum[2]~2_combout\,
	datae => \ALT_INV_x[7]~input_o\,
	dataf => \ALT_INV_x[6]~input_o\,
	combout => \CLA1|cout~0_combout\);

-- Location: LABCELL_X7_Y4_N0
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


