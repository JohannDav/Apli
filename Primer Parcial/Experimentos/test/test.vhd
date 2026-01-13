library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity test is
    Port( 
        B2, B1, B0 : in std_logic;  -- PIN_2,4,6
        A2, A1, A0 : in std_logic;  -- PIN_8,16,18
        Cs, S2, S1, S0 : out std_logic  -- PIN_33,35,37,39
    );
end test;

architecture testi of test is
begin
    -- Fuerza salidas específicas
    Cs <= '1';  -- Solo Cs encendido
    S2 <= '0';  -- S2 apagado
    S1 <= '0';  -- S1 apagado  
    S0 <= '0';  -- S0 apagado
end testi;