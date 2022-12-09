----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/08/2022 11:38:30 PM
-- Design Name: 
-- Module Name: modred - Behavioral
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

entity modred is
    Port ( C : in STD_LOGIC_VECTOR (23 downto 0);
           R : out STD_LOGIC_VECTOR (11 downto 0));
end modred;

architecture Behavioral of modred is

signal C0, S0 : std_logic_vector(14 downto 0);
signal R0,R1,R2,R3,R4,R5 : std_logic_vector(14 downto 0); 


component dt0 is 
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
end component; 
component dt1 is 
  Port ( t0_0  : in std_logic_vector(3-1 downto 0); 
       t0_1  : in std_logic_vector(3-1 downto 0);
       t0_2  : in std_logic_vector(3-1 downto 0);
       t0_3  : in std_logic_vector(3-1 downto 0); 
       t0_4  : in std_logic_vector(3-1 downto 0); 
       t0_5  : in std_logic_vector(3-1 downto 0); 
       t0_6  : in std_logic_vector(3-1 downto 0); 
       t0_7  : in std_logic_vector(3-1 downto 0); 
       t0_8  : in std_logic_vector(2-1 downto 0); 
       t0_9  : in std_logic_vector(3-1 downto 0); 
       t0_10 : in std_logic_vector(2-1 downto 0); 
       t0_11 : in std_logic_vector(2-1 downto 0);
       t0_12 : in std_logic_vector(3-1 downto 0);  
       t0_13 : in std_logic_vector(3-1 downto 0); 
       t0_14 : in std_logic_vector(3-1 downto 0);
       s,c   : out std_logic_vector(15-1 downto 0) 
      );
end component; 
component dt2 is 
Port (   t0_0  : in std_logic_vector(2-1 downto 0); 
         t0_1  : in std_logic_vector(3-1 downto 0);
         t0_2  : in std_logic_vector(3-1 downto 0);
         t0_3  : in std_logic_vector(3-1 downto 0); 
         t0_4  : in std_logic_vector(3-1 downto 0); 
         t0_5  : in std_logic_vector(3-1 downto 0); 
         t0_6  : in std_logic_vector(3-1 downto 0); 
         t0_7  : in std_logic_vector(3-1 downto 0); 
         t0_8  : in std_logic_vector(3-1 downto 0); 
         t0_9  : in std_logic_vector(2-1 downto 0); 
         t0_10 : in std_logic_vector(3-1 downto 0); 
         t0_11 : in std_logic_vector(2-1 downto 0);
         t0_12 : in std_logic_vector(2-1 downto 0);  
         t0_13 : in std_logic_vector(3-1 downto 0); 
         t0_14 : in std_logic_vector(3-1 downto 0);
         s,c   : out std_logic_vector(15-1 downto 0)
     ); 
end component; 
component dt3 is 
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
end component; 

signal l1_t0_0  : std_logic_vector(7-1 downto 0); 
signal l1_t0_1  : std_logic_vector(8-1 downto 0);
signal l1_t0_2  : std_logic_vector(8-1 downto 0);
signal l1_t0_3  : std_logic_vector(7-1 downto 0); 
signal l1_t0_4  : std_logic_vector(7-1 downto 0); 
signal l1_t0_5  : std_logic_vector(5-1 downto 0); 
signal l1_t0_6  : std_logic_vector(6-1 downto 0); 
signal l1_t0_7  : std_logic_vector(4-1 downto 0); 
signal l1_t0_8  : std_logic_vector(9-1 downto 0); 
signal l1_t0_9  : std_logic_vector(6-1 downto 0); 
signal l1_t0_10 : std_logic_vector(8-1 downto 0); 
signal l1_t0_11 : std_logic_vector(2-1 downto 0); 
signal l1_t0_13 : std_logic_vector(1-1 downto 0); 
signal l1_t0_14 : std_logic_vector(1-1 downto 0);

