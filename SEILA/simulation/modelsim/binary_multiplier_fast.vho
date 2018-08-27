-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1.78 SJ Web Edition"

-- DATE "08/27/2018 17:44:05"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	binary_multiplier IS
    PORT (
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	HEX0 : OUT std_logic_vector(7 DOWNTO 0);
	HEX1 : OUT std_logic_vector(7 DOWNTO 0)
	);
END binary_multiplier;

-- Design Ports Information
-- KEY[0]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[7]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[0]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[1]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[2]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[3]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[4]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[5]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[6]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[7]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- KEY[1]	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF binary_multiplier IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(7 DOWNTO 0);
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \k~6_combout\ : std_logic;
SIGNAL \k~25_combout\ : std_logic;
SIGNAL \k~26_combout\ : std_logic;
SIGNAL \k~27_combout\ : std_logic;
SIGNAL \k~70_combout\ : std_logic;
SIGNAL \k~2_combout\ : std_logic;
SIGNAL \k~3_combout\ : std_logic;
SIGNAL \k~4_combout\ : std_logic;
SIGNAL \k~15_combout\ : std_logic;
SIGNAL \k~16_combout\ : std_logic;
SIGNAL \k~17_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \k~8_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \datapath_state_func~0_combout\ : std_logic;
SIGNAL \k~5_combout\ : std_logic;
SIGNAL \k~7_combout\ : std_logic;
SIGNAL \k~9_combout\ : std_logic;
SIGNAL \k~0_combout\ : std_logic;
SIGNAL \k~10_combout\ : std_logic;
SIGNAL \k~11_combout\ : std_logic;
SIGNAL \k~12_combout\ : std_logic;
SIGNAL \k~13_combout\ : std_logic;
SIGNAL \k~14_combout\ : std_logic;
SIGNAL \k~18_combout\ : std_logic;
SIGNAL \k[0]~feeder_combout\ : std_logic;
SIGNAL \k~1_combout\ : std_logic;
SIGNAL \k[1]~feeder_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \k~50_combout\ : std_logic;
SIGNAL \k~71_combout\ : std_logic;
SIGNAL \k~72_combout\ : std_logic;
SIGNAL \k~62_combout\ : std_logic;
SIGNAL \k~63_combout\ : std_logic;
SIGNAL \k~19_combout\ : std_logic;
SIGNAL \k~64_combout\ : std_logic;
SIGNAL \k~67_combout\ : std_logic;
SIGNAL \k~44_combout\ : std_logic;
SIGNAL \k~66_combout\ : std_logic;
SIGNAL \k~68_combout\ : std_logic;
SIGNAL \k~69_combout\ : std_logic;
SIGNAL \k~73_combout\ : std_logic;
SIGNAL \k~53_combout\ : std_logic;
SIGNAL \k~54_combout\ : std_logic;
SIGNAL \k~55_combout\ : std_logic;
SIGNAL \k~56_combout\ : std_logic;
SIGNAL \k~57_combout\ : std_logic;
SIGNAL \k~58_combout\ : std_logic;
SIGNAL \k~59_combout\ : std_logic;
SIGNAL \k~60_combout\ : std_logic;
SIGNAL \k~43_combout\ : std_logic;
SIGNAL \k~45_combout\ : std_logic;
SIGNAL \k~36_combout\ : std_logic;
SIGNAL \k~51_combout\ : std_logic;
SIGNAL \k~29_combout\ : std_logic;
SIGNAL \k~47_combout\ : std_logic;
SIGNAL \k~46_combout\ : std_logic;
SIGNAL \k~48_combout\ : std_logic;
SIGNAL \k~49_combout\ : std_logic;
SIGNAL \k~52_combout\ : std_logic;
SIGNAL \k~61_combout\ : std_logic;
SIGNAL \k~21_combout\ : std_logic;
SIGNAL \k~20_combout\ : std_logic;
SIGNAL \k~22_combout\ : std_logic;
SIGNAL \k~23_combout\ : std_logic;
SIGNAL \k~24_combout\ : std_logic;
SIGNAL \k~28_combout\ : std_logic;
SIGNAL \k~32_combout\ : std_logic;
SIGNAL \k~31_combout\ : std_logic;
SIGNAL \k~30_combout\ : std_logic;
SIGNAL \k~33_combout\ : std_logic;
SIGNAL \k~37_combout\ : std_logic;
SIGNAL \k~38_combout\ : std_logic;
SIGNAL \k~39_combout\ : std_logic;
SIGNAL \k~34_combout\ : std_logic;
SIGNAL \k~35_combout\ : std_logic;
SIGNAL \k~40_combout\ : std_logic;
SIGNAL \k~41_combout\ : std_logic;
SIGNAL \k~42_combout\ : std_logic;
SIGNAL \k~65_combout\ : std_logic;
SIGNAL \k~74_combout\ : std_logic;
SIGNAL \k~75_combout\ : std_logic;
SIGNAL \k~76_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL k : std_logic_vector(7 DOWNTO 0);
SIGNAL Q : std_logic_vector(3 DOWNTO 0);
SIGNAL B : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW~combout\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_SW~combout\ : std_logic_vector(9 DOWNTO 9);
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_KEY <= KEY;
ww_SW <= SW;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_SW~combout\(9) <= NOT \SW~combout\(9);
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;

