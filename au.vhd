-- Arithmetic Unit
-- Autor: Pedro Pepeu
-- Data: 23/10/2024

-- Library and packages
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Entity
entity au is
	port
	(
		Ai, Bi		:	in	signed(8 downto 0);	-- inputs
		S		:	in	bit_vector(2 downto 0);	-- operation
		G		:	out	signed(8 downto 0)	-- output
	);
end entity au;

-- Architecture
architecture main of au is
begin

	G	<=	Ai + Bi		when	S = "000"	else
			Ai - Bi		when	S = "001"	else
			Ai + x"1"	when	S = "010"	else
			Ai - x"1";

end architecture main;

-- Configuration
