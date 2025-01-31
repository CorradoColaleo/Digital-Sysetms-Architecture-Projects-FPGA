LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY mux_4_1 IS
	PORT (
		b0 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		b1 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		b2 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		b3 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		s0 : IN STD_LOGIC;
		s1 : IN STD_LOGIC;
		y : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END mux_4_1;

ARCHITECTURE structural OF mux_4_1 IS
	SIGNAL u0 : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL u1 : STD_LOGIC_VECTOR(1 DOWNTO 0);

	COMPONENT mux_2_1
		PORT (
			a0 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			a1 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			s : IN STD_LOGIC;
			y : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
		);
	END COMPONENT;

BEGIN
	mux0 : mux_2_1
	PORT MAP(
		a0 => b0,
		a1 => b1,
		s => s0,
		y => u0
	);

	mux1 : mux_2_1
	PORT MAP(
		a0 => b2,
		a1 => b3,
		s => s0,
		y => u1
	);

	mux2 : mux_2_1
	PORT MAP(
		a0 => u0,
		a1 => u1,
		s => s1,
		y => y
	);
END structural;