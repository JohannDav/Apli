library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ejercicio_uno is
	Port ( A : in STD_LOGIC;
			 B : in STD_LOGIC;
			 C : in STD_LOGIC;
			 D : in STD_LOGIC;
			 E : in STD_LOGIC;
			 Y : out STD_LOGIC);
end ejercicio_uno;

architecture nombre of ejercicio_uno is

begin 
Y <= ((NOT E) AND (NOT D) AND (NOT C) AND B) OR ((NOT E) AND (NOT D) AND C AND A) OR (E AND (NOT D) AND (NOT C) AND A) OR ((NOT E) AND (NOT C) AND B AND A) OR (D AND C AND (NOT B) AND A) OR (E AND C AND B AND A);
end nombre;