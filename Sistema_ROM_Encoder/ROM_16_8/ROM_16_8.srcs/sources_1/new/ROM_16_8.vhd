library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;


entity ROM_16_8 is
port (

   address : in std_logic_vector(3 downto 0);
   
   y : out std_logic_vector(7 downto 0)
   
);
end entity ROM_16_8;

architecture RTL of ROM_16_8 is

type MEMORY_16_8 is array (15 downto 0) of std_logic_vector(7 downto 0);
    constant ROM : MEMORY_16_8 := (
        x"00", x"01", x"02", x"03", x"04", x"05", x"06", x"07",
        x"08", x"09", x"0A", x"0B", x"0C", x"0D", x"0E", x"0F"
    );
    
begin
    
    y <= ROM(to_integer(unsigned(address)));
    
end architecture RTL;
