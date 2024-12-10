library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity MinuteCounter is
    Port (
        clk_min : in STD_LOGIC;  -- Clock de 1 minuto (gerado a partir do contador de segundos)
        reset   : in STD_LOGIC;  -- Reset
        count   : out integer range 0 to 9  -- Saída do contador
    );
end MinuteCounter;

architecture Behavioral of MinuteCounter is
    signal counter : integer range 0 to 9 := 0;
begin
    process (clk_min, reset)
    begin
        if reset = '1' then
            counter <= 0;
        elsif rising_edge(clk_min) then
            if counter = 9 then
                counter <= 0;
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;
    count <= counter;
end Behavioral;
