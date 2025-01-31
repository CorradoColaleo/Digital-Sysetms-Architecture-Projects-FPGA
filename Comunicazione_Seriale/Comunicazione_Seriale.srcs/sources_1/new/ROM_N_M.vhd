library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ROM_N_M is
    Generic(
        len_sel : positive := 3;
        M : positive := 8
    );
    Port ( 
        clock_rom: in std_logic;
        read : in std_logic;
        address : in std_logic_vector(len_sel-1 downto 0);
        rom_output: out std_logic_vector(M-1 downto 0)
    );
end ROM_N_M;

architecture Behavioral of ROM_N_M is

constant N : positive := 2**len_sel;
TYPE MEMORY_N_M IS ARRAY (0 to N-1) OF std_logic_vector(M-1 downto 0);
constant ROM_N_M : MEMORY_N_M := (
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
                rom_output <= ROM_N_M(to_integer(unsigned(address)));
            end if;
        end if;
    end process main;
end Behavioral;