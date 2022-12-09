----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/08/2022 11:16:25 PM
-- Design Name: 
-- Module Name: modmul - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity modmul is
    Port ( clk,rst : in STD_LOGIC;
           A,B : in STD_LOGIC_VECTOR (11 downto 0);
           R : out STD_LOGIC_VECTOR (11 downto 0));
end modmul;

architecture Behavioral of modmul is

signal P, P_R : std_logic_vector(23 downto 0);

component intmul 
    Port ( A,B : in STD_LOGIC_VECTOR (11 downto 0);
           P : out STD_LOGIC_VECTOR (23 downto 0));
end component;

begin

-- intmul (A,B,P)
intmul1 : intmul port map ( A=>A, B=>B, P=>P); 

process(clk,rst) begin 
    if rising_edge(clk) then
        if rst = '1' then 
            P_R  <= (others=>'0');
         else 
            P_R <= P;  
         end if; 
    end if; 
end process; 

-- modred (P_R,R); 

end Behavioral;
