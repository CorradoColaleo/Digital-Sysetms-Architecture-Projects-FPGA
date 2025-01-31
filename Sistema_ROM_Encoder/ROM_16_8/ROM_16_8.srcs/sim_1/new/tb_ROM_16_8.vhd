-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 28.10.2024 12:39:16 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_ROM_16_8 is
end tb_ROM_16_8;

architecture tb of tb_ROM_16_8 is

    component ROM_16_8
        port (address : in std_logic_vector (3 downto 0);
              y       : out std_logic_vector (7 downto 0));
    end component;

    signal address : std_logic_vector (3 downto 0);
    signal y       : std_logic_vector (7 downto 0);

begin

    dut : ROM_16_8
    port map (address => address,
              y       => y);

    stimuli : process
    begin
        
        wait for 100ns;
        -- EDIT Adapt initialization as needed
        address <= "0000";
        
        wait for 10ns;
        
        address <="0001";
        
        wait for 10ns;
        
        address <= "1000";
        
        wait for 10ns;
        
        address <= "1010";

        -- EDIT Add stimuli here

        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_ROM_16_8 of tb_ROM_16_8 is
    for tb
    end for;
end cfg_tb_ROM_16_8;