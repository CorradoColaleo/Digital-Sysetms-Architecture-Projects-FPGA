library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Testbench per la rete di interconnessione con il clock a 100 MHz
entity tb_RETE_INTERCONNESSIONE_BOARD_1 is
end tb_RETE_INTERCONNESSIONE_BOARD_1;

architecture behavior of tb_RETE_INTERCONNESSIONE_BOARD_1 is

    -- Segnali di test per i segnali di ingresso
    signal clock : std_logic := '0';
    signal reset : std_logic := '0';
    signal load_first_part : std_logic := '0';
    signal load_second_part : std_logic := '0';
    signal load_selection : std_logic := '0';
    signal value8_in : std_logic_vector(7 downto 0) := (others => '0');
    signal selection_mux : std_logic_vector(3 downto 0) := (others => '0');
    signal selection_demux : std_logic_vector(1 downto 0) := (others => '0');
    signal y : std_logic_vector(3 downto 0);

    -- Periodo del clock (10 ns, 100 MHz)
    constant clk_period : time := 10 ns;

    -- Componente da testare: RETE_INTERCONNESSIONE_BOARD
    component RETE_INTERCONNESSIONE_BOARD is
        port (
            clock : in std_logic;
            reset : in std_logic;
            load_first_part : in std_logic;
            load_second_part : in std_logic;
            load_selection : in std_logic;
            value8_in : in std_logic_vector(7 downto 0);
            selection_mux : in std_logic_vector(3 downto 0);
            selection_demux : in std_logic_vector(1 downto 0);
            y : out std_logic_vector(3 downto 0)
        );
    end component;

begin   
       
    -- Clock process (ciclo del clock)
    clk_process : process
    begin
        clock <= '0';
        wait for clk_period / 2;
        clock <= '1';
        wait for clk_period / 2;
    end process;

    -- Instanzia il componente da testare (RETE_INTERCONNESSIONE_BOARD)
    uut: RETE_INTERCONNESSIONE_BOARD
        port map (
            clock => clock,
            reset => reset,
            load_first_part => load_first_part,
            load_second_part => load_second_part,
            load_selection => load_selection,
            value8_in => value8_in,
            selection_mux => selection_mux,
            selection_demux => selection_demux,
            y => y
        );

    -- Stimolazioni e test (stimulus process)
    stimulus_process: process
    begin
        
        wait for 100ns;

        -- Inizializzazione dei segnali
        reset <= '1';  -- Attiviamo il reset
        wait for 20 ns;
        reset <= '0';  -- Disattiviamo il reset

        -- Test 1: carica la prima parte dei dati
        load_first_part <= '1';
        value8_in <= "11111111";  -- Valore di test
        selection_mux <= "1111";
        selection_demux <= "11";
        wait for 20 ns;
        load_first_part <= '0';  -- Disattiviamo il carico della prima parte

        -- Test 2: carica la seconda parte dei dati
        load_second_part <= '1';
        value8_in <= "11111111";  -- Valore di test
        selection_mux <= "1111";
        selection_demux <= "11";
        wait for 20 ns;
        load_second_part <= '0';  -- Disattiviamo il carico della seconda parte

        -- Test 3: attiva il load_selection
        load_selection <= '1';
        selection_mux <= "1111";  -- Selezione per il mux
        selection_demux <= "11";  -- Selezione per il demux
        wait for 20 ns;
        load_selection <= '0';  -- Disattiviamo il load_selection
        
        wait for 100ns;
        selection_mux <= "0000";  
        selection_demux <= "00";
        
        wait for 100ns;
        
        -- Test 4: terminazione della simulazione
        assert false report "Fine della simulazione" severity failure;
        wait;
    end process;

end behavior;
