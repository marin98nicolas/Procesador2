library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Multiplexor is
    Port ( in_rs2 : in  STD_LOGIC_VECTOR (31 downto 0);
           in_imm : in  STD_LOGIC_VECTOR (31 downto 0);
           i : in  STD_LOGIC;
           out_mux : out  STD_LOGIC_VECTOR (31 downto 0));
end Multiplexor;

architecture Behavioral of Multiplexor is

begin

process(in_rs2, in_imm, i)
begin
	if(i='1')then 
		out_mux <= in_imm;
	else
		out_mux <= in_rs2;
	end if;	
	
	
 
end process;

end Behavioral;