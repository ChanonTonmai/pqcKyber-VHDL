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

entity dt0 is
  Port ( t0_0  : in std_logic_vector(7-1 downto 0); 
         t0_1  : in std_logic_vector(8-1 downto 0);
         t0_2  : in std_logic_vector(8-1 downto 0);
         t0_3  : in std_logic_vector(7-1 downto 0); 
         t0_4  : in std_logic_vector(7-1 downto 0); 
         t0_5  : in std_logic_vector(5-1 downto 0); 
         t0_6  : in std_logic_vector(6-1 downto 0); 
         t0_7  : in std_logic_vector(4-1 downto 0); 
         t0_8  : in std_logic_vector(9-1 downto 0); 
         t0_9  : in std_logic_vector(6-1 downto 0); 
         t0_10 : in std_logic_vector(8-1 downto 0); 
         t0_11 : in std_logic_vector(2-1 downto 0); 
         t0_13 : in std_logic_vector(1-1 downto 0); 
         t0_14 : in std_logic_vector(1-1 downto 0);
         s,c   : out std_logic_vector(15-1 downto 0) 
        );
end dt0;

architecture Behavioral of dt0 is

signal t1_0   : std_logic_vector(6-1 downto 0) ;
signal t1_1   : std_logic_vector(6-1 downto 0) ;
signal t1_2   : std_logic_vector(6-1 downto 0) ;
signal t1_3   : std_logic_vector(6-1 downto 0) ;
signal t1_4   : std_logic_vector(6-1 downto 0) ;
signal t1_5   : std_logic_vector(6-1 downto 0) ;
signal t1_6   : std_logic_vector(6-1 downto 0) ;
signal t1_7   : std_logic_vector(6-1 downto 0) ;
signal t1_8   : std_logic_vector(6-1 downto 0) ;
signal t1_9   : std_logic_vector(6-1 downto 0) ;
signal t1_10  : std_logic_vector(6-1 downto 0) ; 
signal t1_11  : std_logic_vector(4-1 downto 0) ; 
signal t1_13  : std_logic_vector(1-1 downto 0) ; 
signal t1_14  : std_logic_vector(1-1 downto 0) ; 
signal t2_0   : std_logic_vector(4-1 downto 0) ;   
signal t2_1   : std_logic_vector(4-1 downto 0) ;   
signal t2_2   : std_logic_vector(4-1 downto 0) ;   
signal t2_3   : std_logic_vector(4-1 downto 0) ;   
signal t2_4   : std_logic_vector(4-1 downto 0) ;   
signal t2_5   : std_logic_vector(4-1 downto 0) ;   
signal t2_6   : std_logic_vector(4-1 downto 0) ;   
signal t2_7   : std_logic_vector(4-1 downto 0) ;   
signal t2_8   : std_logic_vector(4-1 downto 0) ;   
signal t2_9   : std_logic_vector(4-1 downto 0) ;   
signal t2_10  : std_logic_vector(4-1 downto 0) ; 
signal t2_11  : std_logic_vector(4-1 downto 0) ;
signal t2_12  : std_logic_vector(1-1 downto 0) ;
signal t2_13  : std_logic_vector(1-1 downto 0) ;
signal t2_14  : std_logic_vector(1-1 downto 0) ;
signal t3_0   : std_logic_vector(3-1 downto 0) ; 
signal t3_1   : std_logic_vector(3-1 downto 0) ; 
signal t3_2   : std_logic_vector(3-1 downto 0) ; 
signal t3_3   : std_logic_vector(3-1 downto 0) ; 
signal t3_4   : std_logic_vector(3-1 downto 0) ; 
signal t3_5   : std_logic_vector(3-1 downto 0) ; 
signal t3_6   : std_logic_vector(3-1 downto 0) ; 
signal t3_7   : std_logic_vector(3-1 downto 0) ; 
signal t3_8   : std_logic_vector(3-1 downto 0) ; 
signal t3_9   : std_logic_vector(3-1 downto 0) ; 
signal t3_10  : std_logic_vector(3-1 downto 0) ;   
signal t3_11  : std_logic_vector(3-1 downto 0) ;   
signal t3_12  : std_logic_vector(2-1 downto 0) ;   
signal t3_13  : std_logic_vector(1-1 downto 0) ;   
signal t3_14  : std_logic_vector(1-1 downto 0) ;   
signal t4_0   : std_logic_vector(2-1 downto 0) ;  
signal t4_1   : std_logic_vector(2-1 downto 0) ;  
signal t4_2   : std_logic_vector(2-1 downto 0) ;  
signal t4_3   : std_logic_vector(2-1 downto 0) ;  
signal t4_4   : std_logic_vector(2-1 downto 0) ;  
signal t4_5   : std_logic_vector(2-1 downto 0) ;  
signal t4_6   : std_logic_vector(2-1 downto 0) ;  
signal t4_7   : std_logic_vector(2-1 downto 0) ;  
signal t4_8   : std_logic_vector(2-1 downto 0) ;  
signal t4_9   : std_logic_vector(2-1 downto 0) ;  
signal t4_10  : std_logic_vector(2-1 downto 0) ;  
signal t4_11  : std_logic_vector(2-1 downto 0) ;  
signal t4_12  : std_logic_vector(2-1 downto 0) ;  
signal t4_13  : std_logic_vector(2-1 downto 0) ;  
signal t4_14  : std_logic_vector(1-1 downto 0) ;  

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

