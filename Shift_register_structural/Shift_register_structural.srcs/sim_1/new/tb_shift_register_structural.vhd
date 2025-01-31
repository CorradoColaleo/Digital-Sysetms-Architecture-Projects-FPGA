
library ieee;
use ieee.std_logic_1164.all;

entity tb_Shift_register_structural is
end tb_Shift_register_structural;

architecture tb of tb_Shift_register_structural is

  -- Component declaration
  component Shift_register_structural
    port (
      clock: in std_logic;
      ingresso: in std_logic;
      dir: in std_logic;
      y: in integer range 1 to 2;
      output: out std_logic_vector(3 downto 0)
    );
  end component;

  -- Signals
  signal clock: std_logic;
  signal ingresso: std_logic;
  signal dir: std_logic;
  signal y: integer range 1 to 2;
  signal output: std_logic_vector(3 downto 0);

  -- Testbench period
  constant TbPeriod: time := 50 ns; -- Adjust as needed

  begin

    -- Clock generation
    clk : process
      begin
        clock <= '0';
        wait for TbPeriod/2;
        clock <= '1';
        wait for TbPeriod/2;
      end process;

    -- DUT instantiation
    dut: Shift_register_structural
      port map (
        clock => clock,
        ingresso => ingresso,
        dir => dir,
        y => y,
        output => output
      );

    -- Stimulus process
    stimuli: process
    begin
      wait for 100 ns;
      
      -- Initial values
      ingresso <= '0';
      dir <= '0';
      y <= 1;

      -- Test case 1: Shift right by 1 bit
      wait for TbPeriod;
      ingresso <= '1';
      wait for TbPeriod;
      
      -- Test case 2: Shift right by 2 bits
      y <= 2;
      ingresso <= '0';
      wait for TbPeriod;
      wait for TbPeriod;

      -- Test case 3: Shift left by 1 bit
      dir <= '1';
      y <= 1;
      ingresso <= '1';
      wait for TbPeriod;

      -- Test case 4: Shift left by 2 bits
      wait for TbPeriod;
      y <= 2;
      dir <= '1';
      ingresso <= '0';

    end process stimuli;

end tb;