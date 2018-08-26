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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to
-- suit user's needs .Comments are provided in each section to help the user
-- fill out necessary details.
-- ***************************************************************************
-- Generated on "08/17/2018 15:11:39"

-- Vhdl Test Bench template for design  :  binary_multiplier
--
-- Simulation tool : ModelSim-Altera (VHDL)
--

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY binary_multiplier_vhd_tst IS
END binary_multiplier_vhd_tst;
ARCHITECTURE binary_multiplier_arch OF binary_multiplier_vhd_tst IS
-- constants
-- signals

KEY: in std_logic_vector(3 downto 0);     -- Botao
SW: in std_logic_vector(9 downto 0);      -- switch
HEX: out std_logic_vector(7 downto 0));  -- LEDS

SIGNAL KEY: STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL SW: STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL HEX: STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT binary_multiplier
	PORT (
    KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    SW: IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    HEX: IN STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : binary_multiplier
	PORT MAP (
-- list connections between master ports and signals
    KEY => KEY,
    SW => SW,
    HEX => HEX
	);
init : PROCESS
-- variable declarations
BEGIN
        -- code that executes only once

--	Limpa
	CLK <= '1';
	RESET <= '1';
	wait for 5 ns;
	CLK <= '0';
	wait for 5 ns;
	CLK <= '1';
	RESET <= '0';
	wait for 5 ns;
	CLK <= '0';
	wait for 5 ns;

--		Carrega 1
	CLK <= '1';
	LOADB <= '1';
	CLK <= '0';
	wait for 5 ns;
	CLK <= '1';
	LOADQ <= '0';
	wait for 5 ns;
	MULT_IN <= "0010";
	CLK <= '0';
	wait for 5 ns;

--		Carrega 2
	CLK <= '1';
	LOADB <= '0';
	CLK <= '0';
	wait for 5 ns;
	CLK <= '1';
	LOADQ <= '0';
	wait for 5 ns;
	MULT_IN <= "0011";
	CLK <= '0';
	wait for 5 ns;


--		START
	CLK <= '1';
	G <= '1';
	wait for 5 ns;
	CLK <= '0';
	wait for 5 ns;
	CLK <= '1';
	G <= '0';
	wait for 5 ns;
	MULT_OUT <= "00000110";
	wait for 5 ns;

	wait for 5 ns;

WAIT;
END PROCESS init;

always : PROCESS
-- optional sensitivity list
-- (        )
-- variable declarations
BEGIN
        -- code executes for every event on sensitivity list
WAIT;
END PROCESS always;
END binary_multiplier_arch;
