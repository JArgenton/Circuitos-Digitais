library IEEE;
use ieee.std_logic_1164.all;

entity SOMADOR_E_SUBTRATOR_HEXA is
    port(
        Ain: in std_logic_vector(3 downto 0);  -- Palavra A
        Bin: in std_logic_vector(3 downto 0);  -- Palavra B
        Cin: in std_logic;                      -- Cin (carry-in)
        CCout: buffer std_logic; --buffer é uma variaçao de saida que pode ser lida dentro do programa
        Sout: out std_logic_vector(3 downto 0);  -- Palavra resultado
		  Display_A : out std_logic_vector(6 downto 0); 
		  Display_B : out std_logic_vector(6 downto 0);
		  Display_S : out std_logic_vector(6 downto 0);
		  Display_S_Out: out std_logic_vector(6 downto 0);
		  sub: out std_logic

    );
end SOMADOR_E_SUBTRATOR_HEXA;

architecture Soma_E_SUB of SOMADOR_E_SUBTRATOR_HEXA is
    signal AUX: std_logic_vector(3 downto 0); -- Sinal auxiliar para armazenar a saída do inversor
	 signal Sout_Aux: std_logic_vector(3 downto 0); -- Sinal intermediário para Sout, erro com in out no display
	 signal aux_sobra: std_logic_vector(3 downto 0); 
	 signal var1: std_logic;
	
begin

    Hex_A: entity work.Conversor_HEXA
        port map(
            Input => Ain,
            Output => Display_A
        );

    Hex_B: entity work.Conversor_HEXA
        port map(
            Input => Bin,
            Output => Display_B
        );            
           
    inversor: entity work.Inversor_4bits
        port map(
            Word => Bin,                     
            inverter => Cin,                 
            Saida => AUX                     -- Saída do inversor vai para AUX
        );

    somador: entity work.soma_4bits
        port map(
            A => Ain,                         
            B => AUX,                         
            Ci => Cin,                        
            Cout => CCout,                    
            S => Sout_Aux                -- Saída do somador para sinal intermediário
        );

    Hex_S: entity work.Conversor_HEXA
        port map(
            Input => Sout_Aux,           
            Output => Display_S
        );
		  
	
    aux_sobra(0) <= CCout;
    aux_sobra(1) <= '0';
    aux_sobra(2) <= '0';
    aux_sobra(3) <= '0';
	 
	 Hex_sobra: entity work.Conversor_HEXA
		port map(
			Input => aux_sobra,
			Output => Display_S_Out
		);
		
		var1 <= Cin xor CCout;
		
		Display_S_Out(1) => var1;
		Display_S_Out(2) => var1;

	

    
    -- Atribuindo o valor do sinal intermediário para a porta de saída
    Sout <= Sout_Aux;
    sub <= not Cin;
	 
	 
	 

end Soma_E_SUB;