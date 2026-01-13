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

-- DATE "12/16/2025 19:01:31"

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

ENTITY 	restador4Bits IS
    PORT (
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	d : BUFFER std_logic_vector(4 DOWNTO 0);
	mayor : BUFFER std_logic;
	igual : BUFFER std_logic;
	menor : BUFFER std_logic
	);
END restador4Bits;

-- Design Ports Information


ARCHITECTURE structure OF restador4Bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_d : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_mayor : std_logic;
SIGNAL ww_igual : std_logic;
SIGNAL ww_menor : std_logic;
SIGNAL \INST_semiS|d~combout\ : std_logic;
SIGNAL \INST_restadorC|d~combout\ : std_logic;
SIGNAL \INST_restadorC|ps~combout\ : std_logic;
SIGNAL \INST_restadorC2|d~combout\ : std_logic;
SIGNAL \INST_restadorC2|ps~combout\ : std_logic;
SIGNAL \INST_restadorC3|d~combout\ : std_logic;
SIGNAL \INST_restadorC3|ps~combout\ : std_logic;
SIGNAL \res_0~0_combout\ : std_logic;
SIGNAL \mayor~0_combout\ : std_logic;
SIGNAL \a~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_res_0~0_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
d <= ww_d;
mayor <= ww_mayor;
igual <= ww_igual;
menor <= ww_menor;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_res_0~0_combout\ <= NOT \res_0~0_combout\;

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(0),
	combout => \b~combout\(0));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(0),
	combout => \a~combout\(0));

-- Location: LC_X4_Y3_N4
\INST_semiS|d\ : maxii_lcell
-- Equation(s):
-- \INST_semiS|d~combout\ = \b~combout\(0) $ ((((\a~combout\(0)))))

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
	dataa => \b~combout\(0),
	datac => \a~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \INST_semiS|d~combout\);

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(1),
	combout => \b~combout\(1));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(1),
	combout => \a~combout\(1));

-- Location: LC_X4_Y3_N8
\INST_restadorC|d\ : maxii_lcell
-- Equation(s):
-- \INST_restadorC|d~combout\ = \b~combout\(1) $ (\a~combout\(1) $ (((\b~combout\(0) & !\a~combout\(0)))))

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
	dataa => \b~combout\(0),
	datab => \b~combout\(1),
	datac => \a~combout\(0),
	datad => \a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \INST_restadorC|d~combout\);

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(2),
	combout => \a~combout\(2));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(2),
	combout => \b~combout\(2));

-- Location: LC_X4_Y3_N1
\INST_restadorC|ps\ : maxii_lcell
-- Equation(s):
-- \INST_restadorC|ps~combout\ = (\b~combout\(1) & (((\b~combout\(0) & !\a~combout\(0))) # (!\a~combout\(1)))) # (!\b~combout\(1) & (\b~combout\(0) & (!\a~combout\(0) & !\a~combout\(1))))

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
	dataa => \b~combout\(0),
	datab => \b~combout\(1),
	datac => \a~combout\(0),
	datad => \a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \INST_restadorC|ps~combout\);

-- Location: LC_X4_Y3_N7
\INST_restadorC2|d\ : maxii_lcell
-- Equation(s):
-- \INST_restadorC2|d~combout\ = \a~combout\(2) $ (\b~combout\(2) $ (((\INST_restadorC|ps~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9966",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datab => \b~combout\(2),
	datad => \INST_restadorC|ps~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \INST_restadorC2|d~combout\);

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(3),
	combout => \b~combout\(3));

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(3),
	combout => \a~combout\(3));

-- Location: LC_X4_Y3_N2
\INST_restadorC2|ps\ : maxii_lcell
-- Equation(s):
-- \INST_restadorC2|ps~combout\ = (\a~combout\(2) & (\b~combout\(2) & ((\INST_restadorC|ps~combout\)))) # (!\a~combout\(2) & ((\b~combout\(2)) # ((\INST_restadorC|ps~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datab => \b~combout\(2),
	datad => \INST_restadorC|ps~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \INST_restadorC2|ps~combout\);

-- Location: LC_X4_Y3_N9
\INST_restadorC3|d\ : maxii_lcell
-- Equation(s):
-- \INST_restadorC3|d~combout\ = \b~combout\(3) $ (((\a~combout\(3) $ (\INST_restadorC2|ps~combout\))))

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
	dataa => \b~combout\(3),
	datac => \a~combout\(3),
	datad => \INST_restadorC2|ps~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \INST_restadorC3|d~combout\);

-- Location: LC_X4_Y3_N3
\INST_restadorC3|ps\ : maxii_lcell
-- Equation(s):
-- \INST_restadorC3|ps~combout\ = (\b~combout\(3) & (((\INST_restadorC2|ps~combout\) # (!\a~combout\(3))))) # (!\b~combout\(3) & (((!\a~combout\(3) & \INST_restadorC2|ps~combout\))))

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
	dataa => \b~combout\(3),
	datac => \a~combout\(3),
	datad => \INST_restadorC2|ps~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \INST_restadorC3|ps~combout\);

-- Location: LC_X4_Y3_N5
\res_0~0\ : maxii_lcell
-- Equation(s):
-- \res_0~0_combout\ = (\INST_restadorC|d~combout\) # ((\INST_restadorC3|d~combout\) # ((\INST_restadorC2|d~combout\) # (\INST_semiS|d~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_restadorC|d~combout\,
	datab => \INST_restadorC3|d~combout\,
	datac => \INST_restadorC2|d~combout\,
	datad => \INST_semiS|d~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \res_0~0_combout\);

-- Location: LC_X4_Y3_N6
\mayor~0\ : maxii_lcell
-- Equation(s):
-- \mayor~0_combout\ = (\res_0~0_combout\ & ((\b~combout\(3) & (\a~combout\(3) & !\INST_restadorC2|ps~combout\)) # (!\b~combout\(3) & ((\a~combout\(3)) # (!\INST_restadorC2|ps~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "40d0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datab => \a~combout\(3),
	datac => \res_0~0_combout\,
	datad => \INST_restadorC2|ps~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mayor~0_combout\);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\d[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \INST_semiS|d~combout\,
	oe => VCC,
	padio => ww_d(0));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\d[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \INST_restadorC|d~combout\,
	oe => VCC,
	padio => ww_d(1));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\d[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \INST_restadorC2|d~combout\,
	oe => VCC,
	padio => ww_d(2));

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\d[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \INST_restadorC3|d~combout\,
	oe => VCC,
	padio => ww_d(3));

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\d[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \INST_restadorC3|ps~combout\,
	oe => VCC,
	padio => ww_d(4));

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mayor~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \mayor~0_combout\,
	oe => VCC,
	padio => ww_mayor);

-- Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\igual~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_res_0~0_combout\,
	oe => VCC,
	padio => ww_igual);

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\menor~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \INST_restadorC3|ps~combout\,
	oe => VCC,
	padio => ww_menor);
END structure;


