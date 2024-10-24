-- Arithmetic Unit
-- Autor: Pedro Pepeu
-- Data: 23/10/2024

-- Library and packages
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_bit.all;

-- Entity
entity au is
	port
	(
		Ai, Bi	:	in	unsigned(7 downto 0);	-- inputs
		S	:	in	bit_vector(1 downto 0);	-- operation
		G	:	out	unsigned(7 downto 0)	-- output
	);
end entity au;

-- Architecture
architecture main of au is
begin

	G	<=	Ai + Bi		when	S = "00"	else
		     	Ai - Bi		when	S = "01"	else
			Ai + x"1"	when	S = "10"	else
			Ai - x"1";

end architecture main;

-- Configuration
