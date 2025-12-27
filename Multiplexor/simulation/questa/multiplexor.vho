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

-- DATE "12/17/2025 12:17:09"

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

ENTITY 	multiplexor IS
    PORT (
	entrada_a : IN std_logic_vector(1 DOWNTO 0);
	entrada_b : IN std_logic_vector(1 DOWNTO 0);
	selector : IN std_logic_vector(2 DOWNTO 0);
	resultado : BUFFER std_logic_vector(4 DOWNTO 0)
	);
END multiplexor;

-- Design Ports Information


ARCHITECTURE structure OF multiplexor IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_entrada_a : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_entrada_b : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_selector : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_resultado : std_logic_vector(4 DOWNTO 0);
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \INST_restadorCompleto|dif_parcial~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \INST_restadorCompleto|prestamo_salida~combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux1~6_combout\ : std_logic;
SIGNAL \Mux1~7_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \INST_sumadorCompleto|acarreo_salida~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \entrada_b~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \entrada_a~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \selector~combout\ : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_entrada_a <= entrada_a;
ww_entrada_b <= entrada_b;
ww_selector <= selector;
resultado <= ww_resultado;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\selector[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_selector(0),
	combout => \selector~combout\(0));

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\selector[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_selector(2),
	combout => \selector~combout\(2));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\selector[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_selector(1),
	combout => \selector~combout\(1));

-- Location: LC_X3_Y3_N5
\Mux2~0\ : maxii_lcell
-- Equation(s):
-- \Mux2~0_combout\ = (\selector~combout\(2)) # ((\selector~combout\(0) & (\selector~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ecec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \selector~combout\(0),
	datab => \selector~combout\(2),
	datac => \selector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~0_combout\);

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entrada_b[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_entrada_b(0),
	combout => \entrada_b~combout\(0));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entrada_a[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_entrada_a(0),
	combout => \entrada_a~combout\(0));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entrada_b[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_entrada_b(1),
	combout => \entrada_b~combout\(1));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entrada_a[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_entrada_a(1),
	combout => \entrada_a~combout\(1));

-- Location: LC_X2_Y3_N4
\INST_restadorCompleto|dif_parcial~0\ : maxii_lcell
-- Equation(s):
-- \INST_restadorCompleto|dif_parcial~0_combout\ = (\entrada_b~combout\(1) $ ((\entrada_a~combout\(1))))

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
	datab => \entrada_b~combout\(1),
	datac => \entrada_a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \INST_restadorCompleto|dif_parcial~0_combout\);

