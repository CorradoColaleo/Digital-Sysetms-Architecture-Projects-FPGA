library ieee;
use ieee.std_logic_1164.all;

entity tb_M_MACHINE is
end tb_M_MACHINE;

architecture tb of tb_M_MACHINE is

    component M_MACHINE
        port (x : in std_logic_vector (7 downto 0);
              y : out std_logic_vector (3 downto 0));
    end component;

    signal x : std_logic_vector (7 downto 0);
    signal y : std_logic_vector (3 downto 0);

begin

    dut : M_MACHINE
    port map (x => x,
              y => y);

    stimuli : process
    begin
    
        wait for 100ns;
        -- EDIT Adapt initialization as needed
        x <= (others => '0');

        wait for 10ns;
        
        x <= "00000000";
        
        wait for 10ns;
        
        x <= "10001000";
        
        wait for 10ns;
        
        x <= "00101000";
        
        wait for 10ns;
        
        x <= "00111100";
        -- EDIT Add stimuli here

        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_M_MACHINE of tb_M_MACHINE is
    for tb
    end for;
end cfg_tb_M_MACHINE;