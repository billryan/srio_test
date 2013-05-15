#ifndef	macro_h
#define	macro_h

//#define DEBUG	

/*	CPU registers					*/
extern cregister volatile unsigned int CSR;  /* Control Status Register  */
extern cregister volatile unsigned int IER;    
extern cregister volatile unsigned int ISTP; 

/*	GPIO registers					*/
#define  GP_BINTEN  		*(volatile unsigned int*)(0x02B00008)
#define  GP_DIR 			*(volatile unsigned int*)(0x02B00010)
#define  GP_OUT_DATA   		*(volatile unsigned int*)(0x02B00014)
#define  GP_SET_DATA   		*(volatile unsigned int*)(0x02B00018)
#define  GP_CLR_DATA   		*(volatile unsigned int*)(0x02B0001C)
#define  GP_IN_DATA   		*(volatile unsigned int*)(0x02B00020)
#define  GP_SET_RIS_TRIG	*(volatile unsigned int*)(0x02B00024)


/*	interrupt registers				*/
#define INTMUX1	*(volatile unsigned int*)(0x01800104)

/* Device State Control Registers*/
#define PERLOCK	*(volatile unsigned int*)(0x02AC0004)
#define PERCFG0	*(volatile unsigned int*)(0x02AC0008)
#define PERCFG1	*(volatile unsigned int*)(0x02AC002C)

/* Base address of the EMIFA CE4 */
#define EMIFA_CE4_BASE_ADDR    (volatile long*)(0xC0000000u)
/* Base address of the EMIFA configration register */
#define EMIFA_CONFIGREG_STAT	*(volatile unsigned int*)(0x70000004u)
#define EMIFA_CONFIGREG_CE4CFG	*(volatile unsigned int*)(0x70000088u)



/* EDMA3 registers */
#define PING 0
#define PONG 1
#define EDMA3CC_BASE_ADDR	0x02A00000
#define EDMA3CC_DCHMAP48	*(volatile unsigned int*)(EDMA3CC_BASE_ADDR+0x01C0)
#define EDMA3CC_EESRH		*(volatile unsigned int*)(EDMA3CC_BASE_ADDR+0x1034)
#define EDMA3CC_IESR		*(volatile unsigned int*)(EDMA3CC_BASE_ADDR+0x1060)
#define EDMA3CC_IESRH		*(volatile unsigned int*)(EDMA3CC_BASE_ADDR+0x1064)
#define EDMA3CC_ICR			*(volatile unsigned int*)(EDMA3CC_BASE_ADDR+0x1070)
#define EDMA3CC_ICRH		*(volatile unsigned int*)(EDMA3CC_BASE_ADDR+0x1074)
#define EDMA3CC_IEVAL		*(volatile unsigned int*)(EDMA3CC_BASE_ADDR+0x1078)
#define EDMA3CC_DMAQNUM6	*(volatile unsigned int*)(EDMA3CC_BASE_ADDR+0x0258)
#define EDMA3CC_EMCR		*(volatile unsigned int*)(EDMA3CC_BASE_ADDR+0x0308)
#define EDMA3CC_EMCRH		*(volatile unsigned int*)(EDMA3CC_BASE_ADDR+0x030C)
#define EDMA3CC_IPR			*(volatile unsigned int*)(EDMA3CC_BASE_ADDR+0x1068)
struct EDMA3CC_PaRAM
{
	unsigned int OPT;
	volatile long *SRC;
	unsigned int BCNT_ACNT;
	volatile long *DST; 
	unsigned int DSTBIDX_SRCBIDX;
	unsigned int BCNTRLD_LINK;
	unsigned int DSTCIDX_SRCCIDX;
	unsigned int RSVD_CCNT;  
}*pEDMA3CC_PaRAM;
#define EDMA3CC_PaRAM1	(struct EDMA3CC_PaRAM*)(EDMA3CC_BASE_ADDR+0x4020)
#define EDMA3CC_PaRAM2	(struct EDMA3CC_PaRAM*)(EDMA3CC_BASE_ADDR+0x4040)
#define EDMA3CC_PaRAM3	(struct EDMA3CC_PaRAM*)(EDMA3CC_BASE_ADDR+0x4060)
#define EDMA3TC0_BASE_ADDR	0x02A20000
#define EDMA3TC0_RDRATE	*(volatile unsigned int*)(EDMA3TC0_BASE_ADDR+0x0140)

