--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:36:59 04/22/2020
-- Design Name:   
-- Module Name:   E:/GitHub/UartWithFIFO/test1.vhd
-- Project Name:  UartWithFifo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: UartWithFifo
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
 
ENTITY test1 IS
END test1;
 
ARCHITECTURE behavior OF test1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT UartWithFifo
    PORT(
         clk : IN  std_logic;
         dataIN : IN  std_logic_vector(7 downto 0);
         dataOUT : OUT  std_logic_vector(7 downto 0);
         full : OUT  std_logic;
         WE : IN  std_logic;
         RE : IN  std_logic;
         dataReady : OUT  std_logic;
         rx : IN  std_logic;
         tx : OUT  std_logic;
         reset : IN  std_logic;
			MSB_LSB : in STD_LOGIC 
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal dataIN : std_logic_vector(7 downto 0) := (others => '0');
   signal WE : std_logic := '0';
   signal RE : std_logic := '0';
   signal rx : std_logic := '1';
   signal reset : std_logic := '0';
	signal MSB_LSB : STD_LOGIC := '1'; 

 	--Outputs
   signal dataOUT : std_logic_vector(7 downto 0);
   signal full : std_logic;
   signal dataReady : std_logic;
   signal tx : std_logic;

   -- Clock period definitions
   constant clk_period : time := 1000 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: UartWithFifo PORT MAP (
          clk => clk,
          dataIN => dataIN,
          dataOUT => dataOUT,
          full => full,
          WE => WE,
          RE => RE,
          dataReady => dataReady,
          rx => rx,
          tx => tx,
          reset => reset,
			 MSB_LSB => MSB_LSB
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
		rx <= '1'; 
		wait for clk_period * 10; 
		reset <= '0'; 
      -- hold reset state for 100 ns.
		we <= '1'; 
		dataIN <= X"0F"; 
		wait until rising_edge(clk); 
		dataIN <= X"EF"; 
		wait until rising_edge(clk); 
		dataIN <= X"DF"; 
		wait until rising_edge(clk); 
		dataIN <= X"CF"; 
		wait until rising_edge(clk); 
		dataIN <= X"BF"; 
		wait until rising_edge(clk); 
		dataIN <= X"AF";
		wait until rising_edge(clk); 
		we <= '0'; 
		wait for 10 us; 
		rx <= '0';
		wait for 104 us;
		rx <= '1';
      -- insert stimulus here 
		wait for 1 ms; 
		rx <= '0';
		wait for 104 us; 
		rx <= '1'; 
		

      wait;
   end process;

END;
