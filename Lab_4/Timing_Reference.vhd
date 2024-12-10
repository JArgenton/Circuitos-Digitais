library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity Timing_Reference is
    port ( 
        clk: in std_logic;       -- Pin connected to 50 MHz clock
        clk_1kHz: out std_logic
    );
end Timing_Reference;

architecture freq_div of Timing_Reference is
    signal count: integer := 1;
    signal tmp : std_logic := '0';
begin

    process(clk)
    begin
        if(clk'event and clk='1') then
            count <= count + 1;
            if (count = 12500) then
                tmp <= NOT tmp;  -- Toggle the signal
                count <= 1;      -- Reset the counter
            end if;
        end if;
        clk_1kHz <= tmp;          -- Assign output
    end process;

end freq_div;
