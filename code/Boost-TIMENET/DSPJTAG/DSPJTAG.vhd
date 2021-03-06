---PLEASE SET ALL THE PINS AS TRI-STATED BEFORE WRITE THE PROGRAMME INTO CPLD


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY DSPJTAG IS
PORT(
--CLK
CLK_12M : IN STD_LOGIC;
--POWER
EN_DVDD_1V8 : OUT STD_LOGIC ;
EN_DVDD_1V1 : OUT STD_LOGIC ;
EN_CPU_CORE : OUT STD_LOGIC ;
F1_XWRSTz   : OUT STD_LOGIC ;
F1_PORz     : OUT STD_LOGIC ;

--CDCE906 SMBUS
SCLK_CDCE906   : OUT   STD_LOGIC ;
SDATA_CDCE906  : INOUT STD_LOGIC ;
--CDCL6010 SMBUS
SCLK_CDCL6010  : OUT   STD_LOGIC ;
SDATA_CDCL6010 : INOUT STD_LOGIC ;

--DSP JTAG
EXT_TMS  : IN    STD_LOGIC;
EXT_TRST : IN    STD_LOGIC;
EXT_TDI  : IN    STD_LOGIC;
EXT_TDO  : OUT   STD_LOGIC;
EXT_TCK  : IN    STD_LOGIC;
EXT_EMU0 : INOUT STD_LOGIC;
EXT_EMU1 : INOUT STD_LOGIC;

F1_TMS   : OUT   STD_LOGIC;
F1_TRST  : OUT   STD_LOGIC;
F1_TDI   : OUT   STD_LOGIC;
F1_TDO   : IN    STD_LOGIC;
F1_TCK   : OUT   STD_LOGIC;
F1_EMU0  : INOUT STD_LOGIC;
F1_EMU1  : INOUT STD_LOGIC
);

END DSPJTAG ;


----------------------------------------
----------------------------------------
ARCHITECTURE BEH OF DSPJTAG IS
--CLK
SIGNAL SMBUS_EN : STD_LOGIC;
SIGNAL COUNTER  : INTEGER RANGE 0 TO 2300;
SIGNAL kickoff  : STD_LOGIC; 

--CDCE906 WRITE FLAG
SIGNAL RESET    : STD_LOGIC;
SIGNAL SDATA_D     : STD_LOGIC;
SIGNAL SCLK_LOGIC  : STD_LOGIC; 
SIGNAL SDATA_LOGIC : STD_LOGIC; 

SIGNAL SMBUS_WORD : STD_LOGIC_VECTOR(7 DOWNTO 0); 
SIGNAL WORD_ADDR  : INTEGER RANGE 0 TO 46; 
SIGNAL BIT_POS    : INTEGER RANGE 8 DOWNTO 0;

SIGNAL GET_BIT      : STD_LOGIC;
SIGNAL next_bit     : STD_LOGIC;
SIGNAL this_is_ack  : STD_LOGIC;
SIGNAL wait_for_ack : STD_LOGIC;
SIGNAL no_more_bits : STD_LOGIC;

SIGNAL STATE     : INTEGER RANGE 0 TO 7;
CONSTANT ST_IDLE  : INTEGER :=0;
CONSTANT ST_START0 : INTEGER :=1;
CONSTANT ST_START1 : INTEGER :=2;
CONSTANT ST_BIT0   : INTEGER :=3;
CONSTANT ST_BIT1  : INTEGER :=4;
CONSTANT ST_BIT2  : INTEGER :=5;
CONSTANT ST_STOP0  : INTEGER :=6;
CONSTANT ST_STOP1  : INTEGER :=7;


SIGNAL WORD_NUM_CDCL6010  : INTEGER RANGE 0 TO 20;



BEGIN




--***********************************************
--
--CLOCK
--
--***********************************************

