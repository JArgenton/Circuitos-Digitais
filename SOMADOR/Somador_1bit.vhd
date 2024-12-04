library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Somador_1bit is
	Port(
		A : in STD_LOGIC;
		B : in STD_LOGIC;
		Cin : in STD_LOGIC;
		S : out STD_LOGIC;
		Cout : out STD_LOGIC
		);
end Somador_1bit;

architecture SUM1 of Somador_1bit is
begin
	S <= A xor B xor Cin;
	Cout <= ((A and Cin) or (A and B) or (B and Cin));
end SUM1;