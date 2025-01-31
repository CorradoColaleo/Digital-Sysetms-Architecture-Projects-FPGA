LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE work.ALL;

ENTITY riconoscitore IS
    PORT (
        i : IN STD_LOGIC;
        B1 : IN  STD_LOGIC;
        B2 : IN STD_LOGIC;
        A : IN STD_LOGIC;
        RST : IN STD_LOGIC;
        M : IN STD_LOGIC;
        Y : OUT STD_LOGIC
    );
END riconoscitore;

ARCHITECTURE behaviorial OF riconoscitore IS
    TYPE stato IS (S0, S1, S2, S3, S4);

    SIGNAL stato_attuale : stato := S0;
    SIGNAL stato_prossimo : stato;

    SIGNAL m_temp : STD_LOGIC := '0';
    SIGNAL Y_temp : STD_LOGIC;
    
BEGIN
    f_stato_uscita: process(stato_attuale)
    begin
        case stato_attuale is 
            when S0 =>
                if m_temp = '0' then
                    if (i = '0') then
                        stato_prossimo <= S3;
                        Y_temp <= '0';
                    else 
                        stato_prossimo <= S1;
                        Y_temp <= '0';
                    end if;
                elsif m_temp = '1' then 
                    if (i = '0') then
                        stato_prossimo <= S0;
                        Y_temp <= '0';
                    else 
                        stato_prossimo <= S1;
                        Y_temp <= '0';
                    end if;
                else
                    stato_prossimo <= S0;
                    Y_temp <= '0';
                end if;
 
            when S1 =>
                if m_temp = '0' then 
                    if (i = '0') then
                        stato_prossimo <= S2;
                        Y_temp <= '0';
                    else 
                        stato_prossimo <= S4;
                        Y_temp <= '0';
                    end if;
                elsif m_temp = '1' then 
                    if (i = '0') then
                        stato_prossimo <= S2;
                        Y_temp <= '0';
                    else 
                        stato_prossimo <= S1;
                        Y_temp <= '0';
                    end if;
                else
                    stato_prossimo <= S0;
                    Y_temp <= '0';
                end if;
 
            when S2 =>
                if m_temp = '0' then 
                    if (i = '0') then
                        stato_prossimo <= S0;
                        Y_temp <= '0';
                    else 
                        stato_prossimo <= S0;
                        Y_temp <= '1';
                    end if;
                elsif m_temp = '1' then 
                    if (i = '0') then
                        stato_prossimo <= S0;
                        Y_temp <= '0';
                    else 
                        stato_prossimo <= S0;
                        Y_temp <= '1';
                    end if;
                else
                    stato_prossimo <= S0;
                    Y_temp <= '0';
                end if;
 
            when S3 =>
                if m_temp = '0' then 
                    if (i = '0') then
                        stato_prossimo <= S4;
                        Y_temp <= '0';
                    else 
                        stato_prossimo <= S4;
                        Y_temp <= '0';
                    end if;
                elsif m_temp = '1' then 
                    if (i = '0') then
                        stato_prossimo <= S4;
                        Y_temp <= '0';
                    else 
                        stato_prossimo <= S4;
                        Y_temp <= '0';
                    end if;
                else
                    stato_prossimo <= S0;
                    Y_temp <= '0';                    
                end if;
 
            when S4 =>
                if m_temp = '0' then 
                    if (i = '0') then
                        stato_prossimo <= S0;
                        Y_temp <= '0';
                    else 
                        stato_prossimo <= S0;
                        Y_temp <= '0';
                    end if;
                elsif m_temp = '1' then 
                    if (i = '0') then
                        stato_prossimo <= S0;
                        Y_temp <= '0';
                    else 
                        stato_prossimo <= S0;
                        Y_temp <= '0';
                    end if;
                else
                    stato_prossimo <= S0;
                    Y_temp <= '0';                    
                end if;
        end case;
    end process;
 
    mem: process (A)
    begin
        if (rising_edge(A)) then
            if B1 = '1' then
                stato_attuale <= stato_prossimo;
                Y <= Y_temp;
            end if;
            if B2 = '1' then
                m_temp <= M;
            end if;
        end if;
    end process;
END behaviorial;