LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE work.ALL;

ENTITY control_unit IS
  PORT(
    B1 : IN STD_LOGIC;
    B2 : IN STD_LOGIC;
    S1 : IN STD_LOGIC;
    S2 : IN STD_LOGIC;
    CLK : IN STD_LOGIC;
    led: OUT STD_LOGIC
      
  );
END control_unit;

ARCHITECTURE Behavioral OF control_unit IS

COMPONENT Debouncer IS
    GENERIC (                       
        CLK_period: integer := 10;  
        btn_noise_time: integer := 10000000 
                                            
    );
    PORT ( RST : in STD_LOGIC;
           CLK : in STD_LOGIC;
           BTN : in STD_LOGIC;
           CLEARED_BTN : out STD_LOGIC);
end COMPONENT;

COMPONENT riconoscitore IS
    PORT (
        i : IN STD_LOGIC;
        B1 : IN  STD_LOGIC;
        B2 : IN STD_LOGIC;
        A : IN STD_LOGIC;
        RST : IN STD_LOGIC;
        M : IN STD_LOGIC;
        Y : OUT STD_LOGIC
    );
END COMPONENT;


SIGNAL cleared_i : STD_LOGIC ;
SIGNAL cleared_m : STD_LOGIC;

BEGIN
deb_i : Debouncer
PORT MAP(
    RST => '0',
    CLK => CLK,
    BTN => B1,
    CLEARED_BTN => cleared_i  
);

deb_m : Debouncer
PORT MAP(
    RST => '0',
    CLK => CLK,
    BTN => B2,
    CLEARED_BTN => cleared_m 
);

ric: riconoscitore
PORT MAP(
    i => S1,
    B1 => cleared_i,
    B2 => cleared_m,
    M => S2,
    A => CLK,
    RST => '0',
    Y => led
);

END Behavioral;
