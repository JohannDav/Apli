-- Copyright (C) 2025  Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Altera and sold by Altera or its authorized distributors.  Please
-- refer to the Altera Software License Subscription Agreements 
-- on the Quartus Prime software download page.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 25.1std.0 Build 1129 10/21/2025 SC Lite Edition"

-- DATE "12/03/2025 17:13:50"

-- 
-- Device: Altera EPM240T100C5 Package TQFP100
-- 

-- 
-- This VHDL file should be used for Questa Altera FPGA (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	carro IS
    PORT (
	PI : IN std_logic;
	PD : IN std_logic;
	C : IN std_logic;
	SW : IN std_logic;
	AL : OUT std_logic
	);
END carro;

-- Design Ports Information


ARCHITECTURE structure OF carro IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_PI : std_logic;
SIGNAL ww_PD : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_SW : std_logic;
SIGNAL ww_AL : std_logic;
SIGNAL \SW~combout\ : std_logic;
SIGNAL \PI~combout\ : std_logic;
SIGNAL \C~combout\ : std_logic;
SIGNAL \PD~combout\ : std_logic;
SIGNAL \AL~0_combout\ : std_logic;

BEGIN

ww_PI <= PI;
ww_PD <= PD;
ww_C <= C;
ww_SW <= SW;
AL <= ww_AL;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_SW,
	combout => \SW~combout\);

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PI~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_PI,
	combout => \PI~combout\);

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\C~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_C,
	combout => \C~combout\);

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PD~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_PD,
	combout => \PD~combout\);

-- Location: LC_X4_Y1_N2
\AL~0\ : maxii_lcell
-- Equation(s):
-- \AL~0_combout\ = (((\SW~combout\ & !\C~combout\)) # (!\PD~combout\)) # (!\PI~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3bff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\,
	datab => \PI~combout\,
	datac => \C~combout\,
	datad => \PD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \AL~0_combout\);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\AL~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \AL~0_combout\,
	oe => VCC,
	padio => ww_AL);
END structure;


