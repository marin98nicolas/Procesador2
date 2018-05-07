library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity RF is
    Port ( rs1 : in  STD_LOGIC_VECTOR (4 downto 0);
           rs2 : in  STD_LOGIC_VECTOR (4 downto 0);
           rd : in  STD_LOGIC_VECTOR (4 downto 0);
           dwr : in  STD_LOGIC_VECTOR (31 downto 0);
           reset : in  STD_LOGIC;
           out_rf1 : out  STD_LOGIC_VECTOR (31 downto 0);
           out_rf2 : out  STD_LOGIC_VECTOR (31 downto 0));
end RF;

architecture Behavioral of RF is

	type rom_type is array (0 to 31) of std_logic_vector (31 downto 0);
	signal registro : rom_type :=(others => x"00000000");begin

process(rs1,rs2,rd,dwr,reset)
	begin
		if(reset = '1')then
			out_rf1 <= (others=>'0');
			out_rf2 <= (others=>'0');	
			registro <= (others => x"00000000");
		else
			out_rf1 <= registro(conv_integer(rs1)); 
			out_rf2 <= registro(conv_integer(rs2)); 
			
			
			if(rd /= "000000")then
			registro(conv_integer(rd)) <= dwr;
			end if;
	end if;
	
end process;

end Behavioral;