-- Location: LCCOMB_X45_Y10_N4
\Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!B(0) & !B(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => B(0),
	datad => B(1),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X44_Y10_N22
\k~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~6_combout\ = Q(2) $ (Q(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Q(2),
	datad => Q(1),
	combout => \k~6_combout\);

-- Location: LCCOMB_X42_Y10_N24
\k~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~25_combout\ = (Q(1) & ((B(0) & ((!B(2)))) # (!B(0) & (!Q(2) & B(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B(0),
	datab => Q(2),
	datac => B(2),
	datad => Q(1),
	combout => \k~25_combout\);

-- Location: LCCOMB_X42_Y10_N22
\k~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~26_combout\ = (B(2) & ((B(0) & (Q(1))) # (!B(0) & ((Q(2)))))) # (!B(2) & (((B(0) & Q(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B(2),
	datab => Q(1),
	datac => B(0),
	datad => Q(2),
	combout => \k~26_combout\);

-- Location: LCCOMB_X42_Y10_N20
\k~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~27_combout\ = (Q(3) & (!\k~26_combout\ & ((!\k~25_combout\) # (!Q(0))))) # (!Q(3) & (((\k~25_combout\ & \k~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => Q(0),
	datac => \k~25_combout\,
	datad => \k~26_combout\,
	combout => \k~27_combout\);

-- Location: LCCOMB_X46_Y10_N10
\k~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~70_combout\ = (!Q(3) & (B(3) & Q(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(3),
	datac => B(3),
	datad => Q(2),
	combout => \k~70_combout\);

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(1),
	combout => \KEY~combout\(1));

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(5),
	combout => \SW~combout\(5));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(9),
	combout => \SW~combout\(9));

-- Location: LCFF_X44_Y10_N29
\Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(1),
	sdata => \SW~combout\(5),
	sload => VCC,
	ena => \SW~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Q(0));

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(2),
	combout => \SW~combout\(2));

-- Location: LCFF_X45_Y10_N25
\B[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(1),
	sdata => \SW~combout\(2),
	sload => VCC,
	ena => \ALT_INV_SW~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => B(2));

-- Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(6),
	combout => \SW~combout\(6));

-- Location: LCFF_X44_Y10_N31
\Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(1),
	sdata => \SW~combout\(6),
	sload => VCC,
	ena => \SW~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Q(1));

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(1),
	combout => \SW~combout\(1));

-- Location: LCFF_X45_Y10_N19
\B[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(1),
	sdata => \SW~combout\(1),
	sload => VCC,
	ena => \ALT_INV_SW~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => B(1));

-- Location: LCCOMB_X47_Y10_N24
\k~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~2_combout\ = (Q(1) & B(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Q(1),
	datad => B(1),
	combout => \k~2_combout\);

-- Location: LCCOMB_X46_Y10_N24
\k~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~3_combout\ = (Q(0) & (B(2) $ (((!B(0) & \k~2_combout\))))) # (!Q(0) & (((\k~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B(0),
	datab => Q(0),
	datac => B(2),
	datad => \k~2_combout\,
	combout => \k~3_combout\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(7),
	combout => \SW~combout\(7));

-- Location: LCFF_X44_Y10_N5
\Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(1),
	sdata => \SW~combout\(7),
	sload => VCC,
	ena => \SW~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Q(2));

