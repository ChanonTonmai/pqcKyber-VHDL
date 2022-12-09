----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/08/2022 11:16:25 PM
-- Design Name: 
-- Module Name: modsub - Behavioral
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

entity modsub is
    Port ( A,B : in STD_LOGIC_VECTOR (11 downto 0);
            C : out STD_LOGIC_VECTOR (11 downto 0));
end modsub;

architecture Behavioral of modsub is

signal R : std_logic_vector(13 downto 0); 
signal Rq : std_logic_vector(13 downto 0); 

begin

R <= std_logic_vector(unsigned(A)-unsigned(B));
Rq <= std_logic_vector(unsigned(R)+to_unsigned(3329,R'length));
C <= R(11 downto 0) when Rq(12) = '0' else Rq(11 downto 0);

end Behavioral;
