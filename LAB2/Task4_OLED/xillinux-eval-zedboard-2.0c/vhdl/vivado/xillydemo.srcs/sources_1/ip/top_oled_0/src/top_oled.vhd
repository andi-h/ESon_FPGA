----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.04.2018 13:58:12
-- Design Name: 
-- Module Name: top_oled - Behavioral
-- Project Name:  OLED TOP for ES in FPGA
-- Target Devices: XILLINUX
-- Tool Versions: 
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
use ieee.std_logic_arith.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top_oled is
  Port ( 
    -- clock
    clk : IN std_logic;
    -- set OLED storage to reset state -> use button
    reset_i : IN std_logic;
    --
    -- ascii data of the char to be written
    ascii_data_i : IN std_logic_vector(7 downto 0);
    -- valid ascii data are available
    data_valid_i : IN std_logic;
    -- data are written to the display
    data_consumed_o : OUT std_logic;
    -- OLED output signals
    SDIN : OUT std_logic; --
    SCLK : OUT std_logic; --
    DC : OUT std_logic; --
    RES : OUT std_logic; -- 
    VBAT : OUT std_logic; --
    VDD : OUT std_logic; --
      -- Buttons
      -- if set, OLED display is switched on
    dBtnU : in std_logic;
     -- if set, OLED display is switched off

    dBTnD : in std_logic
    );
end top_oled;

architecture Behavioral of top_oled is

