-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 27.1.2025 20:08:43 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_Omega_network is
end tb_Omega_network;

architecture tb of tb_Omega_network is

    component Omega_network
        port (m0  : in std_logic_vector (5 downto 0);
              m1  : in std_logic_vector (5 downto 0);
              m2  : in std_logic_vector (5 downto 0);
              m3  : in std_logic_vector (5 downto 0);
              sel : in std_logic_vector (3 downto 0);
              y0  : out std_logic_vector (1 downto 0);
              y1  : out std_logic_vector (1 downto 0);
              y2  : out std_logic_vector (1 downto 0);
              y3  : out std_logic_vector (1 downto 0));
    end component;

    signal m0  : std_logic_vector (5 downto 0);
    signal m1  : std_logic_vector (5 downto 0);
    signal m2  : std_logic_vector (5 downto 0);
    signal m3  : std_logic_vector (5 downto 0);
    signal sel : std_logic_vector (3 downto 0);
    signal y0  : std_logic_vector (1 downto 0);
    signal y1  : std_logic_vector (1 downto 0);
    signal y2  : std_logic_vector (1 downto 0);
    signal y3  : std_logic_vector (1 downto 0);

begin

    dut : Omega_network
    port map (m0  => m0,
              m1  => m1,
              m2  => m2,
              m3  => m3,
              sel => sel,
              y0  => y0,
              y1  => y1,
              y2  => y2,
              y3  => y3);

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        m0 <= (others => '0');
        m1 <= (others => '0');
        m2 <= (others => '0');
        m3 <= (others => '0');
        sel <= (others => '0');

        -- EDIT Add stimuli here
        
        wait for 100 ns;
        sel <= "1010"; -- vogliono trasmettere 1 e 3 -> ordine s3-s2-s1-s0
        m0 <= "001011";
        m1 <= "011111"; --dovrei vedere 11 sull'uscita 3
        m2 <= "100010";
        m3 <= "110100";
        
        wait for 10 ns;
        sel <= "0101"; -- vogliono trasmettere 0 e 2 -> ordine s3-s2-s1-s0
        m0 <= "001001"; 
        m1 <= "011111"; --dovrei vedere 01 sull'uscita 2
        m2 <= "100010";
        m3 <= "110100";
        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_Omega_network of tb_Omega_network is
    for tb
    end for;
end cfg_tb_Omega_network;