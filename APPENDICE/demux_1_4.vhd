LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY demux_1_4 IS
    PORT (
        a : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        s : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        y0, y1, y2, y3 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
    );
END demux_1_4;

ARCHITECTURE behavioral OF demux_1_4 IS

BEGIN
    PROCESS (a, s) IS
    BEGIN
        IF (s = "00") THEN
            y0 <= a;
            y1 <= "00";
            y2 <= "00";
            y3 <= "00";
        ELSIF (s = "01") THEN
            y1 <= a;
            y0 <= "00";
            y2 <= "00";
            y3 <= "00";
        ELSIF (s = "10") THEN
            y2 <= a;
            y0 <= "00";
            y1 <= "00";
            y3 <= "00";
        ELSE
            y3 <= a;
            y0 <= "00";
            y1 <= "00";
            y2 <= "00";
        END IF;
    END PROCESS;
    
END behavioral;