signal l2_t0_0  : std_logic_vector(3-1 downto 0); 
signal l2_t0_1  : std_logic_vector(3-1 downto 0);
signal l2_t0_2  : std_logic_vector(3-1 downto 0);
signal l2_t0_3  : std_logic_vector(3-1 downto 0); 
signal l2_t0_4  : std_logic_vector(3-1 downto 0); 
signal l2_t0_5  : std_logic_vector(3-1 downto 0); 
signal l2_t0_6  : std_logic_vector(3-1 downto 0); 
signal l2_t0_7  : std_logic_vector(3-1 downto 0); 
signal l2_t0_8  : std_logic_vector(2-1 downto 0); 
signal l2_t0_9  : std_logic_vector(3-1 downto 0); 
signal l2_t0_10 : std_logic_vector(2-1 downto 0); 
signal l2_t0_11 : std_logic_vector(2-1 downto 0);
signal l2_t0_12 : std_logic_vector(3-1 downto 0);  
signal l2_t0_13 : std_logic_vector(3-1 downto 0); 
signal l2_t0_14 : std_logic_vector(3-1 downto 0);

signal l3_t0_0  : std_logic_vector(2-1 downto 0); 
signal l3_t0_1  : std_logic_vector(3-1 downto 0);
signal l3_t0_2  : std_logic_vector(3-1 downto 0);
signal l3_t0_3  : std_logic_vector(3-1 downto 0); 
signal l3_t0_4  : std_logic_vector(3-1 downto 0); 
signal l3_t0_5  : std_logic_vector(3-1 downto 0); 
signal l3_t0_6  : std_logic_vector(3-1 downto 0); 
signal l3_t0_7  : std_logic_vector(3-1 downto 0); 
signal l3_t0_8  : std_logic_vector(3-1 downto 0); 
signal l3_t0_9  : std_logic_vector(2-1 downto 0); 
signal l3_t0_10 : std_logic_vector(3-1 downto 0); 
signal l3_t0_11 : std_logic_vector(2-1 downto 0);
signal l3_t0_12 : std_logic_vector(2-1 downto 0);  
signal l3_t0_13 : std_logic_vector(3-1 downto 0); 
signal l3_t0_14 : std_logic_vector(3-1 downto 0);


signal l4_t0_0  : std_logic_vector(3-1 downto 0); 
signal l4_t0_1  : std_logic_vector(2-1 downto 0);
signal l4_t0_2  : std_logic_vector(2-1 downto 0);
signal l4_t0_3  : std_logic_vector(2-1 downto 0); 
signal l4_t0_4  : std_logic_vector(2-1 downto 0); 
signal l4_t0_5  : std_logic_vector(2-1 downto 0); 
signal l4_t0_6  : std_logic_vector(2-1 downto 0); 
signal l4_t0_7  : std_logic_vector(2-1 downto 0); 
signal l4_t0_8  : std_logic_vector(3-1 downto 0); 
signal l4_t0_9  : std_logic_vector(2-1 downto 0); 
signal l4_t0_10 : std_logic_vector(3-1 downto 0); 
signal l4_t0_11 : std_logic_vector(3-1 downto 0);
signal l4_t0_12 : std_logic_vector(2-1 downto 0);  
signal l4_t0_13 : std_logic_vector(2-1 downto 0); 
signal l4_t0_14 : std_logic_vector(2-1 downto 0);

signal Rmp0           : std_logic_vector(14 downto 0) ;
signal Rm1q,Rm2q,Rp1q : std_logic_vector(14 downto 0) ;  

begin

l1_t0_0  <= C(0)& not C(12)& not C(14)& not C(17)& not C(18)& not C(19)& not C(20);  
l1_t0_1  <= C(1)& not C(13)& not C(15)& not C(17)& not C(18)& not C(20)& not C(21)&'1'; 
l1_t0_2  <= C(2)& not C(14)& not C(16)& not C(17)& not C(18)& not C(19)& not C(21)& not C(22); 
l1_t0_3  <= C(3)& not C(15)& not C(18)& not C(19)& not C(20)& not C(22)& not C(23);  
l1_t0_4  <= C(4)& not C(16)& not C(19)& not C(20)& not C(21)& not C(23)& '1';  
l1_t0_5  <= C(5)& not C(17)& not C(20)& not C(21)& not C(22);  
l1_t0_6  <= C(6)& not C(18)& not C(21)& not C(22)& not C(23)&'1';  
l1_t0_7  <= C(7)& not C(19)& not C(22)& not C(23);  
l1_t0_8  <= C(8)& C(12)&C(17)&C(19)&C(21)& not C(14)& not C(18)& not C(21)& not C(23);  
l1_t0_9  <= C(9)& C(12)&C(13)&C(15)&C(19)&C(18);  
l1_t0_10 <= C(10)&C(13)&C(17)&C(19)& not C(18)& not C(16)& not C(15)&'1';  
l1_t0_11 <= C(11)&'1';  
l1_t0_13 <= "1";  
l1_t0_14 <= "1"; 

