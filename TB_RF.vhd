
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY TB_RF IS
END TB_RF;
 
ARCHITECTURE behavior OF TB_RF IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RF
    PORT(
         rs1 : IN  std_logic_vector(4 downto 0);
         rs2 : IN  std_logic_vector(4 downto 0);
         rd : IN  std_logic_vector(4 downto 0);
         dwr : IN  std_logic_vector(31 downto 0);
         reset : IN  std_logic;
         out_rf1 : OUT  std_logic_vector(31 downto 0);
         out_rf2 : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal rs1 : std_logic_vector(4 downto 0) := (others => '0');
   signal rs2 : std_logic_vector(4 downto 0) := (others => '0');
   signal rd : std_logic_vector(4 downto 0) := (others => '0');
   signal dwr : std_logic_vector(31 downto 0) := (others => '0');
   signal reset : std_logic := '0';

 	--Outputs
   signal out_rf1 : std_logic_vector(31 downto 0);
   signal out_rf2 : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RF PORT MAP (
          rs1 => rs1,
          rs2 => rs2,
          rd => rd,
          dwr => dwr,
          reset => reset,
          out_rf1 => out_rf1,
          out_rf2 => out_rf2
        );

  
 

   -- Stimulus process
   stim_proc: process
   begin		
      reset <= '0';
		wait for 100 ns;
		rs1 <= "10000";
		rs2 <= "10001";
		rd <= "01000";
		dwr <= x"0000000A";
		wait for 100 ns;
   end process;

END;
