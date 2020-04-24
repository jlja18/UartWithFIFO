----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:44:44 04/20/2020 
-- Design Name: 
-- Module Name:    UARTtester - Behavioral 
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

entity UARTtester is
    Port ( 
			  UTX : out  STD_LOGIC;
			  clk : in STD_LOGIC;
			  TESTCLK : out STD_LOGIC
			 );
end UARTtester;

architecture Behavioral of UARTtester is
component uart 
	GENERIC(
		clk_freq		:	INTEGER		:= 50_000_000;	--frequency of system clock in Hertz
		baud_rate	:	INTEGER		:= 19_200;		--data link baud rate in bits/second
		os_rate		:	INTEGER		:= 16;			--oversampling rate to find center of receive bits (in samples per baud period)
		d_width		:	INTEGER		:= 8; 			--data bus width
		parity		:	INTEGER		:= 1;				--0 for no parity, 1 for parity
		parity_eo	:	STD_LOGIC	:= '0');			--'0' for even, '1' for odd parity
	PORT(
		clk		:	IN		STD_LOGIC;										--system clock
		reset_n	:	IN		STD_LOGIC;										--ascynchronous reset
		tx_ena	:	IN		STD_LOGIC;										--initiate transmission
		tx_data	:	IN		STD_LOGIC_VECTOR(d_width-1 DOWNTO 0);  --data to transmit
		--rx			:	IN		STD_LOGIC;										--receive pin
		--rx_busy	:	OUT	STD_LOGIC;										--data reception in progress
		--rx_error	:	OUT	STD_LOGIC;										--start, parity, or stop bit error detected
		--rx_data	:	OUT	STD_LOGIC_VECTOR(d_width-1 DOWNTO 0);	--data received
		tx_busy	:	OUT	STD_LOGIC;  									--transmission in progress
		tx			:	OUT	STD_LOGIC);										--transmit pin
END component;

SIGNAL     TX_ENA, RESET_N, busy : STD_LOGIC;
SIGNAL     TX_DATA : STD_LOGIC_VECTOR (7 downto 0) := "01111111";
SIGNAL	  cntr : INTEGER := 0;
SIGNAL	  declk : STD_LOGIC;
SIGNAL	  clkcntr : STD_LOGIC_VECTOR (14 downto 0) := "000000000000000";

begin
	process(clk)
	begin
		if rising_edge(clk) then
			clkcntr <= clkcntr + 1;
		end if;
		
	end process;
	
	declk <= clkcntr(4);
	TESTCLK <= declk;
	
	process (declk)
	begin
		if rising_edge(declk) then 
			cntr <= cntr + 1;
			case cntr is
				when 0 => 
					reset_n <= '0';
					tx_ena <= '0';
					
				when 10 => 
					reset_n <= '1';
					
				when 11 =>
					tx_ena <= '1';
					
				when 12 =>
					tx_ena <= '0';
					if (busy = '0') then
						cntr <= 11;
					end if;
					
				when others => 
					if (cntr > 100_000 and busy = '0') then
						cntr <= 11;
					end if;
								
			end case;
		end if;
	end process;
	
	UART1: UART 
		generic map(clk_freq => 1_000_000, baud_rate => 9_600, parity => 0) 
		port map(clk => declk, TX_ENA => tx_ena, RESET_N => reset_n, TX_DATA => tx_data, TX => utx, tx_busy => busy);

end Behavioral;

