library ieee;
use ieee.std_logic_1164.all;

entity controle_geral is
  port (
	 CLOCK_50 : in std_logic;
    PS2_DAT : inout STD_LOGIC;
    PS2_CLK : inout STD_LOGIC;
    clock   : in  std_logic;-- Enter
	 HEX0: out std_logic_vector(6 downto 0); --Prototipo do meio de comunicacao com o VGA.
	 HEX2: out std_logic_vector(6 downto 0)
  );
end controle_geral;

architecture estado_atual of controle_geral is
  component  controle_tempo is
	port(
		wr: in std_logic;
		clk: in std_logic;
	  entrada: in std_logic_vector(2 downto 0);
	  tempo: out std_logic
); end component;
  component dec_teclado is
    port (
      wr		: 	in std_logic;
		key_on : in std_logic_vector(2 downto 0);
      key_code : in std_logic_vector(47 downto 0);
      CMD : out std_logic_vector(2 downto 0)
	);
  end component;
  
  component kbdex_ctrl is
    generic(
      clkfreq : integer
    );
    port(
      ps2_data : inout std_logic;
      ps2_clk : inout std_logic;
      clk :	in std_logic;
      en : in std_logic;
      resetn : in std_logic;
      lights : in std_logic_vector(2 downto 0);
      key_on : out std_logic_vector(2 downto 0);
      key_code : out std_logic_vector(47 downto 0)
    );
  end component;
  component produtos is
	  port (
		clock : in  std_logic; 							-- "Enter"
		up    : in  std_logic;							--  Arrow up
		down	: in  std_logic;							--  Arrow down
		prod	: out	std_logic_vector(2 downto 0);	--  Saida decodificada no "Enter"
		att	: out	std_logic_vector(2 downto 0)	--  Saida decodificada em tempo real
	  );
  end component;
  component bin3_8 is
	 port (
		Sw: in std_logic_vector(2 downto 0);
		HEX: out std_logic_vector(6 downto 0)
	);
  end component;
  
  type State_type is (A, B, C, D, E, F);
	signal y : State_type;
  	signal key_on : std_logic_vector(2 downto 0);
  	signal key_code : std_logic_vector(47 downto 0);
	signal flag: std_logic:='0'; -- indica o resultado de um processo
	signal WrEn: std_logic:='1'; -- bloqueia a escrita por determinado tempo em alguns pontos
	signal Decodificacao: std_logic_vector(2 downto 0); -- valores pelos quais a funcao muda de estados
	signal s1,s2:std_logic_vector(2 downto 0):="000";
	signal clk,tempo: std_logic:='0'; -- contador de tempo
begin
  kbdex_ctrl_inst : kbdex_ctrl generic map (clkfreq => 50000)
	port map (
      ps2_data => PS2_DAT,
      ps2_clk => PS2_CLK,
      clk => CLOCK_50,
		en => '1',
      resetn => '1',
      lights => "000",
      key_on => key_on,
      key_code => key_code
    );
  
  decodificador_entrada : dec_teclado port map (WrEn,key_on,key_code,Decodificacao);
  convertendo_entrada	: produtos port map (Decodificacao(2),Decodificacao(1),Decodificacao(0),s1,s2);
  saida1: bin3_8 port map(s2,HEX2);
  saida2: bin3_8 port map(s1,HEX0);
	Ctrl_tempo: controle_tempo port map(not(WrEn),CLOCK_50,s1,tempo);
  process(tempo)
		begin
		if(tempo'event and tempo = '1') then
--			WrEn <= '1'; falta acabar de otimizar o funcionamento da funcao
		end if;
	end process;
	
	process(clock)
	begin
	if (clock'event AND clock = '1') then
		case y is
		WHEN A => y <= B;
		WHEN B =>
			if Decodificacao(2 downto 1)="11" then
				if Decodificacao(0) = '0' then
					y <= C;
				else
					y <= F;
					WrEn <= '0';
				end if;
			else
				y <= y;
			end if;
		WHEN C =>
			if Decodificacao(2 downto 1)="11" then
				WrEn <= '0';
				if Decodificacao(0) = '0' then
					y <= D;
				else
					y <= F;
				end if;
			else
				y <= y;
			end if;
		WHEN D =>
			if WrEn = '1' then 
				if(flag = '1') then
					y <= E;
				else
					y <= C;		
				end if;
			end if;
		WHEN E=>
			if WrEn = '1' then 
				y <= C;
			end if;
		WHEN F=>
			if WrEn = '1' then 
				y <= A;
			end if;
		end case;
	end if;
	end process;
end estado_atual;