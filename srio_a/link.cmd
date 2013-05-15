-c
-stack 0x5000
-heap  0x5000
-l rts64plus.lib
MEMORY
{
	IRAM:		o = 0x00800000		l = 0x100000
	VRAM:    	o = 0x00900000		l = 0x100000	
}

SECTIONS
{
	.vectors	>		VRAM 
	"SRIO_LOCALBUF"  >	IRAM                                            
    .text	   	>		IRAM 
    .cinit	    >		IRAM 
 	.const      >		IRAM 
    .switch     >		IRAM 
	.data		>		IRAM
    .stack      >       IRAM
    .bss        >       IRAM
    .far        >       IRAM
    .sysmem     >       IRAM
    .cio        >       IRAM
}                             

