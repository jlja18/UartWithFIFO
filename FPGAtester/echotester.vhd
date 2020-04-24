--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:15:43 04/24/2020
-- Design Name:   
-- Module Name:   C:/Users/Jonas/Desktop/UartWithFIFO-master/echotester.vhd
-- Project Name:  UartWithFifo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: UARTecho
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY echotester IS
END echotester;
 
ARCHITECTURE behavior OF echotester IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT UARTecho
    PORT(
         clk : IN  std_logic;
         urx : IN  std_logic;
         utx : OUT  std_logic;
			reset : in std_logic 
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal urx : std_logic := '1';
	signal reset : std_logic := '0'; 

 	--Outputs
   signal utx : std_logic;

   -- Clock period definitions
   constant clk_period : time := 31.25 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: UARTecho PORT MAP (
			reset => reset,
          clk => clk,
          urx => urx,
          utx => utx
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
	reset <= '1'; 
	wait for 1000 us; 
	reset <= '0'; 
	wait for 100 us; 
	for I in 0 to 100 loop  
	urx <= '0'; 
	wait for 104 us; 
	urx <= '1'; 
	wait for 728 us;
	urx <= '0'; 
	wait for 104 us; 
	urx <= '1'; 
	wait for 104 us; 
	end loop; 
	
      -- hold reset state for 100 ns.


      -- insert stimulus here 

      wait;
   end process;

END;
