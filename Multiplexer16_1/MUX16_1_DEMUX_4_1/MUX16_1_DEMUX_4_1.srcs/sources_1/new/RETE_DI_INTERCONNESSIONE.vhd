library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity RETE_DI_INTERCONNESSIONE is
--  Port ( );
port(
    
    s : in STD_LOGIC_VECTOR(15 downto 0);
    
    controlMux : in STD_LOGIC_VECTOR(3 downto 0);
    
    controlDemux : in STD_LOGIC_VECTOR (1 downto 0);
    
    y : out STD_LOGIC_VECTOR(3 downto 0)
        
);
end RETE_DI_INTERCONNESSIONE;

architecture structural of RETE_DI_INTERCONNESSIONE is

signal u0 : STD_LOGIC := '0';

component MUX_16_1
port (

        S: in STD_LOGIC_VECTOR(15 downto 0);
        
        x : in STD_LOGIC_VECTOR (3 downto 0);
        
        y: out STD_LOGIC  

);

end component;

component DEMUX_1_4
port(    

   u : in STD_LOGIC;
   
   a : in STD_LOGIC_VECTOR(1 downto 0);
   
   y : out STD_LOGIC_VECTOR(3 downto 0)
   
);
end component;

begin

    mux: MUX_16_1
    port map(
    
        S => s,
        
        x => controlMux,
        
        y => u0 
    );
    
    demux: DEMUX_1_4
    port map(
    
        u => u0,
        
        a => controlDemux,
        
        y => y
   
    );

end structural;
