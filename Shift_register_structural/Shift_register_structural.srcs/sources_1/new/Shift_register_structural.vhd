----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.01.2025 12:05:53
-- Design Name: 
-- Module Name: Shift_register_structural - Behavioral
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

entity Shift_register_structural is
    Generic(
        N: positive := 4
    );
    Port (
        clock,ingresso: in std_logic;
        dir : in std_logic; 
        y: in integer range 1 to 2;
        output: out std_logic_vector(N-1 downto 0) 
    );
end Shift_register_structural;

architecture Structural of Shift_register_structural is

component FFD is 
    port(
        clock, reset, d: in std_logic;
        y: out std_logic :='0'
    );
end component;

component M_MACHINE is 
Generic(
        N: positive := 4
    );
    Port (
        input : in std_logic_vector(N-1 downto 0);
        ingresso: in std_logic;
        dir : in std_logic; 
        y: in integer range 1 to 2;
        output: out std_logic_vector(N-1 downto 0) 
    );
end component;
signal uscite_flip_flop: std_logic_vector(N-1 downto 0) := (others => '0');
signal uscita_m_machine: std_logic_vector(N-1 downto 0) := (others => '0');
begin 

    GEN_FFDs: for i in 0 to N-1 generate
        FFD_inst: FFD 
            port map (
                clock => clock, 
                reset => '0',
                d => uscita_m_machine(i), 
                y => uscite_flip_flop(i) 
            );
    end generate GEN_FFDs;

    M_MACHINE_inst: M_MACHINE 
    generic map (
        N => N
    )
    port map (
        input => uscite_flip_flop, 
        ingresso => ingresso, 
        dir => dir, 
        y => y, 
        output => uscita_m_machine 
    );

    output <= uscite_flip_flop; 

end Structural;