u000 : HA port map ( a=>t0_0(0), b=>t0_0(1), c=>t1_1(0), s=>t1_0(0)); 
t1_0(1) <= t0_0(2);
t1_0(2) <= t0_0(3);
t1_0(3) <= t0_0(4);
t1_0(4) <= t0_0(5);
t1_0(5) <= t0_0(6);
u010 : FA port map (a=>t0_1(0),b=>t0_1(1),cin=>t0_1(2),c=>t1_2(0),s=>t1_1(1));
u011 : HA port map (a=>t0_1(3),b=>t0_1(4),c=>t1_2(1),s=>t1_1(2));
t1_1(3)  <= t0_1(5);
t1_1(4)  <= t0_1(6);
t1_1(5)  <= t0_1(7);
u020: FA  port map (a=>t0_2(0),b=>t0_2(1),cin=>t0_2(2),c=>t1_3(0),s=>t1_2(2));
u021: FA  port map (a=>t0_2(3),b=>t0_2(4),cin=>t0_2(5),c=>t1_3(1),s=>t1_2(3));
t1_2(4)  <= t0_2(6);
t1_2(5)  <= t0_2(7);
u030: FA  port map (a=>t0_3(0),b=>t0_3(1),cin=>t0_3(2),c=>t1_4(0),s=>t1_3(2));
u031: HA  port map (a=>t0_3(3),b=>t0_3(4),c=>t1_4(1),s=>t1_3(3));
t1_3(4)  <= t0_3(5);
t1_3(5)  <= t0_3(6);
u040: FA port map (a=>t0_4(0),b=>t0_4(1),cin=>t0_4(2),c=>t1_5(0),s=>t1_4(2));
u041: HA  port map (a=>t0_4(3),b=>t0_4(4),c=>t1_5(1),s=>t1_4(3));
t1_4(4)  <= t0_4(5);
t1_4(5)  <= t0_4(6);
u050: HA  port map (a=>t0_5(0),b=>t0_5(1),c=>t1_6(0),s=>t1_5(2));
t1_5(3)  <= t0_5(2);
t1_5(4)  <= t0_5(3);
t1_5(5)  <= t0_5(4);
u060: HA port map (a=>t0_6(0),b=>t0_6(1),c=>t1_7(0),s=>t1_6(1));
t1_6(2)  <= t0_6(2);
t1_6(3)  <= t0_6(3);
t1_6(4)  <= t0_6(4);
t1_6(5)  <= t0_6(5);
t1_7(1)  <= t0_7(0);
t1_7(2)  <= t0_7(1);
t1_7(3)  <= t0_7(2);
t1_7(4)  <= t0_7(3);
u080: FA  port map (a=>t0_8(0),b=>t0_8(1),cin=>t0_8(2),c=>t1_9(0),s=>t1_8(0));
u081: HA  port map (a=>t0_8(3),b=>t0_8(4),c=>t1_9(1),s=>t1_8(1));
t1_8(2)  <= t0_8(5);
t1_8(3)  <= t0_8(6);
t1_8(4)  <= t0_8(7);
t1_8(5)  <= t0_8(8);
u090: FA  port map (a=>t0_9(0),b=>t0_9(1),cin=>t0_9(2),c=>t1_10(0),s=>t1_9(2));
t1_9(3)  <= t0_9(3);
t1_9(4)  <= t0_9(4);
t1_9(5)  <= t0_9(5);
u0100: FA  port map (a=>t0_10(0),b=>t0_10(1),cin=>t0_10(2),c=>t1_11(0),s=>t1_10(1));
u0101: HA  port map (a=>t0_10(3),b=>t0_10(4),c=>t1_11(1),s=>t1_10(2));
t1_10(3)  <= t0_10(5);
t1_10(4)  <= t0_10(6);
t1_10(5)  <= t0_10(7);
t1_11(2)  <= t0_11(0);
t1_11(3)  <= t0_11(1);
t1_13(0)  <= t0_13(0);
t1_14(0)  <= t0_14(0);

