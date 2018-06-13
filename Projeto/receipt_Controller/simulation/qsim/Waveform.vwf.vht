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
-- Generated on "06/13/2018 10:58:32"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          receipt_controller
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY receipt_controller_vhd_vec_tst IS
END receipt_controller_vhd_vec_tst;
ARCHITECTURE receipt_controller_arch OF receipt_controller_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL enable_controller : STD_LOGIC;
SIGNAL load : STD_LOGIC;
SIGNAL resetn : STD_LOGIC;
SIGNAL total_value : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL type_of_money : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT receipt_controller
	PORT (
	clock : IN STD_LOGIC;
	enable_controller : IN STD_LOGIC;
	load : IN STD_LOGIC;
	resetn : IN STD_LOGIC;
	total_value : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	type_of_money : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : receipt_controller
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	enable_controller => enable_controller,
	load => load,
	resetn => resetn,
	total_value => total_value,
	type_of_money => type_of_money
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 25000 ps;
	clock <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 250000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- load
t_prcs_load: PROCESS
BEGIN
	load <= '1';
WAIT;
END PROCESS t_prcs_load;

-- resetn
t_prcs_resetn: PROCESS
BEGIN
	resetn <= '1';
	WAIT FOR 210000 ps;
	resetn <= '0';
	WAIT FOR 10000 ps;
	resetn <= '1';
WAIT;
END PROCESS t_prcs_resetn;

-- enable_controller
t_prcs_enable_controller: PROCESS
BEGIN
	enable_controller <= '1';
	WAIT FOR 230000 ps;
	enable_controller <= '0';
WAIT;
END PROCESS t_prcs_enable_controller;
-- type_of_money[1]
t_prcs_type_of_money_1: PROCESS
BEGIN
	FOR i IN 1 TO 8
	LOOP
		type_of_money(1) <= '0';
		WAIT FOR 14000 ps;
		type_of_money(1) <= '1';
		WAIT FOR 14000 ps;
	END LOOP;
	type_of_money(1) <= '0';
	WAIT FOR 14000 ps;
	type_of_money(1) <= '1';
WAIT;
END PROCESS t_prcs_type_of_money_1;
-- type_of_money[0]
t_prcs_type_of_money_0: PROCESS
BEGIN
	FOR i IN 1 TO 17
	LOOP
		type_of_money(0) <= '0';
		WAIT FOR 7000 ps;
		type_of_money(0) <= '1';
		WAIT FOR 7000 ps;
	END LOOP;
	type_of_money(0) <= '0';
	WAIT FOR 7000 ps;
	type_of_money(0) <= '1';
WAIT;
END PROCESS t_prcs_type_of_money_0;
END receipt_controller_arch;
