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

-- DATE "12/10/2025 20:58:35"

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

ENTITY 	ejercicios IS
    PORT (
	E : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	B : IN std_logic;
	A : IN std_logic;
	PRI : OUT std_logic;
	COPI : OUT std_logic;
	L1 : OUT std_logic;
	L2 : OUT std_logic;
	MA : OUT std_logic;
	ME : OUT std_logic;
	IG : OUT std_logic
	);
END ejercicios;

-- Design Ports Information


ARCHITECTURE structure OF ejercicios IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_E : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_PRI : std_logic;
SIGNAL ww_COPI : std_logic;
SIGNAL ww_L1 : std_logic;
SIGNAL ww_L2 : std_logic;
SIGNAL ww_MA : std_logic;
SIGNAL ww_ME : std_logic;
SIGNAL ww_IG : std_logic;
SIGNAL \D~combout\ : std_logic;
SIGNAL \A~combout\ : std_logic;
SIGNAL \E~combout\ : std_logic;
SIGNAL \C~combout\ : std_logic;
SIGNAL \B~combout\ : std_logic;
SIGNAL \PRI~0_combout\ : std_logic;
SIGNAL \PRI~1_combout\ : std_logic;
SIGNAL \COPI~0_combout\ : std_logic;
SIGNAL \L1~0_combout\ : std_logic;
SIGNAL \L2~0_combout\ : std_logic;
SIGNAL \MA~0_combout\ : std_logic;
SIGNAL \MA~1_combout\ : std_logic;
SIGNAL \ME~0_combout\ : std_logic;
SIGNAL \ME~1_combout\ : std_logic;
SIGNAL \IG~0_combout\ : std_logic;
SIGNAL \IG~1_combout\ : std_logic;

BEGIN

ww_E <= E;
ww_D <= D;
ww_C <= C;
ww_B <= B;
ww_A <= A;
PRI <= ww_PRI;
COPI <= ww_COPI;
L1 <= ww_L1;
L2 <= ww_L2;
MA <= ww_MA;
ME <= ww_ME;
IG <= ww_IG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\D~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_D,
	combout => \D~combout\);

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A,
	combout => \A~combout\);

-- Location: PIN_56,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\E~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_E,
	combout => \E~combout\);

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\C~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_C,
	combout => \C~combout\);

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B,
	combout => \B~combout\);

-- Location: LC_X3_Y2_N7
\PRI~0\ : maxii_lcell
-- Equation(s):
-- \PRI~0_combout\ = (\E~combout\ & ((\D~combout\ & (\C~combout\)) # (!\D~combout\ & (!\C~combout\ & !\B~combout\)))) # (!\E~combout\ & ((\C~combout\ $ (\B~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "83b4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D~combout\,
	datab => \E~combout\,
	datac => \C~combout\,
	datad => \B~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \PRI~0_combout\);

-- Location: LC_X3_Y2_N8
\PRI~1\ : maxii_lcell
-- Equation(s):
-- \PRI~1_combout\ = (\A~combout\ & ((\PRI~0_combout\) # ((!\D~combout\ & \B~combout\)))) # (!\A~combout\ & (!\D~combout\ & (\PRI~0_combout\ & \B~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d4c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D~combout\,
	datab => \A~combout\,
	datac => \PRI~0_combout\,
	datad => \B~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \PRI~1_combout\);

-- Location: LC_X3_Y2_N4
\COPI~0\ : maxii_lcell
-- Equation(s):
-- \COPI~0_combout\ = (\C~combout\ & ((\D~combout\) # ((\A~combout\) # (\B~combout\)))) # (!\C~combout\ & (\B~combout\ & ((\D~combout\) # (\A~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fee0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D~combout\,
	datab => \A~combout\,
	datac => \C~combout\,
	datad => \B~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \COPI~0_combout\);

-- Location: LC_X3_Y2_N9
\L1~0\ : maxii_lcell
-- Equation(s):
-- \L1~0_combout\ = \D~combout\ $ (\A~combout\ $ (\C~combout\ $ (\B~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D~combout\,
	datab => \A~combout\,
	datac => \C~combout\,
	datad => \B~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L1~0_combout\);

-- Location: LC_X3_Y2_N0
\L2~0\ : maxii_lcell
-- Equation(s):
-- \L2~0_combout\ = (\D~combout\ & ((\A~combout\ & (\C~combout\ & \B~combout\)) # (!\A~combout\ & (!\C~combout\ & !\B~combout\)))) # (!\D~combout\ & ((\A~combout\ & (!\C~combout\ & !\B~combout\)) # (!\A~combout\ & (\C~combout\ $ (\B~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8116",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D~combout\,
	datab => \A~combout\,
	datac => \C~combout\,
	datad => \B~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L2~0_combout\);

-- Location: LC_X3_Y2_N6
\MA~0\ : maxii_lcell
-- Equation(s):
-- \MA~0_combout\ = ((\A~combout\ & (!\C~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\,
	datac => \C~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MA~0_combout\);

-- Location: LC_X3_Y2_N2
\MA~1\ : maxii_lcell
-- Equation(s):
-- \MA~1_combout\ = (\E~combout\ & ((\D~combout\ & (\MA~0_combout\ & \B~combout\)) # (!\D~combout\ & ((\MA~0_combout\) # (\B~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c440",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D~combout\,
	datab => \E~combout\,
	datac => \MA~0_combout\,
	datad => \B~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MA~1_combout\);

-- Location: LC_X3_Y2_N1
\ME~0\ : maxii_lcell
-- Equation(s):
-- \ME~0_combout\ = (\D~combout\ & (((!\B~combout\)) # (!\A~combout\))) # (!\D~combout\ & (!\A~combout\ & (\C~combout\ & !\B~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "22ba",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D~combout\,
	datab => \A~combout\,
	datac => \C~combout\,
	datad => \B~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ME~0_combout\);

-- Location: LC_X4_Y1_N6
\ME~1\ : maxii_lcell
-- Equation(s):
-- \ME~1_combout\ = ((\ME~0_combout\ & ((\E~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ME~0_combout\,
	datad => \E~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ME~1_combout\);

-- Location: LC_X3_Y2_N5
\IG~0\ : maxii_lcell
-- Equation(s):
-- \IG~0_combout\ = (\A~combout\ $ ((\C~combout\)))

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
	datab => \A~combout\,
	datac => \C~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IG~0_combout\);

-- Location: LC_X3_Y2_N3
\IG~1\ : maxii_lcell
-- Equation(s):
-- \IG~1_combout\ = (\E~combout\ & (!\IG~0_combout\ & (\D~combout\ $ (!\B~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0804",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D~combout\,
	datab => \E~combout\,
	datac => \IG~0_combout\,
	datad => \B~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IG~1_combout\);

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\PRI~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \PRI~1_combout\,
	oe => VCC,
	padio => ww_PRI);

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\COPI~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \COPI~0_combout\,
	oe => VCC,
	padio => ww_COPI);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\L1~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \L1~0_combout\,
	oe => VCC,
	padio => ww_L1);

-- Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\L2~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \L2~0_combout\,
	oe => VCC,
	padio => ww_L2);

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\MA~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \MA~1_combout\,
	oe => VCC,
	padio => ww_MA);

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ME~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ME~1_combout\,
	oe => VCC,
	padio => ww_ME);

-- Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IG~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \IG~1_combout\,
	oe => VCC,
	padio => ww_IG);
END structure;