-- level 2 

u100: FA port map (a=>t1_0(0),b=>t1_0(1),cin=>t1_0(2),c=>t2_1(0),s=>t2_0(0));
t2_0(1) <= t1_0(3);
t2_0(2) <= t1_0(4);
t2_0(3) <= t1_0(5);
u110: FA port map (a=>t1_1(0),b=>t1_1(1),cin=>t1_1(2),c=>t2_2(0),s=>t2_1(1));
u111: HA port map (a=>t1_1(3),b=>t1_1(4),c=>t2_2(1),s=>t2_1(2));

t2_1(3) <= t1_1(5);
u120: FA port map (a=>t1_2(0),b=>t1_2(1),cin=>t1_2(2),c=>t2_3(0),s=>t2_2(2));
u121: FA port map (a=>t1_2(3),b=>t1_2(4),cin=>t1_2(5),c=>t2_3(1),s=>t2_2(3));
u130: FA port map (a=>t1_3(0),b=>t1_3(1),cin=>t1_3(2),c=>t2_4(0),s=>t2_3(2));
u131: FA port map (a=>t1_3(3),b=>t1_3(4),cin=>t1_3(5),c=>t2_4(1),s=>t2_3(3));
u140: FA port map (a=>t1_4(0),b=>t1_4(1),cin=>t1_4(2),c=>t2_5(0),s=>t2_4(2));
u141: FA port map (a=>t1_4(3),b=>t1_4(4),cin=>t1_4(5),c=>t2_5(1),s=>t2_4(3));
u150: FA port map (a=>t1_5(0),b=>t1_5(1),cin=>t1_5(2),c=>t2_6(0),s=>t2_5(2));
u151: FA port map (a=>t1_5(3),b=>t1_5(4),cin=>t1_5(5),c=>t2_6(1),s=>t2_5(3));
u160: FA port map (a=>t1_6(0),b=>t1_6(1),cin=>t1_6(2),c=>t2_7(0),s=>t2_6(2));
u161: FA port map (a=>t1_6(3),b=>t1_6(4),cin=>t1_6(5),c=>t2_7(1),s=>t2_6(3));
u170: FA port map (a=>t1_7(0),b=>t1_7(1),cin=>t1_7(2),c=>t2_8(0),s=>t2_7(2));
u171: HA port map (a=>t1_7(3),b=>t1_7(4),c=>t2_8(1),  s=>t2_7(3));
u180: FA port map (a=>t1_8(0),b=>t1_8(1),cin=>t1_8(2),c=>t2_9(0), s=>t2_8(2));
u181: FA port map (a=>t1_8(3),b=>t1_8(4),cin=>t1_8(5),c=>t2_9(1), s=>t2_8(3));
u190: FA port map (a=>t1_9(0),b=>t1_9(1),cin=>t1_9(2),c=>t2_10(0),s=>t2_9(2));
u191: FA port map (a=>t1_9(3),b=>t1_9(4),cin=>t1_9(5),c=>t2_10(1),s=>t2_9(3));
u1100: FA port map (a=>t1_10(0),b=>t1_10(1),cin=>t1_10(2),c=>t2_11(0),s=>t2_10(2));
u1101: FA port map (a=>t1_10(3),b=>t1_10(4),cin=>t1_10(5),c=>t2_11(1),s=>t2_10(3));
u1110: FA port map (a=>t1_11(0),b=>t1_11(1),cin=>t1_11(2),c=>t2_12(0),s=>t2_11(2));
t2_11(3) <= t1_11(3);
t2_13(0) <= t1_13(0);
t2_14(0) <= t1_14(0);

--- level 3 

