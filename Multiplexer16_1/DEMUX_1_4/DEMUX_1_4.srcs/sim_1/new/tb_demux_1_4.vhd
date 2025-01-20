library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_demux_1_4 is
-- Il test bench non ha porte, poiché serve solo per simulare il comportamento del demux
end tb_demux_1_4;

architecture behavior of tb_demux_1_4 is

    -- Component del demux che vogliamo testare
    component DEMUX_1_4
        port(
            u : in STD_LOGIC;
            a : in STD_LOGIC_VECTOR(1 downto 0);
            y : out STD_LOGIC_VECTOR(3 downto 0)
        );
    end component;

    -- Segnali per collegare il DUT (Device Under Test)
    signal u : STD_LOGIC;
    signal a : STD_LOGIC_VECTOR(1 downto 0);
    signal y : STD_LOGIC_VECTOR(3 downto 0);

begin

    -- Instanziazione del demux sotto test
    uut: DEMUX_1_4
        port map (
            u => u,
            a => a,
            y => y
        );

    -- Processo per stimolare i segnali e verificare il comportamento
    stim_proc: process
    begin
        
        wait for 100 ns;
        -- Caso 1: u = '0', a = "00"
        u <= '0';
        a <= "00";
        wait for 10 ns;
        
        -- Caso 2: u = '1', a = "00"
        u <= '1';
        a <= "00";
        wait for 10 ns;
        
        -- Caso 3: u = '0', a = "01"
        u <= '0';
        a <= "01";
        wait for 10 ns;
        
        -- Caso 4: u = '1', a = "01"
        u <= '1';
        a <= "01";
        wait for 10 ns;
        
        -- Caso 5: u = '0', a = "10"
        u <= '0';
        a <= "10";
        wait for 10 ns;
        
        -- Caso 6: u = '1', a = "10"
        u <= '1';
        a <= "10";
        wait for 10 ns;
        
        -- Caso 7: u = '0', a = "11"
        u <= '0';
        a <= "11";
        wait for 10 ns;
        
        -- Caso 8: u = '1', a = "11"
        u <= '1';
        a <= "11";
        wait for 10 ns;

        -- Terminare la simulazione
        wait;
    end process;

end behavior;
