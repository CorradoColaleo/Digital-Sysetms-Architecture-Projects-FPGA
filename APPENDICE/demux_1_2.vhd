LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY demux_1_2 IS
    PORT (
        d : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        s : IN STD_LOGIC;
        y1, y2 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
    );
END demux_1_2;

ARCHITECTURE behavioral OF demux_1_2 IS
BEGIN
    PROCESS (d, s) IS BEGIN
        IF (s = '0') THEN
            y1 <= d;
            y2 <= "00";
        ELSIF (s = '1') THEN
            y2 <= d;
            y1 <= "00";
        END IF;
    END PROCESS;
END behavioral;