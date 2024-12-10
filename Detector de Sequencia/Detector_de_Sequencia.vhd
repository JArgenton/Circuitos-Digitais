Library ieee;
use ieee.std_logic_1164.all;

ENTITY Detector_de_Sequencia IS
   PORT (
      Clk    : IN  STD_LOGIC;
      input  : IN  STD_LOGIC;
      Reset  : IN  STD_LOGIC;
      Hex0   : OUT STD_LOGIC_VECTOR(6 downto 0)
   );
END Detector_de_Sequencia;

ARCHITECTURE Arch OF Detector_de_Sequencia IS
   SIGNAL Machine_Output : STD_LOGIC_VECTOR(3 downto 0);
BEGIN

   Gerador_Sequencia : ENTITY work.GerSequenciaPedro
      PORT MAP (
         clk      => Clk,
         entrada  => input,
         reset_n  => Reset,
         saida    => Machine_Output(3 downto 0) 
      );

   Conversor_Hexa : ENTITY work.Conversor_HEXA
      PORT MAP (
         Input  => Machine_Output, 
         Output => Hex0            
      );

END Arch;
