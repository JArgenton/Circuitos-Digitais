library IEEE;
use ieee.std_logic_1164.all;

entity Inversor_4bits is 
    port(
        Word: in std_logic_vector(3 downto 0); -- Entrada de 4 bits
        inverter: in std_logic;                 -- Sinal para inverter (0 ou 1)
        Saida: out std_logic_vector(3 downto 0) -- Saída de 4 bits
    );
end Inversor_4bits;

architecture inverter of Inversor_4bits is 
begin
    -- Inversão dos bits de Word de acordo com o sinal inverter
    Saida(0) <= Word(0) xor inverter;
    Saida(1) <= Word(1) xor inverter;
    Saida(2) <= Word(2) xor inverter;
    Saida(3) <= Word(3) xor inverter;
end inverter;
