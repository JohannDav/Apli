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

-- DATE "01/11/2026 21:49:54"

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

ENTITY 	nombre_switch IS
    PORT (
	E3 : IN std_logic;
	E2 : IN std_logic;
	E1 : IN std_logic;
	E0 : IN std_logic;
	salida : OUT std_logic_vector(15 DOWNTO 0)
	);
END nombre_switch;

-- Design Ports Information


ARCHITECTURE structure OF nombre_switch IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_E3 : std_logic;
SIGNAL ww_E2 : std_logic;
SIGNAL ww_E1 : std_logic;
SIGNAL ww_E0 : std_logic;
SIGNAL ww_salida : std_logic_vector(15 DOWNTO 0);
SIGNAL \E0~combout\ : std_logic;
SIGNAL \E1~combout\ : std_logic;
SIGNAL \E2~combout\ : std_logic;
SIGNAL \E3~combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;

BEGIN

ww_E3 <= E3;
ww_E2 <= E2;
ww_E1 <= E1;
ww_E0 <= E0;
salida <= ww_salida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux15~0_combout\ <= NOT \Mux15~0_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\E0~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_E0,
	combout => \E0~combout\);

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\E1~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_E1,
	combout => \E1~combout\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\E2~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_E2,
	combout => \E2~combout\);

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\E3~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_E3,
	combout => \E3~combout\);

-- Location: LC_X6_Y4_N1
\Mux15~0\ : maxii_lcell
-- Equation(s):
-- \Mux15~0_combout\ = (\E1~combout\ & (((\E3~combout\)) # (!\E0~combout\))) # (!\E1~combout\ & ((\E2~combout\) # ((!\E0~combout\ & \E3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fd74",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E0~combout\,
	datab => \E1~combout\,
	datac => \E2~combout\,
	datad => \E3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~0_combout\);

-- Location: LC_X6_Y4_N7
\Mux13~0\ : maxii_lcell
-- Equation(s):
-- \Mux13~0_combout\ = (!\E3~combout\ & (\E1~combout\ $ (((\E0~combout\) # (\E2~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0036",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E0~combout\,
	datab => \E1~combout\,
	datac => \E2~combout\,
	datad => \E3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~0_combout\);

-- Location: LC_X6_Y4_N8
\Mux10~0\ : maxii_lcell
-- Equation(s):
-- \Mux10~0_combout\ = (\E0~combout\ & ((\E1~combout\ & ((!\E3~combout\))) # (!\E1~combout\ & (!\E2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "028a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E0~combout\,
	datab => \E1~combout\,
	datac => \E2~combout\,
	datad => \E3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~0_combout\);

-- Location: LC_X6_Y4_N9
\Mux9~0\ : maxii_lcell
-- Equation(s):
-- \Mux9~0_combout\ = (\E0~combout\ & (!\E1~combout\ & ((!\E3~combout\)))) # (!\E0~combout\ & ((\E2~combout\ & ((!\E3~combout\))) # (!\E2~combout\ & (\E1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0476",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E0~combout\,
	datab => \E1~combout\,
	datac => \E2~combout\,
	datad => \E3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux9~0_combout\);

-- Location: LC_X6_Y4_N0
\Mux7~0\ : maxii_lcell
-- Equation(s):
-- \Mux7~0_combout\ = (\E2~combout\ & (((\E3~combout\)))) # (!\E2~combout\ & (\E1~combout\ & (\E0~combout\ $ (!\E3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f804",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E0~combout\,
	datab => \E1~combout\,
	datac => \E2~combout\,
	datad => \E3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~0_combout\);

-- Location: LC_X6_Y4_N4
\Mux6~0\ : maxii_lcell
-- Equation(s):
-- \Mux6~0_combout\ = (!\E0~combout\ & (\E1~combout\ & (!\E2~combout\ & !\E3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E0~combout\,
	datab => \E1~combout\,
	datac => \E2~combout\,
	datad => \E3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~0_combout\);

-- Location: LC_X6_Y4_N3
\Mux5~0\ : maxii_lcell
-- Equation(s):
-- \Mux5~0_combout\ = (\E0~combout\ & (!\E1~combout\ & (\E2~combout\ & !\E3~combout\))) # (!\E0~combout\ & ((\E2~combout\ $ (\E3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0570",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E0~combout\,
	datab => \E1~combout\,
	datac => \E2~combout\,
	datad => \E3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~0_combout\);

-- Location: LC_X6_Y4_N2
\Mux4~0\ : maxii_lcell
-- Equation(s):
-- \Mux4~0_combout\ = (\E1~combout\ & (((\E3~combout\)) # (!\E0~combout\))) # (!\E1~combout\ & ((\E2~combout\) # (\E0~combout\ $ (\E3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fd76",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E0~combout\,
	datab => \E1~combout\,
	datac => \E2~combout\,
	datad => \E3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~0_combout\);

-- Location: LC_X6_Y4_N6
\Mux3~0\ : maxii_lcell
-- Equation(s):
-- \Mux3~0_combout\ = (!\E0~combout\ & (!\E1~combout\ & (!\E2~combout\ & \E3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E0~combout\,
	datab => \E1~combout\,
	datac => \E2~combout\,
	datad => \E3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~0_combout\);

-- Location: LC_X7_Y4_N4
\Mux2~0\ : maxii_lcell
-- Equation(s):
-- \Mux2~0_combout\ = ((\E2~combout\ & (!\E1~combout\ & !\E3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \E2~combout\,
	datac => \E1~combout\,
	datad => \E3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~0_combout\);

-- Location: LC_X6_Y4_N5
\Mux0~0\ : maxii_lcell
-- Equation(s):
-- \Mux0~0_combout\ = (!\E0~combout\ & (\E1~combout\ & (\E2~combout\ $ (\E3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0440",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E0~combout\,
	datab => \E1~combout\,
	datac => \E2~combout\,
	datad => \E3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~0_combout\);

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salida[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux15~0_combout\,
	oe => VCC,
	padio => ww_salida(0));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salida[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux15~0_combout\,
	oe => VCC,
	padio => ww_salida(1));

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salida[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux13~0_combout\,
	oe => VCC,
	padio => ww_salida(2));

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salida[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux13~0_combout\,
	oe => VCC,
	padio => ww_salida(3));

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salida[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux15~0_combout\,
	oe => VCC,
	padio => ww_salida(4));

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salida[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux10~0_combout\,
	oe => VCC,
	padio => ww_salida(5));

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salida[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux9~0_combout\,
	oe => VCC,
	padio => ww_salida(6));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salida[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux9~0_combout\,
	oe => VCC,
	padio => ww_salida(7));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salida[8]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux7~0_combout\,
	oe => VCC,
	padio => ww_salida(8));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salida[9]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux6~0_combout\,
	oe => VCC,
	padio => ww_salida(9));

-- Location: PIN_56,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salida[10]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux5~0_combout\,
	oe => VCC,
	padio => ww_salida(10));

-- Location: PIN_54,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salida[11]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux4~0_combout\,
	oe => VCC,
	padio => ww_salida(11));

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salida[12]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux3~0_combout\,
	oe => VCC,
	padio => ww_salida(12));

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salida[13]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux2~0_combout\,
	oe => VCC,
	padio => ww_salida(13));

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salida[14]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux4~0_combout\,
	oe => VCC,
	padio => ww_salida(14));

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salida[15]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux0~0_combout\,
	oe => VCC,
	padio => ww_salida(15));
END structure;


