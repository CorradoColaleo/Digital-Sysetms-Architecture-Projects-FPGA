LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- *******************************************************************************
-- MUX 2:1 --

ENTITY mux_2_1 IS
	PORT (
		a0 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		a1 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		s : IN STD_LOGIC;
		y : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END mux_2_1;

ARCHITECTURE dataflow OF mux_2_1 IS
BEGIN
	y <= a0 WHEN s = '0' ELSE
		a1 WHEN s = '1' ELSE
		"--";
END dataflow;