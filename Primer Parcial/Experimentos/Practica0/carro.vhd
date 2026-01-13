library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity carro is
	Port ( PI : in STD_LOGIC;
			PD : in STD_LOGIC;
			C : in STD_LOGIC;
			SW : in STD_LOGIC;
			AL : out STD_LOGIC);
end carro;

architecture Behavioral of carro is

begin
AL <= (NOT PI) OR (NOT PD) OR ((NOT C) AND SW);

end Behavioral;