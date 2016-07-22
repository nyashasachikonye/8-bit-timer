LIBRARY altera;
USE altera.maxplus2.all;
LIBRARY ieee;
USE ieee.std_logic_1164.all; 
USE ieee.std_logic_unsigned.all; 

entity Counter is
port (
 clock: IN std_logic;
 result: OUT std_logic_vector(7 downto 0));
end Counter;

architecture behave of Counter is
begin
process (clock)
variable acc: std_logic_vector (7 downto 0):="00000000";
begin 
if (rising_edge(clock)) then
	acc:= acc+1;
	result <= acc;
	end if;
end process;
end behave;


