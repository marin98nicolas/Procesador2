library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity nPc is
    Port ( in_npc : in  STD_LOGIC_VECTOR (31 downto 0);
           reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  out_npc: out STD_LOGIC_VECTOR (31 downto 0));
end nPc;

architecture Behavioral of nPc is

begin
process(in_npc, reset, clk)
begin
	if(reset = '1')then
		out_npc <= x"00000000";
		else 
			if(rising_edge(clk))then
				out_npc <= in_npc;
			end if;
	end if;		
end process;		

end Behavioral;
