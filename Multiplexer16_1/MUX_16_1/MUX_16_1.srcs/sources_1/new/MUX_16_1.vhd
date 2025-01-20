library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_16_1 is
--  Port ( );
port(
        S: in STD_LOGIC_VECTOR(15 downto 0);
        x : in STD_LOGIC_VECTOR (3 downto 0);
        y: out STD_LOGIC 
 );
end MUX_16_1;

architecture structural of MUX_16_1 is

signal u0 : STD_LOGIC := '0';
signal u1 : STD_LOGIC := '0';
signal u2 : STD_LOGIC := '0';
signal u3 : STD_LOGIC := '0';

component mux_4_1
port (

    b0 : in STD_LOGIC; 
    b1 : in STD_LOGIC;
    b2 : in STD_LOGIC;
    b3 : in STD_LOGIC;
    s0 : in STD_LOGIC; 
    s1 : in STD_LOGIC;
    y0 : out STD_LOGIC
   

);
end component;

begin
    
    mux0: mux_4_1
        Port map (
            b0 => S(0),
            b1 => S(1),
            b2 => S(2),
            b3 => S(3),
            s0 => x(0),
            s1 => x(1),
            y0 => u0
        );
    mux1: mux_4_1
        Port map (
            b0 => S(4),
            b1 => S(5),
            b2 => S(6),
            b3 => S(7),
            s0 => x(0),
            s1 => x(1),
            y0 => u1
        );
    mux2: mux_4_1
        Port map (
            b0 => S(8),
            b1 => S(9),
            b2 => S(10),
            b3 => S(11),
            s0 => x(0),
            s1 => x(1),
            y0 => u2
        );
    mux3: mux_4_1
        Port map (
            b0 => S(12),
            b1 => S(13),
            b2 => S(14),
            b3 => S(15),
            s0 => x(0),
            s1 => x(1),
            y0 => u3
        ); 
   mux4: mux_4_1
        Port map (
            b0 => u0,
            b1 => u1,
            b2 => u2,
            b3 => u3,
            s0 => x(2),
            s1 => x(3),
            y0 => y
        );   

end structural;