level4_00 : dt0 port map (   
t0_0  =>  l1_t0_0,
t0_1  =>  l1_t0_1,
t0_2  =>  l1_t0_2,
t0_3  =>  l1_t0_3,
t0_4  =>  l1_t0_4,
t0_5  =>  l1_t0_5,
t0_6  =>  l1_t0_6,
t0_7  =>  l1_t0_7,
t0_8  =>  l1_t0_8,
t0_9  =>  l1_t0_9,
t0_10 =>  l1_t0_10,
t0_11 =>  l1_t0_11,
t0_13 =>  l1_t0_13,
t0_14 => l1_t0_14,
s   => C0,
c   => S0
        );

l2_t0_0  <= C0 (0) & S0 (0) & '1';
l2_t0_1  <= C0 (1) & S0 (1) & '1';
l2_t0_2  <= C0 (2) & S0 (2) & '1';
l2_t0_3  <=  C0 (3) & S0 (3) & '1';
l2_t0_4  <=  C0 (4) & S0 (4) & '1';
l2_t0_5  <=  C0 (5) & S0 (5) & '1';
l2_t0_6  <=  C0 (6) & S0 (6) & '1';
l2_t0_7  <=  C0 (7) & S0 (7) & '1';
l2_t0_8  <=  C0 (8) & S0 (8) ;
l2_t0_9  <=  C0 (9) & S0 (9) & '1';
l2_t0_10 <=  C0 (10)& S0 (10);
l2_t0_11 <=  C0 (11)& S0 (11) ;
l2_t0_12 <=   C0 (12)& S0 (12)& '1';
l2_t0_13 <=  C0 (13)& S0 (13)& '1' ;
l2_t0_14 <= C0 (14)& S0 (14)& '1';

level5_00 : dt1 port map (
    t0_0  =>   l2_t0_0,
    t0_1  =>   l2_t0_1,
    t0_2  =>   l2_t0_2,
    t0_3  =>   l2_t0_3,
    t0_4  =>   l2_t0_4, --C0 (4) & S0 (4) & '1' ,
    t0_5  =>   l2_t0_5, --C0 (5) & S0 (5) & '1' ,
    t0_6  =>   l2_t0_6, --C0 (6) & S0 (6) & '1' ,
    t0_7  =>   l2_t0_7, --C0 (7) & S0 (7) & '1' ,
    t0_8  =>   l2_t0_8, --C0 (8) & S0 (8)  ,
    t0_9  =>   l2_t0_9, --C0 (9) & S0 (9) & '1' ,
    t0_10 =>   l2_t0_10, --C0 (10)& S0 (10) &
    t0_11 =>   l2_t0_11, --C0 (11)& S0 (11) &
    t0_12 =>   l2_t0_12, --C0 (12)& S0 (12)& '1' ,
    t0_13 =>   l2_t0_13, --C0 (13)& S0 (13)& '1' ,
    t0_14 =>   l2_t0_14, --C0 (14)& S0 (14)& '1' ,
    s   => R0,
    c   => R1
); 

l3_t0_0  <=  C0 (0 ) &S0 (0 ) ;
l3_t0_1  <= C0 (1 ) &S0 (1 ) &'1' ;
l3_t0_2  <= C0 (2 ) &S0 (2 ) &'1' ;
l3_t0_3  <=  C0 (3 ) &S0 (3 ) &'1' ;
l3_t0_4  <=  C0 (4 ) &S0 (4 ) &'1' ;
l3_t0_5  <=  C0 (5 ) &S0 (5 ) &'1' ;
l3_t0_6  <=  C0 (6 ) &S0 (6 ) &'1' ;
l3_t0_7  <=  C0 (7 ) &S0 (7 ) &'1' ;
l3_t0_8  <=  C0 (8 ) &S0 (8 ) &'1' ;
l3_t0_9  <=  C0 (9 ) &S0 (9 ) ;
l3_t0_10 <=  C0 (10 )&S0 (10 )&'1' ;
l3_t0_11 <= C0 (11 )&S0 (11 ) ;
l3_t0_12 <=   C0 (12 )&S0 (12 ) ;
l3_t0_13 <= C0 (13 )&S0 (13 )&'1' ;
l3_t0_14 <= C0 (14 )&S0 (14 )&'1' ;

