library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity restador4Bits is
 port (
  a,b: in STD_LOGIC_VECTOR (3 downto 0);
  d: out STD_LOGIC_VECTOR (4 downto 0);
  mayor, igual, menor: out STD_LOGIC
 );
end restador4Bits;

architecture componentes of restador4Bits is
 signal Cm: STD_LOGIC_VECTOR (2 downto 0); -- Prestamos
 signal res_0: STD_LOGIC;
 signal d_s: STD_LOGIC_VECTOR(4 downto 0);

 COMPONENT semiRestador
 PORT
 (
  a  :  IN STD_LOGIC;
  b  :  IN STD_LOGIC;
  d  :  OUT STD_LOGIC;
  ps  :  OUT STD_LOGIC
 );
END COMPONENT;

COMPONENT restadorCompleto
 PORT
 (
  a  :  IN STD_LOGIC;
  b  :  IN STD_LOGIC;
  pe  :  IN STD_LOGIC;
  d  :  OUT STD_LOGIC;
  ps  :  OUT STD_LOGIC
 );
END COMPONENT;
begin
 res_0 <= not(d_s(3) or d_s(2) or d_s(1) or d_s(0)); -- Verificamos que todos los bits
           -- de 'd_s' sean 0
 INST_semiS: semiRestador PORT MAP(
  a => a(0),
  b => b(0),
  d => d_s(0),
  ps => Cm(0)
 );

 INST_restadorC: restadorCompleto PORT MAP(
  a => a(1),
  b => b(1),
  pe => Cm(0),
  d => d_s(1),
  ps => Cm(1)
 );

 INST_restadorC2: restadorCompleto PORT MAP(
  a => a(2),
  b => b(2),
  pe => Cm(1),
  d => d_s(2),
  ps => Cm(2)
 );

 INST_restadorC3: restadorCompleto PORT MAP(
  a => a(3),
  b => b(3),
  pe => Cm(2),
  d => d_s(3),
  ps => d_s(4)
 );

 igual <= res_0; -- A = B si el resultado es 0000
 menor <= d_s(4); -- A < B si hubo prestamo al final de la resta
 mayor <= (not d_s(4)) and (not res_0); -- A > B si no hubo prestamo
          -- y el resultado no es 0
 d <= d_s;
end architecture componentes;