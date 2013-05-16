#include "macro.h"
#include "stdio.h"

int init_6455();
void SRIO_init();
void srio_read();
void srio_write();

main()
{
	int i, j, k,n;
	int* pBUF = (int*)SRIO_WRITEBUF;

	init_6455();                             //initialize C6455

	memset((void *)SRIO_WRITEBUF, 0, SRIO_BUF_SIZE);     // Clear memory
	memset((void *)SRIO_READBUF, 0, SRIO_BUF_SIZE);      // Clear memory
	
	i = SRIO_TESTTIMES;
	printf("Run %d times to analyze the SRIO transfer...... \nplease wait......\n",i);
	// run 1000 times  to analyze the SRIO transfer
	for (i = 0; i < SRIO_TESTTIMES; i++) 
	{ 

  		for (j = 0, pBUF= (int*)SRIO_WRITEBUF; j < SRIO_TESTLEN; j++, *(pBUF++) = ((j+i) + ((j+i) << 16)) );

		srio_write(SRIO_WRITEBUF, SRIO_TARGETBUF_ADDR, SRIO_TESTLEN);

		for (k = 1; k < 1000000; k++) ;

		srio_read(SRIO_TARGETBUF_ADDR, SRIO_READBUF, SRIO_TESTLEN);  
		
		for (k = 1; k < 1000000; k++) ;	

 	  	if (memcmp(SRIO_WRITEBUF, SRIO_READBUF, SRIO_TESTLEN) == 0)
        	printf("\t SUCESS: SRIO transfer number %d\n", i);
 	 	else
	    	printf("\t FAIL: SRIO transfers number %d\n", i); 
	}

}

int init_6455()                                                              //initialize C6455
{
    int i;
    int PLLM_val =    20;  /* CLKIN1 = 50MHz */
    int PREDIV_val =  1;
    int PLLDIV4_val = 8;
    int PLLDIV5_val = 4;

	CSR &=~(0x1);	//turn off interruput

			/* In PLLCTL, write PLLENSRC = 0 (enable PLLEN bit).*/
	PLLCTL_1 &= ~(0x00000020);
			/* In PLLCTL, write PLLEN = 0 (bypass mode).*/
	PLLCTL_1 &= ~(0x00000001);
			/* Wait 4 cycles of the slowest of PLLOUT or reference clock source (CLKIN).*/
	for (i=0 ; i<100 ; i++);
			/*In PLLCTL, write PLLRST = 1 (PLL is reset).*/
	PLLCTL_1 |= 0x00000008;
			/*If necessary, program PREDIV and PLLM.*/
	PLLM_1 = PLLM_val - 1;
	PREDIV_1 = (PREDIV_val - 1) | 0x8000;	/* set PLLDIV0 */
			
			/*If necessary, program PLLDIV1n. Note that you must apply the GO operation
				to change these dividers to new ratios.*/

				/* Check that the GOSTAT bit in PLLSTAT is cleared to show that no GO 
					operation is currently in progress.*/
	while( (PLLSTAT_1) & 0x00000001);


				/* Program the RATIO field in PLLDIVn to the desired new divide-down rate. 
					If the RATIO field changed, the PLL controller will flag the change
					in the corresponding bit of DCHANGE.*/
	PLLDIV4_1 = (PLLDIV4_val - 1) | 0x8000;	/* set PLLDIV4 */
	PLLDIV5_1 = (PLLDIV5_val - 1) | 0x8000;	/* set PLLDIV5 */

				/* Set the GOSET bit in PLLCMD to initiate the GO operation to change
					the divide values and align the SYSCLKs as programmed.*/
	PLLCMD_1 |= 0x00000001;

				/* Read the GOSTAT bit in PLLSTAT to make sure the bit returns to 0
					to indicate that the GO operation has completed.*/
	while( (PLLSTAT_1) & 0x00000001);

			/* Wait for PLL to properly reset.(128 CLKIN1 cycles).*/
	for (i=0 ; i<1000 ; i++);

			/* In PLLCTL, write PLLRST = 0 to bring PLL out of reset.*/
	PLLCTL_1 &= ~(0x00000008);

			/* Wait for PLL to lock (2000 CLKIN1 cycles). */
	for (i=0 ; i<4000 ; i++);

			/* In PLLCTL, write PLLEN = 1 to enable PLL mode. */
	PLLCTL_1 |= (0x00000001);


	PERLOCK = 0x0f0a0b00; /* Unlock PERCFG0 through PERLOCK */
	PERCFG0 = 0xC0015555; /* Enable SRIO EMAC, Timers, McBSPs, I2C, GPIO in PERCFG0 */
	PERCFG1 = 0x3; /* Enable DDR and EMIFA in PERCFG1 */
	GP_DIR &= 0xfffffffe;	
	GP_OUT_DATA |= 0x00000001; //FPGA link_reset

	SRIO_init();

	CSR	|=	0x1;	//enable intertuput

	return(1);
}