component OLEDCtrl 
port (
  clk : IN std_logic;
  --Write command pins, when write_start asserted high, load pixel data for ascii character into local memory at address.
  --When ready to use / operation completed, assert write_ready high - start ignored when display off or machine is otherwise busy.
  write_start : IN std_logic;   ----inserts an ascii character's bitmap into display memory at specified address
  write_ascii_data : IN std_logic_vector(7 downto 0); ----ascii value of character to add to memory
  write_base_addr : IN std_logic_vector(8 downto 0);  ----on screen address of character to add {y[1:0], x[3:0], 3'b0}
  write_ready : OUT std_logic;    ----end of character bitmap write sequence
  
  ----Update command pins, when update_start asserted high, send pixel data contents of local memory - or zeroes if update_clear asserted - to OLED over SPI.
  ----When ready to use / operation completed, assert update_ready high - start ignored when display off or machine is otherwise busy.
  update_start : IN std_logic; --updates oled display with memory contents
  update_clear : IN std_logic;
  update_ready : OUT std_logic; -- --end of update sequence flag
  
  --Display On command pins, when disp_on_start asserted high, do initialization sequence as per spec.
  --When ready to use / operation completed, assert disp_on_ready high - start ignored when display is already on.
  disp_on_start : IN std_logic;  --starts initialization sequence
  disp_on_ready : OUT std_logic; --  --end of startup sequence flag
  
  --Display Off command pins, when disp_off_start asserted high, do safe shutdown sequence as per spec.
  --When ready to use / operation completed, assert update_ready high - start ignored when display off or machine is otherwise busy.
  disp_off_start : IN std_logic; --starts shutdown sequence
  disp_off_ready : OUT std_logic; -- --shutdown sequence available flag
  
  --Toggle Display command pins, when toggle_disp_start asserted high, sends commands to turn all display pixels on / revert to original state.
  --When ready to use / operation completed, toggle_disp_ready asserted high - start ignored when display off or machine is otherwise busy.
  toggle_disp_start : IN std_logic;
  toggle_disp_ready : OUT std_logic; --
  
  --OLED command pins
  SDIN : OUT std_logic; --
  SCLK : OUT std_logic; --
  DC : OUT std_logic; --
  RES : OUT std_logic; --
  VBAT : OUT std_logic; --
  VDD : OUT std_logic -- 
  );
end component;


signal s_write_start : std_logic;   ----inserts an ascii character's bitmap into display memory at specified address
signal s_write_ascii_data : std_logic_vector(7 downto 0); ----ascii value of character to add to memory
signal s_write_base_addr : unsigned(8 downto 0);  ----on screen address of character to add {y[1:0], x[3:0], 3'b0}
signal s_write_ready :  std_logic;    ----end of character bitmap write sequence
signal s_update_start : std_logic; --updates oled display with memory contents
signal s_update_clear : std_logic;
signal s_update_ready :  std_logic; -- --end of update sequence flag
signal s_disp_on_start : std_logic;  --starts initialization sequence
signal s_disp_on_ready :  std_logic; --  --end of startup sequence flag
signal s_disp_off_start : std_logic; --starts shutdown sequence
signal s_disp_off_ready :  std_logic; -- --shutdown sequence available flag
signal s_toggle_disp_start : std_logic;
signal s_toggle_disp_ready :  std_logic; --
signal s_init_done : std_logic;

signal once : std_logic;

TYPE state_type IS (t_init, t_active, t_write, t_write_wait, t_update_wait, t_write_char_wait, t_write_char, t_write_char_wait_1, t_idle);  -- Define the states
signal state : state_type;    -- Create a signal that uses 

begin

oled_ctr_i : OLEDCtrl 
port map (
  clk => clk,
  write_start => s_write_start,
  write_ascii_data => s_write_ascii_data,
  write_base_addr => std_logic_vector(s_write_base_addr),
  write_ready => s_write_ready,
  update_start => s_update_start,
  update_clear => s_update_clear,
  update_ready => s_update_ready,
  disp_on_start => s_disp_on_start,
  disp_on_ready => s_disp_on_ready,
  disp_off_start => s_disp_off_start,
  disp_off_ready => s_disp_off_ready,
  toggle_disp_start => s_toggle_disp_start,
  toggle_disp_ready => s_toggle_disp_ready,
  SDIN => SDIN,
  SCLK => SCLK,
  DC => DC,
  RES => RES,
  VBAT => VBAT,
  VDD => VDD
  );


s_disp_off_start <= '0';
s_toggle_disp_start <= '0';

s_init_done <= s_disp_off_ready or 
              s_toggle_disp_ready or 
              s_write_ready or 
              s_update_ready;

write_to_oled: process(clk, reset_i)
begin
  if (rising_edge(clk) ) then
  if (reset_i = '1') then
    s_write_base_addr <= (others => '0');
    s_write_start <= '0';
    s_update_start <= '0';
    s_update_clear <= '0';  
    s_write_ascii_data <= (others => '0');
    s_write_base_addr <= (others => '0');
    s_disp_on_start <= '1';
    data_consumed_o <= '0';
    state <= t_init;
    once <= '0';

  else -- rising edge
    data_consumed_o <= '0';
    
    case(state) is
      when t_init => 
        s_disp_on_start <= '0';
        if (s_init_done = '1') then
          state <= t_active;
        end if;
      when t_active =>
        if (once = '0' and s_write_ready = '1' ) then
          s_write_start <= '1';
          s_write_base_addr <= (others => '0');
          s_write_ascii_data <= conv_std_logic_vector(65, 
                                  s_write_ascii_data'length);
          state <= t_write_wait;        
        elsif (once = '1' and data_valid_i = '1') then
          data_consumed_o <= '1';
          s_write_ascii_data <= ascii_data_i;
          state <= t_write_char;
          --state <= t_write_char_wait_1;
        elsif (once = '1' and dBtnU = '1') then
          s_update_start <= '1';
          s_update_clear <= '0';
          state <= t_update_wait;
        elsif (once = '1' and dBTnD = '1') then
          s_update_start <= '1';
          s_update_clear <= '1';
          state <= t_update_wait;
        end if;
      when t_write_char_wait_1 =>
        state <= t_write_char;
      when t_write_char =>
        s_write_start <= '1';
       -- s_write_ascii_data <= ascii_data_i;
        state <= t_write_char_wait;
      when t_write_char_wait => 
        s_write_start <= '0';
        if (s_write_ready = '1')  then
          s_update_start <= '1';
          s_update_clear <= '0';
          state <= t_update_wait;
          s_write_base_addr <= s_write_base_addr + conv_unsigned(8, s_write_base_addr'length);
        end if;
      when t_write => 
        s_write_start <= '1';
        s_write_base_addr <= s_write_base_addr + conv_unsigned(8, s_write_base_addr'length);
        s_write_ascii_data <= conv_std_logic_vector(unsigned(s_write_ascii_data) + conv_unsigned(1,1), s_write_ascii_data'length);
        state <= t_write_wait;
      when t_write_wait => 
        s_write_start <= '0';
        if (s_write_ready = '1' and s_write_base_addr = conv_unsigned(504, s_write_base_addr'length)) then
          once <= '1';
          s_write_base_addr <= (others => '0');
          s_update_start <= '1';
          s_update_clear <= '0';
          state <= t_update_wait;
        elsif (s_write_ready = '1')  then
          state <= t_write;
        end if;
      when t_update_wait =>
        s_update_start <= '0';
        if (s_update_ready = '1') then
          state <= t_active;
        end if;

      when others =>
        null;
    end case;
  end if;
  end if;
  
end process;


end Behavioral;
