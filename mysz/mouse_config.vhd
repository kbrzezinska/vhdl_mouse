----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:51:25 05/14/2020 
-- Design Name: 
-- Module Name:    mouse_config - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mouse_config is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           x : out  STD_LOGIC_VECTOR (8 downto 0);
           y : out  STD_LOGIC_VECTOR (8 downto 0);
           btn : out  STD_LOGIC_VECTOR (2 downto 0);
           m_done_tick : out  STD_LOGIC;
           wr : out  STD_LOGIC;
           tx_done : in  STD_LOGIC;
           rx_done : in  STD_LOGIC;
           rx_data : in  STD_LOGIC_VECTOR (7 downto 0);
           tx_data : out  STD_LOGIC_VECTOR (7 downto 0));
end mouse_config;

architecture Behavioral of mouse_config is
type state is (init1, init2, init3, pack1, pack2, pack3, done);
  signal state_reg, state_next: state;
  signal btn_reg, btn_next: std_logic_vector(2 downto 0);
  signal x_reg, x_next, y_reg, y_next: std_logic_vector(8 downto 0);
begin

  clk_process: process (clk, reset)
  begin
    if reset = '1' then
      state_reg <= init1;
		x_reg <= (others => '0');
		y_reg <= (others => '0');
		btn_reg <= (others => '0');
    elsif rising_edge(clk) then
      state_reg <= state_next;
		x_reg <= x_next;
		y_reg <= y_next;
		btn_reg <= btn_next;
    end if;
  end process;
  
    state_machine: process (rx_done, tx_done, state_reg, x_reg, y_reg, btn_reg, rx_data)
  begin
    state_next <= state_reg;
    x_next <= x_reg;
    y_next <= x_reg;
    btn_next <= btn_reg;
    wr <= '0';
    m_done_tick <= '0';

    case (state_reg) is
      when init1 =>
        tx_data <= x"F4";
        wr <= '1';
        state_next <= init2;

      -- wait for transmission to complete
      when init2 =>
        if tx_done = '1' then
          state_next <= init3;
        end if;

      -- wait for ack
      when init3 =>
        if rx_done = '1' then
          state_next <= pack1;
        end if;

      -- first byte
      when pack1 =>
        if rx_done = '1' then
			 y_next (8) <= rx_data (5) ;
			 x_next (8) <= rx_data (4) ;
			 btn_next <= rx_data(2 downto 0); 
          state_next <= pack2;
        end if;

      when pack2 =>
        if rx_done = '1' then
          x_next(7 downto 0) <= rx_data;
          state_next <= pack3;
        end if;

      when pack3 =>
        if rx_done = '1' then
          y_next(7 downto 0) <= rx_data;
          state_next <= done;
        end if;

      when done =>
        m_done_tick <= '1';
        state_next <= pack1;

    end case;
  end process;
  
  x <= x_reg;
  y <= y_reg;
  btn <= btn_reg; 
  
end Behavioral;

