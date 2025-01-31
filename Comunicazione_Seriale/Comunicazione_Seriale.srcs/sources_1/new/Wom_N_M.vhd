library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Wom_N_M is
    Generic(
        len_sel : positive :=3;
        M : positive := 8
    );
    Port (
        clock_mem : in std_logic;
        write : in std_logic;
        input_val : in std_logic_vector(M-1 downto 0);
        output_val: out std_logic_vector(M-1 downto 0);
        address: in std_logic_vector(len_sel-1 downto 0)
    );
end Wom_N_M;

architecture Behavioral of Wom_N_M is
signal address_temp : std_logic_vector(len_sel-1 downto 0);

constant N : positive := 2**len_sel;
type Wom_N_M is array (0 to N-1) of std_logic_vector(M-1 downto 0);
signal MEM : Wom_N_M;

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