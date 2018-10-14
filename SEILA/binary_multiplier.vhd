--Binary Multiplier with n =4: VHDL Description
-- See Figures8-6 and 8-7 for block diagram and ASM Chart

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;
-- use IEEE.STD_LOGIC_UNSIGNED.ALL;

--CLOCK_50: in std_logic;
entity binary_multiplier is
	 port(
    KEY: in std_logic_vector(3 downto 0);     -- Botao
    SW: in std_logic_vector(9 downto 0);      -- switch
	 HEX0: out std_logic_vector(7 downto 0);
	 HEX1: out std_logic_vector(7 downto 0));-- LEDS
end binary_multiplier;

architecture behavior_4 of binary_multiplier is
	 --signal multiplier: std_logic_vector(4 downto 0);
    signal B, Q: std_logic_vector(3 downto 0);
    signal k: std_logic_vector(7 downto 0);

    begin
	 
		with k(3 downto 0) select 
			HEX0(6 downto 0) <=
		"1000000" when "0000",--0
		"1111001" when "0001",--1
		"0100100" when "0010",--2
		"0110000" when "0011",--3
		"0011001" when "0100",--4
		"0010010" when "0101",--5
		"0000010" when "0110",--6
		"1111000" when "0111",--7
		"0000000" when "1000",--8
		"0011000" when "1001",--9
		"0001000" when "1010",--A
		"0000011" when "1011",--B
		"1000110" when "1100",--C
		"0100001" when "1101",--D
		"0000110" when "1110",--E
		"0001110" when others;

		with k(7 downto 4) select 
			HEX1(6 downto 0) <=
		"1000000" when "0000",--0
		"1111001" when "0001",--1
		"0100100" when "0010",--2
		"0110000" when "0011",--3
		"0011001" when "0100",--4
		"0010010" when "0101",--5
		"0000010" when "0110",--6
		"1111000" when "0111",--7
		"0000000" when "1000",--8
		"0011000" when "1001",--9
		"0001000" when "1010",--A
		"0000011" when "1011",--B
		"1000110" when "1100",--C
		"0100001" when "1101",--D
		"0000110" when "1110",--E
		"0001110" when others;
		  
		 datapath_state_func: process (KEY,SW)
		  begin
		  if (KEY(1)'event and KEY(1) = '1') then
		     if SW(9) = '0' then
		         B <= SW(3 downto 0);
		     elsif SW(9) = '1' then
		         Q <= SW(8 downto 5);
		     end if;
		
		if Q = "0000" OR B = "0000" then
                    k <= "00000000";
                elsif Q = "0001" then
                    k <= "0000" & B;
                elsif B = "0001" then
                    k <= "0000" & Q;
                elsif Q = "0010" AND B = "0010" then
                    k <= "00000100";
                elsif Q = "0010" AND B = "0011" then
                    k <= "00000110";
                elsif Q = "0010" AND B = "0100" then
                    k <= "00001000";
                elsif Q = "0010" AND B = "0101" then
                    k <= "00001010";
                elsif Q = "0010" AND B = "0110" then
                    k <= "00001100";
                elsif Q = "0010" AND B = "0111" then
                    k <= "00001110";
                elsif Q = "0010" AND B = "1000" then
                    k <= "00010000";
                elsif Q = "0010" AND B = "1001" then
                    k <= "00010010";
                elsif Q = "0010" AND B = "1010" then
                    k <= "00010100";
                elsif Q = "0010" AND B = "1011" then
                    k <= "00010110";
                elsif Q = "0010" AND B = "1100" then
                    k <= "00011000";
                elsif Q = "0010" AND B = "1101" then
                    k <= "00011010";
                elsif Q = "0010" AND B = "1110" then
                    k <= "00011100";
                elsif Q = "0010" AND B = "1111" then
                    k <= "00011110";
                elsif Q = "0011" AND B = "0010" then
                    k <= "00000110";
                elsif Q = "0011" AND B = "0011" then
                    k <= "00001001";
                elsif Q = "0011" AND B = "0100" then
                    k <= "00001100";
                elsif Q = "0011" AND B = "0101" then
                    k <= "00001111";
                elsif Q = "0011" AND B = "0110" then
                    k <= "00010010";
                elsif Q = "0011" AND B = "0111" then
                    k <= "00010101";
                elsif Q = "0011" AND B = "1000" then
                    k <= "00011000";
                elsif Q = "0011" AND B = "1001" then
                    k <= "00011011";
                elsif Q = "0011" AND B = "1010" then
                    k <= "00011110";
                elsif Q = "0011" AND B = "1011" then
                    k <= "00100001";
                elsif Q = "0011" AND B = "1100" then
                    k <= "00100100";
                elsif Q = "0011" AND B = "1101" then
                    k <= "00100111";
                elsif Q = "0011" AND B = "1110" then
                    k <= "00101010";
                elsif Q = "0011" AND B = "1111" then
                    k <= "00101101";
                elsif Q = "0100" AND B = "0010" then
                    k <= "00001000";
                elsif Q = "0100" AND B = "0011" then
                    k <= "00001100";
                elsif Q = "0100" AND B = "0100" then
                    k <= "00010000";
                elsif Q = "0100" AND B = "0101" then
                    k <= "00010100";
                elsif Q = "0100" AND B = "0110" then
                    k <= "00011000";
                elsif Q = "0100" AND B = "0111" then
                    k <= "00011100";
                elsif Q = "0100" AND B = "1000" then
                    k <= "00100000";
                elsif Q = "0100" AND B = "1001" then
                    k <= "00100100";
                elsif Q = "0100" AND B = "1010" then
                    k <= "00101000";
                elsif Q = "0100" AND B = "1011" then
                    k <= "00101100";
                elsif Q = "0100" AND B = "1100" then
                    k <= "00110000";
                elsif Q = "0100" AND B = "1101" then
                    k <= "00110100";
                elsif Q = "0100" AND B = "1110" then
                    k <= "00111000";
                elsif Q = "0100" AND B = "1111" then
                    k <= "00111100";
                elsif Q = "0101" AND B = "0010" then
                    k <= "00001010";
                elsif Q = "0101" AND B = "0011" then
                    k <= "00001111";
                elsif Q = "0101" AND B = "0100" then
                    k <= "00010100";
                elsif Q = "0101" AND B = "0101" then
                    k <= "00011001";
                elsif Q = "0101" AND B = "0110" then
                    k <= "00011110";
                elsif Q = "0101" AND B = "0111" then
                    k <= "00100011";
                elsif Q = "0101" AND B = "1000" then
                    k <= "00101000";
                elsif Q = "0101" AND B = "1001" then
                    k <= "00101101";
                elsif Q = "0101" AND B = "1010" then
                    k <= "00110010";
                elsif Q = "0101" AND B = "1011" then
                    k <= "00110111";
                elsif Q = "0101" AND B = "1100" then
                    k <= "00111100";
                elsif Q = "0101" AND B = "1101" then
                    k <= "01000001";
                elsif Q = "0101" AND B = "1110" then
                    k <= "01000110";
                elsif Q = "0101" AND B = "1111" then
                    k <= "01001011";
                elsif Q = "0110" AND B = "0010" then
                    k <= "00001100";
                elsif Q = "0110" AND B = "0011" then
                    k <= "00010010";
                elsif Q = "0110" AND B = "0100" then
                    k <= "00011000";
                elsif Q = "0110" AND B = "0101" then
                    k <= "00011110";
                elsif Q = "0110" AND B = "0110" then
                    k <= "00100100";
                elsif Q = "0110" AND B = "0111" then
                    k <= "00101010";
                elsif Q = "0110" AND B = "1000" then
                    k <= "00110000";
                elsif Q = "0110" AND B = "1001" then
                    k <= "00110110";
                elsif Q = "0110" AND B = "1010" then
                    k <= "00111100";
                elsif Q = "0110" AND B = "1011" then
                    k <= "01000010";
                elsif Q = "0110" AND B = "1100" then
                    k <= "01001000";
                elsif Q = "0110" AND B = "1101" then
                    k <= "01001110";
                elsif Q = "0110" AND B = "1110" then
                    k <= "01010100";
                elsif Q = "0110" AND B = "1111" then
                    k <= "01011010";
                elsif Q = "0111" AND B = "0010" then
                    k <= "00001110";
                elsif Q = "0111" AND B = "0011" then
                    k <= "00010101";
                elsif Q = "0111" AND B = "0100" then
                    k <= "00011100";
                elsif Q = "0111" AND B = "0101" then
                    k <= "00100011";
                elsif Q = "0111" AND B = "0110" then
                    k <= "00101010";
                elsif Q = "0111" AND B = "0111" then
                    k <= "00110001";
                elsif Q = "0111" AND B = "1000" then
                    k <= "00111000";
                elsif Q = "0111" AND B = "1001" then
                    k <= "00111111";
                elsif Q = "0111" AND B = "1010" then
                    k <= "01000110";
                elsif Q = "0111" AND B = "1011" then
                    k <= "01001101";
                elsif Q = "0111" AND B = "1100" then
                    k <= "01010100";
                elsif Q = "0111" AND B = "1101" then
                    k <= "01011011";
                elsif Q = "0111" AND B = "1110" then
                    k <= "01100010";
                elsif Q = "0111" AND B = "1111" then
                    k <= "01101001";
                elsif Q = "1000" AND B = "0010" then
                    k <= "00010000";
                elsif Q = "1000" AND B = "0011" then
                    k <= "00011000";
                elsif Q = "1000" AND B = "0100" then
                    k <= "00100000";
                elsif Q = "1000" AND B = "0101" then
                    k <= "00101000";
                elsif Q = "1000" AND B = "0110" then
                    k <= "00110000";
                elsif Q = "1000" AND B = "0111" then
                    k <= "00111000";
                elsif Q = "1000" AND B = "1000" then
                    k <= "01000000";
                elsif Q = "1000" AND B = "1001" then
                    k <= "01001000";
                elsif Q = "1000" AND B = "1010" then
                    k <= "01010000";
                elsif Q = "1000" AND B = "1011" then
                    k <= "01011000";
                elsif Q = "1000" AND B = "1100" then
                    k <= "01100000";
                elsif Q = "1000" AND B = "1101" then
                    k <= "01101000";
                elsif Q = "1000" AND B = "1110" then
                    k <= "01110000";
                elsif Q = "1000" AND B = "1111" then
                    k <= "01111000";
                elsif Q = "1001" AND B = "0010" then
                    k <= "00010010";
                elsif Q = "1001" AND B = "0011" then
                    k <= "00011011";
                elsif Q = "1001" AND B = "0100" then
                    k <= "00100100";
                elsif Q = "1001" AND B = "0101" then
                    k <= "00101101";
                elsif Q = "1001" AND B = "0110" then
                    k <= "00110110";
                elsif Q = "1001" AND B = "0111" then
                    k <= "00111111";
                elsif Q = "1001" AND B = "1000" then
                    k <= "01001000";
                elsif Q = "1001" AND B = "1001" then
                    k <= "01010001";
                elsif Q = "1001" AND B = "1010" then
                    k <= "01011010";
                elsif Q = "1001" AND B = "1011" then
                    k <= "01100011";
                elsif Q = "1001" AND B = "1100" then
                    k <= "01101100";
                elsif Q = "1001" AND B = "1101" then
                    k <= "01110101";
                elsif Q = "1001" AND B = "1110" then
                    k <= "01111110";
                elsif Q = "1001" AND B = "1111" then
                    k <= "10000111";
                elsif Q = "1010" AND B = "0010" then
                    k <= "00010100";
                elsif Q = "1010" AND B = "0011" then
                    k <= "00011110";
                elsif Q = "1010" AND B = "0100" then
                    k <= "00101000";
                elsif Q = "1010" AND B = "0101" then
                    k <= "00110010";
                elsif Q = "1010" AND B = "0110" then
                    k <= "00111100";
                elsif Q = "1010" AND B = "0111" then
                    k <= "01000110";
                elsif Q = "1010" AND B = "1000" then
                    k <= "01010000";
                elsif Q = "1010" AND B = "1001" then
                    k <= "01011010";
                elsif Q = "1010" AND B = "1010" then
                    k <= "01100100";
                elsif Q = "1010" AND B = "1011" then
                    k <= "01101110";
                elsif Q = "1010" AND B = "1100" then
                    k <= "01111000";
                elsif Q = "1010" AND B = "1101" then
                    k <= "10000010";
                elsif Q = "1010" AND B = "1110" then
                    k <= "10001100";
                elsif Q = "1010" AND B = "1111" then
                    k <= "10010110";
                elsif Q = "1011" AND B = "0010" then
                    k <= "00010110";
                elsif Q = "1011" AND B = "0011" then
                    k <= "00100001";
                elsif Q = "1011" AND B = "0100" then
                    k <= "00101100";
                elsif Q = "1011" AND B = "0101" then
                    k <= "00110111";
                elsif Q = "1011" AND B = "0110" then
                    k <= "01000010";
                elsif Q = "1011" AND B = "0111" then
                    k <= "01001101";
                elsif Q = "1011" AND B = "1000" then
                    k <= "01011000";
                elsif Q = "1011" AND B = "1001" then
                    k <= "01100011";
                elsif Q = "1011" AND B = "1010" then
                    k <= "01101110";
                elsif Q = "1011" AND B = "1011" then
                    k <= "01111001";
                elsif Q = "1011" AND B = "1100" then
                    k <= "10000100";
                elsif Q = "1011" AND B = "1101" then
                    k <= "10001111";
                elsif Q = "1011" AND B = "1110" then
                    k <= "10011010";
                elsif Q = "1011" AND B = "1111" then
                    k <= "10100101";
                elsif Q = "1100" AND B = "0010" then
                    k <= "00011000";
                elsif Q = "1100" AND B = "0011" then
                    k <= "00100100";
                elsif Q = "1100" AND B = "0100" then
                    k <= "00110000";
                elsif Q = "1100" AND B = "0101" then
                    k <= "00111100";
                elsif Q = "1100" AND B = "0110" then
                    k <= "01001000";
                elsif Q = "1100" AND B = "0111" then
                    k <= "01010100";
                elsif Q = "1100" AND B = "1000" then
                    k <= "01100000";
                elsif Q = "1100" AND B = "1001" then
                    k <= "01101100";
                elsif Q = "1100" AND B = "1010" then
                    k <= "01111000";
                elsif Q = "1100" AND B = "1011" then
                    k <= "10000100";
                elsif Q = "1100" AND B = "1100" then
                    k <= "10010000";
                elsif Q = "1100" AND B = "1101" then
                    k <= "10011100";
                elsif Q = "1100" AND B = "1110" then
                    k <= "10101000";
                elsif Q = "1100" AND B = "1111" then
                    k <= "10110100";
                elsif Q = "1101" AND B = "0010" then
                    k <= "00011010";
                elsif Q = "1101" AND B = "0011" then
                    k <= "00100111";
                elsif Q = "1101" AND B = "0100" then
                    k <= "00110100";
                elsif Q = "1101" AND B = "0101" then
                    k <= "01000001";
                elsif Q = "1101" AND B = "0110" then
                    k <= "01001110";
                elsif Q = "1101" AND B = "0111" then
                    k <= "01011011";
                elsif Q = "1101" AND B = "1000" then
                    k <= "01101000";
                elsif Q = "1101" AND B = "1001" then
                    k <= "01110101";
                elsif Q = "1101" AND B = "1010" then
                    k <= "10000010";
                elsif Q = "1101" AND B = "1011" then
                    k <= "10001111";
                elsif Q = "1101" AND B = "1100" then
                    k <= "10011100";
                elsif Q = "1101" AND B = "1101" then
                    k <= "10101001";
                elsif Q = "1101" AND B = "1110" then
                    k <= "10110110";
                elsif Q = "1101" AND B = "1111" then
                    k <= "11000011";
                elsif Q = "1110" AND B = "0010" then
                    k <= "00011100";
                elsif Q = "1110" AND B = "0011" then
                    k <= "00101010";
                elsif Q = "1110" AND B = "0100" then
                    k <= "00111000";
                elsif Q = "1110" AND B = "0101" then
                    k <= "01000110";
                elsif Q = "1110" AND B = "0110" then
                    k <= "01010100";
                elsif Q = "1110" AND B = "0111" then
                    k <= "01100010";
                elsif Q = "1110" AND B = "1000" then
                    k <= "01110000";
                elsif Q = "1110" AND B = "1001" then
                    k <= "01111110";
                elsif Q = "1110" AND B = "1010" then
                    k <= "10001100";
                elsif Q = "1110" AND B = "1011" then
                    k <= "10011010";
                elsif Q = "1110" AND B = "1100" then
                    k <= "10101000";
                elsif Q = "1110" AND B = "1101" then
                    k <= "10110110";
                elsif Q = "1110" AND B = "1110" then
                    k <= "11000100";
                elsif Q = "1110" AND B = "1111" then
                    k <= "11010010";
                elsif Q = "1111" AND B = "0010" then
                    k <= "00011110";
                elsif Q = "1111" AND B = "0011" then
                    k <= "00101101";
                elsif Q = "1111" AND B = "0100" then
                    k <= "00111100";
                elsif Q = "1111" AND B = "0101" then
                    k <= "01001011";
                elsif Q = "1111" AND B = "0110" then
                    k <= "01011010";
                elsif Q = "1111" AND B = "0111" then
                    k <= "01101001";
                elsif Q = "1111" AND B = "1000" then
                    k <= "01111000";
                elsif Q = "1111" AND B = "1001" then
                    k <= "10000111";
                elsif Q = "1111" AND B = "1010" then
                    k <= "10010110";
                elsif Q = "1111" AND B = "1011" then
                    k <= "10100101";
                elsif Q = "1111" AND B = "1100" then
                    k <= "10110100";
                elsif Q = "1111" AND B = "1101" then
                    k <= "11000011";
                elsif Q = "1111" AND B = "1110" then
                    k <= "11010010";
                elsif Q = "1111" AND B = "1111" then
                    k <= "11100001";
		end if;		 
				 
		
		end if;
    end process;
end behavior_4;