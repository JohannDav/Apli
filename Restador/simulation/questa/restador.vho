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

-- DATE "12/11/2025 13:56:37"

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

ENTITY 	restador IS
    PORT (
	B0 : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	D0 : OUT std_logic;
	D1 : OUT std_logic;
	D2 : OUT std_logic;
	D3 : OUT std_logic;
	Ps : OUT std_logic
	);
END restador;

-- Design Ports Information


ARCHITECTURE structure OF restador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_B0 : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_B2 : std_logic;
SIGNAL ww_B3 : std_logic;
SIGNAL ww_A0 : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_A2 : std_logic;
SIGNAL ww_A3 : std_logic;
SIGNAL ww_D0 : std_logic;
SIGNAL ww_D1 : std_logic;
SIGNAL ww_D2 : std_logic;
SIGNAL ww_D3 : std_logic;
SIGNAL ww_Ps : std_logic;
SIGNAL \A0~combout\ : std_logic;
SIGNAL \B0~combout\ : std_logic;
SIGNAL \D0~0_combout\ : std_logic;
SIGNAL \A1~combout\ : std_logic;
SIGNAL \B1~combout\ : std_logic;
SIGNAL \D1~0_combout\ : std_logic;
SIGNAL \B2~combout\ : std_logic;
SIGNAL \A2~combout\ : std_logic;
SIGNAL \P1~0_combout\ : std_logic;
SIGNAL \D2~0_combout\ : std_logic;
SIGNAL \A3~combout\ : std_logic;
SIGNAL \B3~combout\ : std_logic;
SIGNAL \P2~0_combout\ : std_logic;
SIGNAL \D3~0_combout\ : std_logic;
SIGNAL \Ps~0_combout\ : std_logic;

BEGIN

ww_B0 <= B0;
ww_B1 <= B1;
ww_B2 <= B2;
ww_B3 <= B3;
ww_A0 <= A0;
ww_A1 <= A1;
ww_A2 <= A2;
ww_A3 <= A3;
D0 <= ww_D0;
D1 <= ww_D1;
D2 <= ww_D2;
D3 <= ww_D3;
Ps <= ww_Ps;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A0~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A0,
	combout => \A0~combout\);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B0~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B0,
	combout => \B0~combout\);

-- Location: LC_X4_Y3_N4
\D0~0\ : maxii_lcell
-- Equation(s):
-- \D0~0_combout\ = \A0~combout\ $ ((((\B0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A0~combout\,
	datac => \B0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \D0~0_combout\);

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A1~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A1,
	combout => \A1~combout\);

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B1~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B1,
	combout => \B1~combout\);

-- Location: LC_X4_Y3_N2
\D1~0\ : maxii_lcell
-- Equation(s):
-- \D1~0_combout\ = \A1~combout\ $ (\B1~combout\ $ (((\A0~combout\ & !\B0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "39c6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A0~combout\,
	datab => \A1~combout\,
	datac => \B0~combout\,
	datad => \B1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \D1~0_combout\);

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B2~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B2,
	combout => \B2~combout\);

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A2~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A2,
	combout => \A2~combout\);

-- Location: LC_X4_Y3_N5
\P1~0\ : maxii_lcell
-- Equation(s):
-- \P1~0_combout\ = (\A1~combout\ & (((\A0~combout\ & !\B0~combout\)) # (!\B1~combout\))) # (!\A1~combout\ & (\A0~combout\ & (!\B0~combout\ & !\B1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "08ce",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A0~combout\,
	datab => \A1~combout\,
	datac => \B0~combout\,
	datad => \B1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \P1~0_combout\);

-- Location: LC_X4_Y3_N6
\D2~0\ : maxii_lcell
-- Equation(s):
-- \D2~0_combout\ = \B2~combout\ $ (\A2~combout\ $ ((\P1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9696",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B2~combout\,
	datab => \A2~combout\,
	datac => \P1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \D2~0_combout\);

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A3~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A3,
	combout => \A3~combout\);

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B3~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B3,
	combout => \B3~combout\);

-- Location: LC_X4_Y3_N8
\P2~0\ : maxii_lcell
-- Equation(s):
-- \P2~0_combout\ = (\B2~combout\ & (\A2~combout\ & (\P1~0_combout\))) # (!\B2~combout\ & ((\A2~combout\) # ((\P1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d4d4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B2~combout\,
	datab => \A2~combout\,
	datac => \P1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \P2~0_combout\);

-- Location: LC_X4_Y3_N9
\D3~0\ : maxii_lcell
-- Equation(s):
-- \D3~0_combout\ = \A3~combout\ $ (((\B3~combout\ $ (\P2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A3~combout\,
	datac => \B3~combout\,
	datad => \P2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \D3~0_combout\);

-- Location: LC_X4_Y3_N7
\Ps~0\ : maxii_lcell
-- Equation(s):
-- \Ps~0_combout\ = (\A3~combout\ & (((\P2~0_combout\) # (!\B3~combout\)))) # (!\A3~combout\ & (((!\B3~combout\ & \P2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "af0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A3~combout\,
	datac => \B3~combout\,
	datad => \P2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Ps~0_combout\);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\D0~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \D0~0_combout\,
	oe => VCC,
	padio => ww_D0);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\D1~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \D1~0_combout\,
	oe => VCC,
	padio => ww_D1);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\D2~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \D2~0_combout\,
	oe => VCC,
	padio => ww_D2);

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\D3~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \D3~0_combout\,
	oe => VCC,
	padio => ww_D3);

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Ps~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Ps~0_combout\,
	oe => VCC,
	padio => ww_Ps);
END structure;


