----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.11.2024 21:09:55
-- Design Name: 
-- Module Name: RETE_INTERCONNESSIONE_BOARD - Behavioral
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

entity RETE_INTERCONNESSIONE_BOARD is
--  Port ( );
port (
    clock: in std_logic;
    reset: in std_logic; 
    load_first_part: in std_logic; 
    load_second_part: in std_logic;
    load_selection: in std_logic; 
    value8_in: in std_logic_vector(7 downto 0);
    selection_mux: in std_logic_vector(3 downto 0);
    selection_demux: in std_logic_vector(1 downto 0);
    y : out STD_LOGIC_VECTOR(3 downto 0)
);
end RETE_INTERCONNESSIONE_BOARD;

architecture Structural of RETE_INTERCONNESSIONE_BOARD is

component control_unit
Port(
        clock: in std_logic;
        reset: in std_logic; 
        load_first_part: in std_logic; 
        load_second_part: in std_logic;
        load_selection: in std_logic; 
        value8_in: in std_logic_vector(7 downto 0);
        value16_out: out std_logic_vector(15 downto 0);
        selection_mux: in std_logic_vector(3 downto 0);
        selection_demux: in std_logic_vector(1 downto 0);
        selection_out: out std_logic_vector(5 downto 0)
    );
end component;

component RETE_DI_INTERCONNESSIONE
port(
    s : in STD_LOGIC_VECTOR(15 downto 0);
    controlMux : in STD_LOGIC_VECTOR(3 downto 0);
    controlDemux : in STD_LOGIC_VECTOR (1 downto 0);   
    y : out STD_LOGIC_VECTOR(3 downto 0)
);
end component;

signal s: std_logic_vector(15 downto 0):= (others => '0');
signal selections: std_logic_vector(5 downto 0):= (others => '0');

begin

cu: control_unit port map(
    clock => clock,
    reset => reset,
    load_first_part => load_first_part,
    load_second_part => load_second_part,
    load_selection => load_selection,
    value8_in => value8_in,
    value16_out => s,
    selection_mux => selection_mux,
    selection_demux => selection_demux,
    selection_out => selections
);

network: RETE_DI_INTERCONNESSIONE port map (
    s => s, 
    controlMux => selections(5 downto 2),
    controlDemux => selections(1 downto 0),
    y => y
);

end Structural;
