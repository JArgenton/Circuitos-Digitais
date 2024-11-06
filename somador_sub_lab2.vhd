library IEEE;
use ieee.std_logic_1164.all;

entity SOMADOR_E_SUBTRATOR_HEXA is
    port(
        Ain: in std_logic_vector(3 downto 0);  -- Palavra A
        Bin: in std_logic_vector(3 downto 0);  -- Palavra B
        Cin: in std_logic;                      -- Cin (carry-in)
        CCout: out std_logic;                   -- Carry-out (agora é 'out' em vez de 'buffer')
        Sout: out std_logic_vector(3 downto 0)  -- Palavra resultado
    );
end SOMADOR_E_SUBTRATOR_HEXA;

architecture Soma_E_SUB of SOMADOR_E_SUBTRATOR_HEXA is
    signal AUX: std_logic_vector(3 downto 0); -- Sinal auxiliar para armazenar a saída do inversor
    signal Sout_Aux: std_logic_vector(3 downto 0); -- Sinal intermediário para Sout
begin

    -- Instancia o inversor
    inversor: entity work.Inversor_4bits
        port map(
            Word => Bin,                      -- Palavra B
            inverter => Cin,                  -- Controle de inversão, de acordo com Cin
            Saida => AUX                     -- Saída do inversor vai para AUX
        );

    -- Instancia o somador
    somador: entity work.soma_4bits
        port map(
            A => Ain,                          -- Palavra A
            B => AUX,                          -- Palavra B (invertida se Cin=1)
            Ci => Cin,                         -- Carry-in
            Cout => CCout,                     -- Carry-out
            S => Sout_Aux                      -- Saída do somador (Sout)
        );

    -- Atribuição do resultado final
    Sout <= Sout_Aux;

end Soma_E_SUB;
