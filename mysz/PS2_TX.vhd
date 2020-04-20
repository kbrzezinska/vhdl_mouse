----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:12:15 04/19/2020 
-- Design Name: 
-- Module Name:    PS2_TX - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PS2_TX is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           din : in  STD_LOGIC_VECTOR (7 downto 0);
           wr_ps2 :  STD_LOGIC;
           ps2c_in : in  STD_LOGIC;
           ps2d_in : in  STD_LOGIC;
           ps2c_out : out  STD_LOGIC;
           ps2d_out : out  STD_LOGIC;
           tx_done_tick : out  STD_LOGIC;
           tx_idle : out  STD_LOGIC);
end PS2_TX;

architecture Behavioral of PS2_TX is

--rts-request to send

type statetype is (idle,rts,start,data,stop);
signal state_reg,state_next: statetype;
signal fall_edge: std_logic;
signal b_reg,b_next: std_logic_vector(8 downto 0) := "000000000";--7 bitow + bit parzystosci
signal c_reg,c_next: unsigned (12 downto 0):= "0000000000000";--zliczenie czasu 164us ---2^13
signal n_reg,n_next: unsigned (3 downto 0):= "0000";--shifted bits
signal tri_c,tri_d: std_logic;
signal par: std_logic :='0';
signal filter_reg: std_logic_vector (7 downto 0):= "00000000";
signal filter_next: std_logic_vector(7 downto 0);
signal f_ps2c_reg: std_logic := '0';
signal f_ps2c_next: std_logic;
begin

 -- falling edge detector using shift buffer
 process (clk,reset)
   begin
		if reset='1' then
			filter_reg <= (others=>'0');
         f_ps2c_reg <= '0';
      elsif (rising_edge(clk)) then
         filter_reg <= filter_next;
         f_ps2c_reg <= f_ps2c_next;
      end if;
   end process;
	
filter_next <= ps2c_in & filter_reg(7 downto 1);
f_ps2c_next <= '1' when filter_reg="11111111" else
               '0' when filter_reg="00000000" else
               f_ps2c_reg;
fall_edge <= f_ps2c_reg and (not f_ps2c_next);

  changing_state: process(clk, reset)
  begin
    if reset = '1' then
      state_reg <= idle;
      c_reg <= (others => '0');
      n_reg <= (others => '0');
      b_reg <= (others => '0');
    elsif rising_edge(clk) then
      state_reg <= state_next;
      c_reg <= c_next;
      n_reg <= n_next;
      b_reg <= b_next;
    end if;
  end process;
  
  par <= not (din(0) xor din(1) xor din(2) xor din(3) xor
                 din(4) xor din(5) xor din(6) xor din(7));
					  
	process (state_reg ,n_reg ,b_reg , c_reg ,wr_ps2,din, par, fall_edge)
	begin
	state_next <= state_reg; 
	c_next <= c_reg;
	n_next <= n_reg; 
	b_next <= b_reg; 
	
	tx_done_tick <='0';
	tx_idle <= '0';
	tri_c <='0';
	tri_d <='0';
   ps2d_out <= '1'; -- initial value must be '1'
   ps2c_out <= '1'; -- initial value must be '1'
	
	
	case (state_reg) is
      -- waiting for wr_ps2
      when idle =>
        tx_idle <= '1';
        if wr_ps2 = '1' then
          state_next <= rts;
          c_next <= (others=>'1');
          b_next <= par & din;
			end if;
			
			when rts=> --request to send
				ps2c_out<='0'; ---ps2c host=0 przez >100us ,=> disable mouse
				tri_c<= '1';
				c_next<=c_reg-1;
				if(c_reg=0) then
					state_next<= start;
			end if;
					
			when start=>
				ps2d_out<='0'; ---ps2d host=0 -> starting bit
				tri_d <= '1';
				if (fall_edge ='1') then
					n_next <= "1000";  --zliczanie 8 bitow
					state_next<= data;
				end if;
				
				when data=>
				ps2d_out<=b_reg(0);
				tri_d <= '1';
				if fall_edge ='1' then
					b_next <='0' & b_reg(8 downto 1);
					if n_reg=0 then
						state_next<= stop;
					else
						n_next <=n_reg -1;
					end if;
				end if;
				

				when stop=>
				if fall_edge ='1' and ps2d_in='0' then
					state_next<= idle;
					tx_done_tick <='1';
				end if;
			end case;
		end process;

				
	
	
	
	
	
	
	
	
end Behavioral;

