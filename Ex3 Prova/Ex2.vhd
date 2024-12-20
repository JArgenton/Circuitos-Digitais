library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ex2 is
    Port (
        A : in STD_LOGIC_VECTOR(3 downto 0);
        B : in STD_LOGIC_VECTOR(3 downto 0);
        C : in STD_LOGIC_VECTOR(3 downto 0);
        D : in STD_LOGIC_VECTOR(3 downto 0);
        S1 : in STD_LOGIC;
        S0 : in STD_LOGIC;
        X : out STD_LOGIC_VECTOR(3 downto 0)
    );
end Ex2;

architecture arch of Ex2 is
begin
    process(A, B, C, D, S1, S0)
    begin
        if (S1 = '0' and S0 = '0') then
            X <= A;
        elsif (S1 = '0' and S0 = '1') then
            X <= B;
        elsif (S1 = '1' and S0 = '0') then
            X <= C;
        elsif (S1 = '1' and S0 = '1') then
            X <= D;
        end if;
    end process;
end arch;