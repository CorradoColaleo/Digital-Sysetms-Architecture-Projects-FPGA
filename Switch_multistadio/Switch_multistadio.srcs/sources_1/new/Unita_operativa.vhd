----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.01.2025 19:20:35
-- Design Name: 
-- Module Name: Unita_operativa - Behavioral
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

entity Unita_operativa is
    Port ( 
        x0,x1,x2,x3: in std_logic_vector(1 downto 0);
        add_src,add_dest: in std_logic_vector(1 downto 0);
        y0,y1,y2,y3: out std_logic_vector(1 downto 0)
    );
end Unita_operativa;

architecture Behavioral of Unita_operativa is
component Switch is 
    Port (
        x1: in std_logic_vector (1 downto 0);     
        x2: in std_logic_vector (1 downto 0);
        y1: out std_logic_vector (1 downto 0);
        y2: out std_logic_vector (1 downto 0);
        add_src: in std_logic;
        add_dest: in std_logic
    );
end component;
signal temp_switch0, temp_switch1, temp_switch2, temp_switch3 : std_logic_vector(1 downto 0) := (others => '0');
begin
    s0: switch port map(
        add_src => add_src(1),
        add_dest => add_dest(1),
        x1 => x0,
        x2 => x2,
        y1 => temp_switch0,
        y2 => temp_switch2
    );
    
    s1: switch port map(
        add_src => add_src(1),
        add_dest => add_dest(1),
        x1 => x1,
        x2 => x3,
        y1 => temp_switch1,
        y2 => temp_switch3
    );
    
    s2: switch port map(
        add_src => add_src(0),
        add_dest => add_dest(0),
        x1 => temp_switch0,
        x2 => temp_switch1,
        y1 => y0,
        y2 => y1
    );
    
    s3: switch port map(
        add_src => add_src(0),
        add_dest => add_dest(0),
        x1 => temp_switch2,
        x2 => temp_switch3,
        y1 => y2,
        y2 => y3
    );

end Behavioral;
