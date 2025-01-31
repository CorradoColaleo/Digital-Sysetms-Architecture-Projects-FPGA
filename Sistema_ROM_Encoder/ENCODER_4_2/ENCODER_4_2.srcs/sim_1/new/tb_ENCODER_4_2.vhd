-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 28.10.2024 13:03:11 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_ENCODER_4_2 is
end tb_ENCODER_4_2;

architecture tb of tb_ENCODER_4_2 is

    component ENCODER_4_2
        port (x : in std_logic_vector (3 downto 0);
              y : out std_logic_vector (1 downto 0));
    end component;

    signal x : std_logic_vector (3 downto 0);
    signal y : std_logic_vector (1 downto 0);

begin

    dut : ENCODER_4_2
    port map (x => x,
              y => y);

    stimuli : process
    begin
    
        wait for 100 ns;
        -- EDIT Adapt initialization as needed
        x <= "0000";
        
        wait for 10ns;
        
        x <= "0010";
        
        wait for 10ns; 
        
        x <= "0011";
        
        wait for 10ns; 
        
        x <= "0100";
        
        wait for 10ns; 
        
        x <= "0110";
        
        wait for 10ns; 
        
        x <= "0111";

        wait for 10ns; 
        
        x <= "1000";    
        
        wait for 10ns; 
        
        x <= "1110";      
        
        

        -- EDIT Add stimuli here

        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_ENCODER_4_2 of tb_ENCODER_4_2 is
    for tb
    end for;
end cfg_tb_ENCODER_4_2;