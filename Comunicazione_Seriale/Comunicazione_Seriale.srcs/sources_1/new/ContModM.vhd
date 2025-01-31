
library ieee;
use ieee.std_logic_1164.all;

-- uncomment the following library declaration if using
-- arithmetic functions with signed or unsigned values
use ieee.numeric_std.all;

-- uncomment the following library declaration if instantiating
-- any xilinx leaf cells in this code.
--library unisim;
--use unisim.vcomponents.all;

entity ContModM is
    generic (
        
        n : positive := 3;
        m : positive := 8
    );
    port (
        clock_cont : in std_logic;
        reset : in std_logic := '0';
        en_count : in std_logic;
        end_count : out std_logic;
        y : out std_logic_vector(n - 1 downto 0)
    );
end ContModM;

architecture behavioral of ContModM is
    signal y_temp : std_logic_vector(n - 1 downto 0) := (others => '0');
    signal temp_end : std_logic ;
begin
    count : process (clock_cont)
    begin
        temp_end <= '0';
        if rising_edge(clock_cont) then
            if (reset = '1') then
                y_temp <= (others => '0');
            else
                if (en_count = '1') then
                    if to_integer(unsigned(y_temp)) < m-1 then
                        y_temp <= std_logic_vector(unsigned(y_temp) + 1);
                    else
                        y_temp <= (others => '0');
                        temp_end <= '1';
                         -- Reset del contatore
                    end if;
                end if;
            end if;
        end if;
    end process;
    
    
    end_count <= temp_end;
    
    y <= y_temp;
end behavioral;