library IEEE;
use IEEE.std_logic_1164.all;

entity restadorCompleto is
	port (
		a,b: in STD_LOGIC;
		pe: in STD_LOGIC;
		d: out STD_LOGIC;
		ps: out STD_LOGIC
	);
end restadorCompleto;

architecture Ecuacion of restadorCompleto is

begin
	d <= pe xor (a xor b); -- Pe ⊕ (A ⊕ B)
	ps <= (pe and not(a xor b)) or (not(a) and b); -- (Pe * (A ⊕ B)') + A' * B
end Ecuacion;