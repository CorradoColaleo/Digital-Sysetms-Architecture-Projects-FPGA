----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.01.2025 09:49:49
-- Design Name: 
-- Module Name: Shift_register_behavioural - Behavioral
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

entity Shift_register_behavioural is
    Generic(
        N: integer := 16
    );
    Port ( 
        serial_in,clock,reset,shift,direzione: in std_logic;
        y : in integer range 1 to 2;
        serial_out: out std_logic;
        parallel_out: out std_logic_vector(N-1 downto 0)
    );
end Shift_register_behavioural;

architecture Behavioral of Shift_register_behavioural is
signal registro : std_logic_vector(N-1 downto 0) := (others => '0');
-- n-1, n-2, ... , 1 , 
begin
    process(clock)
    begin
        if rising_edge(clock) then
            if (reset='1') then
                registro <= (others => '0');
            else
                if (shift = '1') then
                    case direzione is
                        when '0' => -- shift a destra
                            if (y=1) then -- 1 bit
                                for i in 0 to (N-2) loop 
                                    registro(i) <= registro(i+1);
                                end loop;
                                registro(N-1) <= serial_in;
                            elsif (y=2) then --2 bit 
                                for i in 0 to (N-3) loop 
                                    registro(i) <= registro(i+2);
                                end loop;
                                registro(N-1) <= serial_in;
                                registro(N-2) <= serial_in;
                            end if;
                         when '1' => --shift a sinistra
                            if (y=1) then -- 1 bit
                                for i in 1 to (N-1) loop 
                                    registro(i) <= registro(i-1);
                                end loop;
                                registro(0) <= serial_in;
                            elsif (y=2) then --2 bit 
                                for i in 2 to (N-1) loop 
                                    registro(i) <= registro(i-2);
                                end loop;
                                registro(0) <= serial_in;
                                registro(1) <= serial_in;
                            end if;
                         when others =>
                            serial_out <= '0';
                    end case;
                end if;
            end if;
        end if;
    end process;
    serial_out <= registro(N-1);
    parallel_out <= registro;
end Behavioral;
