library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity control_unit is
    Port(
        clock: in std_logic;
        reset: in std_logic; 
        load_first_part: in std_logic; 
        load_second_part: in std_logic;
        load_selection: in std_logic; 
        value8_in: in std_logic_vector(7 downto 0);
        value16_out: out std_logic_vector(15 downto 0);
        selection_mux: in std_logic_vector(3 downto 0);
        selection_demux: in std_logic_vector(1 downto 0);
        selection_out: out std_logic_vector(5 downto 0)
    );
end control_unit;

architecture Behavioral of control_unit is
    -- Registri interni
    signal reg: std_logic_vector(15 downto 0):= (others => '0');
    signal sel: std_logic_vector(5 downto 0):= (others => '0'); 
begin 
    -- Assegna i valori dei registri ai segnali di uscita
    value16_out <= reg;
    selection_out <= sel;

    main: process(clock)
    begin
        if clock'event and clock = '1' then
            if reset = '1' then
                -- Resetta i registri
                reg <= (others => '0');
                sel <= (others => '0');
            else
                -- Priorità dei segnali di caricamento
                if load_first_part = '1' then
                    reg(7 downto 0) <= value8_in; -- Carica la prima parte
                elsif load_second_part = '1' then
                    reg(15 downto 8) <= value8_in; -- Carica la seconda parte
                elsif load_selection = '1' then
                    sel(5 downto 2) <= selection_mux; -- Configura mux
                    sel(1 downto 0) <= selection_demux; -- Configura demux
                end if;
            end if;
        end if;
    end process;
end Behavioral;
