library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Sumador_bits is
    Port( 
        B2 : in std_logic;
        B1 : in std_logic;
        B0 : in std_logic;
        A2 : in std_logic;
        A1 : in std_logic;
        A0 : in std_logic;
        Cs : out std_logic;
        S2 : out std_logic;
        S1 : out std_logic;
        S0 : out std_logic
    );
end Sumador_bits;

architecture sum of Sumador_bits is
    signal C0 : std_logic;
    signal C1 : std_logic;
begin  
    S0 <= B0 XOR A0;
    C0 <= B0 AND A0;
    S1 <= B1 XOR A1 XOR C0;
    C1 <= (B1 AND A1) OR (B1 AND C0) OR (A1 AND C0);
    S2 <= B2 XOR A2 XOR C1;
    Cs <= (B2 AND A2) OR (B2 AND C1) OR (A2 AND C1);
end sum;