level5_01 : dt2 port map (
    t0_0  =>   l3_t0_0,
t0_1  =>   l3_t0_1,
t0_2  =>   l3_t0_2,
t0_3  =>   l3_t0_3,
t0_4  =>   l3_t0_4, --C0 (4) & S0 (4) & '1' ,
t0_5  =>   l3_t0_5, --C0 (5) & S0 (5) & '1' ,
t0_6  =>   l3_t0_6, --C0 (6) & S0 (6) & '1' ,
t0_7  =>   l3_t0_7, --C0 (7) & S0 (7) & '1' ,
t0_8  =>   l3_t0_8, --C0 (8) & S0 (8)  ,
t0_9  =>   l3_t0_9, --C0 (9) & S0 (9) & '1' ,
t0_10 =>   l3_t0_10, --C0 (10)& S0 (10) &
t0_11 =>   l3_t0_11, --C0 (11)& S0 (11) &
t0_12 =>   l3_t0_12, --C0 (12)& S0 (12)& '1' ,
t0_13 =>   l3_t0_13, --C0 (13)& S0 (13)& '1' ,
t0_14 =>   l3_t0_14, --C0 (14)& S0 (14)& '1' ,
s   => R2,
c   => R3
); 


l4_t0_0  <=   C0(0) & S0(0) &  '1' ;
l4_t0_1  <=  C0(1)  & S0(1)  ;
l4_t0_2  <=  C0(2)  & S0(2)  ;
l4_t0_3  <=   C0(3) & S0(3)  ;
l4_t0_4  <=   C0(4) & S0(4)  ;
l4_t0_5  <=   C0(5) & S0(5)  ;
l4_t0_6  <=   C0(6) & S0(6)  ;
l4_t0_7  <=   C0(7) & S0(7)  ;
l4_t0_8  <=   C0(8) & S0(8)    & '1' ;
l4_t0_9  <=   C0(9) & S0(9)    ;
l4_t0_10 <=   C0(10) &S0(10)  & '1' ;
l4_t0_11 <=  C0(11)  & S0(11) & '1' ;
l4_t0_12 <=    C0(12)& S0(12) ;
l4_t0_13 <=   C0(13) & S0(13) ;
l4_t0_14 <=  C0(14)  & S0(14) ;

level5_02 : dt3 port map ( 
    t0_0  =>   l4_t0_0,
    t0_1  =>   l4_t0_1,
    t0_2  =>   l4_t0_2,
    t0_3  =>   l4_t0_3,
    t0_4  =>   l4_t0_4, --C0 (4) & S0 (4) & '1' ,
    t0_5  =>   l4_t0_5, --C0 (5) & S0 (5) & '1' ,
    t0_6  =>   l4_t0_6, --C0 (6) & S0 (6) & '1' ,
    t0_7  =>   l4_t0_7, --C0 (7) & S0 (7) & '1' ,
    t0_8  =>   l4_t0_8, --C0 (8) & S0 (8)  ,
    t0_9  =>   l4_t0_9, --C0 (9) & S0 (9) & '1' ,
    t0_10 =>   l4_t0_10, --C0 (10)& S0 (10) &
    t0_11 =>   l4_t0_11, --C0 (11)& S0 (11) &
    t0_12 =>   l4_t0_12, --C0 (12)& S0 (12)& '1' ,
    t0_13 =>   l4_t0_13, --C0 (13)& S0 (13)& '1' ,
    t0_14 =>   l4_t0_14, --C0 (14)& S0 (14)& '1' ,
    s   => R4,
    c   => R5
); 

Rmp0 <= std_logic_vector(unsigned(C0)+unsigned(S0));
Rm1q <= std_logic_vector(unsigned(R0)+unsigned(R1));
Rm2q <= std_logic_vector(unsigned(R2)+unsigned(R3));
Rp1q <= std_logic_vector(unsigned(R4)+unsigned(R5));

process(Rm2q) is  begin 
    if Rm2q(14) = '0' then
        R <= Rm2q(11 downto 0);
    elsif Rm1q(14) = '0' then 
        R <= Rm1q(11 downto 0);
    elsif Rmp0(14) = '0' then 
        R <= Rmp0(11 downto 0);
    else
        R <= Rp1q(11 downto 0);
    end if; 
end process; 


end Behavioral;