void SRIO_init()                    //initialize C6455 SRIO
{
	int  rdata=0; 
	/* Glb enable srio */
	SRIO_GBL_EN = 0x00000001 ;
	SRIO_BLK0_EN = 0x00000001 ; //MMR_EN
	SRIO_BLK5_EN = 0x00000001 ; //PORT0_EN
	SRIO_BLK1_EN = 0x00000001 ; //LSU_EN
	SRIO_BLK2_EN = 0x00000001 ; //MAU_EN
	SRIO_BLK3_EN = 0x00000001 ; //TXU_EN
	SRIO_BLK4_EN = 0x00000001 ; //RXU_EN
	SRIO_BLK6_EN = 0x00000001 ; //PORT1_EN
	SRIO_BLK7_EN = 0x00000001 ; //PORT2_EN
	SRIO_BLK8_EN = 0x00000001 ; //PORT3_EN

	SRIO_PER_SET_CNTL = 0x0400026F ; 

	//3.125G refclk= 156.25MHz
	SRIO_SERDES_CFG0_CNTL = 0x0000000B;//mpy=00101b pll 10x;pllen=1;
	SRIO_SERDES_CFGRX0_CNTL = 0x00081101 ; // enable rx, rate=00 full rate; EQ=0001 adaptive; align=01 Comma alignment enabled;
	SRIO_SERDES_CFGTX0_CNTL = 0x00010801 ; // enable tx, rate=00 full rate; swing=100:750mv;

	SRIO_SERDES_CFG1_CNTL = 0x00000000;//mpy=00101b pll 10x;pllen=1;
	SRIO_SERDES_CFGRX1_CNTL = 0x00081101 ; // enable rx, rate=00 full rate; EQ=0001 adaptive; align=01 Comma alignment enabled;
	SRIO_SERDES_CFGTX1_CNTL = 0x00010801 ; // enable tx, rate=00 full rate; swing=100:750mv;

	SRIO_SERDES_CFG2_CNTL = 0x00000000;//mpy=00101b pll 10x;pllen=1;
	SRIO_SERDES_CFGRX2_CNTL = 0x00081101 ; // enable rx, rate=00 full rate; EQ=0001 adaptive; align=01 Comma alignment enabled;
	SRIO_SERDES_CFGTX2_CNTL = 0x00010801 ; // enable tx, rate=00 full rate; swing=100:750mv;

	SRIO_SERDES_CFG3_CNTL = 0x00000000;//mpy=00101b pll 10x;pllen=1;
	SRIO_SERDES_CFGRX3_CNTL = 0x00081101 ; // enable rx, rate=00 full rate; EQ=0001 adaptive; align=01 Comma alignment enabled;
	SRIO_SERDES_CFGTX3_CNTL = 0x00010801 ; // enable tx, rate=00 full rate; swing=100:750mv; 
		 
	SRIO_DEVICEID_REG1 = 0 ; // id-16b=0000, id-08b=00
	SRIO_DEVICEID_REG2 = 0 ; // id-16b=0000, id-08b=00

	SRIO_SP_IP_MODE = 0x0400003F; // mltc/rst/pw enable, clear

	SRIO_DEV_ID = 0x00000030 ; // id=0000, ti=0x0030
	SRIO_DEV_INFO = 0x00000000 ; // 0
	SRIO_ASBLY_ID = 0x00000030 ; // ti=0x0030
	SRIO_ASBLY_INFO = 0x00000100; // 0x0000, next ext=0x0100
	SRIO_PE_FEAT = 0x20000009 ; // proc, bu ext, 8-bit ID, 34-bit addr
	SRIO_SRC_OP = 0x0000FDF4; // all
	SRIO_DEST_OP = 0x0000FC04; // all except atomic
	SRIO_PE_LL_CTL = 0x00000001; // 34-bit addr
	SRIO_LCL_CFG_HBAR = 0x00000000 ; // 0
	SRIO_LCL_CFG_BAR = 0x00000000; // 0
	SRIO_BASE_ID = 0x00000000; // 16b-id=0000, 08b-id=00
	SRIO_HOST_BASE_ID_LOCK = 0x00000000; // id=0000, lock
	SRIO_COMP_TAG = 0x00000000; // not touched
	SRIO_SP_IP_DISCOVERY_TIMER = 0x90000000;// 0, short cycles for sim
	SRIO_IP_PRESCAL = 0x00000018; // srv_clk prescalar=0x18 (250MHz)
	SRIO_SP0_SILENCE_TIMER = 0x20000000;
	SRIO_SP0_CTL = 0x00600001; // enable i/o;////////////
	SRIO_SP_LT_CTL = 0xFFFFFF00; // long time
	SRIO_SP_RT_CTL = 0xFFFFFF00; // long time
	SRIO_SP_GEN_CTL = 0xC0000000; // host, master, undiscovered	 
	SRIO_ERR_DET = 0x00000000 ; // clear
	SRIO_ERR_EN = 0x00000000 ; // disable
	SRIO_H_ADDR_CAPT = 0x00000000 ; // clear
	SRIO_ADDR_CAPT = 0x00000000 ; // clear
	SRIO_ID_CAPT = 0x00000000 ; // clear
	SRIO_CTRL_CAPT = 0x00000000 ; // clear
	SRIO_SP_IP_PW_IN_CAPT0 = 0x00000000 ; // clear

	SRIO_PER_SET_CNTL = 0x0500026F; // bootcmpl=1
	//INIT_WAIT wait for lane initialization
	// polling SRIO_MAC's port_ok bit
	rdata = SRIO_P0_ERR_STAT ;
	while ((rdata & 0x00000002) != 0x00000002)
	{
		rdata = SRIO_P0_ERR_STAT ;
	}
	
	SRIO_PCR = 0x00000004; // peren

}
 
