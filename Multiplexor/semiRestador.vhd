library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity semiRestador is
    port(
        bit_a         : in  STD_LOGIC;
        bit_b         : in  STD_LOGIC;
        diferencia    : out STD_LOGIC;
        prestamo      : out STD_LOGIC
    );
end semiRestador;

architecture comportamiento of semiRestador is
begin
    diferencia <= bit_a xor bit_b;
    prestamo   <= (not bit_a) and bit_b;
end comportamiento;