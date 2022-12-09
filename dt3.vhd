----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/09/2022 01:15:42 PM
-- Design Name: 
-- Module Name: HA - Behavioral
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

entity dt3 is
  Port ( t0_0  : in std_logic_vector(3-1 downto 0); 
         t0_1  : in std_logic_vector(2-1 downto 0);
         t0_2  : in std_logic_vector(2-1 downto 0);
         t0_3  : in std_logic_vector(2-1 downto 0); 
         t0_4  : in std_logic_vector(2-1 downto 0); 
         t0_5  : in std_logic_vector(2-1 downto 0); 
         t0_6  : in std_logic_vector(2-1 downto 0); 
         t0_7  : in std_logic_vector(2-1 downto 0); 
         t0_8  : in std_logic_vector(3-1 downto 0); 
         t0_9  : in std_logic_vector(2-1 downto 0); 
         t0_10 : in std_logic_vector(3-1 downto 0); 
         t0_11 : in std_logic_vector(3-1 downto 0);
         t0_12 : in std_logic_vector(2-1 downto 0);  
         t0_13 : in std_logic_vector(2-1 downto 0); 
         t0_14 : in std_logic_vector(2-1 downto 0);
         s,c   : out std_logic_vector(15-1 downto 0) 
        );
end dt3;

architecture Behavioral of dt3 is

signal t1_0   : std_logic_vector(2-1 downto 0) ;
signal t1_1   : std_logic_vector(2-1 downto 0) ;
signal t1_2   : std_logic_vector(2-1 downto 0) ;
signal t1_3   : std_logic_vector(2-1 downto 0) ;
signal t1_4   : std_logic_vector(2-1 downto 0) ;
signal t1_5   : std_logic_vector(2-1 downto 0) ;
signal t1_6   : std_logic_vector(2-1 downto 0) ;
signal t1_7   : std_logic_vector(2-1 downto 0) ;
signal t1_8   : std_logic_vector(2-1 downto 0) ;
signal t1_9   : std_logic_vector(2-1 downto 0) ;
signal t1_10  : std_logic_vector(2-1 downto 0) ; 
signal t1_11  : std_logic_vector(2-1 downto 0) ; 
signal t1_12  : std_logic_vector(2-1 downto 0) ; 
signal t1_13  : std_logic_vector(2-1 downto 0) ; 
signal t1_14  : std_logic_vector(2-1 downto 0) ; 

component HA is
    port(a,b : in std_logic;         
        c,s : out std_logic
    );
end component;

component FA is
    port(   a,b,cin : in std_logic;         
            c,s : out std_logic
    );
end component;


begin 

u000 : HA port map(a=>t0_0(0), b=>t0_0(1) ,c=>t1_1(0), s=>t1_0(0));
t1_0(1) <= t0_0(2);
u010 : HA port map(a=>t0_1(0), b=>t0_1(1) ,c=>t1_2(0), s=>t1_1(1));
u020 : HA port map(a=>t0_2(0), b=>t0_2(1) ,c=>t1_3(0), s=>t1_2(1));
u030 : HA port map(a=>t0_3(0), b=>t0_3(1) ,c=>t1_4(0), s=>t1_3(1));
u040 : HA port map(a=>t0_4(0), b=>t0_4(1) ,c=>t1_5(0), s=>t1_4(1));
u050 : HA port map(a=>t0_5(0), b=>t0_5(1) ,c=>t1_6(0), s=>t1_5(1));
u060 : HA port map(a=>t0_6(0), b=>t0_6(1) ,c=>t1_7(0), s=>t1_6(1));
u070 : HA port map(a=>t0_7(0), b=>t0_7(1) ,c=>t1_8(0), s=>t1_7(1));
u080 : FA port map(a=>t0_8(0), b=>t0_8(1) ,cin=>t0_8(2), c=>t1_9(0),s=>t1_8(1));
u090 : HA port map(a=>t0_9(0), b=>t0_9(1) ,c=>t1_10(0),s=>t1_9(1));
u0100: FA port map(a=>t0_10(0),b=>t0_10(1),cin=>t0_10(2),c=>t1_11(0),s=>t1_10(1));
u0110: FA port map(a=>t0_11(0),b=>t0_11(1),cin=>t0_11(2),c=>t1_12(0),s=>t1_11(1));
u0120: HA port map(a=>t0_12(0),b=>t0_12(1),c=>t1_13(0),s=>t1_12(1));
u0130: HA port map(a=>t0_13(0),b=>t0_13(1),c=>t1_14(0),s=>t1_13(1));
u0140: HA port map(a=>t0_14(0),b=>t0_14(1),c=>open,s=>t1_14(1));

c(0) <= t1_0(0);
c(1) <= t1_1(0);
c(2) <= t1_2(0);
c(3) <= t1_3(0);
c(4) <= t1_4(0);
c(5) <= t1_5(0);
c(6) <= t1_6(0);
c(7) <= t1_7(0);
c(8) <= t1_8(0);
c(9) <= t1_9(0);
c(10) <= t1_10(0);
c(11) <= t1_11(0);
c(12) <= t1_12(0);
c(13) <= t1_13(0);
c(14) <= t1_14(0);
s(0) <= t1_0(1);
s(1) <= t1_1(1);
s(2) <= t1_2(1);
s(3) <= t1_3(1);
s(4) <= t1_4(1);
s(5) <= t1_5(1);
s(6) <= t1_6(1);
s(7) <= t1_7(1);
s(8) <= t1_8(1);
s(9) <= t1_9(1);
s(10) <= t1_10(1);
s(11) <= t1_11(1);
s(12) <= t1_12(1);
s(13) <= t1_13(1);
s(14) <= t1_14(1);

end Behavioral; 