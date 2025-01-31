library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NodoA is
Port (
    clka,s_rst,start,s_DONE	: in  std_logic;
    s_TXD	: out  std_logic
 );
end NodoA;

architecture Behavioral of NodoA is

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

component ROM_N_M is
    Generic(
        len_sel : positive := 3;
        M : positive := 8
    );
    Port ( 
        clock_rom: in std_logic;
        read : in std_logic;
        address : in std_logic_vector(len_sel-1 downto 0);
        rom_output: out std_logic_vector(M-1 downto 0)
    );
end component;

component Rete_controllo_A is
 Port (
     clock,start,done,rst : in std_logic;
     y_count : in std_logic_vector(2 downto 0);
     rst_count,count_in,read,write : out std_logic
 
  ); end component;
 

signal temp_read, temp_count, temp_TBE, temp_rst_count, temp_end_count,temp_wr : std_logic :='0';
signal temp_Data_ROM  : std_logic_vector(7 downto 0 ) := (others => '0');
signal temp_address : std_logic_vector (2 downto 0) := (others => '0');
signal temp_RXD,temp_RDA,temp_RD,temp_PE,temp_FE,temp_OE,temp_RST : std_logic := '0';
signal temp_DBOUT : std_logic_vector(7 downto 0):= (others => '0');
begin

 rc_A : Rete_controllo_A
 Port map  (
    clock=> clkA ,
    start=> Start,
    RST => s_rst,
    rst_count => temp_rst_count ,
    count_in => temp_count,
    read => temp_read,
    write  => temp_wr,
    done => s_DONE,
    y_count => temp_address
  ); 

rom : ROM_N_M 
    generic map (
        len_sel => 3,
        M => 8
    )
    port map(
        clock_rom => clka,
        read => temp_read,
        address => temp_address,
        rom_output => temp_Data_ROM 
    );
    
cont : ContModM
generic map(
    n=> 3,
    m=> 8
)
port map(
    clock_cont => clkA,
    reset => temp_rst_count,
    en_count => temp_count,
    end_count => temp_end_count,
    y => temp_address
);

tx_uart : Rs232RefComp
port map(
    TXD => s_TXD,
    RXD => temp_RXD,
    CLK => CLKA,
    DBIN => temp_Data_ROM,
    DBOUT => temp_DBOUT,
    RDA => temp_RDA,
    TBE => temp_TBE,
    RD => '0',
    WR => temp_wr,
    PE => temp_PE,
    FE => temp_FE,
    OE => temp_OE,
    rst=> s_rst
);


end Behavioral;
