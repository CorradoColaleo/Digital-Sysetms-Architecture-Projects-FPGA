----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.01.2025 19:08:06
-- Design Name: 
-- Module Name: Switch - Structural
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Switch is
    Port (
        x1: in std_logic_vector (1 downto 0);     
        x2: in std_logic_vector (1 downto 0);
        y1: out std_logic_vector (1 downto 0);
        y2: out std_logic_vector (1 downto 0);
        add_src: in std_logic;
        add_dest: in std_logic
    );
end Switch;

architecture Structural of Switch is
signal temp_mux_demux : std_logic_vector(1 downto 0) := (others =>'0');
component mux_2_1 is
	port (
		a0 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		a1 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		s : IN STD_LOGIC;
		y : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
end component;
component demux_1_2 is 
    port (
        d : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        s : IN STD_LOGIC;
        y1, y2 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
    );
end component;
begin
mux : mux_2_1 port map(
		a0 => x1,
		a1 => x2,
		s => add_src,
		y => temp_mux_demux

);
demux: demux_1_2 port map(
        d => temp_mux_demux,
        s => add_dest,
        y1 => y1,
        y2 => y2
);
end Structural;
