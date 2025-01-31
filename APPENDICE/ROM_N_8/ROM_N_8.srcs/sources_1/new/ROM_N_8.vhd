----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.01.2025 16:14:39
-- Design Name: 
-- Module Name: ROM_N_8 - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ROM_N_8 is
    Generic(
        len_sel : positive := 3
    );
    Port ( 
        clock_rom: in std_logic;
        read : in std_logic;
        address : in std_logic_vector(len_sel-1 downto 0);
        rom_output: out std_logic_vector(7 downto 0)
    );
end ROM_N_8;

architecture Behavioral of ROM_N_8 is

constant N : positive := 2**len_sel;
TYPE MEMORY_N_8 IS ARRAY (0 to N-1) OF std_logic_vector(7 downto 0);
constant ROM_N_8 : MEMORY_N_8 := (
    "10101010",
    "10101000",
    "10100000",
    "10000000",
    "10101010",
    "10101000",
    "10100000",
    "10000000",
    others => (others => '1')  -- Riempie il resto con uno.
);

begin
    main: process(clock_rom)
    begin
        if rising_edge(clock_rom) then
            if (read = '1') then
                rom_output <= ROM_N_8(to_integer(unsigned(address)));
            end if;
        end if;
    end process main;
end Behavioral;
