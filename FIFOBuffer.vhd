----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:23:20 04/21/2020 
-- Design Name: 
-- Module Name:    FIFOBuffer - Behavioral 
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

entity FIFOBuffer is
	port ( 	  CLK : in STD_LOGIC; 
				  dataIN : in STD_LOGIC_VECTOR (7 downto 0); 
				  dataOUT : out STD_LOGIC_VECTOR (7 downto 0);
				  WE : in STD_LOGIC; 
				  RE : in STD_LOGIC; 
				  dataReady : out STD_LOGIC;
				  Full : out STD_LOGIC
				  ); 	  
end FIFOBuffer;

architecture Behavioral of FIFOBuffer is


COMPONENT Blockram
  PORT (
    clka : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    clkb : IN STD_LOGIC;
    rstb : IN STD_LOGIC;
    addrb : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    doutb : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;


signal wrPTR, rePTR : STD_LOGIC_VECTOR (5 downto 0) := (others => '0'); 
signal wrs, res : STD_LOGIC_vector (0 downto 0) := "0";
type wr_state_type is (nFull, isFull); 
type re_state_type is (Empty, nEmpty); 

signal wr_state_reg, wr_state_next : wr_state_type; 
signal re_state_reg, re_state_next : re_state_type; 


begin

Bram1 : Blockram
  PORT MAP (
    clka => clk,
    wea => wrs, -- enable write 
    addra => wrPTR,
    dina => DataIN,
    clkb => clk,
    rstb => '0',
    addrb => rePTR,
    doutb => dataOUT
  );

wrs(0) <= WE;
res(0) <= RE;

--process(clk, wrs, res) 
--variable readyCount :  (6 downto 0) := "0000000"; -- Counts the unread bytes
-- is variable type to ensure sequential operation of addition and substraction 
--begin
--if rising_edge(clk) then 
--
--	if (readyCount > "0000000") then -- signals wether output i avaible
--		dataReady <= '1';  -- checks first to ensure ready is asserted next clk		    
--	end if; 
--
--
--	if (readyCount < "1000000") then -- checks to see if buffer is full
--		
--		if (wrs = "1") then -- increments the pointer on write
--			wrPTR <= wrPTR + 1; 
--			readyCount := readyCount + 1; 
--		end if; 
--		
--		if (res = "1" and readyCount > "0000000") then -- decrements pointer on read, if there is something to read
--			rePTR <= rePTR + 1;
--			readyCount := readyCount - 1; 
--		end if; 
--		
--	end if; 
--	
--	if (readyCount = "0000000") then -- checks second to ensure ready i set to zero imediatly 
--		dataReady <= '0'; 
--	end if; 
--	
--	if (readyCount = "1000000") then 
--		full <= '1'; 
--	else 
--		full <= '0'; 
--	end if;
--
--end if; 
--end process; 

-- implementation with statemachines

process(clk) 
begin
	if rising_edge(clk) then
		wr_state_reg <= wr_state_next; 
		re_state_reg <= re_state_next;
	end if; 
end process; 


-- next state logic / output logic (mealy) write to buffer
process(reptr, wrptr, we, clk) 
begin
	case(wr_state_reg) is
	when nFull =>
		FULL <= '0'; 
		if (rising_edge(clk)) then -- adds one if wr 
			if(we = '1') then
			 wrptr <= wrptr + 1; 
			end if; 
		end if; 
		
		if (wrptr + 1 = reptr) then  -- if next wr_ptr is re_ptr, then 
			wr_state_next <= isFull; 	 	
		else 
			wr_state_next <= nFull; 
		end if; 
			
	when isFull => 
		FULL <= '1'; 
		if (not (wrptr = reptr) ) then 
			wr_state_next <= nFull; 
		else 
			wr_state_next <= isFull; 
		end if; 	
	end case; 
end process; 


-- next state logic / output logic (mealy) read to buffer

process(re_state_reg, clk, re, wrptr, reptr)
begin
	case re_state_reg is
		when empty =>
			dataready <= '0'; 
		if (not (wrptr = reptr)) then
			re_state_next <= nEmpty; 
		end if; 
		
		when nEmpty =>
			dataready <= '1'; 
		if rising_edge(clk) then 
			if (re = '1') then
				reptr <= reptr + 1;
			end if; 
		end if; 
		if (wrptr = reptr) then 
			re_state_next <= empty; 
		end if; 
		
	end case; 
end process; 









end Behavioral;

