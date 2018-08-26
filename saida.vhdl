                if Q = "0000" OR B = "0000" then
                    HEX0 <= "00000000"; 
                elsif Q = "0001" then
                    HEX0 <= "00000000" + B;
                elsif B = "0001" then
                    HEX0 <= "00000000" + Q;
                elsif Q = "0010" AND B = "0010" then
                    HEX0 <= "00000100";
                elsif Q = "0010" AND B = "0011" then
                    HEX0 <= "00000110";
                elsif Q = "0010" AND B = "0100" then
                    HEX0 <= "00001000";
                elsif Q = "0010" AND B = "0101" then
                    HEX0 <= "00001010";
                elsif Q = "0010" AND B = "0110" then
                    HEX0 <= "00001100";
                elsif Q = "0010" AND B = "0111" then
                    HEX0 <= "00001110";
                elsif Q = "0010" AND B = "1000" then
                    HEX0 <= "00010000";
                elsif Q = "0010" AND B = "1001" then
                    HEX0 <= "00010010";
                elsif Q = "0010" AND B = "1010" then
                    HEX0 <= "00010100";
                elsif Q = "0010" AND B = "1011" then
                    HEX0 <= "00010110";
                elsif Q = "0010" AND B = "1100" then
                    HEX0 <= "00011000";
                elsif Q = "0010" AND B = "1101" then
                    HEX0 <= "00011010";
                elsif Q = "0010" AND B = "1110" then
                    HEX0 <= "00011100";
                elsif Q = "0010" AND B = "1111" then
                    HEX0 <= "00011110";
                elsif Q = "0011" AND B = "0010" then
                    HEX0 <= "00000110";
                elsif Q = "0011" AND B = "0011" then
                    HEX0 <= "00001001";
                elsif Q = "0011" AND B = "0100" then
                    HEX0 <= "00001100";
                elsif Q = "0011" AND B = "0101" then
                    HEX0 <= "00001111";
                elsif Q = "0011" AND B = "0110" then
                    HEX0 <= "00010010";
                elsif Q = "0011" AND B = "0111" then
                    HEX0 <= "00010101";
                elsif Q = "0011" AND B = "1000" then
                    HEX0 <= "00011000";
                elsif Q = "0011" AND B = "1001" then
                    HEX0 <= "00011011";
                elsif Q = "0011" AND B = "1010" then
                    HEX0 <= "00011110";
                elsif Q = "0011" AND B = "1011" then
                    HEX0 <= "00100001";
                elsif Q = "0011" AND B = "1100" then
                    HEX0 <= "00100100";
                elsif Q = "0011" AND B = "1101" then
                    HEX0 <= "00100111";
                elsif Q = "0011" AND B = "1110" then
                    HEX0 <= "00101010";
                elsif Q = "0011" AND B = "1111" then
                    HEX0 <= "00101101";
                elsif Q = "0100" AND B = "0010" then
                    HEX0 <= "00001000";
                elsif Q = "0100" AND B = "0011" then
                    HEX0 <= "00001100";
                elsif Q = "0100" AND B = "0100" then
                    HEX0 <= "00010000";
                elsif Q = "0100" AND B = "0101" then
                    HEX0 <= "00010100";
                elsif Q = "0100" AND B = "0110" then
                    HEX0 <= "00011000";
                elsif Q = "0100" AND B = "0111" then
                    HEX0 <= "00011100";
                elsif Q = "0100" AND B = "1000" then
                    HEX0 <= "00100000";
                elsif Q = "0100" AND B = "1001" then
                    HEX0 <= "00100100";
                elsif Q = "0100" AND B = "1010" then
                    HEX0 <= "00101000";
                elsif Q = "0100" AND B = "1011" then
                    HEX0 <= "00101100";
                elsif Q = "0100" AND B = "1100" then
                    HEX0 <= "00110000";
                elsif Q = "0100" AND B = "1101" then
                    HEX0 <= "00110100";
                elsif Q = "0100" AND B = "1110" then
                    HEX0 <= "00111000";
                elsif Q = "0100" AND B = "1111" then
                    HEX0 <= "00111100";
                elsif Q = "0101" AND B = "0010" then
                    HEX0 <= "00001010";
                elsif Q = "0101" AND B = "0011" then
                    HEX0 <= "00001111";
                elsif Q = "0101" AND B = "0100" then
                    HEX0 <= "00010100";
                elsif Q = "0101" AND B = "0101" then
                    HEX0 <= "00011001";
                elsif Q = "0101" AND B = "0110" then
                    HEX0 <= "00011110";
                elsif Q = "0101" AND B = "0111" then
                    HEX0 <= "00100011";
                elsif Q = "0101" AND B = "1000" then
                    HEX0 <= "00101000";
                elsif Q = "0101" AND B = "1001" then
                    HEX0 <= "00101101";
                elsif Q = "0101" AND B = "1010" then
                    HEX0 <= "00110010";
                elsif Q = "0101" AND B = "1011" then
                    HEX0 <= "00110111";
                elsif Q = "0101" AND B = "1100" then
                    HEX0 <= "00111100";
                elsif Q = "0101" AND B = "1101" then
                    HEX0 <= "01000001";
                elsif Q = "0101" AND B = "1110" then
                    HEX0 <= "01000110";
                elsif Q = "0101" AND B = "1111" then
                    HEX0 <= "01001011";
                elsif Q = "0110" AND B = "0010" then
                    HEX0 <= "00001100";
                elsif Q = "0110" AND B = "0011" then
                    HEX0 <= "00010010";
                elsif Q = "0110" AND B = "0100" then
                    HEX0 <= "00011000";
                elsif Q = "0110" AND B = "0101" then
                    HEX0 <= "00011110";
                elsif Q = "0110" AND B = "0110" then
                    HEX0 <= "00100100";
                elsif Q = "0110" AND B = "0111" then
                    HEX0 <= "00101010";
                elsif Q = "0110" AND B = "1000" then
                    HEX0 <= "00110000";
                elsif Q = "0110" AND B = "1001" then
                    HEX0 <= "00110110";
                elsif Q = "0110" AND B = "1010" then
                    HEX0 <= "00111100";
                elsif Q = "0110" AND B = "1011" then
                    HEX0 <= "01000010";
                elsif Q = "0110" AND B = "1100" then
                    HEX0 <= "01001000";
                elsif Q = "0110" AND B = "1101" then
                    HEX0 <= "01001110";
                elsif Q = "0110" AND B = "1110" then
                    HEX0 <= "01010100";
                elsif Q = "0110" AND B = "1111" then
                    HEX0 <= "01011010";
                elsif Q = "0111" AND B = "0010" then
                    HEX0 <= "00001110";
                elsif Q = "0111" AND B = "0011" then
                    HEX0 <= "00010101";
                elsif Q = "0111" AND B = "0100" then
                    HEX0 <= "00011100";
                elsif Q = "0111" AND B = "0101" then
                    HEX0 <= "00100011";
                elsif Q = "0111" AND B = "0110" then
                    HEX0 <= "00101010";
                elsif Q = "0111" AND B = "0111" then
                    HEX0 <= "00110001";
                elsif Q = "0111" AND B = "1000" then
                    HEX0 <= "00111000";
                elsif Q = "0111" AND B = "1001" then
                    HEX0 <= "00111111";
                elsif Q = "0111" AND B = "1010" then
                    HEX0 <= "01000110";
                elsif Q = "0111" AND B = "1011" then
                    HEX0 <= "01001101";
                elsif Q = "0111" AND B = "1100" then
                    HEX0 <= "01010100";
                elsif Q = "0111" AND B = "1101" then
                    HEX0 <= "01011011";
                elsif Q = "0111" AND B = "1110" then
                    HEX0 <= "01100010";
                elsif Q = "0111" AND B = "1111" then
                    HEX0 <= "01101001";
                elsif Q = "1000" AND B = "0010" then
                    HEX0 <= "00010000";
                elsif Q = "1000" AND B = "0011" then
                    HEX0 <= "00011000";
                elsif Q = "1000" AND B = "0100" then
                    HEX0 <= "00100000";
                elsif Q = "1000" AND B = "0101" then
                    HEX0 <= "00101000";
                elsif Q = "1000" AND B = "0110" then
                    HEX0 <= "00110000";
                elsif Q = "1000" AND B = "0111" then
                    HEX0 <= "00111000";
                elsif Q = "1000" AND B = "1000" then
                    HEX0 <= "01000000";
                elsif Q = "1000" AND B = "1001" then
                    HEX0 <= "01001000";
                elsif Q = "1000" AND B = "1010" then
                    HEX0 <= "01010000";
                elsif Q = "1000" AND B = "1011" then
                    HEX0 <= "01011000";
                elsif Q = "1000" AND B = "1100" then
                    HEX0 <= "01100000";
                elsif Q = "1000" AND B = "1101" then
                    HEX0 <= "01101000";
                elsif Q = "1000" AND B = "1110" then
                    HEX0 <= "01110000";
                elsif Q = "1000" AND B = "1111" then
                    HEX0 <= "01111000";
                elsif Q = "1001" AND B = "0010" then
                    HEX0 <= "00010010";
                elsif Q = "1001" AND B = "0011" then
                    HEX0 <= "00011011";
                elsif Q = "1001" AND B = "0100" then
                    HEX0 <= "00100100";
                elsif Q = "1001" AND B = "0101" then
                    HEX0 <= "00101101";
                elsif Q = "1001" AND B = "0110" then
                    HEX0 <= "00110110";
                elsif Q = "1001" AND B = "0111" then
                    HEX0 <= "00111111";
                elsif Q = "1001" AND B = "1000" then
                    HEX0 <= "01001000";
                elsif Q = "1001" AND B = "1001" then
                    HEX0 <= "01010001";
                elsif Q = "1001" AND B = "1010" then
                    HEX0 <= "01011010";
                elsif Q = "1001" AND B = "1011" then
                    HEX0 <= "01100011";
                elsif Q = "1001" AND B = "1100" then
                    HEX0 <= "01101100";
                elsif Q = "1001" AND B = "1101" then
                    HEX0 <= "01110101";
                elsif Q = "1001" AND B = "1110" then
                    HEX0 <= "01111110";
                elsif Q = "1001" AND B = "1111" then
                    HEX0 <= "10000111";
                elsif Q = "1010" AND B = "0010" then
                    HEX0 <= "00010100";
                elsif Q = "1010" AND B = "0011" then
                    HEX0 <= "00011110";
                elsif Q = "1010" AND B = "0100" then
                    HEX0 <= "00101000";
                elsif Q = "1010" AND B = "0101" then
                    HEX0 <= "00110010";
                elsif Q = "1010" AND B = "0110" then
                    HEX0 <= "00111100";
                elsif Q = "1010" AND B = "0111" then
                    HEX0 <= "01000110";
                elsif Q = "1010" AND B = "1000" then
                    HEX0 <= "01010000";
                elsif Q = "1010" AND B = "1001" then
                    HEX0 <= "01011010";
                elsif Q = "1010" AND B = "1010" then
                    HEX0 <= "01100100";
                elsif Q = "1010" AND B = "1011" then
                    HEX0 <= "01101110";
                elsif Q = "1010" AND B = "1100" then
                    HEX0 <= "01111000";
                elsif Q = "1010" AND B = "1101" then
                    HEX0 <= "10000010";
                elsif Q = "1010" AND B = "1110" then
                    HEX0 <= "10001100";
                elsif Q = "1010" AND B = "1111" then
                    HEX0 <= "10010110";
                elsif Q = "1011" AND B = "0010" then
                    HEX0 <= "00010110";
                elsif Q = "1011" AND B = "0011" then
                    HEX0 <= "00100001";
                elsif Q = "1011" AND B = "0100" then
                    HEX0 <= "00101100";
                elsif Q = "1011" AND B = "0101" then
                    HEX0 <= "00110111";
                elsif Q = "1011" AND B = "0110" then
                    HEX0 <= "01000010";
                elsif Q = "1011" AND B = "0111" then
                    HEX0 <= "01001101";
                elsif Q = "1011" AND B = "1000" then
                    HEX0 <= "01011000";
                elsif Q = "1011" AND B = "1001" then
                    HEX0 <= "01100011";
                elsif Q = "1011" AND B = "1010" then
                    HEX0 <= "01101110";
                elsif Q = "1011" AND B = "1011" then
                    HEX0 <= "01111001";
                elsif Q = "1011" AND B = "1100" then
                    HEX0 <= "10000100";
                elsif Q = "1011" AND B = "1101" then
                    HEX0 <= "10001111";
                elsif Q = "1011" AND B = "1110" then
                    HEX0 <= "10011010";
                elsif Q = "1011" AND B = "1111" then
                    HEX0 <= "10100101";
                elsif Q = "1100" AND B = "0010" then
                    HEX0 <= "00011000";
                elsif Q = "1100" AND B = "0011" then
                    HEX0 <= "00100100";
                elsif Q = "1100" AND B = "0100" then
                    HEX0 <= "00110000";
                elsif Q = "1100" AND B = "0101" then
                    HEX0 <= "00111100";
                elsif Q = "1100" AND B = "0110" then
                    HEX0 <= "01001000";
                elsif Q = "1100" AND B = "0111" then
                    HEX0 <= "01010100";
                elsif Q = "1100" AND B = "1000" then
                    HEX0 <= "01100000";
                elsif Q = "1100" AND B = "1001" then
                    HEX0 <= "01101100";
                elsif Q = "1100" AND B = "1010" then
                    HEX0 <= "01111000";
                elsif Q = "1100" AND B = "1011" then
                    HEX0 <= "10000100";
                elsif Q = "1100" AND B = "1100" then
                    HEX0 <= "10010000";
                elsif Q = "1100" AND B = "1101" then
                    HEX0 <= "10011100";
                elsif Q = "1100" AND B = "1110" then
                    HEX0 <= "10101000";
                elsif Q = "1100" AND B = "1111" then
                    HEX0 <= "10110100";
                elsif Q = "1101" AND B = "0010" then
                    HEX0 <= "00011010";
                elsif Q = "1101" AND B = "0011" then
                    HEX0 <= "00100111";
                elsif Q = "1101" AND B = "0100" then
                    HEX0 <= "00110100";
                elsif Q = "1101" AND B = "0101" then
                    HEX0 <= "01000001";
                elsif Q = "1101" AND B = "0110" then
                    HEX0 <= "01001110";
                elsif Q = "1101" AND B = "0111" then
                    HEX0 <= "01011011";
                elsif Q = "1101" AND B = "1000" then
                    HEX0 <= "01101000";
                elsif Q = "1101" AND B = "1001" then
                    HEX0 <= "01110101";
                elsif Q = "1101" AND B = "1010" then
                    HEX0 <= "10000010";
                elsif Q = "1101" AND B = "1011" then
                    HEX0 <= "10001111";
                elsif Q = "1101" AND B = "1100" then
                    HEX0 <= "10011100";
                elsif Q = "1101" AND B = "1101" then
                    HEX0 <= "10101001";
                elsif Q = "1101" AND B = "1110" then
                    HEX0 <= "10110110";
                elsif Q = "1101" AND B = "1111" then
                    HEX0 <= "11000011";
                elsif Q = "1110" AND B = "0010" then
                    HEX0 <= "00011100";
                elsif Q = "1110" AND B = "0011" then
                    HEX0 <= "00101010";
                elsif Q = "1110" AND B = "0100" then
                    HEX0 <= "00111000";
                elsif Q = "1110" AND B = "0101" then
                    HEX0 <= "01000110";
                elsif Q = "1110" AND B = "0110" then
                    HEX0 <= "01010100";
                elsif Q = "1110" AND B = "0111" then
                    HEX0 <= "01100010";
                elsif Q = "1110" AND B = "1000" then
                    HEX0 <= "01110000";
                elsif Q = "1110" AND B = "1001" then
                    HEX0 <= "01111110";
                elsif Q = "1110" AND B = "1010" then
                    HEX0 <= "10001100";
                elsif Q = "1110" AND B = "1011" then
                    HEX0 <= "10011010";
                elsif Q = "1110" AND B = "1100" then
                    HEX0 <= "10101000";
                elsif Q = "1110" AND B = "1101" then
                    HEX0 <= "10110110";
                elsif Q = "1110" AND B = "1110" then
                    HEX0 <= "11000100";
                elsif Q = "1110" AND B = "1111" then
                    HEX0 <= "11010010";
                elsif Q = "1111" AND B = "0010" then
                    HEX0 <= "00011110";
                elsif Q = "1111" AND B = "0011" then
                    HEX0 <= "00101101";
                elsif Q = "1111" AND B = "0100" then
                    HEX0 <= "00111100";
                elsif Q = "1111" AND B = "0101" then
                    HEX0 <= "01001011";
                elsif Q = "1111" AND B = "0110" then
                    HEX0 <= "01011010";
                elsif Q = "1111" AND B = "0111" then
                    HEX0 <= "01101001";
                elsif Q = "1111" AND B = "1000" then
                    HEX0 <= "01111000";
                elsif Q = "1111" AND B = "1001" then
                    HEX0 <= "10000111";
                elsif Q = "1111" AND B = "1010" then
                    HEX0 <= "10010110";
                elsif Q = "1111" AND B = "1011" then
                    HEX0 <= "10100101";
                elsif Q = "1111" AND B = "1100" then
                    HEX0 <= "10110100";
                elsif Q = "1111" AND B = "1101" then
                    HEX0 <= "11000011";
                elsif Q = "1111" AND B = "1110" then
                    HEX0 <= "11010010";
                elsif Q = "1111" AND B = "1111" then
                    HEX0 <= "11100001";
                end if;