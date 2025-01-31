-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 23.1.2025 10:08:26 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_shift_register_behavioural is
end tb_shift_register_behavioural;

architecture tb of tb_Shift_register_behavioural is

    component Shift_register_behavioural
        port (serial_in    : in std_logic;
              clock        : in std_logic;
              reset        : in std_logic;
              shift        : in std_logic;
              direzione    : in std_logic;
              y            : in integer;
              serial_out   : out std_logic;
              parallel_out : out std_logic_vector (15 downto 0));
    end component;

    signal serial_in    : std_logic;
    signal clock       : std_logic;
    signal reset        : std_logic;
    signal shift        : std_logic;
    signal direzione    : std_logic;
    signal y            : integer;
    signal serial_out   : std_logic;
    signal parallel_out : std_logic_vector (15 downto 0);

    constant TbPeriod : time := 40 ns; -- EDIT Put right period here
    signal TbClock : std_logic := '0';
    signal TbSimEnded : std_logic := '0';

begin

    dut : Shift_register_behavioural
    port map (serial_in    => serial_in,
              clock        => clock,
              reset        => reset,
              shift        => shift,
              direzione    => direzione,
              y            => y,
              serial_out   => serial_out,
              parallel_out => parallel_out);
              
    clk : process
        begin
         clock <= '0';
         wait for TbPeriod/2;
         clock <= '1';
         wait for TbPeriod/2;
    end process;
    
    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        serial_in <= '0';
        shift <= '0';
        direzione <= '0';
        y <= 0;

        -- Reset generation
        -- EDIT: Check that reset is really your reset signal
        wait for 100 ns;
        reset <= '1';
        wait for TbPeriod;
        reset <= '0';
        wait for TbPeriod;

        -- Stimulus 1: Shift 1 bit to the right
        shift <= '1';
        direzione <= '0'; -- Right shift
        y <= 1; -- Shift by 1 bit
        serial_in <= '1'; -- Input bit
        
        wait for TbPeriod; 
        --100000000000
        
        -- Stimulus 2: Shift 2 bits to the right
        y <= 2; -- Shift by 2 bits
        serial_in <= '0';
        wait for TbPeriod;
        --001000000000
        
        -- Stimulus 3: Shift 1 bit to the left
        direzione <= '1'; -- Left shift
        y <= 1; -- Shift by 1 bit
        serial_in <= '1';
        wait for TbPeriod;
        --010000000001
        
        -- Stimulus 4: Shift 2 bits to the left
        y <= 2; -- Shift by 2 bits
        serial_in <= '0';
        wait for TbPeriod;
        --000000000100
        
        -- Stop the clock and hence terminate the simulation
        TbSimEnded <= '1';
        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_shift_register_behavioural of tb_shift_register_behavioural is
    for tb
    end for;
end cfg_tb_shift_register_behavioural;