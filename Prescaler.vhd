LIBRARY altera;
USE altera.maxplus2.all;
LIBRARY ieee;
USE ieee.std_logic_1164.all; 
USE ieee.std_logic_unsigned.all; 

entity Prescaler is
port (
 clock: In std_logic;
 pre: In std_logic_vector (3 downto 0); --3bit number
 result: OUT std_logic;;
end Prescaler;

architecture behave of Prescaler is
begin
process (clock)
variable acc: std_logic_vector (7 downto 0);
acc:=0;
begin 
if (clock'event and clock = '1') then
	acc:= acc+1;
	if(acc=pre) then
		acc:= 0;
		result <= 1;
	else
		result <= 0;
	end if;
	end if;
end process;
end behave;
