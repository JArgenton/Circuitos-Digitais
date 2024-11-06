library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Flip_Flop_D is 
    Port (
        clock : in STD_LOGIC;    
        D     : in STD_LOGIC;     
        Q     : out STD_LOGIC     
    );
end Flip_Flop_D;

architecture arch of Flip_Flop_D is
    signal J, K : STD_LOGIC;
    signal Q_int, Q_bar : STD_LOGIC;
begin
    J <= D;
    K <= not D;

    process(clock)
    begin
        if rising_edge(clock) then
            Q_int <= not (not (J and clock) and Q_bar);
            Q_bar <= not (not (K and clock) and Q_int);
        end if;
    end process;

    Q <= Q_int;
end arch;
