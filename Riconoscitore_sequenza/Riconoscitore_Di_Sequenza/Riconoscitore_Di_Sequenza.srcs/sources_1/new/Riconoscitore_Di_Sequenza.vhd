----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.01.2025 09:30:51
-- Design Name: 
-- Module Name: Riconoscitore_di_sequenza - Behavioral
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
 
entity Riconoscitore_di_sequenza is
  Port ( 
    I : in std_logic;
    M : in std_logic;
    CLK : in std_logic;
    RST : in std_logic;
    Y : out std_logic
  );
end Riconoscitore_di_sequenza;
 
architecture Behavioral of Riconoscitore_di_sequenza is
 
type stato is ( S0, S1, S2, S3,S4);
 
signal stato_corrente : stato := S0;
 
signal stato_prossimo : stato;
 
signal y_temp : std_logic := 'U';
 
begin
 
agg_stato : process(I,stato_corrente,M)
begin
 
    case M is
        when '0' =>  case stato_corrente is 
                      when S0 => if I = '1' then   
                                       stato_prossimo <= S1;
                                       y_temp <= '0';
                                    else 
                                       stato_prossimo <= S3;
                                       y_temp <= '0';
                                 end if;
                       when S1 =>  if I = '1' then   
                                       stato_prossimo <= S4;
                                       y_temp <= '0';
                                    else 
                                       stato_prossimo <= S2;
                                       y_temp <= '0';
 
                                    end if;
                       when S2 =>  if I = '1' then   
                                       stato_prossimo <= S0;
                                       y_temp <= '1';
                                    else 
                                       stato_prossimo <= S0;
                                       y_temp <= '0';
                                    end if;
                       when S3 =>     
                                       stato_prossimo <= S4;
                                       y_temp <= '0';
                       when S4 =>     
                                       stato_prossimo <= S0;
                                       y_temp <= '0';
                       when others =>  y_temp <= '0';
                                       stato_prossimo <= S0;
                       end case;  
        when '1' =>  case stato_corrente is 
                      when S0 => if I = '1' then   
                                       stato_prossimo <= S1;
                                       y_temp <= '0';
                                    else 
                                       stato_prossimo <= S0;
                                       y_temp <= '0';
                                 end if;
                       when S1 =>  if I = '1' then   
                                       stato_prossimo <= S1;
                                       y_temp <= '0';
                                    else 
                                       stato_prossimo <= S2;
                                       y_temp <= '0';
 
                                    end if;
                       when S2 =>  if I = '1' then   
                                       stato_prossimo <= S0;
                                       y_temp <= '1';
                                    else 
                                       stato_prossimo <= S0;
                                       y_temp <= '0';
                                    end if;
                         when others => y_temp <= '0';
                                        stato_prossimo <= S0;
                        end case;
    end case;
 
end process;
 
mem: process(CLK)
begin
if (  CLK'event and CLK = '1') then 
        if RST = '1' then
            stato_corrente <= S0;
            Y <= '0';
         else
            stato_corrente <= stato_prossimo;
            Y <= y_temp;
         end if;
end if;
end process;
 
end Behavioral;

ha il menu contestuale


ha il menu contestuale