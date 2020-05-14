----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:52:05 04/01/2020 
-- Design Name: 
-- Module Name:    PS2_RX - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

--uk³ad/modu³ 
entity PS2_RX is
--porty wejscia/wyjscia 
Port(
	Clk_50MHz : in STD_LOGIC;   -- syg zegar
	PS2_Clk: in STD_LOGIC;
	PS2_Data : in STD_LOGIC; 
	DO : out STD_LOGIC_VECTOR (7 DOWNTO 0); 
	DO_Rdy: out STD_LOGIC; --zakonczenie odbioru bajtu
	rx_en: in std_logic-- umozliwia/zakazuje odbierac sygnal--
);
end PS2_RX;



--funkcjonowanie ukladu 
architecture Behavioral of PS2_RX is

signal data : STD_LOGIC_VECTOR (10 DOWNTO 0) := "00000000000"; 
signal next_data : STD_LOGIC_VECTOR (10 DOWNTO 0) := "00000000000"; 
signal device_clk: STD_LOGIC_VECTOR (1 DOWNTO 0) := "00";
signal parity : STD_LOGIC := '0';
type states is (idle, recive, load );
signal state, next_state: states;
signal rec_enabled : STD_LOGIC ; 
signal recive_done : STD_LOGIC; 
signal counter, next_counter: unsigned(3 DOWNTO 0) := "0000";

signal filter_reg: std_logic_vector (7 downto 0):= "00000000";
signal filter_next: std_logic_vector(7 downto 0);
signal f_ps2c_reg: std_logic := '0';--idle
signal f_ps2c_next: std_logic;--stan bezczynny
signal fall_edge: std_logic; 
--clk 0 

--recive
--stan wyslania bitu startowego
--data 0 --clk 1
--PS2 zaczyna wysy³aæ 1-0 (falling-edge)

--na rising-edge pobierane s¹ dane

--stan wysy³ania danych 
--wyslij bit zaczynajac od najmniej znaczacego
--wysy³aj ten sam bit a¿ ps2_clk zrobi falling edge 
--powtarzaj dla pozosta³ych bitow i bitu parzystosci
--bit parzystosci musi byc taki aby zawsze byla parzysta liczba bitow 

--stan zakonczenia wysylania 
--host ustawia data na 1
--mouse ustawia data na 0 potwierdzajac zakonczenie 
--clock 0
-- data 1 clock 1


--sprawdzanie taktow zegara PS2 
BEGIN 
   process (Clk_50MHz)
   begin
      if (rising_edge(Clk_50Mhz)) then
         filter_reg <= filter_next;
         f_ps2c_reg <= f_ps2c_next;
      end if;
   end process;
	
filter_next <= PS2_Clk & filter_reg(7 downto 1);
f_ps2c_next <= '1' when filter_reg="11111111" else
               '0' when filter_reg="00000000" else
               f_ps2c_reg;
fall_edge <= f_ps2c_reg and (not f_ps2c_next);

parity <= not(data(8) xor data(7) xor data(6) xor data(5) xor data(4) xor data(3) xor data(2) xor data(1)); 
	
process(Clk_50MHz) 
begin 
	if(rising_edge(Clk_50MHz)) then
		state <= next_state;
		counter <= next_counter; 
		data <= next_data; 
	end if;
end process; 

--maszyna stanow 
process(state, counter, data, fall_edge, PS2_Data,rx_en)
begin 
	recive_done <= '0';
	next_state <= state; 
	next_counter <= counter; 
	next_data <= data;
	case state is 
		--bit startowy
		when idle => 
				if(fall_edge = '1' and  rx_en = '1') then --dodalam warunek z rx_en,
					next_data <= PS2_Data & data(10 downto 1);
					next_counter <= "1001";
					next_state <= recive;
				end if;
		--8 bitow 
		when recive => 
				if(fall_edge = '1') then 
					next_data <= PS2_Data & data(10 downto 1);
					if(counter = 0) then 
						next_state <= load;
					else
						next_counter <= counter -1;
					end if; 
				end if; 
		when load =>
					if(data(9) = parity) then 
					recive_done <='1';
					else
					recive_done <= '0';
					end if; 
					next_state <= idle;
		end case; 
	end process; 
	


							
DO <= data(8 DOWNTO 1);
DO_Rdy <= recive_done;
end Behavioral;

