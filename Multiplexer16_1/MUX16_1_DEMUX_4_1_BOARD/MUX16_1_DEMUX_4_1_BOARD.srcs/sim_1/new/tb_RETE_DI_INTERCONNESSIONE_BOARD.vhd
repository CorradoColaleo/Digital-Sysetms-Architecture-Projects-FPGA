-- Testbench modificato per RETE_INTERCONNESSIONE_BOARD
library ieee;
use ieee.std_logic_1164.all;

entity tb_RETE_INTERCONNESSIONE_BOARD is
end tb_RETE_INTERCONNESSIONE_BOARD;

architecture tb of tb_RETE_INTERCONNESSIONE_BOARD is

    component RETE_INTERCONNESSIONE_BOARD
        port (clock            : in std_logic;
              reset            : in std_logic;
              load_first_part  : in std_logic;
              load_second_part : in std_logic;
              load_selection   : in std_logic;
              value8_in        : in std_logic_vector (7 downto 0);
              selection_mux    : in std_logic_vector (3 downto 0);
              selection_demux  : in std_logic_vector (1 downto 0);
              y                : out std_logic_vector (3 downto 0));
    end component;

    signal clock            : std_logic;
    signal reset            : std_logic;
    signal load_first_part  : std_logic;
    signal load_second_part : std_logic;
    signal load_selection   : std_logic;
    signal value8_in        : std_logic_vector (7 downto 0);
    signal selection_mux    : std_logic_vector (3 downto 0);
    signal selection_demux  : std_logic_vector (1 downto 0);
    signal y                : std_logic_vector (3 downto 0);

    constant TbPeriod : time := 1000 ns; -- Periodo del clock
    signal TbClock : std_logic := '0';
    signal TbSimEnded : std_logic := '0';

begin

    -- Instanziazione del DUT
    dut : RETE_INTERCONNESSIONE_BOARD
    port map (clock            => clock,
              reset            => reset,
              load_first_part  => load_first_part,
              load_second_part => load_second_part,
              load_selection   => load_selection,
              value8_in        => value8_in,
              selection_mux    => selection_mux,
              selection_demux  => selection_demux,
              y                => y);

    -- Generazione del clock
    TbClock <= not TbClock after TbPeriod/2;
    clock <= TbClock;

    -- Processo degli stimoli
    stimuli : process
    begin
        -- Sequenza di reset iniziale
        reset <= '1';
        wait for TbPeriod;
        reset <= '0';
        
        -- Configurazione iniziale
        load_first_part <= '0';
        load_second_part <= '0';
        load_selection <= '0';
        value8_in <= (others => '0');
        selection_mux <= (others => '0');
        selection_demux <= (others => '0');
        
        wait for TbPeriod;

        -- Inizio stimoli
        -- Stimolo 1: nessun caricamento
        load_first_part <= '0';
        load_second_part <= '0';
        load_selection <= '0';
        value8_in <= "11111111";
        selection_mux <= "1111";
        selection_demux <= "11";

        wait for TbPeriod;

        -- Stimolo 2: carica la prima parte
        load_first_part <= '1';
        load_second_part <= '0';
        load_selection <= '0';
        value8_in <= "10101010";
        selection_mux <= "0011";
        selection_demux <= "10";

        wait for TbPeriod;

        -- Stimolo 3: carica la seconda parte
        load_first_part <= '0';
        load_second_part <= '1';
        load_selection <= '0';
        value8_in <= "01010101";
        selection_mux <= "1100";
        selection_demux <= "01";

        wait for TbPeriod;

        -- Stimolo 4: esegui selezione
        load_first_part <= '0';
        load_second_part <= '0';
        load_selection <= '1';
        value8_in <= "00001111";
        selection_mux <= "1010";
        selection_demux <= "00";

        wait for TbPeriod;

        -- Stimolo 5: nessun caricamento, segnali inattivi
        load_first_part <= '0';
        load_second_part <= '0';
        load_selection <= '0';
        value8_in <= (others => '0');
        selection_mux <= (others => '0');
        selection_demux <= (others => '0');

        wait for TbPeriod;

        -- Terminazione della simulazione
        TbSimEnded <= '1';
        wait;
    end process;

end tb;

-- Configurazione obbligatoria per alcuni simulatori
configuration cfg_tb_RETE_INTERCONNESSIONE_BOARD of tb_RETE_INTERCONNESSIONE_BOARD is
    for tb
    end for;
end cfg_tb_RETE_INTERCONNESSIONE_BOARD;
