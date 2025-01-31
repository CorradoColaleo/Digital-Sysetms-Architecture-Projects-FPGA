library ieee;
use ieee.std_logic_1164.all;

entity tb_ROM_M_MACHINE is
end tb_ROM_M_MACHINE;

architecture tb of tb_ROM_M_MACHINE is

    component ROM_M_MACHINE
        port (s : in std_logic_vector (3 downto 0);
              y : out std_logic_vector (3 downto 0));
    end component;

    signal s : std_logic_vector (3 downto 0);
    signal y : std_logic_vector (3 downto 0);

begin

    dut : ROM_M_MACHINE
    port map (s => s,
              y => y);

    stimuli : process
    begin
    
        wait for 100ns;
        -- EDIT Adapt initialization as needed
        s <= "0000"; 
        
        wait for 10ns;
        
        s <= "0001";
        
        wait for 10ns;
        
        s <= "1011";
        
        wait for 10ns;
        
        s <= "1010"; 
    

        -- EDIT Add stimuli here

        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_ROM_M_MACHINE of tb_ROM_M_MACHINE is
    for tb
    end for;
end cfg_tb_ROM_M_MACHINE;