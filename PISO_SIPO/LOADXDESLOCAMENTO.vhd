library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LOAD_X_DESLOCAMENTO is 
    Port (
        Din   : in std_logic;
        LS    : in std_logic;
        Flip  : in std_logic;
        Qout  : out STD_LOGIC     
    );
end LOAD_X_DESLOCAMENTO;

architecture arch of LOAD_X_DESLOCAMENTO is
begin
    -- Corrigido o operador de atribuição e o cálculo lógico
    Qout <= (Flip and LS) or (Din and (not LS));
end arch;
