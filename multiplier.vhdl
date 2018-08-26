--Binary Multiplier with n =4: VHDL Description
-- See Figures8-6 and 8-7 for block diagram and ASM Chart

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

--CLOCK_50: in std_logic;
entity binary_multiplier is 
	port(
	KEY: in std_logic_vector(3 downto 0);
	SW: in std_logic_vector(9 downto 0);
	LEDR: out std_logic_vector(7 downto 0));
end binary_multiplier;

architecture behavior_4 of binary_multiplier is
	type state_type is (IDLE, MUL0, MUL1);
	signal state, next_state: state_type;
	signal A, B, Q: std_logic_vector(3 downto 0);
	signal P: std_logic_vector(1 downto 0);
	signal C, Z: std_logic;

	begin
		Z <= P(1) NOR P(0);
		LEDR <= A & Q;
		
		state_register: process (KEY(1), KEY(0))
		begin
			if (KEY(0) = '1') then
				state <= IDLE;
			elsif (KEY(1)'event and KEY(1) = '1') then
				state <= next_state;
			end if;
		end process;

		next_state_func: process (KEY(3),Z, state)
		begin
			case state is
				when IDLE =>
					if KEY(3) = '1' then
						next_state <= MUL0;
					else
						next_state <= IDLE;
					end if;
				when MUL0 =>
					next_state <= MUL1;
				when MUL1 =>
					if Z = '1' then
						next_state <= IDLE;
					else
						next_state <= MUL0;
					end if;
			end case;
		end process;

		datapath_state_func: process (KEY(1))
		variable CA: std_logic_vector(4 downto 0);
		begin
			if (KEY(1)'event and KEY(1) = '1') then
				if SW(0) = '1' then
					B <= SW(4 downto 1);
				end if;
				if SW(5) = '1' then
					Q <= SW(9 downto 6);
				end if;

				case state is
					when IDLE =>
						if KEY(3) = '1' then
							C <= '0';
							A <= "0000";
							P <= "11";
						end if;
					when MUL0 =>
						if Q(0) = '1' then
							CA := ('0' & A) + ('0' & B);
						else
							CA :=  C & A;
						end if;
						C <= CA(4);
						A <= CA(3 downto 0);
					when MUL1 =>
						C <= '0';
						A <= C & A(3 downto 1);
						Q <= A(0) & Q(3 downto 1);
						P <= P - "01";
				end case;
			end if;		
	end process;
end behavior_4;
