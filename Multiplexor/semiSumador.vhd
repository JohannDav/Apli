library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity semiSumador is
    port(
        bit_a     : in  STD_LOGIC;
        bit_b     : in  STD_LOGIC;
        resultado : out STD_LOGIC;
        acarreo   : out STD_LOGIC
    );
end semiSumador;

architecture comportamiento of semiSumador is
begin
    resultado <= bit_a xor bit_b;
    acarreo   <= bit_a and bit_b;
end comportamiento;