library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
entity Rete_controllo_A is
Port (
     clock,start,done,rst : in std_logic;
     y_count : in std_logic_vector(2 downto 0);
     rst_count,count_in,read,write : out std_logic
  );
end Rete_controllo_A;

architecture Behavioral of Rete_controllo_A is
type state is (start_state,read_state,incr_state,write_state,wait_state,check_state); 
signal curr_state : state := start_state;
signal next_state : state;

begin

    agg_stato : process(clock)
    begin 
        if rising_edge(clock) then
            if RST = '1' then 
                curr_state <= start_state;
                rst_count <= '1';
            else
                curr_state <= next_state;
            end if; 
        end if ;
    end process;
    
    ev_state : process(curr_state,done,start)
    begin 
        rst_count <= '0';
        count_in <= '0';
        case curr_state is 
            when start_state => 
                    if start = '1' then 
                        next_state <= read_state;
                    else
                        next_state <= start_state;
                    end if; 
            when read_state => 
                    read <= '1';
                    next_state <= incr_state;
            when incr_state => 
                    count_in <= '1';
                    read <= '0';
                    next_state <= write_state;
            when write_state => 
                   write <= '1';
                   next_state <= wait_state;
            when wait_state => 
                   if done = '1' then
                        next_state <= check_state;
                   else
                        next_state <= wait_state;
                   end if;
            when check_state => 
                   write <='0';
                   if y_count = "000" then
                        next_state <= start_state;
                   else
                        next_state <= read_state;
                   end if;
        end case;
    end process;
end Behavioral;