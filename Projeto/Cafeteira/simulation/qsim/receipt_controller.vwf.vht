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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "06/13/2018 10:05:30"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          money_controller
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY money_controller_vhd_vec_tst IS
END money_controller_vhd_vec_tst;
ARCHITECTURE money_controller_arch OF money_controller_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL HEX0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX4 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX5 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL input_value : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL key1 : STD_LOGIC;
SIGNAL key2 : STD_LOGIC;
SIGNAL resetn : STD_LOGIC;
SIGNAL stock0 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL stock1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL stock2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL stock3 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL type_of_money : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT money_controller
	PORT (
	clock : IN STD_LOGIC;
	HEX0 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX1 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX2 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX3 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX4 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX5 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	input_value : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	key1 : IN STD_LOGIC;
	key2 : IN STD_LOGIC;
	resetn : IN STD_LOGIC;
	stock0 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	stock1 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	stock2 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	stock3 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	type_of_money : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : money_controller
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	HEX0 => HEX0,
	HEX1 => HEX1,
	HEX2 => HEX2,
	HEX3 => HEX3,
	HEX4 => HEX4,
	HEX5 => HEX5,
	input_value => input_value,
	key1 => key1,
	key2 => key2,
	resetn => resetn,
	stock0 => stock0,
	stock1 => stock1,
	stock2 => stock2,
	stock3 => stock3,
	type_of_money => type_of_money
	);
-- type_of_money[1]
t_prcs_type_of_money_1: PROCESS
BEGIN
	FOR i IN 1 TO 20
	LOOP
		type_of_money(1) <= '0';
		WAIT FOR 24000 ps;
		type_of_money(1) <= '1';
		WAIT FOR 24000 ps;
	END LOOP;
	type_of_money(1) <= '0';
	WAIT FOR 24000 ps;
	type_of_money(1) <= '1';
WAIT;
END PROCESS t_prcs_type_of_money_1;
-- type_of_money[0]
t_prcs_type_of_money_0: PROCESS
BEGIN
	FOR i IN 1 TO 41
	LOOP
		type_of_money(0) <= '0';
		WAIT FOR 12000 ps;
		type_of_money(0) <= '1';
		WAIT FOR 12000 ps;
	END LOOP;
	type_of_money(0) <= '0';
	WAIT FOR 12000 ps;
	type_of_money(0) <= '1';
WAIT;
END PROCESS t_prcs_type_of_money_0;

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 25000 ps;
	clock <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- key1
t_prcs_key1: PROCESS
BEGIN
	key1 <= '0';
WAIT;
END PROCESS t_prcs_key1;
END money_controller_arch;
