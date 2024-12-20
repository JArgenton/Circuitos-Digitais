library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity MillisecondCounter is
    Port (
        clk_ms : in STD_LOGIC;  -- Clock de 1 kHz
        reset  : in STD_LOGIC;  -- Reset
        count  : out integer range 0 to 999  -- Saída do contador
    );
end MillisecondCounter;

architecture Behavioral of MillisecondCounter is
    signal counter : integer range 0 to 999 := 0;
begin
    process (clk_ms, reset)
    begin
        if reset = '1' then
            counter <= 0;
        elsif rising_edge(clk_ms) then
            if counter = 999 then
                counter <= 0;
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;
    count <= counter;
end Behavioral;
