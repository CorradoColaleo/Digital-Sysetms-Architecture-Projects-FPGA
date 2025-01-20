library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity M_MACHINE is
--  Port ( );
port(

   x : in std_logic_vector (7 downto 0);
   
   y : out std_logic_vector (3 downto 0)

);
end M_MACHINE;

architecture structural of M_MACHINE is

component ENCODER_4_2
port(
        
     x : in std_logic_vector(3 downto 0); 
     
     y: out std_logic_vector(1 downto 0)
    
);

end component;

begin

    encoder0: ENCODER_4_2
        port map(
            x => x(7 downto 4),
            y => y(3 downto 2)
        );
    
    encoder1: ENCODER_4_2
        port map(
            x => x(3 downto 0),
            y => y(1 downto 0)
        );

end structural;
