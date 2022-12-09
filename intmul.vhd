----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/08/2022 11:34:37 PM
-- Design Name: 
-- Module Name: intmul - Behavioral
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

entity intmul is
    Port ( A,B : in STD_LOGIC_VECTOR (11 downto 0);
           P : out STD_LOGIC_VECTOR (23 downto 0));
end intmul;

architecture Behavioral of intmul is

begin

P <= std_logic_vector(unsigned(A)*unsigned(B));

end Behavioral;
