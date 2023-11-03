-- Gerador de paridade 4 bits
-- Cecilia Silva da Costa Botelho
-- Heitor Silva Avila
library ieee;
use ieee.std_logic_1164.all;
entity circuito is
	port (
		x:in std_logic_vector (3 downto 0);
		s:out std_logic
	);
end circuito;
architecture logica of circuito is
signal y, z:std_logic;	
begin
	--codigo
	y <= x(0) xor x(1);
	z <= x(2) xor x(3);
	s <= (not y) xor (not z);
end logica;