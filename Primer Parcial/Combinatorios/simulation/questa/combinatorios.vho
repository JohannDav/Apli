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

-- DATE "12/19/2025 12:13:06"

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

ENTITY 	combinatorios IS
    PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	E : IN std_logic;
	Y_impares : BUFFER std_logic;
	Y_maquina : BUFFER std_logic;
	L1 : BUFFER std_logic;
	L2 : BUFFER std_logic;
	MA : BUFFER std_logic;
	IG : BUFFER std_logic;
	ME : BUFFER std_logic
	);
END combinatorios;

-- Design Ports Information


ARCHITECTURE structure OF combinatorios IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_E : std_logic;
SIGNAL ww_Y_impares : std_logic;
SIGNAL ww_Y_maquina : std_logic;
SIGNAL ww_L1 : std_logic;
SIGNAL ww_L2 : std_logic;
SIGNAL ww_MA : std_logic;
SIGNAL ww_IG : std_logic;
SIGNAL ww_ME : std_logic;
SIGNAL \A~combout\ : std_logic;
SIGNAL \B~combout\ : std_logic;
SIGNAL \E~combout\ : std_logic;
SIGNAL \C~combout\ : std_logic;
SIGNAL \D~combout\ : std_logic;
SIGNAL \Y_impares~0_combout\ : std_logic;
SIGNAL \Y_impares~1_combout\ : std_logic;
SIGNAL \Y_maquina~0_combout\ : std_logic;
SIGNAL \L1~0_combout\ : std_logic;
SIGNAL \L2~0_combout\ : std_logic;
SIGNAL \MA~0_combout\ : std_logic;
SIGNAL \MA~1_combout\ : std_logic;
SIGNAL \IG~0_combout\ : std_logic;
SIGNAL \IG~1_combout\ : std_logic;
SIGNAL \ME~0_combout\ : std_logic;
SIGNAL \ME~1_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_C <= C;
ww_D <= D;
ww_E <= E;
Y_impares <= ww_Y_impares;
Y_maquina <= ww_Y_maquina;
L1 <= ww_L1;
L2 <= ww_L2;
MA <= ww_MA;
IG <= ww_IG;
ME <= ww_ME;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

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

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B,
	combout => \B~combout\);

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\E~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_E,
	combout => \E~combout\);

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\C~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_C,
	combout => \C~combout\);

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\D~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_D,
	combout => \D~combout\);

-- Location: LC_X2_Y3_N7
\Y_impares~0\ : maxii_lcell
-- Equation(s):
-- \Y_impares~0_combout\ = (\E~combout\ & ((\C~combout\ & ((\D~combout\))) # (!\C~combout\ & (!\B~combout\ & !\D~combout\)))) # (!\E~combout\ & (\B~combout\ $ ((\C~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b416",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E~combout\,
	datab => \B~combout\,
	datac => \C~combout\,
	datad => \D~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Y_impares~0_combout\);

-- Location: LC_X2_Y3_N0
\Y_impares~1\ : maxii_lcell
-- Equation(s):
-- \Y_impares~1_combout\ = (\A~combout\ & ((\Y_impares~0_combout\) # ((\B~combout\ & !\D~combout\)))) # (!\A~combout\ & (\B~combout\ & (\Y_impares~0_combout\ & !\D~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\,
	datab => \B~combout\,
	datac => \Y_impares~0_combout\,
	datad => \D~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Y_impares~1_combout\);

-- Location: LC_X2_Y3_N2
\Y_maquina~0\ : maxii_lcell
-- Equation(s):
-- \Y_maquina~0_combout\ = (\B~combout\ & ((\A~combout\) # ((\C~combout\) # (\D~combout\)))) # (!\B~combout\ & (\C~combout\ & ((\A~combout\) # (\D~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fce8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\,
	datab => \B~combout\,
	datac => \C~combout\,
	datad => \D~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Y_maquina~0_combout\);

-- Location: LC_X2_Y3_N9
\L1~0\ : maxii_lcell
-- Equation(s):
-- \L1~0_combout\ = \A~combout\ $ (\B~combout\ $ (\C~combout\ $ (\D~combout\)))

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
	dataa => \A~combout\,
	datab => \B~combout\,
	datac => \C~combout\,
	datad => \D~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L1~0_combout\);

-- Location: LC_X2_Y3_N6
\L2~0\ : maxii_lcell
-- Equation(s):
-- \L2~0_combout\ = (\A~combout\ & ((\B~combout\ & (\C~combout\ & \D~combout\)) # (!\B~combout\ & (!\C~combout\ & !\D~combout\)))) # (!\A~combout\ & ((\B~combout\ & (!\C~combout\ & !\D~combout\)) # (!\B~combout\ & (\C~combout\ $ (\D~combout\)))))

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
	dataa => \A~combout\,
	datab => \B~combout\,
	datac => \C~combout\,
	datad => \D~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L2~0_combout\);

-- Location: LC_X3_Y3_N2
\MA~0\ : maxii_lcell
-- Equation(s):
-- \MA~0_combout\ = ((\A~combout\ & ((!\C~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\,
	datad => \C~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MA~0_combout\);

-- Location: LC_X2_Y3_N3
\MA~1\ : maxii_lcell
-- Equation(s):
-- \MA~1_combout\ = (\E~combout\ & ((\B~combout\ & ((\MA~0_combout\) # (!\D~combout\))) # (!\B~combout\ & (\MA~0_combout\ & !\D~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "80a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E~combout\,
	datab => \B~combout\,
	datac => \MA~0_combout\,
	datad => \D~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MA~1_combout\);

-- Location: LC_X2_Y3_N5
\IG~0\ : maxii_lcell
-- Equation(s):
-- \IG~0_combout\ = \A~combout\ $ ((((\C~combout\))))

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
	dataa => \A~combout\,
	datac => \C~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IG~0_combout\);

-- Location: LC_X2_Y3_N1
\IG~1\ : maxii_lcell
-- Equation(s):
-- \IG~1_combout\ = (\E~combout\ & (!\IG~0_combout\ & (\B~combout\ $ (!\D~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0802",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E~combout\,
	datab => \B~combout\,
	datac => \IG~0_combout\,
	datad => \D~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IG~1_combout\);

-- Location: LC_X2_Y3_N4
\ME~0\ : maxii_lcell
-- Equation(s):
-- \ME~0_combout\ = (!\A~combout\ & (((\C~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\,
	datac => \C~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ME~0_combout\);

-- Location: LC_X2_Y3_N8
\ME~1\ : maxii_lcell
-- Equation(s):
-- \ME~1_combout\ = (\E~combout\ & ((\B~combout\ & (\ME~0_combout\ & \D~combout\)) # (!\B~combout\ & ((\ME~0_combout\) # (\D~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a220",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E~combout\,
	datab => \B~combout\,
	datac => \ME~0_combout\,
	datad => \D~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ME~1_combout\);

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Y_impares~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Y_impares~1_combout\,
	oe => VCC,
	padio => ww_Y_impares);

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Y_maquina~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Y_maquina~0_combout\,
	oe => VCC,
	padio => ww_Y_maquina);

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\L1~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \L1~0_combout\,
	oe => VCC,
	padio => ww_L1);

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\L2~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \L2~0_combout\,
	oe => VCC,
	padio => ww_L2);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\MA~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \MA~1_combout\,
	oe => VCC,
	padio => ww_MA);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IG~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \IG~1_combout\,
	oe => VCC,
	padio => ww_IG);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ME~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ME~1_combout\,
	oe => VCC,
	padio => ww_ME);
END structure;


