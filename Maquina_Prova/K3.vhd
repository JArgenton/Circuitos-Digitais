Library IEEE;
use ieee.std_logic_1164.all;

entity K3 is
port(
	X : in std_logic_vector(3 downto 0);
	S : out std_logic
	);
end K3;

architecture arch of K3 is


begin

S <= (X(3) and X(1));

end arch;