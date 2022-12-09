----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/08/2022 11:16:25 PM
-- Design Name: 
-- Module Name: div2 - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity div2 is
    Port ( x : in STD_LOGIC_VECTOR (11 downto 0);
           y : out STD_LOGIC_VECTOR (11 downto 0));
end div2;

architecture Behavioral of div2 is

signal x0and : std_logic_vector(10 downto 0); 

begin

x0and <= (10 downto 0 => x(0)) and std_logic_vector(to_unsigned(1665, x0and'length)); 
y <= std_logic_vector(unsigned('0'&x(11 downto 1)) + unsigned('0'&x0and));

end Behavioral;
