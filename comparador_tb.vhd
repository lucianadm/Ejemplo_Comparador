library ieee;
use ieee.std_logic_1164.all;

entity comparador_tb is end comparador_tb;

architecture ejcomb of comparador_tb is 
component comparador
	port (
	A:in std_logic_vector(3 downto 0);
	B:in std_logic_vector(3 downto 0);
	Mayor: out std_logic;
	Menor: out std_logic;
	Igual: out std_logic);
end component;


signal A: std_logic_vector(3 downto 0);
signal 	B: std_logic_vector(3 downto 0);
signal 	Mayor:  std_logic;
signal 	Menor:  std_logic;
signal 	Igual:  std_logic;


begin
uut: comparador port map (	A=>A,
	B=>B,
	Mayor=>Mayor,
	Menor=>Menor,
	Igual=>Igual);

stim_proc : process 
begin 
B <= "0001"; 
A <= "0000"; 
wait for 20 ns;
B <= "0001"; 
A <= "0010"; 
wait for 20 ns;
B <= "0001"; 
A <= "0001"; 
wait for 20 ns;
wait;
end process;
end;
