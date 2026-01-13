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

-- DATE "01/12/2026 17:45:45"

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

ENTITY 	nombre_reloj_16_segmentos IS
    PORT (
	clkin : IN std_logic;
	clkout : BUFFER std_logic
	);
END nombre_reloj_16_segmentos;

-- Design Ports Information


ARCHITECTURE structure OF nombre_reloj_16_segmentos IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clkin : std_logic;
SIGNAL ww_clkout : std_logic;
SIGNAL \clkin~combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~2COUT1_135\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~67COUT1_136\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \Add0~72\ : std_logic;
SIGNAL \Add0~72COUT1_137\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~62COUT1_126\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~32COUT1_131\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~52COUT1_127\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~47COUT1_128\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~42COUT1_129\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~22COUT1_130\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~27COUT1_132\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~17COUT1_133\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~12COUT1_134\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~77\ : std_logic;
SIGNAL \Add0~77COUT1_138\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~95_combout\ : std_logic;
SIGNAL \Add0~97\ : std_logic;
SIGNAL \Add0~97COUT1_139\ : std_logic;
SIGNAL \Add0~85_combout\ : std_logic;
SIGNAL \Add0~87\ : std_logic;
SIGNAL \Add0~87COUT1_140\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Add0~92\ : std_logic;
SIGNAL \Add0~92COUT1_141\ : std_logic;
SIGNAL \Add0~105_combout\ : std_logic;
SIGNAL \Add0~107\ : std_logic;
SIGNAL \Add0~107COUT1_142\ : std_logic;
SIGNAL \Add0~110_combout\ : std_logic;
SIGNAL \Add0~112\ : std_logic;
SIGNAL \Add0~115_combout\ : std_logic;
SIGNAL \Add0~117\ : std_logic;
SIGNAL \Add0~117COUT1_143\ : std_logic;
SIGNAL \Add0~120_combout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~122COUT1_144\ : std_logic;
SIGNAL \Add0~100_combout\ : std_logic;
SIGNAL \Equal0~6\ : std_logic;
SIGNAL \Equal0~5\ : std_logic;
SIGNAL \Equal0~1\ : std_logic;
SIGNAL \Equal0~3\ : std_logic;
SIGNAL \Equal0~0\ : std_logic;
SIGNAL \Equal0~2\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \clkint~regout\ : std_logic;
SIGNAL count : std_logic_vector(24 DOWNTO 0);

BEGIN

ww_clkin <= clkin;
clkout <= ww_clkout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clkin~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clkin,
	combout => \clkin~combout\);

