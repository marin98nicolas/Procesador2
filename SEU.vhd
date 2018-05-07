library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SEU is
    Port ( in_seu : in  STD_LOGIC_VECTOR (12 downto 0);
           out_seu : out  STD_LOGIC_VECTOR (31 downto 0));
end SEU;

architecture Behavioral of SEU is

begin

process(in_seu)
begin 

	if(in_seu(12)='0')then 
		out_seu(12 downto 0) <= in_seu;
		out_seu(31 downto 13) <= "0000000000000000000";
	else
		out_seu(12 downto 0) <= in_seu;
		out_seu(31 downto 13) <= "1111111111111111111";
	end if;
end process;

end Behavioral;