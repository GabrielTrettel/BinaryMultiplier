
with open('saida.vhdl', 'w') as f1:

    string =  '                if Q = "0000" OR B = "0000" then\n'
    string += '                    HEX0 <= "00000000"; \n'
    string += '                elsif Q = "0001" then\n'
    string += '                    HEX0 <= "00000000" + B;\n'
    string += '                elsif B = "0001" then\n'
    string += '                    HEX0 <= "00000000" + Q;\n'
    f1.writelines(string)

    for A in range(2, 16):
        for Q in range(2, 16):

            num1 = "0000"
            num1 += ( str(bin(A))[2:] )

            num2 = "0000"
            num2 += ( str(bin(Q))[2:] )

            mult = "00000000"
            mult += ( str(bin((A*Q)))[2:] )

            string =  '                elsif Q = "{}" AND B = "{}" then\n'.format(num1[-4:], num2[-4:])
            string += '                    HEX0 <= "{}";\n'.format(mult[-8:])

            f1.writelines(string)

    string = "                end if;"
    f1.writelines(string)
