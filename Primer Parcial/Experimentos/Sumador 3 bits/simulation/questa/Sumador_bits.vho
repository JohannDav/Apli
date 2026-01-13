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

-- DATE "12/09/2025 07:52:22"

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

ENTITY 	Sumador_bits IS
    PORT (
	B2 : IN std_logic;
	B1 : IN std_logic;
	B0 : IN std_logic;
	A2 : IN std_logic;
	A1 : IN std_logic;
	A0 : IN std_logic;
	Cs : BUFFER std_logic;
	S2 : BUFFER std_logic;
	S1 : BUFFER std_logic;
	S0 : BUFFER std_logic
	);
END Sumador_bits;

-- Design Ports Information


ARCHITECTURE structure OF Sumador_bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_B2 : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_B0 : std_logic;
SIGNAL ww_A2 : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_A0 : std_logic;
SIGNAL ww_Cs : std_logic;
SIGNAL ww_S2 : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_S0 : std_logic;
SIGNAL \B1~combout\ : std_logic;
SIGNAL \A0~combout\ : std_logic;
SIGNAL \B0~combout\ : std_logic;
SIGNAL \A1~combout\ : std_logic;
SIGNAL \C1~0_combout\ : std_logic;
SIGNAL \B2~combout\ : std_logic;
SIGNAL \A2~combout\ : std_logic;
SIGNAL \Cs~0_combout\ : std_logic;
SIGNAL \S2~0_combout\ : std_logic;
SIGNAL \S1~0_combout\ : std_logic;
SIGNAL \S0~0_combout\ : std_logic;

BEGIN

ww_B2 <= B2;
ww_B1 <= B1;
ww_B0 <= B0;
ww_A2 <= A2;
ww_A1 <= A1;
ww_A0 <= A0;
Cs <= ww_Cs;
S2 <= ww_S2;
S1 <= ww_S1;
S0 <= ww_S0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B1~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B1,
	combout => \B1~combout\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A0~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A0,
	combout => \A0~combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B0~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B0,
	combout => \B0~combout\);

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A1~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A1,
	combout => \A1~combout\);

-- Location: LC_X4_Y1_N4
\C1~0\ : maxii_lcell
-- Equation(s):
-- \C1~0_combout\ = (\B1~combout\ & ((\A1~combout\) # ((\A0~combout\ & \B0~combout\)))) # (!\B1~combout\ & (\A0~combout\ & (\B0~combout\ & \A1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1~combout\,
	datab => \A0~combout\,
	datac => \B0~combout\,
	datad => \A1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C1~0_combout\);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B2~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B2,
	combout => \B2~combout\);

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A2~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A2,
	combout => \A2~combout\);

-- Location: LC_X4_Y1_N2
\Cs~0\ : maxii_lcell
-- Equation(s):
-- \Cs~0_combout\ = (\C1~0_combout\ & ((\B2~combout\) # ((\A2~combout\)))) # (!\C1~0_combout\ & (\B2~combout\ & (\A2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1~0_combout\,
	datab => \B2~combout\,
	datac => \A2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Cs~0_combout\);

-- Location: LC_X4_Y1_N6
\S2~0\ : maxii_lcell
-- Equation(s):
-- \S2~0_combout\ = \C1~0_combout\ $ (\B2~combout\ $ ((\A2~combout\)))

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
	dataa => \C1~0_combout\,
	datab => \B2~combout\,
	datac => \A2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \S2~0_combout\);

-- Location: LC_X4_Y1_N7
\S1~0\ : maxii_lcell
-- Equation(s):
-- \S1~0_combout\ = \B1~combout\ $ (\A1~combout\ $ (((\A0~combout\ & \B0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "956a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1~combout\,
	datab => \A0~combout\,
	datac => \B0~combout\,
	datad => \A1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \S1~0_combout\);

-- Location: LC_X4_Y1_N5
\S0~0\ : maxii_lcell
-- Equation(s):
-- \S0~0_combout\ = (\A0~combout\ $ ((\B0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \A0~combout\,
	datac => \B0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \S0~0_combout\);

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Cs~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Cs~0_combout\,
	oe => VCC,
	padio => ww_Cs);

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\S2~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \S2~0_combout\,
	oe => VCC,
	padio => ww_S2);

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\S1~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \S1~0_combout\,
	oe => VCC,
	padio => ww_S1);

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\S0~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \S0~0_combout\,
	oe => VCC,
	padio => ww_S0);
END structure;


