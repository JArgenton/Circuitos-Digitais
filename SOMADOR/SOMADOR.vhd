library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SOMADOR is
	Port(
		N1 : in STD_LOGIC_VECTOR(3 downto 0);
		N2 : in STD_LOGIC_VECTOR(3 downto 0);
		Sf : out STD_LOGIC_VECTOR(3 downto 0)
		);
end SOMADOR;

architecture SUM4 of SOMADOR is
	signal carry : STD_LOGIC_VECTOR(3 downto 0);
	
	component Somador_1bit
		Port(
		A : in STD_LOGIC;
		B : in STD_LOGIC;
		Cin : in STD_LOGIC;
		S : out STD_LOGIC;
		Cout : out STD_LOGIC
		);
	end component;
	
begin
	S1 : work.Somador_1bit
		Port map(
			A => N1(0),
			B => N2(0),
			Cin => '0',
			S => Sf(0),
			Cout => carry(0)
		);
	S2 : work.Somador_1bit
		Port map(
			A => N1(1),
			B => N2(1),
			Cin => carry(0),
			S => Sf(1),
			Cout => carry(1)
		);
	S3 : work.Somador_1bit
		Port map(
			A => N1(2),
			B => N2(2),
			Cin => carry(1),
			S => Sf(2),
			Cout => carry(2)
		);
	S4 : work.Somador_1bit
		Port map(
			A => N1(3),
			B => N2(3),
			Cin => carry(2),
			S => Sf(3),
			Cout => carry(3)
		);
end SUM4;
	
		