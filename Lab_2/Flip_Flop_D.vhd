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
begin
    process(clock)
    begin
        if rising_edge(clock) then
            Q <= D;
        end if;
    end process;
end arch;