//PLL registers
#define PLLCTL_1	*(volatile unsigned int*)(0x029A0100)	// PLL1 control register
#define PLLM_1		*(volatile unsigned int*)(0x029A0110)	// PLL1 multiplier control register
#define PREDIV_1	*(volatile unsigned int*)(0x029A0114)	// PLL1 pre-divider control register
#define PLLCMD_1	*(volatile unsigned int*)(0x029A0138)	// PLL1 controller command register
#define PLLSTAT_1	*(volatile unsigned int*)(0x029A013C)	// PLL1 controller status register
#define DCHANGE_1	*(volatile unsigned int*)(0x029A0144)	// PLL1 PLLDIV ratio change status register
#define SYSTAT_1	*(volatile unsigned int*)(0x029A0150)	// PLL1 SYSCLK status register
#define PLLDIV4_1	*(volatile unsigned int*)(0x029A0160)	// PLL1 controller divider 4 register
#define PLLDIV5_1	*(volatile unsigned int*)(0x029A0164)	// PLL1 controller divider 5 register

#define PLLDIV1_2	*(volatile unsigned int*)(0x029C0118)	// PLL2 controller divider 1 register
#define PLLCMD_2	*(volatile unsigned int*)(0x029C0138)	// PLL2 controller command register
#define PLLSTAT_2	*(volatile unsigned int*)(0x029C013C)	// PLL2 controller status register
#define DCHANGE_2	*(volatile unsigned int*)(0x029C0144)	// PLL2 PLLDIV ratio change status register
#define SYSTAT_2	*(volatile unsigned int*)(0x029C0150)	// PLL2 SYSCLK status register


/* SRIO */
#define SRIO_BUF_SIZE	256
volatile unsigned long SRIO_WRITEBUF[SRIO_BUF_SIZE]; 
#pragma DATA_SECTION (SRIO_WRITEBUF, "SRIO_LOCALBUF");
#pragma DATA_ALIGN(SRIO_WRITEBUF, 8);
volatile unsigned long SRIO_READBUF[SRIO_BUF_SIZE];
#pragma DATA_SECTION (SRIO_READBUF, "SRIO_LOCALBUF");
#pragma DATA_ALIGN(SRIO_READBUF, 8);

//#define srio_3.125G_125M
//#define srio_3.125G_156M
//#define srio_2.5G
//#define srio_1.25G
#define SRIO_TESTTIMES  1000
#define SRIO_TESTLEN	128
#define SRIO_TARGETID	0x00AB
#define SRIO_TARGETBUF_ADDR	 0x00000000



#define SRIO_REG_BASEADDR	0x02D00000

#define SRIO_PCR	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x0004)	// Peripheral Control Register
#define SRIO_PER_SET_CNTL	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x0020)	// Peripheral Settings Control Register
#define SRIO_GBL_EN	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x0030)	// Peripheral Global Enable Register
#define SRIO_GBL_EN_STAT	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x0034)	// Peripheral Global Enable Status Register
#define SRIO_BLK0_EN	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x0038)	// Block 0 Enable Register
#define SRIO_BLK1_EN	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x0040)	// Block 1 Enable Register
#define SRIO_BLK2_EN	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x0048)	// Block 2 Enable Register
#define SRIO_BLK3_EN	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x0050)	// Block 3 Enable Register
#define SRIO_BLK4_EN	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x0058)	// Block 4 Enable Register
#define SRIO_BLK5_EN	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x0060)	// Block 5 Enable Register
#define SRIO_BLK6_EN	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x0068)	// Block 6 Enable Register
#define SRIO_BLK7_EN	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x0070)	// Block 7 Enable Register
#define SRIO_BLK8_EN	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x0078)	// Block 8 Enable Register
#define SRIO_DEVICEID_REG1	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x0080)	// RapidIO DEVICEID1 Register
#define SRIO_DEVICEID_REG2	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x0084)	// RapidIO DEVICEID2 Register
#define SRIO_SERDES_CFGRX0_CNTL	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x0100)	// SERDES Receive Channel Configuration Register 0
#define SRIO_SERDES_CFGRX1_CNTL	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x0104)	// SERDES Receive Channel Configuration Register 1
#define SRIO_SERDES_CFGRX2_CNTL	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x0108)	// SERDES Receive Channel Configuration Register 2
#define SRIO_SERDES_CFGRX3_CNTL	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x010C)	// SERDES Receive Channel Configuration Register 3
#define SRIO_SERDES_CFGTX0_CNTL	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x0110)	// SERDES Transmit Channel Configuration Register 0
#define SRIO_SERDES_CFGTX1_CNTL	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x0114)	// SERDES Transmit Channel Configuration Register 1
#define SRIO_SERDES_CFGTX2_CNTL	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x0118)	// SERDES Transmit Channel Configuration Register 2
#define SRIO_SERDES_CFGTX3_CNTL	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x011C)	// SERDES Transmit Channel Configuration Register 3
#define SRIO_SERDES_CFG0_CNTL	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x0120)	// SERDES Macro Configuration Register 0
#define SRIO_SERDES_CFG1_CNTL	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x0124)	// SERDES Macro Configuration Register 1
#define SRIO_SERDES_CFG2_CNTL	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x0128)	// SERDES Macro Configuration Register 2
#define SRIO_SERDES_CFG3_CNTL	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x012C)	// SERDES Macro Configuration Register 3
#define SRIO_LSU1_REG0	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x0400)	// LSU1 Control Register 0
#define SRIO_LSU1_REG1	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x0404)	// LSU1 Control Register 1
#define SRIO_LSU1_REG2	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x0408)	// LSU1 Control Register 2
#define SRIO_LSU1_REG3	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x040C)	// LSU1 Control Register 3
#define SRIO_LSU1_REG4	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x0410)	// LSU1 Control Register 4
#define SRIO_LSU1_REG5	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x0414)	// LSU1 Control Register 5
#define SRIO_LSU1_REG6	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x0418)	// LSU1 Control Register 6

