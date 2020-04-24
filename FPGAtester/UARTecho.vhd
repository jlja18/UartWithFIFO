----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:32:56 04/24/2020 
-- Design Name: 
-- Module Name:    UARTecho - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity UARTecho is
    Port ( 
		clk : in  STD_LOGIC;
		urx : in STD_LOGIC;
		utx : out STD_LOGIC;
		reset : in STD_LOGIC
	 );
end UARTecho;

architecture Behavioral of UARTecho is
component UartWithFifo is
    Port(clk : in  STD_LOGIC;
			dataIN : in STD_LOGIC_VECTOR (7 downto 0); 
			dataOUT : out STD_LOGIC_VECTOR (7 downto 0); 
			full : out STD_LOGIC; 
			WE : in STD_LOGIC; 
			RE : in STD_LOGIC; 
			dataReady : out STD_LOGIC; 
			rx : in STD_LOGIC;
			tx : out STD_LOGIC; 
			reset : in STD_LOGIC;
			MSB_LSB : in STD_LOGIC -- tramits LSB when 0 MSB when 1 
	 );
end component;

SIGNAL clkcntr : STD_LOGIC_VECTOR(4 downto 0) := "00000";
SIGNAL data : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
SIGNAL downclk : STD_LOGIC;
SIGNAL dataReady, dataFull, MSB_LSB, WE, RE : STD_LOGIC := '0';

begin
downclk <= clkcntr(4);
	process(clk)
	begin
		if rising_edge(clk) then
			clkcntr <= clkcntr + 1;
		end if;
	end process;
	
	process(dataReady)
	begin
			if dataReady = '1' then
				RE <= '1';
				WE <= '1';
			else
				RE <= '0';
				WE <= '0';
			end if;	
	end process;
	
UARTWithFIFO1 : UARTWithFIFO		
port map(
			clk => downclk, 
			tx => utx, 
			rx => urx, 
			dataIN => data, 
			dataOUT => data,
			dataReady => dataReady,
			full => dataFull,
			reset => reset,
			MSB_LSB => MSB_LSB,
			WE => WE,
			RE => RE
			);

end Behavioral;