-- Location: LC_X6_Y2_N5
\Add0~0\ : maxii_lcell
-- Equation(s):
-- \Add0~0_combout\ = (count(12) $ ((!\Add0~7\)))
-- \Add0~2\ = CARRY(((count(12) & !\Add0~7\)))
-- \Add0~2COUT1_135\ = CARRY(((count(12) & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(12),
	cin => \Add0~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\,
	cout0 => \Add0~2\,
	cout1 => \Add0~2COUT1_135\);

-- Location: LC_X6_Y3_N2
\count[12]\ : maxii_lcell
-- Equation(s):
-- count(12) = DFFEAS(((!\Equal0~7_combout\ & ((\Add0~0_combout\)))), GLOBAL(\clkin~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datab => \Equal0~7_combout\,
	datad => \Add0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(12));

-- Location: LC_X6_Y2_N6
\Add0~65\ : maxii_lcell
-- Equation(s):
-- \Add0~65_combout\ = (count(13) $ (((!\Add0~7\ & \Add0~2\) # (\Add0~7\ & \Add0~2COUT1_135\))))
-- \Add0~67\ = CARRY(((!\Add0~2\) # (!count(13))))
-- \Add0~67COUT1_136\ = CARRY(((!\Add0~2COUT1_135\) # (!count(13))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(13),
	cin => \Add0~7\,
	cin0 => \Add0~2\,
	cin1 => \Add0~2COUT1_135\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~65_combout\,
	cout0 => \Add0~67\,
	cout1 => \Add0~67COUT1_136\);

-- Location: LC_X5_Y3_N5
\count[13]\ : maxii_lcell
-- Equation(s):
-- count(13) = DFFEAS((!\Equal0~7_combout\ & (((\Add0~65_combout\)))), GLOBAL(\clkin~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	dataa => \Equal0~7_combout\,
	datad => \Add0~65_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(13));

-- Location: LC_X6_Y2_N7
\Add0~70\ : maxii_lcell
-- Equation(s):
-- \Add0~70_combout\ = (count(14) $ ((!(!\Add0~7\ & \Add0~67\) # (\Add0~7\ & \Add0~67COUT1_136\))))
-- \Add0~72\ = CARRY(((count(14) & !\Add0~67\)))
-- \Add0~72COUT1_137\ = CARRY(((count(14) & !\Add0~67COUT1_136\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(14),
	cin => \Add0~7\,
	cin0 => \Add0~67\,
	cin1 => \Add0~67COUT1_136\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~70_combout\,
	cout0 => \Add0~72\,
	cout1 => \Add0~72COUT1_137\);

-- Location: LC_X5_Y3_N9
\count[14]\ : maxii_lcell
-- Equation(s):
-- count(14) = DFFEAS((((\Add0~70_combout\ & !\Equal0~7_combout\))), GLOBAL(\clkin~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datac => \Add0~70_combout\,
	datad => \Equal0~7_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(14));

-- Location: LC_X6_Y2_N8
\Add0~75\ : maxii_lcell
-- Equation(s):
-- \Add0~75_combout\ = (count(15) $ (((!\Add0~7\ & \Add0~72\) # (\Add0~7\ & \Add0~72COUT1_137\))))
-- \Add0~77\ = CARRY(((!\Add0~72\) # (!count(15))))
-- \Add0~77COUT1_138\ = CARRY(((!\Add0~72COUT1_137\) # (!count(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(15),
	cin => \Add0~7\,
	cin0 => \Add0~72\,
	cin1 => \Add0~72COUT1_137\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~75_combout\,
	cout0 => \Add0~77\,
	cout1 => \Add0~77COUT1_138\);

-- Location: LC_X5_Y3_N0
\count[15]\ : maxii_lcell
-- Equation(s):
-- count(15) = DFFEAS((((\Add0~75_combout\))), GLOBAL(\clkin~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datad => \Add0~75_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(15));

-- Location: LC_X5_Y2_N3
\Add0~60\ : maxii_lcell
-- Equation(s):
-- \Add0~60_combout\ = ((!count(0)))
-- \Add0~62\ = CARRY(((count(0))))
-- \Add0~62COUT1_126\ = CARRY(((count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~60_combout\,
	cout0 => \Add0~62\,
	cout1 => \Add0~62COUT1_126\);

-- Location: LC_X5_Y3_N6
\count[0]\ : maxii_lcell
-- Equation(s):
-- \Equal0~3\ = (count(13) & (!count(15) & (count[0] & count(14))))
-- count(0) = DFFEAS(\Equal0~3\, GLOBAL(\clkin~combout\), VCC, , , \Add0~60_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	dataa => count(13),
	datab => count(15),
	datac => \Add0~60_combout\,
	datad => count(14),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~3\,
	regout => count(0));

-- Location: LC_X5_Y2_N4
\Add0~55\ : maxii_lcell
-- Equation(s):
-- \Add0~55_combout\ = (count(1) $ ((\Add0~62\)))
-- \Add0~57\ = CARRY(((!\Add0~62COUT1_126\) # (!count(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	cin0 => \Add0~62\,
	cin1 => \Add0~62COUT1_126\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~55_combout\,
	cout => \Add0~57\);

-- Location: LC_X5_Y2_N1
\count[1]\ : maxii_lcell
-- Equation(s):
-- count(1) = DFFEAS(GND, GLOBAL(\clkin~combout\), VCC, , , \Add0~55_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datac => \Add0~55_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(1));

-- Location: LC_X6_Y2_N0
\Add0~30\ : maxii_lcell
-- Equation(s):
-- \Add0~30_combout\ = (count(7) $ ((\Add0~37\)))
-- \Add0~32\ = CARRY(((!\Add0~37\) # (!count(7))))
-- \Add0~32COUT1_131\ = CARRY(((!\Add0~37\) # (!count(7))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	cin => \Add0~37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~30_combout\,
	cout0 => \Add0~32\,
	cout1 => \Add0~32COUT1_131\);

-- Location: LC_X5_Y3_N7
\count[7]\ : maxii_lcell
-- Equation(s):
-- count(7) = DFFEAS(GND, GLOBAL(\clkin~combout\), VCC, , , \Add0~30_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datac => \Add0~30_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(7));

-- Location: LC_X6_Y2_N1
\Add0~25\ : maxii_lcell
-- Equation(s):
-- \Add0~25_combout\ = (count(8) $ ((!(!\Add0~37\ & \Add0~32\) # (\Add0~37\ & \Add0~32COUT1_131\))))
-- \Add0~27\ = CARRY(((count(8) & !\Add0~32\)))
-- \Add0~27COUT1_132\ = CARRY(((count(8) & !\Add0~32COUT1_131\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	cin => \Add0~37\,
	cin0 => \Add0~32\,
	cin1 => \Add0~32COUT1_131\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~25_combout\,
	cout0 => \Add0~27\,
	cout1 => \Add0~27COUT1_132\);

-- Location: LC_X5_Y3_N1
\count[8]\ : maxii_lcell
-- Equation(s):
-- count(8) = DFFEAS(GND, GLOBAL(\clkin~combout\), VCC, , , \Add0~25_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datac => \Add0~25_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(8));

-- Location: LC_X5_Y2_N5
\Add0~50\ : maxii_lcell
-- Equation(s):
-- \Add0~50_combout\ = (count(2) $ ((!\Add0~57\)))
-- \Add0~52\ = CARRY(((count(2) & !\Add0~57\)))
-- \Add0~52COUT1_127\ = CARRY(((count(2) & !\Add0~57\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	cin => \Add0~57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~50_combout\,
	cout0 => \Add0~52\,
	cout1 => \Add0~52COUT1_127\);

-- Location: LC_X4_Y2_N7
\count[2]\ : maxii_lcell
-- Equation(s):
-- count(2) = DFFEAS((((\Add0~50_combout\))), GLOBAL(\clkin~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datad => \Add0~50_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(2));

-- Location: LC_X5_Y2_N6
\Add0~45\ : maxii_lcell
-- Equation(s):
-- \Add0~45_combout\ = (count(3) $ (((!\Add0~57\ & \Add0~52\) # (\Add0~57\ & \Add0~52COUT1_127\))))
-- \Add0~47\ = CARRY(((!\Add0~52\) # (!count(3))))
-- \Add0~47COUT1_128\ = CARRY(((!\Add0~52COUT1_127\) # (!count(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(3),
	cin => \Add0~57\,
	cin0 => \Add0~52\,
	cin1 => \Add0~52COUT1_127\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~45_combout\,
	cout0 => \Add0~47\,
	cout1 => \Add0~47COUT1_128\);

-- Location: LC_X5_Y2_N2
\count[3]\ : maxii_lcell
-- Equation(s):
-- count(3) = DFFEAS(GND, GLOBAL(\clkin~combout\), VCC, , , \Add0~45_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datac => \Add0~45_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(3));

-- Location: LC_X5_Y2_N7
\Add0~40\ : maxii_lcell
-- Equation(s):
-- \Add0~40_combout\ = (count(4) $ ((!(!\Add0~57\ & \Add0~47\) # (\Add0~57\ & \Add0~47COUT1_128\))))
-- \Add0~42\ = CARRY(((count(4) & !\Add0~47\)))
-- \Add0~42COUT1_129\ = CARRY(((count(4) & !\Add0~47COUT1_128\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	cin => \Add0~57\,
	cin0 => \Add0~47\,
	cin1 => \Add0~47COUT1_128\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~40_combout\,
	cout0 => \Add0~42\,
	cout1 => \Add0~42COUT1_129\);

-- Location: LC_X5_Y2_N0
\count[4]\ : maxii_lcell
-- Equation(s):
-- \Equal0~2\ = (count(3) & (count(1) & (count[4] & count(2))))
-- count(4) = DFFEAS(\Equal0~2\, GLOBAL(\clkin~combout\), VCC, , , \Add0~40_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	dataa => count(3),
	datab => count(1),
	datac => \Add0~40_combout\,
	datad => count(2),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~2\,
	regout => count(4));

-- Location: LC_X5_Y2_N8
\Add0~20\ : maxii_lcell
-- Equation(s):
-- \Add0~20_combout\ = (count(5) $ (((!\Add0~57\ & \Add0~42\) # (\Add0~57\ & \Add0~42COUT1_129\))))
-- \Add0~22\ = CARRY(((!\Add0~42\) # (!count(5))))
-- \Add0~22COUT1_130\ = CARRY(((!\Add0~42COUT1_129\) # (!count(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(5),
	cin => \Add0~57\,
	cin0 => \Add0~42\,
	cin1 => \Add0~42COUT1_129\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~20_combout\,
	cout0 => \Add0~22\,
	cout1 => \Add0~22COUT1_130\);

-- Location: LC_X6_Y3_N6
\count[5]\ : maxii_lcell
-- Equation(s):
-- \Equal0~1\ = (!count(8) & (!count(6) & (count[5] & !count(7))))
-- count(5) = DFFEAS(\Equal0~1\, GLOBAL(\clkin~combout\), VCC, , , \Add0~20_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	dataa => count(8),
	datab => count(6),
	datac => \Add0~20_combout\,
	datad => count(7),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1\,
	regout => count(5));

-- Location: LC_X5_Y2_N9
\Add0~35\ : maxii_lcell
-- Equation(s):
-- \Add0~35_combout\ = (count(6) $ ((!(!\Add0~57\ & \Add0~22\) # (\Add0~57\ & \Add0~22COUT1_130\))))
-- \Add0~37\ = CARRY(((count(6) & !\Add0~22COUT1_130\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(6),
	cin => \Add0~57\,
	cin0 => \Add0~22\,
	cin1 => \Add0~22COUT1_130\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~35_combout\,
	cout => \Add0~37\);

-- Location: LC_X6_Y3_N9
\count[6]\ : maxii_lcell
-- Equation(s):
-- count(6) = DFFEAS(((!\Equal0~7_combout\ & ((\Add0~35_combout\)))), GLOBAL(\clkin~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datab => \Equal0~7_combout\,
	datad => \Add0~35_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(6));

-- Location: LC_X6_Y2_N2
\Add0~15\ : maxii_lcell
-- Equation(s):
-- \Add0~15_combout\ = (count(9) $ (((!\Add0~37\ & \Add0~27\) # (\Add0~37\ & \Add0~27COUT1_132\))))
-- \Add0~17\ = CARRY(((!\Add0~27\) # (!count(9))))
-- \Add0~17COUT1_133\ = CARRY(((!\Add0~27COUT1_132\) # (!count(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(9),
	cin => \Add0~37\,
	cin0 => \Add0~27\,
	cin1 => \Add0~27COUT1_132\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~15_combout\,
	cout0 => \Add0~17\,
	cout1 => \Add0~17COUT1_133\);

-- Location: LC_X5_Y3_N2
\count[9]\ : maxii_lcell
-- Equation(s):
-- count(9) = DFFEAS(GND, GLOBAL(\clkin~combout\), VCC, , , \Add0~15_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datac => \Add0~15_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(9));

-- Location: LC_X6_Y2_N3
\Add0~10\ : maxii_lcell
-- Equation(s):
-- \Add0~10_combout\ = count(10) $ ((((!(!\Add0~37\ & \Add0~17\) # (\Add0~37\ & \Add0~17COUT1_133\)))))
-- \Add0~12\ = CARRY((count(10) & ((!\Add0~17\))))
-- \Add0~12COUT1_134\ = CARRY((count(10) & ((!\Add0~17COUT1_133\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	cin => \Add0~37\,
	cin0 => \Add0~17\,
	cin1 => \Add0~17COUT1_133\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~10_combout\,
	cout0 => \Add0~12\,
	cout1 => \Add0~12COUT1_134\);

-- Location: LC_X6_Y3_N5
\count[10]\ : maxii_lcell
-- Equation(s):
-- \Equal0~0\ = (count(11) & (count(12) & (!count[10] & !count(9))))
-- count(10) = DFFEAS(\Equal0~0\, GLOBAL(\clkin~combout\), VCC, , , \Add0~10_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	dataa => count(11),
	datab => count(12),
	datac => \Add0~10_combout\,
	datad => count(9),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0\,
	regout => count(10));

-- Location: LC_X6_Y2_N4
\Add0~5\ : maxii_lcell
-- Equation(s):
-- \Add0~5_combout\ = (count(11) $ (((!\Add0~37\ & \Add0~12\) # (\Add0~37\ & \Add0~12COUT1_134\))))
-- \Add0~7\ = CARRY(((!\Add0~12COUT1_134\) # (!count(11))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(11),
	cin => \Add0~37\,
	cin0 => \Add0~12\,
	cin1 => \Add0~12COUT1_134\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~5_combout\,
	cout => \Add0~7\);

-- Location: LC_X6_Y3_N8
\count[11]\ : maxii_lcell
-- Equation(s):
-- count(11) = DFFEAS((((!\Equal0~7_combout\ & \Add0~5_combout\))), GLOBAL(\clkin~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datac => \Equal0~7_combout\,
	datad => \Add0~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(11));

-- Location: LC_X6_Y2_N9
\Add0~80\ : maxii_lcell
-- Equation(s):
-- \Add0~80_combout\ = (count(16) $ ((!(!\Add0~7\ & \Add0~77\) # (\Add0~7\ & \Add0~77COUT1_138\))))
-- \Add0~82\ = CARRY(((count(16) & !\Add0~77COUT1_138\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(16),
	cin => \Add0~7\,
	cin0 => \Add0~77\,
	cin1 => \Add0~77COUT1_138\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~80_combout\,
	cout => \Add0~82\);

-- Location: LC_X7_Y3_N6
\count[16]\ : maxii_lcell
-- Equation(s):
-- count(16) = DFFEAS((!\Equal0~7_combout\ & (((\Add0~80_combout\)))), GLOBAL(\clkin~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	dataa => \Equal0~7_combout\,
	datac => \Add0~80_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(16));

-- Location: LC_X7_Y2_N0
\Add0~95\ : maxii_lcell
-- Equation(s):
-- \Add0~95_combout\ = (count(17) $ ((\Add0~82\)))
-- \Add0~97\ = CARRY(((!\Add0~82\) # (!count(17))))
-- \Add0~97COUT1_139\ = CARRY(((!\Add0~82\) # (!count(17))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(17),
	cin => \Add0~82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~95_combout\,
	cout0 => \Add0~97\,
	cout1 => \Add0~97COUT1_139\);

-- Location: LC_X7_Y3_N9
\count[17]\ : maxii_lcell
-- Equation(s):
-- \Equal0~5\ = (count(19) & (count(16) & (!count[17] & count(18))))
-- count(17) = DFFEAS(\Equal0~5\, GLOBAL(\clkin~combout\), VCC, , , \Add0~95_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	dataa => count(19),
	datab => count(16),
	datac => \Add0~95_combout\,
	datad => count(18),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~5\,
	regout => count(17));

-- Location: LC_X7_Y2_N1
\Add0~85\ : maxii_lcell
-- Equation(s):
-- \Add0~85_combout\ = count(18) $ ((((!(!\Add0~82\ & \Add0~97\) # (\Add0~82\ & \Add0~97COUT1_139\)))))
-- \Add0~87\ = CARRY((count(18) & ((!\Add0~97\))))
-- \Add0~87COUT1_140\ = CARRY((count(18) & ((!\Add0~97COUT1_139\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count(18),
	cin => \Add0~82\,
	cin0 => \Add0~97\,
	cin1 => \Add0~97COUT1_139\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~85_combout\,
	cout0 => \Add0~87\,
	cout1 => \Add0~87COUT1_140\);

-- Location: LC_X7_Y2_N8
\count[18]\ : maxii_lcell
-- Equation(s):
-- count(18) = DFFEAS((((!\Equal0~7_combout\ & \Add0~85_combout\))), GLOBAL(\clkin~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datac => \Equal0~7_combout\,
	datad => \Add0~85_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(18));

-- Location: LC_X7_Y2_N2
\Add0~90\ : maxii_lcell
-- Equation(s):
-- \Add0~90_combout\ = (count(19) $ (((!\Add0~82\ & \Add0~87\) # (\Add0~82\ & \Add0~87COUT1_140\))))
-- \Add0~92\ = CARRY(((!\Add0~87\) # (!count(19))))
-- \Add0~92COUT1_141\ = CARRY(((!\Add0~87COUT1_140\) # (!count(19))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(19),
	cin => \Add0~82\,
	cin0 => \Add0~87\,
	cin1 => \Add0~87COUT1_140\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~90_combout\,
	cout0 => \Add0~92\,
	cout1 => \Add0~92COUT1_141\);

-- Location: LC_X7_Y3_N5
\count[19]\ : maxii_lcell
-- Equation(s):
-- count(19) = DFFEAS((((!\Equal0~7_combout\ & \Add0~90_combout\))), GLOBAL(\clkin~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datac => \Equal0~7_combout\,
	datad => \Add0~90_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(19));

-- Location: LC_X7_Y2_N3
\Add0~105\ : maxii_lcell
-- Equation(s):
-- \Add0~105_combout\ = (count(20) $ ((!(!\Add0~82\ & \Add0~92\) # (\Add0~82\ & \Add0~92COUT1_141\))))
-- \Add0~107\ = CARRY(((count(20) & !\Add0~92\)))
-- \Add0~107COUT1_142\ = CARRY(((count(20) & !\Add0~92COUT1_141\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(20),
	cin => \Add0~82\,
	cin0 => \Add0~92\,
	cin1 => \Add0~92COUT1_141\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~105_combout\,
	cout0 => \Add0~107\,
	cout1 => \Add0~107COUT1_142\);

-- Location: LC_X6_Y3_N7
\count[20]\ : maxii_lcell
-- Equation(s):
-- count(20) = DFFEAS((((!\Equal0~7_combout\ & \Add0~105_combout\))), GLOBAL(\clkin~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datac => \Equal0~7_combout\,
	datad => \Add0~105_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(20));

-- Location: LC_X7_Y2_N4
\Add0~110\ : maxii_lcell
-- Equation(s):
-- \Add0~110_combout\ = count(21) $ (((((!\Add0~82\ & \Add0~107\) # (\Add0~82\ & \Add0~107COUT1_142\)))))
-- \Add0~112\ = CARRY(((!\Add0~107COUT1_142\)) # (!count(21)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	cin => \Add0~82\,
	cin0 => \Add0~107\,
	cin1 => \Add0~107COUT1_142\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~110_combout\,
	cout => \Add0~112\);

-- Location: LC_X7_Y3_N7
\count[21]\ : maxii_lcell
-- Equation(s):
-- count(21) = DFFEAS((((!\Equal0~7_combout\ & \Add0~110_combout\))), GLOBAL(\clkin~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datac => \Equal0~7_combout\,
	datad => \Add0~110_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(21));

-- Location: LC_X7_Y2_N5
\Add0~115\ : maxii_lcell
-- Equation(s):
-- \Add0~115_combout\ = (count(22) $ ((!\Add0~112\)))
-- \Add0~117\ = CARRY(((count(22) & !\Add0~112\)))
-- \Add0~117COUT1_143\ = CARRY(((count(22) & !\Add0~112\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(22),
	cin => \Add0~112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~115_combout\,
	cout0 => \Add0~117\,
	cout1 => \Add0~117COUT1_143\);

-- Location: LC_X7_Y2_N9
\count[22]\ : maxii_lcell
-- Equation(s):
-- count(22) = DFFEAS((((\Add0~115_combout\ & !\Equal0~7_combout\))), GLOBAL(\clkin~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datac => \Add0~115_combout\,
	datad => \Equal0~7_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(22));

-- Location: LC_X7_Y2_N6
\Add0~120\ : maxii_lcell
-- Equation(s):
-- \Add0~120_combout\ = (count(23) $ (((!\Add0~112\ & \Add0~117\) # (\Add0~112\ & \Add0~117COUT1_143\))))
-- \Add0~122\ = CARRY(((!\Add0~117\) # (!count(23))))
-- \Add0~122COUT1_144\ = CARRY(((!\Add0~117COUT1_143\) # (!count(23))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(23),
	cin => \Add0~112\,
	cin0 => \Add0~117\,
	cin1 => \Add0~117COUT1_143\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~120_combout\,
	cout0 => \Add0~122\,
	cout1 => \Add0~122COUT1_144\);

-- Location: LC_X7_Y3_N8
\count[23]\ : maxii_lcell
-- Equation(s):
-- \Equal0~6\ = (count(21) & (count(20) & (!count[23] & count(22))))
-- count(23) = DFFEAS(\Equal0~6\, GLOBAL(\clkin~combout\), VCC, , , \Add0~120_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	dataa => count(21),
	datab => count(20),
	datac => \Add0~120_combout\,
	datad => count(22),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~6\,
	regout => count(23));

-- Location: LC_X7_Y2_N7
\Add0~100\ : maxii_lcell
-- Equation(s):
-- \Add0~100_combout\ = (((!\Add0~112\ & \Add0~122\) # (\Add0~112\ & \Add0~122COUT1_144\) $ (!count(24))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => count(24),
	cin => \Add0~112\,
	cin0 => \Add0~122\,
	cin1 => \Add0~122COUT1_144\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~100_combout\);

-- Location: LC_X6_Y3_N4
\count[24]\ : maxii_lcell
-- Equation(s):
-- count(24) = DFFEAS((((\Add0~100_combout\ & !\Equal0~7_combout\))), GLOBAL(\clkin~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datac => \Add0~100_combout\,
	datad => \Equal0~7_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(24));

-- Location: LC_X6_Y3_N0
\Equal0~4\ : maxii_lcell
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1\ & (\Equal0~3\ & (\Equal0~0\ & \Equal0~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1\,
	datab => \Equal0~3\,
	datac => \Equal0~0\,
	datad => \Equal0~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~4_combout\);

-- Location: LC_X6_Y3_N1
\Equal0~7\ : maxii_lcell
-- Equation(s):
-- \Equal0~7_combout\ = (count(24) & (\Equal0~6\ & (\Equal0~5\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count(24),
	datab => \Equal0~6\,
	datac => \Equal0~5\,
	datad => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~7_combout\);

-- Location: LC_X6_Y3_N3
clkint : maxii_lcell
-- Equation(s):
-- \clkint~regout\ = DFFEAS(\clkint~regout\ $ ((((\Equal0~7_combout\)))), GLOBAL(\clkin~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	dataa => \clkint~regout\,
	datad => \Equal0~7_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clkint~regout\);

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\clkout~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \clkint~regout\,
	oe => VCC,
	padio => ww_clkout);
END structure;


