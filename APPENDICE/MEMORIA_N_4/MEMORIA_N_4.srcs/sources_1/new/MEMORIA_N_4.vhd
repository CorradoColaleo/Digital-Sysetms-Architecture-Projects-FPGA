----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.01.2025 16:34:05
-- Design Name: 
-- Module Name: MEMORIA_N_4 - Behavioral
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

entity MEMORIA_N_4 is
    Generic(
        len_addr : positive :=3
    );
    Port (
        clock_mem : in std_logic;
        write : in std_logic;
        input_val : in std_logic_vector(3 downto 0);
        output_val: out std_logic_vector(3 downto 0);
        address: in std_logic_vector(len_addr-1 downto 0)
    );
end MEMORIA_N_4;

architecture Behavioral of MEMORIA_N_4 is
signal address_temp : std_logic_vector(len_addr-1 downto 0);

constant N : positive := 2**len_addr;
type MEMORY_N_4 is array (0 to N-1) of std_logic_vector(3 downto 0);
signal MEM : MEMORY_N_4;

begin
    process (clock_mem)
    begin
        if rising_edge(clock_mem) then
            if (write = '1') then
                MEM(to_integer(unsigned(address))) <= input_val;
                address_temp <= address;
            end if;
            output_val <= MEM(to_integer(unsigned(address_temp)));
        end if;
    end process;
end Behavioral;
