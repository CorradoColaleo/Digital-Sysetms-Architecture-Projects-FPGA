----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.01.2025 19:50:28
-- Design Name: 
-- Module Name: Gestore_priorita - Behavioral
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

entity Gestore_priorita is
    Port (
        sel0,sel1,sel2,sel3: in std_logic;
        output: out std_logic_vector(1 downto 0)
    );
end Gestore_priorita;

architecture dataflow of Gestore_priorita is
begin
    
  output <= "00" when sel0 = '1' else
    "01" when sel1 = '1' else
    "10" when sel2 = '1' else
    "11" when sel3 = '1' else
    "--";

end dataflow;
