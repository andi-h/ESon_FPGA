----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.05.2018 20:13:09
-- Design Name: 
-- Module Name: PWM - Behavioral
-- Project Name: 
-- Target Devices: 
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
use IEEE.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PWM is
    Port ( clk : in STD_LOGIC;
           duty_cycle : in STD_LOGIC_VECTOR (31 downto 0);
           pwm_out : out STD_LOGIC_VECTOR (7 downto 0));
end PWM;

architecture Behavioral of PWM is
    signal counter : integer range 0 to 1e6 := 0;
begin

count_proc : process (clk)
begin
    if(clk'event and clk = '1') then
        if(counter < 1e6) then
            counter <= counter + 1;
        else
            counter <= 0;
        end if;
    end if;
end process count_proc;

pwm_proc : process (clk)
begin
    if(clk'event and clk = '1') then
        if(counter < TO_INTEGER(UNSIGNED(duty_cycle))) then
            pwm_out <= (others => '1');
        else 
            pwm_out <= (others => '0');
        end if;
    end if;
end process pwm_proc;

end Behavioral;
