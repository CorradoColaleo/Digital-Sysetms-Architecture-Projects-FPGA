----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.01.2025 12:31:19
-- Design Name: 
-- Module Name: M_MACHINE - Behavioral
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

entity M_MACHINE is
    Generic(
        N: positive := 4
    );
    Port (
        input : in std_logic_vector(N-1 downto 0);
        ingresso: in std_logic;
        dir : in std_logic; 
        y: in integer range 1 to 2;
        output: out std_logic_vector(N-1 downto 0) 
    );
end M_MACHINE;

architecture Behavioral of M_MACHINE is
begin
    process(dir,input,ingresso,y)
    begin
    case dir is 
        when '0' => -- shift a destra
            if (y=1) then --1 bit 
                for i in 0 to (N-2) loop
                    output(i) <= input(i+1);
                end loop;
                output(N-1) <= ingresso;
            elsif (y=2) then --2 bit
                for i in 0 to (N-3) loop
                    output(i) <= input(i+2);
                end loop;
                output(N-1) <= ingresso;
                output(N-2) <= ingresso;
            end if;
         when '1' => --shift a sinistra
            if (y=1) then --1 bit 
                for i in 1 to (N-1) loop
                    output(i) <= input(i-1);
                end loop;
                output(0) <= ingresso;
            elsif (y=2) then --2 bit
                for i in 2 to (N-1) loop
                    output(i) <= input(i-2);
                end loop;
                output(0) <= ingresso;
                output(1) <= ingresso;
            end if;
         when others => 
            output <= (others => '0');
    end case;
    end process;
end Behavioral;
