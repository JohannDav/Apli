library IEEE;
use IEEE.std_logic_1164.all;
entity semiRestador is
	port (a,b: in STD_LOGIC;
		d: out STD_LOGIC;
		ps: out STD_LOGIC);
end semiRestador;

architecture Ecuacion of semiRestador is

begin
	d <= a xor b; -- A ⊕ B
	ps <= not(a) and b; -- A' * B
	
end Ecuacion;