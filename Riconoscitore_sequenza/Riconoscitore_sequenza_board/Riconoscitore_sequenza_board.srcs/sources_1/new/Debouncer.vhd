library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

ENTITY Debouncer IS
    GENERIC (                       
        CLK_period: integer := 10; 
        btn_noise_time: integer := 10000000 
    );
    PORT ( RST : in STD_LOGIC;
           CLK : in STD_LOGIC;
           BTN : in STD_LOGIC;
           CLEARED_BTN : out STD_LOGIC);
END Debouncer;

ARCHITECTURE Behavioral OF Debouncer IS

TYPE stato IS (NOT_PRESSED, CHK_PRESSED, PRESSED, CHK_NOT_PRESSED);
SIGNAL BTN_state : stato := NOT_PRESSED;

CONSTANT max_count : integer := btn_noise_time/CLK_period; 

BEGIN

deb: PROCESS (CLK)
VARIABLE count: integer := 0;

BEGIN
   IF rising_edge(CLK) THEN
	   
	   IF( RST = '1') THEN
	       BTN_state <= NOT_PRESSED;
	       CLEARED_BTN <= '0';
	   ELSE
	   	  CASE BTN_state IS
			WHEN NOT_PRESSED =>
			    IF( BTN = '1' ) THEN
					BTN_state <= CHK_PRESSED;
				ELSE 
					BTN_state <= NOT_PRESSED;
				END IF;
            WHEN CHK_PRESSED =>
                IF(count = max_count -1) THEN
                    IF(BTN = '1') THEN 
                        count:=0;
                        CLEARED_BTN <= '1';
                        BTN_state <= PRESSED;
                    ELSE
                        count:=0;
                        BTN_state <= NOT_PRESSED;
                    end if;
                        
                else 
                    count:= count+1;
                    BTN_state <= CHK_PRESSED;
                end if;
                
            when PRESSED =>
                CLEARED_BTN<= '0'; 
			     
			    if(BTN = '0') then
				    BTN_state <= CHK_NOT_PRESSED;
				else
				    BTN_state <= PRESSED;
				end if;
			
			when CHK_NOT_PRESSED =>
			    if(count = max_count -1) then
                    if(BTN = '0') then 
                        count:=0;
                        BTN_state <= NOT_PRESSED;
                    else
                        count:=0;
                        BTN_state <= PRESSED;
                    end if;
                        
                else 
                    count:= count+1;
                    BTN_state <= CHK_NOT_PRESSED;
                end if;
                
            when others => 
                BTN_state <= NOT_PRESSED;
		  end case;
    end if;  
  end if;  
end process;


end Behavioral;
