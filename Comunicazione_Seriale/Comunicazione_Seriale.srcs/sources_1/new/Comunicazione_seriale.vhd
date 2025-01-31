
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Comunicazione_seriale is
Port (
    clck, start, tx_rst, rx_rst : in std_logic;
    Data : out std_logic_vector (7 downto 0);
    PE,FE,OE : out std_logic 
 );
end Comunicazione_seriale;

architecture Behavioral of Comunicazione_seriale is
component NodoB is
Port ( 
       clk_b , s_rst, s_RXD : in std_logic ;
       b_PE,b_FE,b_OE,s_DONE : out std_logic ;
       Uscita : out std_logic_vector(7 downto 0)
  );
end component;

component NodoA is
Port (
    clka,s_rst,start,s_DONE	: in  std_logic;
    s_TXD	: out  std_logic
 );
end component;

signal Serial_bit : std_logic ;
signal temp_DONE : std_logic :='0';

begin

nodo_a : NodoA 
port map(
    clka => clck,
    s_rst => tx_rst,
    Start => Start,
    s_TXD => Serial_bit,
    s_DONE => temp_DOne
     
);

nodo_b : NodoB
port map(
    clk_b => clck,
    s_rst => rx_rst,
    s_RXD => Serial_bit,
    b_PE =>  PE ,
    b_FE => FE,
    b_OE => OE ,
    Uscita => Data,
    s_DONE => temp_DOne
);


end Behavioral;
