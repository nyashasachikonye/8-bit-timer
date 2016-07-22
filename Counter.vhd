LIBRARY altera;
USE altera.maxplus2.all;
LIBRARY ieee;
USE ieee.std_logic_1164.all; 
USE ieee.std_logic_unsigned.all; 

entity Counter is
port (
 data: IN std_logic_vector (7 downto 0);
 result: OUT std_logic_vector(7 downto 0);
end Counter;

architecture behave of Counter is
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