u200: HA port map(a=>t2_0(0),b=>t2_0(1),c=>t3_1(0),s=>t3_0(0));
t3_0(1)  <= t2_0(2);
t3_0(2)  <= t2_0(3);
u210: FA port map(a=>t2_1(0),b=>t2_1(1),cin=>t2_1(2),c=>t3_2(0),s=>t3_1(1));
t3_1(2)  <= t2_1(3);
u220: FA port map(a=>t2_2(0),b=>t2_2(1),cin=>t2_2(2),c=>t3_3(0),s=>t3_2(1));
t3_2(2)  <= t2_2(3);
u230: FA port map(a=>t2_3(0),b=>t2_3(1),cin=>t2_3(2),c=>t3_4(0),s=>t3_3(1));
t3_3(2)  <= t2_3(3);
u240: FA port map(a=>t2_4(0),b=>t2_4(1),cin=>t2_4(2),c=>t3_5(0),s=>t3_4(1));
t3_4(2)  <= t2_4(3);
u250: FA port map(a=>t2_5(0),b=>t2_5(1),cin=>t2_5(2),c=>t3_6(0),s=>t3_5(1));
t3_5(2)  <= t2_5(3);
u260: FA port map(a=>t2_6(0),b=>t2_6(1),cin=>t2_6(2),c=>t3_7(0),s=>t3_6(1));
t3_6(2)  <= t2_6(3);
u270: FA port map(a=>t2_7(0),b=>t2_7(1),cin=>t2_7(2),c=>t3_8(0),s=>t3_7(1));
t3_7(2)  <= t2_7(3);
u280: FA port map(a=>t2_8(0),b=>t2_8(1),cin=>t2_8(2),c=>t3_9(0),s=>t3_8(1));
t3_8(2)  <= t2_8(3);
u290: FA port map(a=>t2_9(0),b=>t2_9(1),cin=>t2_9(2),c=>t3_10(0),s=>t3_9(1));
t3_9(2)  <= t2_9(3);
u2100: FA port map(a=>t2_10(0),b=>t2_10(1),cin=>t2_10(2),c=>t3_11(0),s=>t3_10(1));
t3_10(2)  <= t2_10(3);
u2110: FA port map(a=>t2_11(0),b=>t2_11(1),cin=>t2_11(2),c=>t3_12(0),s=>t3_11(1));
t3_11(2)  <= t2_11(3);
t3_12(1)  <= t2_12(0);
t3_13(0)  <= t2_13(0);
t3_14(0)  <= t2_14(0);

-- level 4 

u300: HA port map(a=>t3_0(0),b=>t3_0(1),c=>t4_1(0),s=>t4_0(0));
t4_0(1) <= t3_0(2);
u310: FA port map(a=>t3_1(0),b=>t3_1(1),cin=>t3_1(2),c=>t4_2(0),s=>t4_1(1));
u320: FA port map(a=>t3_2(0),b=>t3_2(1),cin=>t3_2(2),c=>t4_3(0),s=>t4_2(1));
u330: FA port map(a=>t3_3(0),b=>t3_3(1),cin=>t3_3(2),c=>t4_4(0),s=>t4_3(1));
u340: FA port map(a=>t3_4(0),b=>t3_4(1),cin=>t3_4(2),c=>t4_5(0),s=>t4_4(1));
u350: FA port map(a=>t3_5(0),b=>t3_5(1),cin=>t3_5(2),c=>t4_6(0),s=>t4_5(1));
u360: FA port map(a=>t3_6(0),b=>t3_6(1),cin=>t3_6(2),c=>t4_7(0),s=>t4_6(1));
u370: FA port map(a=>t3_7(0),b=>t3_7(1),cin=>t3_7(2),c=>t4_8(0),s=>t4_7(1));
u380: FA port map(a=>t3_8(0),b=>t3_8(1),cin=>t3_8(2),c=>t4_9(0),s=>t4_8(1));
u390: FA port map(a=>t3_9(0),b=>t3_9(1),cin=>t3_9(2),c=>t4_10(0),s=>t4_9(1));
u3100: FA port map(a=>t3_10(0),b=>t3_10(1),cin=>t3_10(2),c=>t4_11(0),s=>t4_10(1));
u3110: FA port map(a=>t3_11(0),b=>t3_11(1),cin=>t3_11(2),c=>t4_12(0),s=>t4_11(1));
u3120: HA port map(a=>t3_12(0),b=>t3_12(1),c=>t4_13(0),s=>t4_12(1));
t4_13(1) <= t3_13(0);
t4_14(0) <= t3_14(0);

-- rewire
c(0) <= t4_0(0);
c(1) <= t4_1(0);
c(2) <= t4_2(0);
c(3) <= t4_3(0);
c(4) <= t4_4(0);
c(5) <= t4_5(0);
c(6) <= t4_6(0);
c(7) <= t4_7(0);
c(8) <= t4_8(0);
c(9) <= t4_9(0);
c(10) <= t4_10(0);
c(11) <= t4_11(0);
c(12) <= t4_12(0);
c(13) <= t4_13(0);
c(14) <= t4_14(0);
s(0) <= t4_0(1);
s(1) <= t4_1(1);
s(2) <= t4_2(1);
s(3) <= t4_3(1);
s(4) <= t4_4(1);
s(5) <= t4_5(1);
s(6) <= t4_6(1);
s(7) <= t4_7(1);
s(8) <= t4_8(1);
s(9) <= t4_9(1);
s(10) <= t4_10(1);
s(11) <= t4_11(1);
s(12) <= t4_12(1);
s(13) <= t4_13(1);
s(14) <= '0';

end Behavioral;
