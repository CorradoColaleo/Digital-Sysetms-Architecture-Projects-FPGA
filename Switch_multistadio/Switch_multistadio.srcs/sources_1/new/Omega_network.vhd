----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.01.2025 19:03:09
-- Design Name: 
-- Module Name: Omega_network - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Omega_network is
  port (
    m0 : in std_logic_vector(5 downto 0);
    m1 : in std_logic_vector(5 downto 0);
    m2 : in std_logic_vector(5 downto 0);
    m3 : in std_logic_vector(5 downto 0);
    sel  : in std_logic_vector(3 downto 0);
    y0, y1, y2, y3 : out std_logic_vector(1 downto 0)
  );
end Omega_network;

architecture structural of Omega_network is
  component Unita_operativa is
    port (
        x0,x1,x2,x3: in std_logic_vector(1 downto 0);
        add_src,add_dest: in std_logic_vector(1 downto 0);
        y0,y1,y2,y3: out std_logic_vector(1 downto 0)
    );
  end component;

  component Unita_di_controllo is
    port (
        m0,m1,m2,m3: in std_logic_vector(5 downto 0);
        sel0,sel1,sel2,sel3 : in std_logic;
        u0,u1,u2,u3: out std_logic_vector(1 downto 0); 
        src,dest: out std_logic_vector(1 downto 0)
    );
  end component;

  signal temp_src, temp_dest : std_logic_vector(1 downto 0);
  signal temp_link0, temp_link1, temp_link2, temp_link3 : std_logic_vector(1 downto 0);

begin
  ou : unita_operativa
    port map (
        x0 => temp_link0,
        x1 => temp_link1,
        x2 => temp_link2,
        x3 => temp_link3,
        add_src => temp_src,
        add_dest => temp_dest,
        y0 => y0,
        y1 =>y1,
        y2 => y2,
        y3 => y3
    );

  cu : unita_di_controllo
    port map (
        m0 => m0,
        m1 => m1,
        m2 => m2,
        m3 => m3,
        sel0 => sel(0),
        sel1 => sel(1),
        sel2 => sel(2),
        sel3 => sel(3),
        u0 => temp_link0,
        u1 => temp_link1,
        u2 => temp_link2,
        u3 => temp_link3, 
        src => temp_src,
        dest => temp_dest
    );

end structural;