-- Location: LC_X3_Y3_N0
\Mux2~1\ : maxii_lcell
-- Equation(s):
-- \Mux2~1_combout\ = (\selector~combout\(1) & ((\INST_restadorCompleto|dif_parcial~0_combout\) # (\entrada_b~combout\(0) $ (\entrada_a~combout\(0))))) # (!\selector~combout\(1) & (\entrada_b~combout\(0) $ ((\entrada_a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f666",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b~combout\(0),
	datab => \entrada_a~combout\(0),
	datac => \selector~combout\(1),
	datad => \INST_restadorCompleto|dif_parcial~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~1_combout\);

-- Location: LC_X3_Y3_N1
\INST_restadorCompleto|prestamo_salida\ : maxii_lcell
-- Equation(s):
-- \INST_restadorCompleto|prestamo_salida~combout\ = (\entrada_b~combout\(1) & (((\entrada_b~combout\(0) & !\entrada_a~combout\(0))) # (!\entrada_a~combout\(1)))) # (!\entrada_b~combout\(1) & (\entrada_b~combout\(0) & (!\entrada_a~combout\(1) & 
-- !\entrada_a~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c8e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b~combout\(0),
	datab => \entrada_b~combout\(1),
	datac => \entrada_a~combout\(1),
	datad => \entrada_a~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \INST_restadorCompleto|prestamo_salida~combout\);

-- Location: LC_X3_Y3_N6
\Mux2~2\ : maxii_lcell
-- Equation(s):
-- \Mux2~2_combout\ = (!\Mux2~0_combout\ & (\Mux2~1_combout\ & ((!\INST_restadorCompleto|prestamo_salida~combout\) # (!\selector~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0444",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux2~1_combout\,
	datac => \selector~combout\(1),
	datad => \INST_restadorCompleto|prestamo_salida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~2_combout\);

-- Location: LC_X3_Y3_N3
\Mux1~6\ : maxii_lcell
-- Equation(s):
-- \Mux1~6_combout\ = (\selector~combout\(1) & (\entrada_a~combout\(0) $ (((\entrada_b~combout\(0)) # (\selector~combout\(0)))))) # (!\selector~combout\(1) & (((\entrada_a~combout\(0)) # (!\selector~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c6f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b~combout\(0),
	datab => \entrada_a~combout\(0),
	datac => \selector~combout\(1),
	datad => \selector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~6_combout\);

-- Location: LC_X3_Y3_N8
\Mux1~7\ : maxii_lcell
-- Equation(s):
-- \Mux1~7_combout\ = (\selector~combout\(0) & (\Mux1~6_combout\ $ (((\INST_restadorCompleto|dif_parcial~0_combout\ & !\selector~combout\(1)))))) # (!\selector~combout\(0) & ((\INST_restadorCompleto|dif_parcial~0_combout\ & ((\Mux1~6_combout\))) # 
-- (!\INST_restadorCompleto|dif_parcial~0_combout\ & (\selector~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f618",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \selector~combout\(0),
	datab => \INST_restadorCompleto|dif_parcial~0_combout\,
	datac => \selector~combout\(1),
	datad => \Mux1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~7_combout\);

-- Location: LC_X3_Y3_N4
\Mux1~5\ : maxii_lcell
-- Equation(s):
-- \Mux1~5_combout\ = (\entrada_a~combout\(0) & (\selector~combout\(1) $ (((\entrada_b~combout\(0)) # (\selector~combout\(0)))))) # (!\entrada_a~combout\(0) & ((\entrada_b~combout\(0) & ((\selector~combout\(1)) # (\selector~combout\(0)))) # 
-- (!\entrada_b~combout\(0) & (\selector~combout\(1) & \selector~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3e68",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b~combout\(0),
	datab => \entrada_a~combout\(0),
	datac => \selector~combout\(1),
	datad => \selector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~5_combout\);

-- Location: LC_X4_Y3_N0
\Mux1~4\ : maxii_lcell
-- Equation(s):
-- \Mux1~4_combout\ = (\Mux1~5_combout\ $ (((\Mux1~7_combout\ & !\selector~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f50a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~7_combout\,
	datac => \selector~combout\(2),
	datad => \Mux1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~4_combout\);

-- Location: LC_X3_Y3_N7
\Mux0~0\ : maxii_lcell
-- Equation(s):
-- \Mux0~0_combout\ = (\entrada_a~combout\(1) & (\selector~combout\(1) $ (((\entrada_b~combout\(1)) # (\selector~combout\(0)))))) # (!\entrada_a~combout\(1) & ((\entrada_b~combout\(1) & ((\selector~combout\(1)) # (\selector~combout\(0)))) # 
-- (!\entrada_b~combout\(1) & (\selector~combout\(1) & \selector~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5e68",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a~combout\(1),
	datab => \entrada_b~combout\(1),
	datac => \selector~combout\(1),
	datad => \selector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~0_combout\);

-- Location: LC_X3_Y3_N9
\INST_sumadorCompleto|acarreo_salida~0\ : maxii_lcell
-- Equation(s):
-- \INST_sumadorCompleto|acarreo_salida~0_combout\ = (\entrada_b~combout\(1) & ((\entrada_a~combout\(1)) # ((\entrada_b~combout\(0) & \entrada_a~combout\(0))))) # (!\entrada_b~combout\(1) & (\entrada_b~combout\(0) & (\entrada_a~combout\(1) & 
-- \entrada_a~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b~combout\(0),
	datab => \entrada_b~combout\(1),
	datac => \entrada_a~combout\(1),
	datad => \entrada_a~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \INST_sumadorCompleto|acarreo_salida~0_combout\);

-- Location: LC_X3_Y3_N2
\Mux0~1\ : maxii_lcell
-- Equation(s):
-- \Mux0~1_combout\ = (\selector~combout\(0) & (((!\selector~combout\(1) & \INST_restadorCompleto|prestamo_salida~combout\)))) # (!\selector~combout\(0) & ((\selector~combout\(1) & ((\INST_restadorCompleto|prestamo_salida~combout\))) # 
-- (!\selector~combout\(1) & (\INST_sumadorCompleto|acarreo_salida~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5e04",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \selector~combout\(0),
	datab => \INST_sumadorCompleto|acarreo_salida~0_combout\,
	datac => \selector~combout\(1),
	datad => \INST_restadorCompleto|prestamo_salida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~1_combout\);

-- Location: LC_X4_Y3_N2
\Mux0~2\ : maxii_lcell
-- Equation(s):
-- \Mux0~2_combout\ = ((\selector~combout\(2) & (\Mux0~0_combout\)) # (!\selector~combout\(2) & ((\Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~0_combout\,
	datac => \selector~combout\(2),
	datad => \Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~2_combout\);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\resultado[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux2~2_combout\,
	oe => VCC,
	padio => ww_resultado(0));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\resultado[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux1~4_combout\,
	oe => VCC,
	padio => ww_resultado(1));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\resultado[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux0~2_combout\,
	oe => VCC,
	padio => ww_resultado(2));

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\resultado[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_resultado(3));

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\resultado[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_resultado(4));
END structure;