PROCESS ( CLK_12M )
VARIABLE DIV_COUNTER : INTEGER RANGE 0 TO 121;
BEGIN
IF(CLK_12M'EVENT AND CLK_12M = '1') THEN

   if ( div_counter  = 119 ) THEN
	    div_counter := 0   ;
	    smbus_en      <= '1' ;
   else
	    div_counter := div_counter + 1 ;
	    smbus_en      <= '0' ;	     
   end IF;
END IF;
END PROCESS;


PROCESS(CLK_12M)
VARIABLE kickoff_num_CDCL6010 : INTEGER RANGE 0 TO 4;
BEGIN
IF ( CLK_12M'EVENT AND CLK_12M = '1' ) THEN
  IF ( reset  = '0' ) THEN
       RESET  <= '1' ;
       kickoff <= '0';
  ELSIF ( SMBUS_EN = '1' ) THEN
          COUNTER <= COUNTER + 1 ;
       IF ( COUNTER >  2300 ) THEN
            COUNTER <= 620 ;
            RESET   <= '0'   ; 
            kickoff_num_CDCL6010  := 0 ;
       END IF; 
       
       IF (( COUNTER > 700 ) AND ( COUNTER < 704 )) THEN
             kickoff <= '1' ;
       ELSIF (( COUNTER > ( 1600 + ( kickoff_num_CDCL6010 * 150 ))) AND ( COUNTER < ( 1604 + ( kickoff_num_CDCL6010 * 150 )))) THEN
             kickoff <= '1' ;
             kickoff_num_CDCL6010 := kickoff_num_CDCL6010 + 1;
       ELSE
             kickoff <= '0';
       END IF;
       IF (KICKOFF_NUM_CDCL6010 = 4 ) THEN
           KICKOFF_NUM_CDCL6010 :=0 ;
       END IF;
  END IF;
END IF;
END PROCESS;   
--***********************************************
--
--POWER
--
--***********************************************       
      
PROCESS(CLK_12M)
BEGIN
IF ( CLK_12M'EVENT AND CLK_12M = '1' ) THEN
  IF ( COUNTER  < 20 ) THEN
       EN_DVDD_1V8  <= '0' ;
       EN_DVDD_1V1  <= '1' ;
       EN_CPU_CORE  <= '1' ;
  ELSIF ( COUNTER  < 500 ) THEN
          EN_DVDD_1V8  <= '1' ;
          EN_DVDD_1V1  <= '1' ;
          EN_CPU_CORE  <= '1' ;
     ELSIF ( COUNTER < 600) THEN
             EN_DVDD_1V8  <= '1' ;
             EN_DVDD_1V1  <= '0' ;
             EN_CPU_CORE  <= '0' ; 
        ELSE 
            EN_DVDD_1V8  <= '1' ;
            EN_DVDD_1V1  <= '0' ;
            EN_CPU_CORE  <= '0' ;
            F1_XWRSTz    <= '1' ;
            F1_PORz      <= '1' ;
            F1_TMS  <= EXT_TMS ;
            F1_TRST <= EXT_TRST;
            F1_TDI  <= EXT_TDI ;
            EXT_TDO <= F1_TDO  ;
            F1_TCK  <= EXT_TCK ;
            EXT_EMU0<= F1_EMU0 ;
            EXT_EMU1<= F1_EMU1 ;
END IF;
END IF;
END PROCESS;

--***********************************************
--
--SMBUS
--
--***********************************************   

PROCESS ( CLK_12M )
BEGIN
IF ( CLK_12M'EVENT AND CLK_12M = '1' ) THEN
  IF (( 1550 > COUNTER) AND ( COUNTER > 650 ) )THEN
    sdata_d <= sdata_CDCE906;
 
    IF SCLK_LOGIC = '1' THEN
       SCLK_CDCE906  <= '1' ;
    ELSE  SCLK_CDCE906  <=  '0' ;
    END IF;
    
    IF SDATA_LOGIC = '1' THEN
       SDATA_CDCE906 <= 'Z' ;
    ELSE SDATA_CDCE906 <= '0' ;
    END IF;
    
  ELSIF (( 2250 > COUNTER) AND ( COUNTER > 1550 )) THEN
    SDATA_D <= SDATA_CDCL6010;
    IF SCLK_LOGIC = '1' THEN
       SCLK_CDCL6010  <= '1' ;
    ELSE SCLK_CDCL6010  <=  '0';
    END IF;
    
    IF SDATA_LOGIC = '1' THEN
       SDATA_CDCL6010 <= 'Z' ;
    ELSE SDATA_CDCL6010 <= '0' ;
    END IF;
    
  ELSE
    SCLK_CDCL6010  <= 'Z' ;
    SDATA_CDCL6010 <= 'Z' ;   
    SCLK_CDCE906   <= 'Z' ;
    SDATA_CDCE906  <= 'Z' ;
  END IF;
END IF;
END PROCESS;


--*************************************************************
--
--CDCE906 / CDCL6010
--
--*************************************************************


PROCESS(CLK_12M)
BEGIN
  IF(CLK_12M'EVENT AND CLK_12M='1') THEN
     IF(reset = '0') THEN
        state <= st_idle ;

     ELSIF(SMBus_en='1') THEN
      IF ( COUNTER > 650 ) THEN
             CASE state IS   
             WHEN st_idle =>
	              sclk_logic <= '1';
	              sdata_logic <= '1';
                  get_bit <= '0';
	              IF(kickoff ='1') THEN 
	                 state <= st_start0;
	              END IF;
	         
	         WHEN st_start0 =>
	              sclk_logic <= '1';
	              sdata_logic <= '0';
	              state <= st_START1;

                  
             WHEN ST_START1 =>
                  SCLK_LOGIC <= '0';
                  STATE<= ST_BIT0;
                  	
	         WHEN st_bit0 =>
	              sclk_logic <= '0';
	              sdata_logic <= next_bit;
	              wait_for_ack <= this_is_ack;
	              get_bit <= '1';
	              state <= st_bit1;
	 
	         WHEN st_bit1 =>
	              sclk_logic <= '1';
	              get_bit <= '0';
                  STATE <= ST_BIT2;
	             	 
	         WHEN st_bit2=>
	              sclk_logic <= '0';
	              IF ((wait_for_ack='1') AND (sdata_d='0') AND (kickoff='0')) THEN
	                   state <= st_bit2;
	              ELSIF(no_more_bits='1') THEN
	                   state <= st_stop0;
	              ELSE state <= st_BIT0; 
                  END IF;           
	                     	 
	         WHEN st_stop0 =>
	              sclk_logic <= '0';
	              sdata_logic <= '0';
	              state <= st_stop1;
	 	            
	         WHEN ST_STOP1 =>
	              SCLK_LOGIC <= '1';
	              STATE <= ST_IDLE;
	         END CASE;
      END IF;
    END IF; 
  END IF;   
END PROCESS;


PROCESS(CLK_12M)
BEGIN
  IF ( CLK_12M'EVENT AND CLK_12M='1' ) THEN    
     IF ( RESET = '0') THEN
          WORD_ADDR <= 0;
          BIT_POS <=7 ;
          NO_MORE_BITS <= '0';
     ELSIF ( SMBus_en='1' ) THEN 
	      IF( kickoff='1')THEN
	          word_addr <= ( 0+ word_addr );
	          bit_pos <= 7 ;
	          no_more_bits <= '0';
	      ELSIF ( get_bit = '1' ) THEN
	           IF ( bit_pos = 0 ) THEN
	                BIT_POS <= 8; 
	           ELSE BIT_POS <= bit_pos - 1;
	           END IF;
                    
		       IF(bit_pos = 0) THEN
		          word_addr <= word_addr + 1;
		       END IF;
          
	           IF ((( word_addr = 30 )or (word_addr = 34)or (word_addr = 38) or (word_addr = 42)  or (word_addr = 46) ) AND (BIT_POS = 8) ) THEN
		            no_more_bits <='1';
	           END IF;
	      
	    END IF;
	  
	  IF(bit_pos = 8) THEN -- Ack position
	     next_bit <= '1'; -- Don't pull bus to zero
	     this_is_ack <= '1';
	  ELSE
	     next_bit<= SMBus_word(bit_pos);
	     this_is_ack <='0';
	  END IF;
	END IF;
 END IF;
END PROCESS;


PROCESS(clk_12m)
BEGIN
IF(CLK_12M'EVENT AND CLK_12M='1') THEN
CASE WORD_ADDR IS
--CDCE906 BLOCK WRITE
WHEN 0 => SMBus_word <= "11010010";
WHEN 1 => SMBus_word <= "00000000";-- Command code = Block (write)
WHEN 2 => SMBus_word <= "00011011";-- Byte count 27
WHEN 3 => SMBus_word <= "00000001";-- Byte 0
WHEN 4 => SMBus_word <= "00000101"; -- VCO1_M[7:0] VCO1_M=5;
WHEN 5 => SMBus_word <= "00100000"; -- VCO1_N[7:0]; VCO1_N=32;
--VCO1_bypass, VCO2_bypass, VCO3_bypass, VCO1_N[11:8], VCO1_M[8]};
WHEN 6 => SMBus_word <= "01000000"; 

WHEN 7 => SMBus_word <= "00000001"; -- VCO2_M[7:0]; VCO2_M=1;
WHEN 8 => SMBus_word <= "00000001"; -- VCO2_N[7:0]; VCO2_N=1;
--VCO1_hi_freq_range, VCO2_hi_freq_range, VCO3_hi_freq_range,VCO2_N[11:8], VCO2_M[8]
WHEN 9 => SMBus_word <= "10000000";

WHEN 10 => SMBus_word <= "00000001"; -- VCO3_M[7:0];VCO3_M=1;
WHEN 11 => SMBus_word <= "00000101"; -- VCO3_N[7:0];VCO3_N=5;
WHEN 12 => SMBus_word <= "01000000"; -- Byte 9 : {P0_VCO_select, VCO3_N[11:8], VCO3_M[8]};
WHEN 13 => SMBus_word <= "10001111"; -- {P1_VCO_select, PLL Selection for P1};
WHEN 14 => SMBus_word <= "00001001"; -- {input signal source, P3_VCO_select, P2_VCO_select } ;
WHEN 15 => SMBus_word <= "00001001"; -- {2'b00, P5_VCO_select, P4_VCO_select } ;
WHEN 16 => SMBus_word <= "00000001"; -- {1'b0, P0_div=1}; 
WHEN 17 => SMBus_word <= "00000110"; -- {1'b0, P1_div=6}; Y1=CLK_IN*N3/(P1*M3)
WHEN 18 => SMBus_word <= "00000101"; -- {1'b0, P2_div=5};Y0=CLK_IN*N1/(P2*M1)
WHEN 19 => SMBus_word <= "00000001"; -- {1'b0, P3_div=1} ;
WHEN 20 => SMBus_word <= "00000001"; -- {1'b0, P4_div=1} ;
WHEN 21 => SMBus_word <= "00000001"; -- {1'b0, P5_div=1} ;
WHEN 22 => SMBus_word <= "00111010"; -- {1'b0, Y0_inv, Y0_slew_rate, Y0_en, p2} ;
WHEN 23 => SMBus_word <= "00111001"; -- {1'b0, Y1_inv, Y1_slew_rate, Y1_en, p1} ;
WHEN 24 => SMBus_word <= "00111010"; -- {1'b0, Y2_inv, Y2_slew_rate, Y2_en, p2} ;
WHEN 25 => SMBus_word <= "00111010"; -- {1'b0, Y3_inv, Y3_slew_rate, Y3_en, p2} ;
WHEN 26 => SMBus_word <= "00111010"; -- {1'b0, Y4_inv, Y4_slew_rate, Y4_en, p2} ;
WHEN 27 => SMBus_word <= "00111010"; -- {1'b0, Y5_inv, Y5_slew_rate, Y5_en, p2} ;
WHEN 28 => SMBus_word <= "10001001"; -- {eelock, SSC_mod_select, SSC_freq_select} ; 
WHEN 29 => SMBus_WORD <= "00011011"; -- {Initiate EEPROM Write Cycle; Byte Count}

--CDCL6010 WORD WRITE
WHEN 30 => SMBus_word <= "11010000";
WHEN 31 => SMBus_word <= "10000000"; -- Command code = BYTE Write
WHEN 32 => SMBus_word <= "00000000"; -- Byte 0
WHEN 33 => SMBus_word <= "00100000"; -- BYTE1 : PHASE 9~5

WHEN 34 => SMBus_word <= "11010000";
WHEN 35 => SMBus_word <= "10000010"; -- Command code = BYTE Write
WHEN 36 => SMBus_word <= "00101001"; -- BYTE2 : P1 40 30.72M
WHEN 37 => SMBus_word <= "00000000"; -- BYTE3: PHASE 4~0

WHEN 38 => SMBus_word <= "11010000";
WHEN 39 => SMBus_word <= "10000100"; 
WHEN 40 => SMBus_word <= "00100111"; -- BYTE4: P0 20  61.44M
WHEN 41 => SMBus_word <= "11111111"; -- BYTE5: ENABLE

WHEN 42 => SMBus_word <= "11010000";
WHEN 43 => SMBus_word <= "10000110";
WHEN 44 => SMBus_word <= "11110000"; -- BYTE6: ENABLE 
WHEN 45 => SMBus_word <= "10001001"; -- BYTE7: ENABLE M=1 N=40


WHEN OTHERS => SMBus_word <= "00000000";
END CASE;
END IF;
END PROCESS;

END BEH;

