-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 24.10.2024 11:47:26 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_MUX_16_1 is
end tb_MUX_16_1;

architecture tb of tb_MUX_16_1 is

    component MUX_16_1
        port (S0  : in std_logic;
              S1  : in std_logic;
              S2  : in std_logic;
              S3  : in std_logic;
              S4  : in std_logic;
              S5  : in std_logic;
              S6  : in std_logic;
              S7  : in std_logic;
              S8  : in std_logic;
              S9  : in std_logic;
              S10 : in std_logic;
              S11 : in std_logic;
              S12 : in std_logic;
              S13 : in std_logic;
              S14 : in std_logic;
              S15 : in std_logic;
              x0  : in std_logic;
              X1  : in std_logic;
              X2  : in std_logic;
              x3  : in std_logic;
              y   : out std_logic);
    end component;

    signal input  : std_logic_vector(15 downto 0) := (others => '0');
    signal control  : std_logic_vector (3 downto 0) := (others => '0');
    signal output  : std_logic := '0';
   
begin

    dut : MUX_16_1
    port map (S0  => input(0),
              S1  => input(1),
              S2  => input(2),
              S3  => input(3),
              S4  => input(4),
              S5  => input(5),
              S6  => input(6),
              S7  => input(7),
              S8  => input(8),
              S9  => input(9),
              S10 => input(10),
              S11 => input(11),
              S12 => input(12),
              S13 => input(13),
              S14 => input(14),
              S15 => input(15),
              x0  => control(0),
              X1  => control(1),
              X2  => control(2),
              x3  => control(3),
              y   => output
    );

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        wait for 100 ns;
        
        input <= "0000000000000000";
        
        control <= "0000";
        
        wait for 10 ns;
        
        input <= "0000000000000001";
        
        control <= "0000";
        
        wait for 10 ns;
        
        input <= "0000000000000001";
        
        control <= "0001";
        
        wait for 10 ns;
        
        input <= "0010000000000000";
        
        control <= "1101";
        
        -- EDIT Add stimuli here
        
        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_MUX_16_1 of tb_MUX_16_1 is
    for tb
    end for;
end cfg_tb_MUX_16_1;