-- Location: LCCOMB_X46_Y10_N0
\k~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~4_combout\ = \k~3_combout\ $ (((B(0) & Q(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B(0),
	datac => \k~3_combout\,
	datad => Q(2),
	combout => \k~4_combout\);

-- Location: LCFF_X46_Y10_N1
\k[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(1),
	datain => \k~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => k(2));

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(8),
	combout => \SW~combout\(8));

-- Location: LCFF_X44_Y10_N15
\Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(1),
	sdata => \SW~combout\(8),
	sload => VCC,
	ena => \SW~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Q(3));

-- Location: LCCOMB_X46_Y10_N6
\k~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~15_combout\ = (B(1) & Q(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => B(1),
	datad => Q(2),
	combout => \k~15_combout\);

-- Location: LCCOMB_X46_Y10_N4
\k~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~16_combout\ = (B(0) & (Q(3) $ (((!Q(1) & \k~15_combout\))))) # (!B(0) & (((\k~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B(0),
	datab => Q(3),
	datac => Q(1),
	datad => \k~15_combout\,
	combout => \k~16_combout\);

-- Location: LCCOMB_X46_Y10_N30
\k~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~17_combout\ = \k~16_combout\ $ (((B(2) & Q(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B(2),
	datac => \k~16_combout\,
	datad => Q(1),
	combout => \k~17_combout\);

-- Location: LCCOMB_X45_Y10_N30
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!Q(3) & (Q(0) & (!Q(2) & !Q(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => Q(0),
	datac => Q(2),
	datad => Q(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X45_Y10_N8
\k~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~8_combout\ = (Q(2) & (Q(1) & !Q(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(2),
	datac => Q(1),
	datad => Q(3),
	combout => \k~8_combout\);

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(3),
	combout => \SW~combout\(3));

-- Location: LCFF_X44_Y10_N1
\B[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(1),
	sdata => \SW~combout\(3),
	sload => VCC,
	ena => \ALT_INV_SW~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => B(3));

-- Location: LCCOMB_X44_Y10_N10
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!Q(0) & (!Q(3) & (!Q(2) & !Q(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => Q(3),
	datac => Q(2),
	datad => Q(1),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X44_Y10_N16
\datapath_state_func~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath_state_func~0_combout\ = (\Equal0~1_combout\) # ((\Equal1~0_combout\ & (!B(2) & !B(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => B(2),
	datac => B(3),
	datad => \Equal0~1_combout\,
	combout => \datapath_state_func~0_combout\);

-- Location: LCCOMB_X45_Y10_N6
\k~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~5_combout\ = B(1) $ (B(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => B(1),
	datad => B(2),
	combout => \k~5_combout\);

-- Location: LCCOMB_X44_Y10_N0
\k~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~7_combout\ = (\k~6_combout\ & (Q(3) $ (B(3) $ (\k~5_combout\)))) # (!\k~6_combout\ & (Q(3) & (!B(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k~6_combout\,
	datab => Q(3),
	datac => B(3),
	datad => \k~5_combout\,
	combout => \k~7_combout\);

-- Location: LCCOMB_X44_Y10_N8
\k~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~9_combout\ = (!\datapath_state_func~0_combout\ & ((\k~7_combout\) # ((B(3) & \k~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B(3),
	datab => \k~8_combout\,
	datac => \datapath_state_func~0_combout\,
	datad => \k~7_combout\,
	combout => \k~9_combout\);

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(0),
	combout => \SW~combout\(0));

-- Location: LCFF_X45_Y10_N15
\B[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(1),
	sdata => \SW~combout\(0),
	sload => VCC,
	ena => \ALT_INV_SW~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => B(0));

-- Location: LCCOMB_X45_Y10_N28
\k~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~0_combout\ = (B(0) & Q(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => B(0),
	datad => Q(0),
	combout => \k~0_combout\);

-- Location: LCCOMB_X44_Y10_N6
\k~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~10_combout\ = (\Equal0~0_combout\ & (B(3))) # (!\Equal0~0_combout\ & (((\k~9_combout\ & \k~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B(3),
	datab => \Equal0~0_combout\,
	datac => \k~9_combout\,
	datad => \k~0_combout\,
	combout => \k~10_combout\);

-- Location: LCCOMB_X46_Y10_N22
\k~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~11_combout\ = (B(1) & (((Q(2))))) # (!B(1) & (!Q(1) & ((Q(3)) # (Q(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(1),
	datab => B(1),
	datac => Q(3),
	datad => Q(2),
	combout => \k~11_combout\);

-- Location: LCCOMB_X46_Y10_N16
\k~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~12_combout\ = (B(1) & ((B(3) $ (\k~11_combout\)))) # (!B(1) & ((B(3) $ (!\k~11_combout\)) # (!B(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110111010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B(2),
	datab => B(1),
	datac => B(3),
	datad => \k~11_combout\,
	combout => \k~12_combout\);

-- Location: LCCOMB_X44_Y10_N24
\k~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~13_combout\ = (\datapath_state_func~0_combout\) # (\Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath_state_func~0_combout\,
	datad => \Equal0~0_combout\,
	combout => \k~13_combout\);

-- Location: LCCOMB_X45_Y10_N2
\k~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~14_combout\ = (Q(0) & (!B(0) & (\k~12_combout\ & !\k~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => B(0),
	datac => \k~12_combout\,
	datad => \k~13_combout\,
	combout => \k~14_combout\);

-- Location: LCCOMB_X45_Y10_N0
\k~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~18_combout\ = (\k~10_combout\) # ((\k~14_combout\) # ((!Q(0) & \k~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => \k~17_combout\,
	datac => \k~10_combout\,
	datad => \k~14_combout\,
	combout => \k~18_combout\);

-- Location: LCFF_X45_Y10_N1
\k[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(1),
	datain => \k~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => k(3));

-- Location: LCCOMB_X49_Y10_N0
\k[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \k[0]~feeder_combout\ = \k~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \k~0_combout\,
	combout => \k[0]~feeder_combout\);

-- Location: LCFF_X49_Y10_N1
\k[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(1),
	datain => \k[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => k(0));

-- Location: LCCOMB_X46_Y10_N14
\k~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~1_combout\ = (B(0) & (Q(1) $ (((B(1) & Q(0)))))) # (!B(0) & (B(1) & (Q(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B(0),
	datab => B(1),
	datac => Q(0),
	datad => Q(1),
	combout => \k~1_combout\);

-- Location: LCCOMB_X49_Y10_N6
\k[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \k[1]~feeder_combout\ = \k~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \k~1_combout\,
	combout => \k[1]~feeder_combout\);

-- Location: LCFF_X49_Y10_N7
\k[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(1),
	datain => \k[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => k(1));

-- Location: LCCOMB_X1_Y18_N28
\Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (k(2) & (!k(1) & (k(3) $ (!k(0))))) # (!k(2) & (k(0) & (k(3) $ (!k(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => k(2),
	datab => k(3),
	datac => k(0),
	datad => k(1),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X1_Y18_N26
\Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (k(3) & ((k(0) & ((k(1)))) # (!k(0) & (k(2))))) # (!k(3) & (k(2) & (k(0) $ (k(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => k(2),
	datab => k(3),
	datac => k(0),
	datad => k(1),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X1_Y18_N4
\Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (k(2) & (k(3) & ((k(1)) # (!k(0))))) # (!k(2) & (!k(3) & (!k(0) & k(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => k(2),
	datab => k(3),
	datac => k(0),
	datad => k(1),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X1_Y18_N6
\Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (k(0) & (k(2) $ (((!k(1)))))) # (!k(0) & ((k(2) & (!k(3) & !k(1))) # (!k(2) & (k(3) & k(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => k(2),
	datab => k(3),
	datac => k(0),
	datad => k(1),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X1_Y18_N0
\Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (k(1) & (((!k(3) & k(0))))) # (!k(1) & ((k(2) & (!k(3))) # (!k(2) & ((k(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => k(2),
	datab => k(3),
	datac => k(0),
	datad => k(1),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X1_Y18_N10
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (k(2) & (k(0) & (k(3) $ (k(1))))) # (!k(2) & (!k(3) & ((k(0)) # (k(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => k(2),
	datab => k(3),
	datac => k(0),
	datad => k(1),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X1_Y18_N12
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (k(0) & ((k(3)) # (k(2) $ (k(1))))) # (!k(0) & ((k(1)) # (k(2) $ (k(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => k(2),
	datab => k(3),
	datac => k(0),
	datad => k(1),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X45_Y10_N24
\k~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~50_combout\ = (!B(2) & (((!B(0) & !Q(0))) # (!B(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B(0),
	datab => B(1),
	datac => B(2),
	datad => Q(0),
	combout => \k~50_combout\);

-- Location: LCCOMB_X46_Y10_N12
\k~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~71_combout\ = (Q(0) & B(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datac => B(2),
	combout => \k~71_combout\);

-- Location: LCCOMB_X46_Y10_N2
\k~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~72_combout\ = (\Equal1~0_combout\ & (!\k~50_combout\ & (Q(1)))) # (!\Equal1~0_combout\ & ((\k~71_combout\) # ((!\k~50_combout\ & Q(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \k~50_combout\,
	datac => Q(1),
	datad => \k~71_combout\,
	combout => \k~72_combout\);

-- Location: LCCOMB_X45_Y10_N18
\k~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~62_combout\ = (B(1)) # ((B(0) & ((Q(0)) # (Q(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B(0),
	datab => Q(0),
	datac => B(1),
	datad => Q(1),
	combout => \k~62_combout\);

-- Location: LCCOMB_X45_Y10_N14
\k~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~63_combout\ = ((Q(2) & \k~62_combout\)) # (!\k~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k~46_combout\,
	datab => Q(2),
	datad => \k~62_combout\,
	combout => \k~63_combout\);

-- Location: LCCOMB_X44_Y10_N28
\k~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~19_combout\ = (!B(3) & (!\Equal0~0_combout\ & !\datapath_state_func~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B(3),
	datab => \Equal0~0_combout\,
	datad => \datapath_state_func~0_combout\,
	combout => \k~19_combout\);

-- Location: LCCOMB_X44_Y10_N14
\k~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~64_combout\ = (B(2) & (\k~63_combout\ & (Q(3) & \k~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B(2),
	datab => \k~63_combout\,
	datac => Q(3),
	datad => \k~19_combout\,
	combout => \k~64_combout\);

-- Location: LCCOMB_X42_Y10_N0
\k~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~67_combout\ = (Q(0) & (!B(1) & ((!B(0)) # (!Q(1))))) # (!Q(0) & (((!Q(1) & !B(0))) # (!B(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => Q(1),
	datac => B(1),
	datad => B(0),
	combout => \k~67_combout\);

-- Location: LCCOMB_X43_Y10_N6
\k~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~44_combout\ = (Q(1) & ((B(1)) # ((Q(0) & B(0))))) # (!Q(1) & (Q(0) & (B(1) & B(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => Q(1),
	datac => B(1),
	datad => B(0),
	combout => \k~44_combout\);

-- Location: LCCOMB_X43_Y10_N18
\k~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~66_combout\ = (Q(2) & (((B(2) & \k~44_combout\)))) # (!Q(2) & (!\k~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k~65_combout\,
	datab => B(2),
	datac => Q(2),
	datad => \k~44_combout\,
	combout => \k~66_combout\);

-- Location: LCCOMB_X43_Y10_N16
\k~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~68_combout\ = (\k~66_combout\) # ((!B(2) & ((\k~67_combout\) # (!Q(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(2),
	datab => B(2),
	datac => \k~67_combout\,
	datad => \k~66_combout\,
	combout => \k~68_combout\);

-- Location: LCCOMB_X43_Y10_N2
\k~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~69_combout\ = (Q(3) & (B(3) & (\k~68_combout\ & !\k~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => B(3),
	datac => \k~68_combout\,
	datad => \k~13_combout\,
	combout => \k~69_combout\);

-- Location: LCCOMB_X43_Y10_N22
\k~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~73_combout\ = (\k~64_combout\) # ((\k~69_combout\) # ((\k~70_combout\ & \k~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k~70_combout\,
	datab => \k~72_combout\,
	datac => \k~64_combout\,
	datad => \k~69_combout\,
	combout => \k~73_combout\);

-- Location: LCFF_X43_Y10_N23
\k[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(1),
	datain => \k~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => k(6));

-- Location: LCCOMB_X42_Y10_N30
\k~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~53_combout\ = (B(1) & ((Q(2)) # ((Q(0) & Q(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => Q(1),
	datac => B(1),
	datad => Q(2),
	combout => \k~53_combout\);

-- Location: LCCOMB_X42_Y10_N8
\k~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~54_combout\ = (Q(3) & (B(0) & (!B(2) & \k~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => B(0),
	datac => B(2),
	datad => \k~53_combout\,
	combout => \k~54_combout\);

-- Location: LCCOMB_X46_Y10_N28
\k~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~55_combout\ = (Q(0) & ((B(1) & ((Q(1)))) # (!B(1) & (B(0))))) # (!Q(0) & (((B(0) & Q(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => B(1),
	datac => B(0),
	datad => Q(1),
	combout => \k~55_combout\);

-- Location: LCCOMB_X46_Y10_N18
\k~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~56_combout\ = (Q(3) & ((Q(2) & (!B(1) & !\k~55_combout\)) # (!Q(2) & ((!\k~55_combout\) # (!B(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(2),
	datab => B(1),
	datac => Q(3),
	datad => \k~55_combout\,
	combout => \k~56_combout\);

-- Location: LCCOMB_X46_Y10_N20
\k~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~57_combout\ = (Q(0) & (!Q(3) & (B(0) & Q(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => Q(3),
	datac => B(0),
	datad => Q(1),
	combout => \k~57_combout\);

-- Location: LCCOMB_X46_Y10_N26
\k~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~58_combout\ = (Q(3) & (((B(0) & Q(1))))) # (!Q(3) & ((Q(1)) # ((Q(0) & B(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => Q(3),
	datac => B(0),
	datad => Q(1),
	combout => \k~58_combout\);

-- Location: LCCOMB_X46_Y10_N8
\k~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~59_combout\ = (Q(2) & ((\k~57_combout\) # ((B(1) & \k~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(2),
	datab => B(1),
	datac => \k~57_combout\,
	datad => \k~58_combout\,
	combout => \k~59_combout\);

-- Location: LCCOMB_X42_Y10_N14
\k~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~60_combout\ = (\k~54_combout\) # ((B(2) & ((\k~56_combout\) # (\k~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B(2),
	datab => \k~54_combout\,
	datac => \k~56_combout\,
	datad => \k~59_combout\,
	combout => \k~60_combout\);

-- Location: LCCOMB_X42_Y10_N18
\k~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~43_combout\ = (Q(0) & (Q(1) $ (((!B(0)) # (!B(1)))))) # (!Q(0) & (((!B(1) & !B(0))) # (!Q(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => B(1),
	datac => B(0),
	datad => Q(1),
	combout => \k~43_combout\);

-- Location: LCCOMB_X42_Y10_N4
\k~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~45_combout\ = (B(2) & (\k~43_combout\)) # (!B(2) & ((\k~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B(2),
	datab => \k~43_combout\,
	datad => \k~44_combout\,
	combout => \k~45_combout\);

-- Location: LCCOMB_X44_Y10_N30
\k~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~36_combout\ = B(1) $ (((!B(0)) # (!Q(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => B(0),
	datad => B(1),
	combout => \k~36_combout\);

-- Location: LCCOMB_X45_Y10_N12
\k~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~51_combout\ = (Q(1) & (((\k~36_combout\)))) # (!Q(1) & ((\k~50_combout\) # ((B(2) & !\k~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B(2),
	datab => Q(1),
	datac => \k~50_combout\,
	datad => \k~36_combout\,
	combout => \k~51_combout\);

-- Location: LCCOMB_X44_Y10_N20
\k~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~29_combout\ = ((!B(2) & ((!B(1)) # (!B(0))))) # (!Q(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => B(2),
	datac => B(0),
	datad => B(1),
	combout => \k~29_combout\);

-- Location: LCCOMB_X45_Y10_N16
\k~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~47_combout\ = (Q(0) & ((B(1)) # ((B(0) & !Q(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B(0),
	datab => B(1),
	datac => Q(1),
	datad => Q(0),
	combout => \k~47_combout\);

-- Location: LCCOMB_X45_Y10_N10
\k~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~46_combout\ = (((!B(0) & !Q(0))) # (!Q(1))) # (!B(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B(0),
	datab => B(1),
	datac => Q(1),
	datad => Q(0),
	combout => \k~46_combout\);

-- Location: LCCOMB_X45_Y10_N22
\k~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~48_combout\ = (B(2) & (Q(1) $ ((!\k~47_combout\)))) # (!B(2) & ((\k~46_combout\) # ((!Q(1) & !\k~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(1),
	datab => B(2),
	datac => \k~47_combout\,
	datad => \k~46_combout\,
	combout => \k~48_combout\);

-- Location: LCCOMB_X42_Y10_N10
\k~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~49_combout\ = (Q(3) & (((Q(2))))) # (!Q(3) & ((Q(2) & ((\k~48_combout\))) # (!Q(2) & (!\k~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => \k~29_combout\,
	datac => Q(2),
	datad => \k~48_combout\,
	combout => \k~49_combout\);

-- Location: LCCOMB_X42_Y10_N28
\k~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~52_combout\ = (Q(3) & ((\k~49_combout\ & ((\k~51_combout\))) # (!\k~49_combout\ & (\k~45_combout\)))) # (!Q(3) & (((\k~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => \k~45_combout\,
	datac => \k~51_combout\,
	datad => \k~49_combout\,
	combout => \k~52_combout\);

-- Location: LCCOMB_X42_Y10_N12
\k~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~61_combout\ = (!\k~13_combout\ & ((B(3) & ((\k~52_combout\))) # (!B(3) & (\k~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B(3),
	datab => \k~13_combout\,
	datac => \k~60_combout\,
	datad => \k~52_combout\,
	combout => \k~61_combout\);

-- Location: LCFF_X42_Y10_N13
\k[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(1),
	datain => \k~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => k(5));

-- Location: LCCOMB_X44_Y10_N12
\k~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~21_combout\ = (Q(0) & (B(1) $ (((Q(2) & !B(0)))))) # (!Q(0) & (Q(2) & ((!B(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => Q(2),
	datac => B(0),
	datad => B(1),
	combout => \k~21_combout\);

-- Location: LCCOMB_X44_Y10_N26
\k~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~20_combout\ = (Q(3) & ((Q(2) & (!B(0))) # (!Q(2) & (B(0) & !B(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(2),
	datab => Q(3),
	datac => B(0),
	datad => B(1),
	combout => \k~20_combout\);

-- Location: LCCOMB_X43_Y10_N24
\k~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~22_combout\ = (Q(1) & ((\k~20_combout\) # ((\k~21_combout\ & !Q(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(1),
	datab => \k~21_combout\,
	datac => \k~20_combout\,
	datad => Q(3),
	combout => \k~22_combout\);

-- Location: LCCOMB_X44_Y10_N18
\k~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~23_combout\ = (!Q(1) & ((B(1) & (!Q(3) & !\k~0_combout\)) # (!B(1) & ((!\k~0_combout\) # (!Q(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(1),
	datab => B(1),
	datac => Q(3),
	datad => \k~0_combout\,
	combout => \k~23_combout\);

-- Location: LCCOMB_X43_Y10_N30
\k~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~24_combout\ = (B(2) & ((\k~22_combout\) # ((Q(2) & \k~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(2),
	datab => B(2),
	datac => \k~22_combout\,
	datad => \k~23_combout\,
	combout => \k~24_combout\);

-- Location: LCCOMB_X43_Y10_N8
\k~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~28_combout\ = (\k~19_combout\ & ((\k~24_combout\) # ((\k~27_combout\ & B(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k~27_combout\,
	datab => \k~24_combout\,
	datac => B(1),
	datad => \k~19_combout\,
	combout => \k~28_combout\);

-- Location: LCCOMB_X42_Y10_N16
\k~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~32_combout\ = (Q(0) & ((Q(1)) # ((!B(1) & B(0))))) # (!Q(0) & (Q(1) & (B(1) & !B(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => Q(1),
	datac => B(1),
	datad => B(0),
	combout => \k~32_combout\);

-- Location: LCCOMB_X42_Y10_N6
\k~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~31_combout\ = (Q(0) & ((B(1)) # ((!Q(1) & B(0))))) # (!Q(0) & (Q(1) & (!B(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => Q(1),
	datac => B(1),
	datad => B(0),
	combout => \k~31_combout\);

-- Location: LCCOMB_X43_Y10_N26
\k~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~30_combout\ = (Q(2) & (B(2))) # (!Q(2) & ((\k~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => B(2),
	datac => Q(2),
	datad => \k~29_combout\,
	combout => \k~30_combout\);

-- Location: LCCOMB_X43_Y10_N4
\k~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~33_combout\ = (Q(2) & (\k~31_combout\ $ (((\k~32_combout\) # (\k~30_combout\))))) # (!Q(2) & (((\k~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(2),
	datab => \k~32_combout\,
	datac => \k~31_combout\,
	datad => \k~30_combout\,
	combout => \k~33_combout\);

-- Location: LCCOMB_X44_Y10_N4
\k~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~37_combout\ = (Q(0) & ((B(0)) # ((!Q(2) & !B(1))))) # (!Q(0) & ((B(0) & (!Q(2) & !B(1))) # (!B(0) & ((B(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => B(0),
	datac => Q(2),
	datad => B(1),
	combout => \k~37_combout\);

-- Location: LCCOMB_X43_Y10_N14
\k~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~38_combout\ = (Q(1) & ((B(2) & ((\k~37_combout\))) # (!B(2) & (!\k~36_combout\)))) # (!Q(1) & (((\k~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(1),
	datab => B(2),
	datac => \k~36_combout\,
	datad => \k~37_combout\,
	combout => \k~38_combout\);

-- Location: LCCOMB_X43_Y10_N20
\k~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~39_combout\ = (Q(1) & (\k~37_combout\ $ (((!B(2) & \k~36_combout\))))) # (!Q(1) & (\k~36_combout\ $ (((B(2) & !\k~37_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(1),
	datab => B(2),
	datac => \k~36_combout\,
	datad => \k~37_combout\,
	combout => \k~39_combout\);

-- Location: LCCOMB_X45_Y10_N20
\k~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~34_combout\ = (Q(1) & (B(0) $ (((Q(0)))))) # (!Q(1) & ((B(0) & (!B(1) & Q(0))) # (!B(0) & (B(1) & !Q(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B(0),
	datab => B(1),
	datac => Q(1),
	datad => Q(0),
	combout => \k~34_combout\);

-- Location: LCCOMB_X44_Y10_N2
\k~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~35_combout\ = (\k~34_combout\ & (Q(1) $ (!B(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(1),
	datac => B(2),
	datad => \k~34_combout\,
	combout => \k~35_combout\);

-- Location: LCCOMB_X43_Y10_N10
\k~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~40_combout\ = (Q(2) & ((\k~35_combout\) # (\k~38_combout\ $ (\k~39_combout\)))) # (!Q(2) & (!\k~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(2),
	datab => \k~38_combout\,
	datac => \k~39_combout\,
	datad => \k~35_combout\,
	combout => \k~40_combout\);

-- Location: LCCOMB_X43_Y10_N0
\k~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~41_combout\ = (Q(3) & ((\k~40_combout\))) # (!Q(3) & (\k~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datac => \k~33_combout\,
	datad => \k~40_combout\,
	combout => \k~41_combout\);

-- Location: LCCOMB_X43_Y10_N28
\k~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~42_combout\ = (\k~28_combout\) # ((B(3) & (!\k~13_combout\ & \k~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B(3),
	datab => \k~13_combout\,
	datac => \k~28_combout\,
	datad => \k~41_combout\,
	combout => \k~42_combout\);

-- Location: LCFF_X43_Y10_N29
\k[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(1),
	datain => \k~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => k(4));

-- Location: LCCOMB_X43_Y10_N12
\k~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~65_combout\ = (B(1) & ((Q(1)) # ((Q(0) & B(0))))) # (!B(1) & (Q(1) & ((Q(0)) # (B(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B(1),
	datab => Q(1),
	datac => Q(0),
	datad => B(0),
	combout => \k~65_combout\);

-- Location: LCCOMB_X45_Y10_N26
\k~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~74_combout\ = ((Q(1) & ((B(1)) # (\k~0_combout\)))) # (!\k~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(1),
	datab => B(1),
	datac => \k~50_combout\,
	datad => \k~0_combout\,
	combout => \k~74_combout\);

-- Location: LCCOMB_X42_Y10_N2
\k~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~75_combout\ = (Q(2) & ((\k~74_combout\) # ((\k~65_combout\ & B(2))))) # (!Q(2) & (\k~65_combout\ & (B(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(2),
	datab => \k~65_combout\,
	datac => B(2),
	datad => \k~74_combout\,
	combout => \k~75_combout\);

-- Location: LCCOMB_X42_Y10_N26
\k~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~76_combout\ = (Q(3) & (B(3) & (!\datapath_state_func~0_combout\ & \k~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => B(3),
	datac => \datapath_state_func~0_combout\,
	datad => \k~75_combout\,
	combout => \k~76_combout\);

-- Location: LCFF_X42_Y10_N27
\k[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(1),
	datain => \k~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => k(7));

-- Location: LCCOMB_X1_Y21_N8
\Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (k(6) & (!k(5) & (k(4) $ (!k(7))))) # (!k(6) & (k(4) & (k(5) $ (!k(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => k(6),
	datab => k(5),
	datac => k(4),
	datad => k(7),
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X1_Y21_N26
\Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (k(5) & ((k(4) & ((k(7)))) # (!k(4) & (k(6))))) # (!k(5) & (k(6) & (k(4) $ (k(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => k(6),
	datab => k(5),
	datac => k(4),
	datad => k(7),
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X1_Y21_N16
\Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (k(6) & (k(7) & ((k(5)) # (!k(4))))) # (!k(6) & (k(5) & (!k(4) & !k(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => k(6),
	datab => k(5),
	datac => k(4),
	datad => k(7),
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X1_Y21_N22
\Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (k(4) & (k(6) $ ((!k(5))))) # (!k(4) & ((k(6) & (!k(5) & !k(7))) # (!k(6) & (k(5) & k(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => k(6),
	datab => k(5),
	datac => k(4),
	datad => k(7),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X1_Y21_N28
\Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (k(5) & (((k(4) & !k(7))))) # (!k(5) & ((k(6) & ((!k(7)))) # (!k(6) & (k(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => k(6),
	datab => k(5),
	datac => k(4),
	datad => k(7),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X1_Y21_N18
\Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (k(6) & (k(4) & (k(5) $ (k(7))))) # (!k(6) & (!k(7) & ((k(5)) # (k(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => k(6),
	datab => k(5),
	datac => k(4),
	datad => k(7),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X1_Y21_N0
\Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (k(4) & ((k(7)) # (k(6) $ (k(5))))) # (!k(4) & ((k(5)) # (k(6) $ (k(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => k(6),
	datab => k(5),
	datac => k(4),
	datad => k(7),
	combout => \Mux7~0_combout\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(0));

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(2));

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(3));

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(4));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(0));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(1));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(2));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(3));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(4));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(5));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(6));

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(7));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(0));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(1));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(2));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(3));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(4));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(5));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(6));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(7));
END structure;


