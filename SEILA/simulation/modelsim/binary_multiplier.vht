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
-- Generated on "08/27/2018 17:47:05"
                                                            
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
SIGNAL HEX0 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL HEX1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL KEY : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL SW : STD_LOGIC_VECTOR(9 DOWNTO 0);
COMPONENT binary_multiplier
	PORT (
	HEX0 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	HEX1 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	SW : IN STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : binary_multiplier
	PORT MAP (
-- list connections between master ports and signals
	HEX0 => HEX0,
	HEX1 => HEX1,
	KEY => KEY,
	SW => SW
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
       	Limpa
	KEY(1) <= '1';
	KEY(0) <= '1';
	wait for 5 ns;
	KEY(1) <= '0';
	wait for 5 ns;
	KEY(1) <= '1';
	KEY(0) <= '0';
	wait for 5 ns;
	KEY(1) <= '0';

--		Carrega 1
	KEY(1) <= '1';
	SW(9) <= '0';
  	wait for 5 ns;
	KEY(1) <= '0';
	wait for 5 ns;
	KEY(1) <= '1';
	wait for 5 ns;
	KEY(2) <= "0010";
  	wait for 5 ns;
  	KEY(1) <= '0';
	wait for 5 ns;

--		Carrega 2
	KEY(1) <= '1';
	SW(9) <= '1';
  	wait for 5 ns;
	KEY(1) <= '0';
	wait for 5 ns;
	KEY(1) <= '1';
	wait for 5 ns;
	KEY(2) <= "0011";
  	wait for 5 ns;
	KEY(1) <= '0';
	wait for 5 ns;

--		START
	KEY(1) <= '1';
	wait for 5 ns;
	KEY(2) <= '1';
  	HEX0 <= "00000110";
	wait for 5 ns;
	KEY(1) <= '0';
	wait for 5 ns;
	KEY(1) <= '1';
	wait for 5 ns;
	KEY(2) <= '0';
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
