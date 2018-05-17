library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity Windows_manager is
    Port ( in_rs1 : in  STD_LOGIC_VECTOR (4 downto 0);
           in_rs2 : in  STD_LOGIC_VECTOR (4 downto 0);
           in_rd : in  STD_LOGIC_VECTOR (4 downto 0);
           in_op : in  STD_LOGIC_VECTOR (1 downto 0);
           in_op3 : in  STD_LOGIC_VECTOR (5 downto 0);
           in_cwp : in  STD_LOGIC;
           out_rs1 : out  STD_LOGIC_VECTOR (5 downto 0);
           out_rs2 : out  STD_LOGIC_VECTOR (5 downto 0);
           out_rd : out  STD_LOGIC_VECTOR (5 downto 0);
           out_ncwp : out  STD_LOGIC);
end Windows_manager;

architecture Behavioral of Windows_manager is

signal rs1, rs2, rd: integer range 0 to 39:=0;

begin

	process(in_rs1, in_rs2, in_rd, in_op, in_op3, in_cwp)
		begin
			
			if(in_op = "10")then
			--save
				if(in_op3 ="111100")then
					out_ncwp <= '0';
				end if;	
			--Restore		
				if(in_op3 = "111101")then
					out_ncwp <= '1';
				end if;
			else
				out_ncwp <= in_cwp;
			end if;
			
			--Para registro fuente 1
			--           24                   31
			if(in_rs1 >="11000" and in_rs1 <="11111")then
				rs1<=conv_integer(in_rs1)-(conv_integer(in_cwp)*16);
			end if;	
	 		--                 16	                23
			if(in_rs1 >="10000" and in_rs1 <="10111")then
				rs1<=conv_integer(in_rs1)+(conv_integer(in_cwp)*16);
			end if;	
			--                 8                    15 
			if(in_rs1 >="01000" and in_rs1 <="01111")then
				rs1<=conv_integer(in_rs1)+(conv_integer(in_cwp)*16);	
			end if;
			--                 0                     7
			if(in_rs1 >="00000" and in_rs1 <="00111")then
				rs1<=conv_integer(in_rs1);
			end if;	
			
			--Para registro fuente 2
			--           24                   31
			if(in_rs2 >="11000" and in_rs2 <="11111")then
				rs2<=conv_integer(in_rs2)-(conv_integer(in_cwp)*16);
			end if;
	 		--                 16	                23
			if(in_rs2 >="10000" and in_rs2 <="10111")then
				rs2<=conv_integer(in_rs2)+(conv_integer(in_cwp)*16);
			end if;
			--                 8                    15 
			if(in_rs2 >="01000" and in_rs2 <="01111")then
				rs2<=conv_integer(in_rs2)+(conv_integer(in_cwp)*16);
			end if;	
			--                 0                     7
			if(in_rs2 >="00000" and in_rs2 <="00111")then
				rs2<=conv_integer(in_rs2);
			end if;
			
			--Para registro fuente destino
			--           24                   31
			if(in_rd >="11000" and in_rd <="11111")then
				rd<=conv_integer(in_rd)-(conv_integer(in_cwp)*16);
			end if;	
	 		--                 16	                23
			if(in_rd >="10000" and in_rd <="10111")then
				rd<=conv_integer(in_rd)+(conv_integer(in_cwp)*16);
			end if;	
			--                 8                    15 
			if(in_rd >="01000" and in_rd <="01111")then
				rd<=conv_integer(in_rd)+(conv_integer(in_cwp)*16);
			end if;		
			--                 0                     7
			if(in_rd >="00000" and in_rd <="00111")then
				rd<=conv_integer(in_rd);
			end if;
	
	end process;
	out_rs1 <= conv_std_logic_vector(rs1, 6);
	out_rs2 <= conv_std_logic_vector(rs2, 6);
	out_rd <= conv_std_logic_vector(rd, 6);
	
end Behavioral;
