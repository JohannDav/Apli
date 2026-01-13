library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity restador is
    Port( 
        B0 : in std_logic;
        B1 : in std_logic;
        B2 : in std_logic;
        B3 : in std_logic;
        A0 : in std_logic;
        A1 : in std_logic;
        A2 : in std_logic;
        A3 : in std_logic;
        D0 : out std_logic;
        D1 : out std_logic;
        D2 : out std_logic;
        D3 : out std_logic;
        Ps : out std_logic
    );
end restador;

architecture res of restador is
    signal P0 : std_logic;
    signal P1 : std_logic;
    signal P2 : std_logic;
    
begin
    D0 <= B0 XOR A0;
    P0 <= (NOT B0) AND A0;
    
    D1 <= B1 XOR A1 XOR P0;
    P1 <= ((NOT B1) AND A1) OR ((NOT B1) AND P0) OR (A1 AND P0);
    
    D2 <= B2 XOR A2 XOR P1;
    P2 <= ((NOT B2) AND A2) OR ((NOT B2) AND P1) OR (A2 AND P1);
    
    D3 <= B3 XOR A3 XOR P2;
    Ps <= ((NOT B3) AND A3) OR ((NOT B3) AND P2) OR (A3 AND P2);
end res;