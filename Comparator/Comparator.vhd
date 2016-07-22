LIBRARY altera;
USE altera.maxplus2.all;
LIBRARY ieee;
USE ieee.std_logic_1164.all; 
USE ieee.std_logic_unsigned.all; 

entity Comparator is
port (
 in1: IN std_logic_vector (7 downto 0);
 in2: IN std_logic_vector (7 downto 0);
 flag: OUT std_logic);
end Comparator;

architecture behave of Comparator  is
begin
flag <= '1' WHEN in1 = in2 ELSE
		'0';

end behave;
