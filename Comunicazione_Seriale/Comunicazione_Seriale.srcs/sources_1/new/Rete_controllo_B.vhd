library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
entity Rete_controllo_B is
Port (
     clock,RST,end_count,RDA : in std_logic;
     RD, rst_count , count_in ,Write,DONE : out std_logic 
     );
end Rete_controllo_B;

architecture Behavioral of Rete_controllo_B is
type state is (idle_state,write_state,incr_state,fine_lettura_state,end_state); 
signal curr_state : state := idle_state;
signal next_state : state;
begin
    agg_stato : process(clock)
    begin 
        if rising_edge(clock) then
            if RST = '1' then 
                curr_state <= idle_state;
                rst_count <= '1';
            else
                curr_state <= next_state;
            end if; 
        end if ;
    end process;

  ev_stato : process(curr_state,RDA)
  begin
    rst_count <='0';
    count_in <='0';
    case curr_state is 
        when idle_state => 
                    DONE <= '0';
                    if RDA = '1' then                        
                        next_state <= write_state;
                    else                        
                        next_state <= idle_state;
                    end if;
        when write_state => 
                    Write <= '1';
                    next_state <= incr_state;
        when incr_state => 
                        count_in <= '1';
                        Write <= '0';
                        next_state <= fine_lettura_state;
        when fine_lettura_state => 
                        RD <= '1';
                        next_state <= end_state;
        when end_state => 
                        done <= '1';
                        rd <= '0';
                        next_state <= idle_state;
        end case;
  end process;
end Behavioral;