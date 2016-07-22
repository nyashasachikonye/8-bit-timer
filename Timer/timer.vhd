-- Copyright (C) 1991-2010 Altera Corporation
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

-- PROGRAM		"Quartus II"
-- VERSION		"Version 9.1 Build 304 01/25/2010 Service Pack 1 SJ Web Edition"
-- CREATED		"Wed May 11 15:37:03 2016"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY timer IS 
	PORT
	(

	);
END timer;

ARCHITECTURE bdf_type OF timer IS 

COMPONENT prescaler
	PORT(clock : IN STD_LOGIC;
		 pre : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 result : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT counter
	PORT(clock : IN STD_LOGIC;
		 result : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT comparator
	PORT(in1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 in2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 flag : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(7 DOWNTO 0);


BEGIN 



b2v_inst : prescaler
PORT MAP(		 result => SYNTHESIZED_WIRE_0);


b2v_inst1 : counter
PORT MAP(clock => SYNTHESIZED_WIRE_0,
		 result => SYNTHESIZED_WIRE_1);


b2v_inst2 : comparator
PORT MAP(in1 => SYNTHESIZED_WIRE_1);


END bdf_type;