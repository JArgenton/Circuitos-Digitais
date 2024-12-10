library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Conversor_HEXA is
    port(
        Input: in std_logic_vector(3 downto 0);  -- Entrada de 4 bits (hexadecimal)
        Output: out std_logic_vector(6 downto 0) -- Saída para os 7 segmentos
    );
end Conversor_HEXA;

architecture Conversao of Conversor_HEXA is
    signal AA, BB, CC, DD: std_logic;  -- Bits da entrada
    signal a, b, c, d, e, f, g: std_logic;  -- Sinais para os segmentos do display
begin
    -- Atribuindo os bits de entrada
    AA <= Input(3);
    BB <= Input(2);
    CC <= Input(1);
    DD <= Input(0);

    -- Expressões lógicas para cada segmento do display de 7 segmentos
    a <= not(((not AA) and BB and DD) or
			(AA and (not BB) and (not CC)) or
			((not BB) and (not DD)) or 
			((not AA) and CC) or 
			(AA and (not DD)) or 
			(BB and CC));

    b <= not((AA and (not CC) and DD) or 
			((not AA) and CC and DD) or 
			((not AA) and (not CC) and (not DD)) or 
			((not BB) and (not DD)) or 
			((not AA) and (not BB)));

    c <= not(((not CC) and DD) or
			((not AA) and BB) or 
			(AA and (not BB)) or 
			((not AA) and DD) or 
			((not AA) and (not CC)));

    d <= not((BB and (not CC) and DD) or 
			(AA and (not CC)) or
			((not BB) and CC and DD) or 
			((not AA) and (not BB) and (not DD)) or 
			(BB and CC and (not DD)));

    e <= not(((not BB) and (not DD)) or 
			( CC and (not DD)) or 
			(AA and BB) or 
			(AA and CC));

    f <= not(((not AA) and BB and (not CC)) or
			(AA and CC) or 
			(BB and (not DD)) or
			((not CC) and (not DD)) or 
			(AA and (not BB)));

    g <= not(((not BB) and CC) or 
			(CC and (not DD)) or
			(AA and (not BB)) or 
			(AA and DD) or 
			((not AA) and BB and (not CC)));

    -- Atribuindo os sinais aos pinos de saída
    Output(0) <= a;
    Output(1) <= b;
    Output(2) <= c;
    Output(3) <= d;
    Output(4) <= e;
    Output(5) <= f;
    Output(6) <= g;

end Conversao;
