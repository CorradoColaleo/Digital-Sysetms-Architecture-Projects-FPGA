library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_rete_di_interconnessione is
end tb_rete_di_interconnessione;

architecture behavior of tb_rete_di_interconnessione is

    -- Component declaration of the entity we are testing
    component RETE_DI_INTERCONNESSIONE
        port(
            s : in STD_LOGIC_VECTOR(15 downto 0);
            controlMux : in STD_LOGIC_VECTOR(3 downto 0);
            controlDemux : in STD_LOGIC_VECTOR(1 downto 0);
            y : out STD_LOGIC_VECTOR(3 downto 0)
        );
    end component;

    -- Test signals
    signal s : STD_LOGIC_VECTOR(15 downto 0);
    signal controlMux : STD_LOGIC_VECTOR(3 downto 0);
    signal controlDemux : STD_LOGIC_VECTOR(1 downto 0);
    signal y : STD_LOGIC_VECTOR(3 downto 0);

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: RETE_DI_INTERCONNESSIONE
        port map(
            s => s,
            controlMux => controlMux,
            controlDemux => controlDemux,
            y => y
        );

    -- Stimulus process to test the functionality
    stim_proc: process
    begin
    
        -- Test Case 1: Controllo iniziale con valori minimi
        wait for 100 ns;
        s <= (others => '0');
        controlMux <= "0000";
        controlDemux <= "00";
        wait for 10 ns;
        
        -- Test Case 2: Seleziona s(0) tramite il MUX, instrada a y(0) tramite il DEMUX
        s <= "0000000000000001"; -- solo s(0) = '1', il resto è '0'
        controlMux <= "0000";     -- seleziona s(0) con il mux
        controlDemux <= "00";     -- invia a y(0) con il demux
        wait for 10 ns;
        
        -- Test Case 3: Seleziona s(7) tramite il MUX, instrada a y(2) tramite il DEMUX
        s <= "0000000010000000"; -- solo s(7) = '1'
        controlMux <= "0111";     -- seleziona s(7)
        controlDemux <= "10";     -- invia a y(2)
        wait for 10 ns;
        
        -- Test Case 4: Seleziona s(15) tramite il MUX, instrada a y(3) tramite il DEMUX
        s <= "1000000000000000"; -- solo s(15) = '1'
        controlMux <= "1111";     -- seleziona s(15)
        controlDemux <= "11";     -- invia a y(3)
        wait for 10 ns;

        -- Test Case 5: Seleziona s(5) tramite il MUX, instrada a y(1) tramite il DEMUX
        s <= "0000000000100000"; -- solo s(5) = '1'
        controlMux <= "0101";     -- seleziona s(5)
        controlDemux <= "01";     -- invia a y(1)
        wait for 10 ns;

        -- Test Case 6: Tutti i bit di s attivi, verifica vari percorsi con controlMux e controlDemux
        s <= "1111111111111111"; -- tutti gli ingressi attivi
        controlMux <= "1100";     -- seleziona s(12)
        controlDemux <= "00";     -- invia a y(0)
        wait for 10 ns;
        
        -- Termina la simulazione
        wait;
    end process;

end behavior;
