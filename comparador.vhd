library ieee;
use ieee.std_logic_1164.all;

entity comparador is
	port (
	A:in std_logic_vector(3 downto 0);
	B:in std_logic_vector(3 downto 0);
	Mayor: out std_logic;
	Menor: out std_logic;
	Igual: out std_logic);
end entity;

ARCHITECTURE ejemplo of comparador is
begin
process(A,B)
	begin
	Mayor<='0';
	Menor<='0';
	Igual<='0';
	if A>B then
		Mayor<='1';
	elsif A<B then
		Menor<='1';
	else
		Igual<='1';
	end if;
end process;
end ejemplo;

