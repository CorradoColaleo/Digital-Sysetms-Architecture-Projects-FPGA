----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.01.2025 19:50:28
-- Design Name: 
-- Module Name: Gestore_priorita - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Unita_di_controllo is
    Port (
        m0,m1,m2,m3: in std_logic_vector(5 downto 0);
        sel0,sel1,sel2,sel3 : in std_logic;
        u0,u1,u2,u3: out std_logic_vector(1 downto 0); 
        src,dest: out std_logic_vector(1 downto 0)
    );
end Unita_di_controllo;

architecture Structural of Unita_di_controllo is
component mux_4_1 is 
port (
		b0 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		b1 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		b2 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		b3 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		s0 : IN STD_LOGIC;
		s1 : IN STD_LOGIC;
		y : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
end component;
component demux_1_4 is
    port(
        a : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        s : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        y0, y1, y2, y3 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
    );
end component;
component gestore_priorita is 
    port(
        sel0,sel1,sel2,sel3: in std_logic;
        output: out std_logic_vector(1 downto 0)
    );
end component;
signal temp1,temp2 : std_logic_vector(1 downto 0) := (others => '0');
begin

gestore: gestore_priorita
port map(
    sel0 => sel0,
    sel1 => sel1,
    sel2 => sel2,
    sel3 => sel3,
    output => temp1
);

mux: mux_4_1
port map(
        b0 => m0(1 downto 0),
		b1 => m1(1 downto 0),
		b2 => m2(1 downto 0),
		b3 => m3(1 downto 0),
		s0 => temp1(0),
		s1 => temp1(1),
		y => temp2
);

demux: demux_1_4 
port map (
        a => temp2,
        s => temp1,
        y0 => u0,
        y1 => u1,
        y2 => u2,
        y3 => u3
);

src <= m0(5 downto 4) when temp1 = "00" else
    m1(5 downto 4) when temp1 = "01" else
    m2(5 downto 4) when temp1 = "10" else
    m3(5 downto 4) when temp1 = "11" else
    "00";
    
dest <= m0(3 downto 2) when temp1 = "00" else
    m1(3 downto 2) when temp1 = "01" else
    m2(3 downto 2) when temp1 = "10" else
    m3(3 downto 2) when temp1 = "11" else
    "00";

end Structural;