void srio_read(unsigned int src, unsigned int dst, unsigned int len)
{
    int rdata=0;

    /* Create an LSU configuration */
	SRIO_LSU1_REG0	=	0;
	SRIO_LSU1_REG1	=	src;
	/*This value is used in conjunction with BYTE_COUNT to create a 64-bit aligned
	  RapidIO packet header address.*/

	SRIO_LSU1_REG2	=	dst;/* 32-bit DSP byte address for the source of the LSU transaction */
	SRIO_LSU1_REG3	=	len;/* Number of data bytes to read or write, up to 4K bytes */
	SRIO_LSU1_REG4	=	0x0000AB00;//outportID=0,priority=0,xambs=0,idsize=0 8bitid,DestID=0x00AB,Interrupt Req=0
	SRIO_LSU1_REG5	=	0x00000024;//Drbll Info=0,Hop Count=0,Packet Type=0x24 NREAD

    /* Wait for the completion of transfer */

  do 
  {
  	rdata = SRIO_LSU1_REG6;
  } while(rdata & 0x00000001);

	printf("rlsu_reg6 = %d  ",rdata);
}


 void srio_write(unsigned int src, unsigned int dst, unsigned int len)
{
    int rdata=0;

    /* Create an LSU configuration */
	SRIO_LSU1_REG0	=	0;
	SRIO_LSU1_REG1	=	dst;
	SRIO_LSU1_REG2	=	src;
	SRIO_LSU1_REG3	=	len;
	SRIO_LSU1_REG4	=	0x0000AB00;//outportID=0,priority=1,xambs=0,idsize=0 8bitid,DestID=0x00AB,Interrupt Req=0
	SRIO_LSU1_REG5	=	0x00000054;//Drbll Info=0,Hop Count=0,Packet Type=0x54 NWRITE

    /* Wait for the completion of transfer */

    do {
        rdata = SRIO_LSU1_REG6;
    } while(rdata & 0x00000001);

	printf("wlsu_reg6 = %d  ",rdata);
}


