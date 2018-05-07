
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TB_UC IS
END TB_UC;
 
ARCHITECTURE behavior OF TB_UC IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT UC
    PORT(
         op : IN  std_logic_vector(1 downto 0);
         op3 : IN  std_logic_vector(5 downto 0);
         out_op3 : OUT  std_logic_vector(5 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal op : std_logic_vector(1 downto 0) := (others => '0');
   signal op3 : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal out_op3 : std_logic_vector(5 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: UC PORT MAP (
          op => op,
          op3 => op3,
          out_op3 => out_op3
        );

  
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 20 ns;
		op<="10";
		op3<="000000";
		wait for 20 ns;
		op<="10";
		op3<="000100";
		wait for 20 ns;
		op<="10";
		op3<="000001";	


      -- insert stimulus here 

      wait;
   end process;

END;
