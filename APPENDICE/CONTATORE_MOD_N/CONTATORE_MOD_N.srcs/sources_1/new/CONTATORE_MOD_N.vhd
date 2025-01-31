----------------------------------------------------------------------------------
-- company: 
-- engineer: 
-- 
-- create date: 21.01.2025 16:46:57
-- design name: 
-- module name: contatore_mod_n - behavioral
-- project name: 
-- target devices: 
-- tool versions: 
-- description: 
-- 
-- dependencies: 
-- 
-- revision:
-- revision 0.01 - file created
-- additional comments:
-- 
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

-- uncomment the following library declaration if using
-- arithmetic functions with signed or unsigned values
use ieee.numeric_std.all;

-- uncomment the following library declaration if instantiating
-- any xilinx leaf cells in this code.
--library unisim;
--use unisim.vcomponents.all;

entity cont_mod_n is
    generic (
        n : positive := 3
    );
    port (
        clock_cont : in std_logic;
        reset : in std_logic := '0';
        en_count : in std_logic;
        end_count : out std_logic;
        y : out std_logic_vector(n - 1 downto 0)
    );
end cont_mod_n;

architecture behavioral of cont_mod_n is
    signal y_temp : std_logic_vector(n - 1 downto 0) := (others => '0');
begin
    count : process (clock_cont)
    begin
        if rising_edge(clock_cont) then
            if (reset = '1') then
                y_temp <= (others => '0');
            else
                if (en_count = '1') then
                    y_temp <= std_logic_vector(unsigned(y_temp) + 1);
                end if;
            end if;
        end if;
    end process;
    y <= y_temp;
    end_count <= '1' when (to_integer(unsigned(y_temp)) = 2**n) else '0';
end behavioral;
