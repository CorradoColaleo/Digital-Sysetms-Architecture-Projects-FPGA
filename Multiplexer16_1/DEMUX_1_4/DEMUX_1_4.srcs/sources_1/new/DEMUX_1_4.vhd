library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DEMUX_1_4 is
--  Port ( );

port(
   
   u : in STD_LOGIC;
   
   a : in STD_LOGIC_VECTOR(1 downto 0);
   
   y : out STD_LOGIC_VECTOR(3 downto 0)
    
);
end DEMUX_1_4;

architecture dataflow of DEMUX_1_4 is
begin

    y(0) <= u AND (NOT a(0)) AND (NOT(a(1)));
    
    y(1) <= u AND a(0) AND (NOT(a(1)));
    
    y(2) <= u AND (NOT a(0)) AND a(1);
    
    y(3) <= u AND a(0) and a(1);
    
end dataflow;
