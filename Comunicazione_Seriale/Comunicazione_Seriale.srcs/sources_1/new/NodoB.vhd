library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NodoB is
  Port ( 
       clk_b , s_rst, s_RXD : in std_logic ;
       b_PE,b_FE,b_OE,s_DONE : out std_logic ;
       Uscita : out std_logic_vector(7 downto 0)
  );
end NodoB;

architecture Behavioral of NodoB is


component Rs232RefComp is
    Port ( 
		TXD 	: out std_logic  	:= '1';
    	RXD 	: in  std_logic;					
    	CLK 	: in  std_logic;					--Master Clock
		DBIN 	: in  std_logic_vector (7 downto 0);--Data Bus in
		DBOUT : out std_logic_vector (7 downto 0);	--Data Bus out
		RDA	: inout std_logic;						--Read Data Available(1 quando il dato è disponibile nel registro rdReg)
		TBE	: inout std_logic 	:= '1';				--Transfer Bus Empty(1 quando il dato da inviare è stato caricato nello shift register)
		RD		: in  std_logic;					--Read Strobe(se 1 significa "leggi" --> fa abbassare RDA)
		WR		: in  std_logic;					--Write Strobe(se 1 significa "scrivi" --> fa abbassare TBE)
		PE		: out std_logic;					--Parity Error Flag
		FE		: out std_logic;					--Frame Error Flag
		OE		: out std_logic;					--Overwrite Error Flag
		RST		: in  std_logic	:= '0');			--Master Reset
end component;

component ContModM is
    generic (
        
        n : positive := 3;
        m : positive := 8
    );
    port (
        clock_cont : in std_logic;
        reset : in std_logic := '0';
        en_count : in std_logic;
        end_count : out std_logic;
        y : out std_logic_vector(n - 1 downto 0)
    );
end component;

component Wom_N_M is
    Generic(
        len_sel : positive :=3;
        M : positive := 8
    );
    Port (
        clock_mem : in std_logic;
        write : in std_logic;
        input_val : in std_logic_vector(M-1 downto 0);
        output_val: out std_logic_vector(M-1 downto 0);
        address: in std_logic_vector(len_sel-1 downto 0)
    ); end component;
 
component Rete_controllo_B is
 Port (
     clock,RST,end_count,RDA : in std_logic;
     RD, rst_count , count_in ,Write,DONE : out std_logic );
end component;
 
signal temp_RD, temp_RDA,temp_tbe, temp_write, temp_count, temp_rst_cont, temp_end_count : std_logic;
signal temp_Data_WOM  : std_logic_vector(7 downto 0 );
signal temp_address : std_logic_vector (2 downto 0);

signal temp_TXD,temp_wr : std_logic := '0';
signal temp_DBIN : std_logic_vector(7 downto 0) := (others => '0');
 
begin
    
    wom : Wom_N_M 
        generic map (
            len_sel => 3,
            M => 8
        )
        port map (
        clock_mem => clk_b,
        write => temp_write,
        input_val=> temp_Data_WOM,
        output_val => Uscita,
        address => temp_address
        );
        
    cont : ContModM 
        generic map (
           n=> 3,
           m=> 8       
        ) 
        port map(
            clock_cont => clk_B,
            reset => temp_rst_cont,
            en_count => temp_Count,
            end_count => temp_end_count,
            y => temp_address 
        );
        
    rx_uart : Rs232RefComp 
       port map(
        TXD => temp_TXD,
        RXD => s_RXD,
        clk => clk_B,
        DBIN => temp_DBIN,
        DBOUT => temp_Data_WOM,
        RDA => temp_RDA,
        TBE => temp_tbe,
        RD => temp_RD,
        WR => '0',
        PE => b_PE,
        FE => b_FE,
        OE => b_OE,
        RST => s_rst
        
       );
  
  rc_B : Rete_controllo_B 
  port map(
    clock => clk_b,
    rst => s_rst,
    end_count => temp_end_count,
    RDA => temp_RDA,
    RD => temp_RD,
    rst_count => temp_rst_cont,
    count_in => temp_count,
    Write => temp_write,
    DONE => s_DONE
  ); 
     
    
end Behavioral;