#define SRIO_SP_IP_MODE	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x12004)	// Port IP Mode CSR
#define SRIO_DEV_ID		*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x1000)	// Device Identity CAR
#define SRIO_DEV_INFO	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x1004)	// Device Information CAR
#define SRIO_ASBLY_ID	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x1008)	// Assembly Identity CAR
#define SRIO_ASBLY_INFO	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x100C)	// Assembly Information CAR
#define SRIO_PE_FEAT	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x1010)	// Processing Element Features CAR
#define SRIO_SRC_OP		*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x1018)	// Source Operations CAR
#define SRIO_DEST_OP	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x101C)	// Destination Operations CAR
#define SRIO_PE_LL_CTL	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x104C)	// Processing Element Logical Layer Control CSR
#define SRIO_LCL_CFG_HBAR	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x1058)	// Local Configuration Space Base Address 0 CSR
#define SRIO_LCL_CFG_BAR	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x105C)	// Local Configuration Space Base Address 1 CSR
#define SRIO_BASE_ID	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x1060)	// Base Device ID CSR
#define SRIO_HOST_BASE_ID_LOCK	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x1068)	// Host Base Device ID Lock CSR
#define SRIO_COMP_TAG	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x106C)	// Component Tag CSR

#define SRIO_SP_IP_DISCOVERY_TIMER	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x12000)	// Port IP Discovery Timer in 4x mode
#define SRIO_IP_PRESCAL	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x12008)	// Port IP Prescaler Register
#define SRIO_SP0_SILENCE_TIMER		*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x14008)	// Port 0 Silence Timer Register
#define SRIO_SP_LT_CTL	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x1120)	// Port Link Time-Out Control CSR
#define SRIO_SP_RT_CTL	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x1124)	// Port Response Time-Out Control CSR
#define SRIO_SP_GEN_CTL	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x113C)	// Port General Control CSR

#define SRIO_SP0_CTL	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x115C)	// Port 0 Control CSR
#define SRIO_ERR_DET	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x2008)	// Logical/Transport Layer Error Detect CSR
#define SRIO_ERR_EN	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x200C)	// Logical/Transport Layer Error Enable CSR
#define SRIO_H_ADDR_CAPT	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x2010)	// Logical/Transport Layer High Address Capture CSR
#define SRIO_ADDR_CAPT	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x2014)	// Logical/Transport Layer Address Capture CSR
#define SRIO_ID_CAPT	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x2018)	// Logical/Transport Layer Device ID Capture CSR
#define SRIO_CTRL_CAPT		*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x201C)	// Logical/Transport Layer Control Capture CSR

#define SRIO_SP_IP_PW_IN_CAPT0	*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x12010)	// Port-Write-In Capture CSR Register 0
#define SRIO_P0_ERR_STAT		*(volatile unsigned int*)(SRIO_REG_BASEADDR + 0x1158)	// Port Error and Status CSR



#endif



