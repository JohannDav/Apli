library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ejercicio_2 is
	Port (A : in std_logic;
			B : in std_logic;
			C : in std_logic;
			D : in std_logic;
			Y : out std_logic);
end ejercicio_2;

architecture dav of ejercicio_2 is
begin
Y <= (D AND C AND (NOT A)) OR (B AND A) OR (C AND A) OR (C AND B) OR (D AND B AND(NOT A));
end dav;