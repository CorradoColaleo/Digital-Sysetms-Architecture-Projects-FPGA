library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ROM_M_MACHINE is

port(
    
    s : in std_logic_vector(3 downto 0);
    
    y : out std_logic_vector (3 downto 0)
    
);

end ROM_M_MACHINE;

architecture structural of ROM_M_MACHINE is

signal y0 : std_logic_vector (7 downto 0);

component M_MACHINE
    port(
        
       x : in std_logic_vector (7 downto 0);
       
       y : out std_logic_vector (3 downto 0)
    
);

end component;

component ROM_16_8

port (

   address : in std_logic_vector(3 downto 0);
   
   y : out std_logic_vector(7 downto 0)
   
);

end component;

begin
    
    rom16_8 : ROM_16_8
    port map (
        
        address => s, 
        
        y => y0
        
    );
    
    
    mMachine : M_MACHINE
    port map(
        
        x => y0,
        
        y => y
        
    );



end structural;
