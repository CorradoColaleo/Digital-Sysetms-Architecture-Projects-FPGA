library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ENCODER_4_2 is
--  Port ( );

port(
        
     x : in std_logic_vector(3 downto 0); 
     
     y: out std_logic_vector(1 downto 0)
    
);

end ENCODER_4_2;

architecture dataflow of ENCODER_4_2 is

begin

    y(1) <= x(2) or x(3);
    
    y(0) <= x(3) or (x(1) and (not(x(2))));

end dataflow;
