library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

entity tb is
end tb;

architecture Behavioral of tb is

    -- Component Declaration for Comunicazione_seriale
    component Comunicazione_seriale 
        Port (
    clck,Start, tx_rst, rx_rst : in std_logic;
    Data : out std_logic_vector (7 downto 0);
    PE,FE,OE : out std_logic 
 );
    end component;

    -- Signals for testing
    signal clock   : std_logic := '0';
    signal Start   : std_logic := '0';
    signal tx_rst  : std_logic := '0';
    signal rx_rst  : std_logic := '0';
    signal Data    : std_logic_vector (7 downto 0);
    signal PE      : std_logic;
    signal FE      : std_logic;
    signal OE      : std_logic;
    -- Clock generation process
    constant CLOCK_PERIOD : time := 10 ns;
    

begin

    -- Instantiate the Unit Under Test (UUT)
    UUT: Comunicazione_seriale
        Port map (
            clck   => clock,
            Start   => Start,
            tx_rst  => tx_rst,
            rx_rst  => rx_rst,
            Data    => Data,
            PE      => PE,
            FE      => FE,
            OE      => OE
        );

    -- Clock generation
    clk_gen: process
    begin
        while true loop
            clock <= '0';
            wait for CLOCK_PERIOD / 2;
            clock <= '1';
            wait for CLOCK_PERIOD / 2;
        end loop;
    end process;

    tb_proc : process
    begin 
        wait for 100 ns;
        tx_rst  <= '1';
        rx_rst  <= '1';
        wait for 10 ns;
        tx_rst  <= '0';
        rx_rst  <= '0';
        wait for 10 ns;
        Start <= '1';       --"10101010",
                            --"10101000",
                            --"10100000",
                            --"10000000",
                            --"10101010",
                            --"10101000",
                            --"10100000",
                            --"10000000"
        wait for 50 ns;
        Start <= '0';
    wait;  
    end process;


end Behavioral;
