Library IEEE;
use ieee.std_logic_1164.all;

entity J3 is
port(
	X : in std_logic_vector(3 downto 0);
	S : out std_logic
	);
end J3;

architecture arch of J3 is


begin

S <= (not(X(3)) and X(1));

end arch;