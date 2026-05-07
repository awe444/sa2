# 1 "asm/macros/c_decl.inc"
// NOTE:
// For this to work, the file that is including this file HAS to be passed through the C preprocessor before assembling!

// 32bit Windows and MacOS versions prefix labels using an underscore.
// For interoperability we need to replicate that behavior here.
#if ( (CPU_ARCH_X86 && defined(_WIN32) && !defined(_WIN64)) || defined(__APPLE__) )
    #define C_DECL(label) _##label
#else
    #define C_DECL(label) label
#endif
# 2 "/home/awaszczak/git/sa2/sa1/sound/sa1/songs/song001.s"
# 1 "asm/macros/portable.inc"
.macro mSectionRodata
#if (!CPU_ARCH_X86 && defined(__APPLE__)) // On macos, native compilation uses this name for the rodata section
  .section __DATA,__data
#elif defined(__ANDROID__)
  // On Android the assembly is linked into a shared library (libmain.so).
  // Pointer tables emitted with mPtr (.quad) produce absolute relocations
  // (R_AARCH64_ABS64 on ARM64, R_X86_64_64 on x86_64) which the linker
  // cannot place in read-only .rodata.
  // .data.rel.ro is writable during relocation, then made read-only.
  .section .data.rel.ro,"aw",%progbits
#else
  .section .rodata
#endif
.endm

// Used so that we can have cross platform (32bit or 64bit) pointers
.macro mPtr value
#if defined(__aarch64__) || defined(__x86_64__)
    .quad \value
#else
    .int \value
#endif
.endm

// Used for cross platform aligning of labels.
// Uses .balign (byte-count alignment) which is unambiguous across all
// assemblers.  The earlier .align N form is interpreted as 2^N on ARM
// targets, which produced 256-byte gaps instead of 8-byte gaps and
// caused struct-layout mismatches with C code on AArch64.
// The System V AMD64 ABI (and AAPCS64) requires global arrays of 16+
// bytes to be 16-byte aligned.  Clang -O2 relies on this and emits
// movaps (x86-64) / LDP with aligned hint (AArch64) when inlining
// memcpy from such symbols.  Assembly data files pack symbols with no
// padding, violating the ABI; this macro inserts the required
// alignment before each .global on 64-bit targets while leaving
// 32-bit (GBA) builds untouched.
.macro mAlignData
#if defined(__aarch64__) || defined(__x86_64__)
    .balign 16
#endif
.endm

.macro mAlignWord
#if defined(__aarch64__) || defined(__x86_64__)
    .balign 8
#else
    .balign 4
#endif
.endm
# 3 "/home/awaszczak/git/sa2/sa1/sound/sa1/songs/song001.s"
# 1 "sound/MPlayDef.s"
	.equ	W00,	0x80		      
	.equ	W01,	W00+1		 
	.equ	W02,	W00+2		 
	.equ	W03,	W00+3		 
	.equ	W04,	W00+4		 
	.equ	W05,	W00+5		 
	.equ	W06,	W00+6		 
	.equ	W07,	W00+7		 
	.equ	W08,	W00+8		 
	.equ	W09,	W00+9		 
	.equ	W10,	W00+10		 
	.equ	W11,	W00+11		 
	.equ	W12,	W00+12		 
	.equ	W13,	W00+13		 
	.equ	W14,	W00+14		 
	.equ	W15,	W00+15		 
	.equ	W16,	W00+16		 
	.equ	W17,	W00+17		 
	.equ	W18,	W00+18		 
	.equ	W19,	W00+19		 
	.equ	W20,	W00+20		 
	.equ	W21,	W00+21		 
	.equ	W22,	W00+22		 
	.equ	W23,	W00+23		 
	.equ	W24,	W00+24		 
	.equ	W28,	W00+25		 
	.equ	W30,	W00+26		 
	.equ	W32,	W00+27		 
	.equ	W36,	W00+28		 
	.equ	W40,	W00+29		 
	.equ	W42,	W00+30		 
	.equ	W44,	W00+31		 
	.equ	W48,	W00+32		 
	.equ	W52,	W00+33		 
	.equ	W54,	W00+34		 
	.equ	W56,	W00+35		 
	.equ	W60,	W00+36		 
	.equ	W64,	W00+37		 
	.equ	W66,	W00+38		 
	.equ	W68,	W00+39		 
	.equ	W72,	W00+40		 
	.equ	W76,	W00+41		 
	.equ	W78,	W00+42		 
	.equ	W80,	W00+43		 
	.equ	W84,	W00+44		 
	.equ	W88,	W00+45		 
	.equ	W90,	W00+46		 
	.equ	W92,	W00+47		 
	.equ	W96,	W00+48		 

	.equ	FINE,	0xb1		      
	.equ	GOTO,	0xb2		      
	.equ	PATT,	0xb3		              
	.equ	PEND,	0xb4		             
	.equ	REPT,	0xb5		        
	.equ	MEMACC,	0xb9		                          
	.equ	PRIO,	0xba		          
	.equ	TEMPO,	0xbb		               
	.equ	KEYSH,	0xbc		           
	.equ	VOICE,	0xbd		         
	.equ	VOL,	0xbe		        
	.equ	PAN,	0xbf		                 
	.equ	BEND,	0xc0		                     
	.equ	BENDR,	0xc1		            
	.equ	LFOS,	0xc2		           
	.equ	LFODL,	0xc3		           
	.equ	MOD,	0xc4		                  
	.equ	MODT,	0xc5		                 
	.equ	TUNE,	0xc8		                       

	.equ	XCMD,	0xcd		                        
	 .equ	xIECV,	0x08		                        
	 .equ	xIECL,	0x09		                        

	.equ	EOT,	0xce		            
	.equ	TIE,	0xcf		 
	.equ	N01,	TIE+1		      
	.equ	N02,	N01+1		 
	.equ	N03,	N01+2		 
	.equ	N04,	N01+3		 
	.equ	N05,	N01+4		 
	.equ	N06,	N01+5		 
	.equ	N07,	N01+6		 
	.equ	N08,	N01+7		 
	.equ	N09,	N01+8		 
	.equ	N10,	N01+9		 
	.equ	N11,	N01+10		 
	.equ	N12,	N01+11		 
	.equ	N13,	N01+12		 
	.equ	N14,	N01+13		 
	.equ	N15,	N01+14		 
	.equ	N16,	N01+15		 
	.equ	N17,	N01+16		 
	.equ	N18,	N01+17		 
	.equ	N19,	N01+18		 
	.equ	N20,	N01+19		 
	.equ	N21,	N01+20		 
	.equ	N22,	N01+21		 
	.equ	N23,	N01+22		 
	.equ	N24,	N01+23		 
	.equ	N28,	N01+24		 
	.equ	N30,	N01+25		 
	.equ	N32,	N01+26		 
	.equ	N36,	N01+27		 
	.equ	N40,	N01+28		 
	.equ	N42,	N01+29		 
	.equ	N44,	N01+30		 
	.equ	N48,	N01+31		 
	.equ	N52,	N01+32		 
	.equ	N54,	N01+33		 
	.equ	N56,	N01+34		 
	.equ	N60,	N01+35		 
	.equ	N64,	N01+36		 
	.equ	N66,	N01+37		 
	.equ	N68,	N01+38		 
	.equ	N72,	N01+39		 
	.equ	N76,	N01+40		 
	.equ	N78,	N01+41		 
	.equ	N80,	N01+42		 
	.equ	N84,	N01+43		 
	.equ	N88,	N01+44		 
	.equ	N90,	N01+45		 
	.equ	N92,	N01+46		 
	.equ	N96,	N01+47		 

                          

	.equ	mxv,	0x7F		 

                                 

	.equ	c_v,	0x40		           

                        

	.equ	CnM2,	0		 
	.equ	CsM2,	1		 
	.equ	DnM2,	2		 
	.equ	DsM2,	3		 
	.equ	EnM2,	4		 
	.equ	FnM2,	5		 
	.equ	FsM2,	6		 
	.equ	GnM2,	7		 
	.equ	GsM2,	8		 
	.equ	AnM2,	9		 
	.equ	AsM2,	10		 
	.equ	BnM2,	11		 
	.equ	CnM1,	12		 
	.equ	CsM1,	13		 
	.equ	DnM1,	14		 
	.equ	DsM1,	15		 
	.equ	EnM1,	16		 
	.equ	FnM1,	17		 
	.equ	FsM1,	18		 
	.equ	GnM1,	19		 
	.equ	GsM1,	20		 
	.equ	AnM1,	21		 
	.equ	AsM1,	22		 
	.equ	BnM1,	23		 
	.equ	Cn0,	24		 
	.equ	Cs0,	25		 
	.equ	Dn0,	26		 
	.equ	Ds0,	27		 
	.equ	En0,	28		 
	.equ	Fn0,	29		 
	.equ	Fs0,	30		 
	.equ	Gn0,	31		 
	.equ	Gs0,	32		 
	.equ	An0,	33		 
	.equ	As0,	34		 
	.equ	Bn0,	35		 
	.equ	Cn1,	36		 
	.equ	Cs1,	37		 
	.equ	Dn1,	38		 
	.equ	Ds1,	39		 
	.equ	En1,	40		 
	.equ	Fn1,	41		 
	.equ	Fs1,	42		 
	.equ	Gn1,	43		 
	.equ	Gs1,	44		 
	.equ	An1,	45		 
	.equ	As1,	46		 
	.equ	Bn1,	47		 
	.equ	Cn2,	48		 
	.equ	Cs2,	49		 
	.equ	Dn2,	50		 
	.equ	Ds2,	51		 
	.equ	En2,	52		 
	.equ	Fn2,	53		 
	.equ	Fs2,	54		 
	.equ	Gn2,	55		 
	.equ	Gs2,	56		 
	.equ	An2,	57		 
	.equ	As2,	58		 
	.equ	Bn2,	59		 
	.equ	Cn3,	60		 
	.equ	Cs3,	61		 
	.equ	Dn3,	62		 
	.equ	Ds3,	63		 
	.equ	En3,	64		 
	.equ	Fn3,	65		 
	.equ	Fs3,	66		 
	.equ	Gn3,	67		 
	.equ	Gs3,	68		 
	.equ	An3,	69		       
	.equ	As3,	70		 
	.equ	Bn3,	71		 
	.equ	Cn4,	72		 
	.equ	Cs4,	73		 
	.equ	Dn4,	74		 
	.equ	Ds4,	75		 
	.equ	En4,	76		 
	.equ	Fn4,	77		 
	.equ	Fs4,	78		 
	.equ	Gn4,	79		 
	.equ	Gs4,	80		 
	.equ	An4,	81		 
	.equ	As4,	82		 
	.equ	Bn4,	83		 
	.equ	Cn5,	84		 
	.equ	Cs5,	85		 
	.equ	Dn5,	86		 
	.equ	Ds5,	87		 
	.equ	En5,	88		 
	.equ	Fn5,	89		 
	.equ	Fs5,	90		 
	.equ	Gn5,	91		 
	.equ	Gs5,	92		 
	.equ	An5,	93		 
	.equ	As5,	94		 
	.equ	Bn5,	95		 
	.equ	Cn6,	96		 
	.equ	Cs6,	97		 
	.equ	Dn6,	98		 
	.equ	Ds6,	99		 
	.equ	En6,	100		 
	.equ	Fn6,	101		 
	.equ	Fs6,	102		 
	.equ	Gn6,	103		 
	.equ	Gs6,	104		 
	.equ	An6,	105		 
	.equ	As6,	106		 
	.equ	Bn6,	107		 
	.equ	Cn7,	108		 
	.equ	Cs7,	109		 
	.equ	Dn7,	110		 
	.equ	Ds7,	111		 
	.equ	En7,	112		 
	.equ	Fn7,	113		 
	.equ	Fs7,	114		 
	.equ	Gn7,	115		 
	.equ	Gs7,	116		 
	.equ	An7,	117		 
	.equ	As7,	118		 
	.equ	Bn7,	119		 
	.equ	Cn8,	120		 
	.equ	Cs8,	121		 
	.equ	Dn8,	122		 
	.equ	Ds8,	123		 
	.equ	En8,	124		 
	.equ	Fn8,	125		 
	.equ	Fs8,	126		 
	.equ	Gn8,	127		 

          

	.equ	v000,	0		 
	.equ	v001,	1		 
	.equ	v002,	2		 
	.equ	v003,	3		 
	.equ	v004,	4		 
	.equ	v005,	5		 
	.equ	v006,	6		 
	.equ	v007,	7		 
	.equ	v008,	8		 
	.equ	v009,	9		 
	.equ	v010,	10		 
	.equ	v011,	11		 
	.equ	v012,	12		 
	.equ	v013,	13		 
	.equ	v014,	14		 
	.equ	v015,	15		 
	.equ	v016,	16		 
	.equ	v017,	17		 
	.equ	v018,	18		 
	.equ	v019,	19		 
	.equ	v020,	20		 
	.equ	v021,	21		 
	.equ	v022,	22		 
	.equ	v023,	23		 
	.equ	v024,	24		 
	.equ	v025,	25		 
	.equ	v026,	26		 
	.equ	v027,	27		 
	.equ	v028,	28		 
	.equ	v029,	29		 
	.equ	v030,	30		 
	.equ	v031,	31		 
	.equ	v032,	32		 
	.equ	v033,	33		 
	.equ	v034,	34		 
	.equ	v035,	35		 
	.equ	v036,	36		 
	.equ	v037,	37		 
	.equ	v038,	38		 
	.equ	v039,	39		 
	.equ	v040,	40		 
	.equ	v041,	41		 
	.equ	v042,	42		 
	.equ	v043,	43		 
	.equ	v044,	44		 
	.equ	v045,	45		 
	.equ	v046,	46		 
	.equ	v047,	47		 
	.equ	v048,	48		 
	.equ	v049,	49		 
	.equ	v050,	50		 
	.equ	v051,	51		 
	.equ	v052,	52		 
	.equ	v053,	53		 
	.equ	v054,	54		 
	.equ	v055,	55		 
	.equ	v056,	56		 
	.equ	v057,	57		 
	.equ	v058,	58		 
	.equ	v059,	59		 
	.equ	v060,	60		 
	.equ	v061,	61		 
	.equ	v062,	62		 
	.equ	v063,	63		 
	.equ	v064,	64		 
	.equ	v065,	65		 
	.equ	v066,	66		 
	.equ	v067,	67		 
	.equ	v068,	68		 
	.equ	v069,	69		 
	.equ	v070,	70		 
	.equ	v071,	71		 
	.equ	v072,	72		 
	.equ	v073,	73		 
	.equ	v074,	74		 
	.equ	v075,	75		 
	.equ	v076,	76		 
	.equ	v077,	77		 
	.equ	v078,	78		 
	.equ	v079,	79		 
	.equ	v080,	80		 
	.equ	v081,	81		 
	.equ	v082,	82		 
	.equ	v083,	83		 
	.equ	v084,	84		 
	.equ	v085,	85		 
	.equ	v086,	86		 
	.equ	v087,	87		 
	.equ	v088,	88		 
	.equ	v089,	89		 
	.equ	v090,	90		 
	.equ	v091,	91		 
	.equ	v092,	92		 
	.equ	v093,	93		 
	.equ	v094,	94		 
	.equ	v095,	95		 
	.equ	v096,	96		 
	.equ	v097,	97		 
	.equ	v098,	98		 
	.equ	v099,	99		 
	.equ	v100,	100		 
	.equ	v101,	101		 
	.equ	v102,	102		 
	.equ	v103,	103		 
	.equ	v104,	104		 
	.equ	v105,	105		 
	.equ	v106,	106		 
	.equ	v107,	107		 
	.equ	v108,	108		 
	.equ	v109,	109		 
	.equ	v110,	110		 
	.equ	v111,	111		 
	.equ	v112,	112		 
	.equ	v113,	113		 
	.equ	v114,	114		 
	.equ	v115,	115		 
	.equ	v116,	116		 
	.equ	v117,	117		 
	.equ	v118,	118		 
	.equ	v119,	119		 
	.equ	v120,	120		 
	.equ	v121,	121		 
	.equ	v122,	122		 
	.equ	v123,	123		 
	.equ	v124,	124		 
	.equ	v125,	125		 
	.equ	v126,	126		 
	.equ	v127,	127		 

                                   

	.equ	gtp1,	1		 
	.equ	gtp2,	2		 
	.equ	gtp3,	3		 

                   

	.equ	mod_vib,0		         
	.equ	mod_tre,1		         
	.equ	mod_pan,2		             

                     

	.equ	mem_set,0		 
	.equ	mem_add,1		 
	.equ	mem_sub,2		 
	.equ	mem_mem_set,3		 
	.equ	mem_mem_add,4		 
	.equ	mem_mem_sub,5		 
	.equ	mem_beq,6		 
	.equ	mem_bne,7		 
	.equ	mem_bhi,8		 
	.equ	mem_bhs,9		 
	.equ	mem_bls,10		 
	.equ	mem_blo,11		 
	.equ	mem_mem_beq,12		 
	.equ	mem_mem_bne,13		 
	.equ	mem_mem_bhi,14		 
	.equ	mem_mem_bhs,15		 
	.equ	mem_mem_bls,16		 
	.equ	mem_mem_blo,17		 

	.equ	reverb_set,0x80		                       
	.equ	PAM, PAN		 
# 4 "/home/awaszczak/git/sa2/sa1/sound/sa1/songs/song001.s"

	mSectionRodata

	                                                        

	mAlignWord
	.global song001_1
song001_1:	            
	.byte	KEYSH	, 0
	.byte	TEMPO	, 90
	.byte	VOICE	, 127
	.byte	VOL	, v120
	.byte	PAN	, c_v
	.byte	BENDR	, 3
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	TEMPO	, 84
	.byte		N05	, Cs1, v124
	.byte	W06
	.byte			Cs1, v108
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte			Gs1, v127
	.byte	W06
	.byte		N11	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte			Gn1
	.byte	W06
	.byte		N11	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Fs1
	.byte	W06
	.byte			Fn1
	.byte	W06
	.byte			Cn1, v108
	.byte	W06
	.byte		N11	, Cs1
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
song001_1_1:
	.byte		N12	, Cn1, v127
	.byte		N96	, Cs2
	.byte	W12
	.byte		N12	, Cn1
	.byte		N12	, Dn1, v056
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Dn1, v068
	.byte	W12
	.byte			Dn1, v044
	.byte	W06
	.byte		N06	, Cs1, v127
	.byte	W06
	.byte		N12	, Cn1
	.byte		N12	, Dn1, v028
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Dn1, v056
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Dn1, v056
	.byte	W12
	.byte			Cn1, v127
	.byte		N24	, En1, v080
	.byte	W12
	.byte	PEND
song001_1_2:
	.byte	W12
	.byte		N12	, Cn1, v127
	.byte		N12	, Dn1, v056
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Dn1, v068
	.byte	W12
	.byte			Dn1, v056
	.byte	W06
	.byte		N06	, Cs1, v127
	.byte	W06
	.byte		N12	, Cn1
	.byte		N12	, Dn1, v056
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Dn1, v056
	.byte	W12
	.byte		N06	, Cs1, v127
	.byte		N12	, Dn1, v068
	.byte	W12
	.byte		N06	, Cs1, v127
	.byte		N12	, Dn1, v044
	.byte	W06
	.byte		N06	, Cs1, v127
	.byte	W06
	.byte	PEND
song001_1_3:
	.byte		N12	, Cn1, v127
	.byte		N96	, Cs2
	.byte	W12
	.byte		N12	, Cn1
	.byte		N12	, Dn1, v056
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Dn1, v068
	.byte	W12
	.byte			Dn1, v044
	.byte	W06
	.byte		N06	, Cs1, v127
	.byte	W06
	.byte		N12	, Cn1
	.byte		N12	, Dn1, v028
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Dn1, v056
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Dn1, v056
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, En1, v080
	.byte	W12
	.byte	PEND
	.byte			Dn1, v056
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, En1, v080
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Dn1, v068
	.byte	W12
	.byte			Dn1, v056
	.byte	W06
	.byte		N06	, Cs1, v127
	.byte	W06
	.byte		N12	, Cn1
	.byte		N12	, Dn1, v056
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Dn1, v056
	.byte	W12
	.byte		N06	, Cs1, v127
	.byte		N12	, Dn1, v068
	.byte	W06
	.byte		N06	, Cs1, v127
	.byte	W06
	.byte		N12	, Dn1, v044
	.byte	W06
	.byte		N06	, Cs1, v127
	.byte	W06
	.byte	PATT	
		mPtr	song001_1_1
	.byte	PATT	
		mPtr	song001_1_2
	.byte	PATT	
		mPtr	song001_1_3
	.byte		N12	, Dn1, v056
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, En1, v080
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Dn1, v068
	.byte	W12
	.byte			Dn1, v056
	.byte	W06
	.byte		N06	, Cs1, v127
	.byte	W06
	.byte		N12	, Cn1
	.byte		N12	, Dn1, v056
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Dn1, v056
	.byte	W12
	.byte		N06	, Cs1, v127
	.byte		N12	, Dn1, v068
	.byte	W06
	.byte		N06	, Cs1, v127
	.byte	W06
	.byte		N06	
	.byte		N12	, Dn1, v044
	.byte	W06
	.byte		N06	, Cs1, v127
	.byte	W06
	.byte		N12	, Cn1
	.byte		N96	, Cs2
	.byte	W12
	.byte		N12	, Dn1, v056
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Dn1, v068
	.byte	W12
	.byte			Dn1, v044
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Dn1, v028
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Dn1, v056
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Dn1, v056
	.byte	W12
	.byte			Dn1, v044
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Dn1, v056
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Dn1, v068
	.byte	W12
	.byte			Dn1, v044
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Dn1, v036
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Dn1, v056
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Dn1, v068
	.byte	W12
	.byte			Dn1, v044
	.byte	W12
song001_1_4:
	.byte		N12	, Cn1, v127
	.byte		N12	, Ds1, v056
	.byte	W12
	.byte			Dn1
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Dn1, v068
	.byte	W12
	.byte			Dn1, v044
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Dn1, v028
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Dn1, v056
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Dn1, v056
	.byte	W12
	.byte			Dn1, v044
	.byte	W12
	.byte	PEND
	.byte			Cn1, v127
	.byte		N68	, Cs2
	.byte	W24
	.byte		N12	, Cs1
	.byte		N12	, Dn1, v068
	.byte	W12
	.byte			Cn1, v127
	.byte		N24	, En1, v056
	.byte	W24
	.byte		N12	, Gn1, v127
	.byte	W12
	.byte			Cn1
	.byte		N92	, Cs2
	.byte	W12
	.byte		N12	, Gs1
	.byte	W12
	.byte			Cs1
	.byte	W12
	.byte			Cn1
	.byte		N24	, En1, v056
	.byte	W24
	.byte		N12	, Cs1, v127
	.byte	W12
	.byte			Cn1
	.byte		N12	, En1, v056
	.byte	W24
	.byte			Cn1, v127
	.byte		N96	, Cs2
	.byte	W24
	.byte		N12	, Dn1, v044
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Dn1, v056
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Dn1, v068
	.byte	W12
	.byte			Dn1, v044
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Dn1, v028
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Dn1, v056
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Dn1, v056
	.byte	W12
	.byte			Dn1, v044
	.byte	W12
	.byte	PATT	
		mPtr	song001_1_4
	.byte	PATT	
		mPtr	song001_1_4
	.byte		N12	, Cn1, v127
	.byte		N12	, Ds1, v056
	.byte	W12
	.byte			Dn1
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Dn1, v068
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Dn1, v056
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Dn1, v044
	.byte	W12
	.byte			Cn1, v127
	.byte		N24	, En1, v056
	.byte	W12
	.byte		N11	, Cs1, v127
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N12	, Cn1
	.byte		N36	, En1, v056
	.byte	W24
	.byte		N12	, Cs1, v127
	.byte	W12
	.byte			Cn1
	.byte		N36	, En1, v056
	.byte	W24
	.byte		N12	, Gn1, v127
	.byte	W12
	.byte			Cn1
	.byte		N36	, En1, v056
	.byte	W24
	.byte	W12
	.byte		N12	, Cs1, v127
	.byte	W12
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Cn1
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			Gn1
	.byte	W06
	.byte			Cn1
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N12	, Cs1
	.byte	W12
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N12	, Cn1
	.byte		N36	, En1, v056
	.byte	W24
	.byte		N12	, Cs1, v127
	.byte	W12
	.byte			Cn1
	.byte		N36	, En1, v056
	.byte	W24
	.byte		N12	, Gn1, v127
	.byte	W12
	.byte			Cn1
	.byte		N12	, En1, v056
	.byte	W12
	.byte			Cn1, v127
	.byte		TIE	, Cs2
	.byte	W12
	.byte	W96
	.byte		EOT	
	.byte	FINE

	                                                        

	.global song001_2
song001_2:	            
	.byte	KEYSH	, 0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	VOICE	, 11
	.byte	VOL	, v047
	.byte	PAN	, c_v
	.byte	BENDR	, 13
	.byte	LFOS	, 23
	.byte	LFODL	, 22
	.byte	MOD	, 3
	.byte	MODT	, 0
	.byte	W96
	.byte	W96
	.byte	W36
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	VOL	, v055
	.byte	W23
	.byte	BEND	, c_v-14
	.byte	W01
	.byte		N15	, Gs3, v120
	.byte	W01
	.byte	BEND	, c_v-10
	.byte	W01
	.byte		c_v-5
	.byte	W02
	.byte		c_v
	.byte	W14
	.byte		c_v-12
	.byte	W01
	.byte		c_v-25
	.byte	W01
	.byte		c_v-37
	.byte	W01
	.byte		c_v-60
	.byte	W01
	.byte		c_v-52
	.byte	W01
	.byte		c_v-34
	.byte	W01
	.byte		c_v-25
	.byte		N11	, Gs3, v104
	.byte	W01
	.byte	BEND	, c_v-16
	.byte	W01
	.byte		c_v
	.byte	W10
	.byte		N11	, Cn4, v120
	.byte	W12
	.byte		N10	, Gs3, v112
	.byte	W12
	.byte		TIE	, Dn4, v127
	.byte	W12
	.byte	W02
	.byte	VOL	, v053
	.byte	W01
	.byte		v048
	.byte	W01
	.byte		v044
	.byte	W01
	.byte		v038
	.byte	W01
	.byte		v033
	.byte	W01
	.byte		v029
	.byte	W01
	.byte		v023
	.byte	W01
	.byte		v017
	.byte	W01
	.byte		v013
	.byte	W01
	.byte		v007
	.byte	W01
	.byte		v001
	.byte	W01
	.byte		v000
	.byte	W01
	.byte		v000
	.byte	W01
	.byte		v002
	.byte	W01
	.byte		v003
	.byte	W01
	.byte		v005
	.byte	W01
	.byte		v006
	.byte	W01
	.byte		v008
	.byte	W01
	.byte		v009
	.byte	W01
	.byte		v011
	.byte	W01
	.byte		v013
	.byte	W01
	.byte		v014
	.byte	W01
	.byte		v016
	.byte	W01
	.byte		v017
	.byte	W01
	.byte		v018
	.byte	W01
	.byte		v019
	.byte	W01
	.byte		v021
	.byte	W01
	.byte		v022
	.byte	W01
	.byte		v024
	.byte	W01
	.byte		v025
	.byte	W01
	.byte		v027
	.byte	W01
	.byte		v028
	.byte	W01
	.byte		v029
	.byte	W01
	.byte		v031
	.byte	W01
	.byte		v032
	.byte	W01
	.byte		v034
	.byte	W01
	.byte		v034
	.byte	W01
	.byte		v036
	.byte	W01
	.byte		v037
	.byte	W01
	.byte		v039
	.byte	W01
	.byte		v040
	.byte	W01
	.byte		v042
	.byte	W01
	.byte		v043
	.byte	W01
	.byte		v045
	.byte	W01
	.byte		v046
	.byte	W01
	.byte		v048
	.byte	W01
	.byte		v050
	.byte	W01
	.byte		v051
	.byte	W01
	.byte		v052
	.byte	W01
	.byte		v053
	.byte	W01
	.byte		v055
	.byte	W32
	.byte	W02
	.byte		EOT	
	.byte	W10
	.byte	W23
	.byte	BEND	, c_v-14
	.byte	W01
	.byte		N18	, Gs3, v120
	.byte	W01
	.byte	BEND	, c_v-10
	.byte	W01
	.byte		c_v-5
	.byte	W02
	.byte		c_v
	.byte	W11
	.byte		c_v
	.byte	W01
	.byte		c_v-7
	.byte	W01
	.byte		c_v-22
	.byte	W01
	.byte		c_v-30
	.byte	W01
	.byte		c_v-37
	.byte	W01
	.byte		c_v-52
	.byte	W01
	.byte		c_v-60
	.byte	W01
	.byte		c_v-52
	.byte	W01
	.byte		c_v-34
	.byte	W01
	.byte		c_v-25
	.byte		N11	, Gs3, v096
	.byte	W01
	.byte	BEND	, c_v-16
	.byte	W01
	.byte		c_v
	.byte	W10
	.byte		N10	, Cn4, v116
	.byte	W12
	.byte		N09	, Gs3, v108
	.byte	W12
	.byte		N10	, Ds4, v120
	.byte	W10
	.byte	BEND	, c_v
	.byte	W02
	.byte	W12
	.byte		N32	, Dn4, v127
	.byte	W09
	.byte	VOL	, v050
	.byte	W01
	.byte		v040
	.byte	W01
	.byte		v034
	.byte	W01
	.byte		v025
	.byte	W01
	.byte		v016
	.byte	W03
	.byte		v017
	.byte	W01
	.byte		v017
	.byte	W01
	.byte		v018
	.byte	W02
	.byte		v019
	.byte	W01
	.byte		v020
	.byte	W01
	.byte		v021
	.byte	W01
	.byte		v022
	.byte	W02
	.byte		v023
	.byte	W01
	.byte		v024
	.byte	W01
	.byte		v025
	.byte	W01
	.byte		v026
	.byte	W02
	.byte		v027
	.byte	W01
	.byte		v028
	.byte	W01
	.byte		v029
	.byte	W01
	.byte		v030
	.byte	W02
	.byte		v031
	.byte	W01
	.byte		v032
	.byte		N11	
	.byte	W01
	.byte	VOL	, v033
	.byte	W01
	.byte		v034
	.byte	W02
	.byte		v034
	.byte	W01
	.byte		v035
	.byte	W01
	.byte		v036
	.byte	W01
	.byte		v037
	.byte	W02
	.byte		v038
	.byte	W01
	.byte		v039
	.byte	W01
	.byte		v040
	.byte	W01
	.byte		v041
	.byte		N11	, Ds4
	.byte	W02
	.byte	VOL	, v042
	.byte	W01
	.byte		v043
	.byte	W01
	.byte		v044
	.byte	W01
	.byte		v045
	.byte	W02
	.byte		v046
	.byte	W01
	.byte		v047
	.byte	W01
	.byte		v048
	.byte	W01
	.byte		v049
	.byte	W02
	.byte		v050
	.byte		N23	, En4
	.byte	W01
	.byte	VOL	, v051
	.byte	W01
	.byte		v051
	.byte	W01
	.byte		v052
	.byte	W02
	.byte		v053
	.byte	W01
	.byte		v055
	.byte	W18
	.byte		TIE	, Fn3
	.byte	W96
	.byte	W44
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		N44	, Gs3
	.byte	W48
	.byte		N92	, Gn3
	.byte	W96
	.byte	BEND	, c_v
	.byte		N30	, Cn4
	.byte	W18
	.byte	BEND	, c_v
	.byte	W01
	.byte		c_v-4
	.byte	W02
	.byte		c_v-8
	.byte	W01
	.byte		c_v-13
	.byte	W02
	.byte		c_v-17
	.byte	W01
	.byte		c_v-22
	.byte	W02
	.byte		c_v-26
	.byte	W01
	.byte		c_v-31
	.byte	W01
	.byte		c_v-32
	.byte	W01
	.byte		c_v-35
	.byte	W01
	.byte		c_v-31
	.byte	W01
	.byte		c_v-25
	.byte	W01
	.byte		c_v-19
	.byte	W01
	.byte		c_v-7
	.byte	W01
	.byte		c_v
	.byte	W01
	.byte		c_v
	.byte		N30	
	.byte	W18
	.byte	BEND	, c_v
	.byte	W01
	.byte		c_v-4
	.byte	W02
	.byte		c_v-8
	.byte	W01
	.byte		c_v-13
	.byte	W02
	.byte		c_v-17
	.byte	W01
	.byte		c_v-22
	.byte	W02
	.byte		c_v-26
	.byte	W01
	.byte		c_v-31
	.byte	W01
	.byte		c_v-32
	.byte	W01
	.byte		c_v-35
	.byte	W01
	.byte		c_v-31
	.byte	W01
	.byte		c_v-25
	.byte	W01
	.byte		c_v-19
	.byte	W01
	.byte		c_v-7
	.byte	W01
	.byte		c_v
	.byte	W01
	.byte		c_v
	.byte		N30	
	.byte	W18
	.byte	BEND	, c_v
	.byte	W01
	.byte		c_v-4
	.byte	W02
	.byte		c_v-8
	.byte	W01
	.byte		c_v-13
	.byte	W02
	.byte		c_v-17
	.byte	W01
	.byte		c_v-22
	.byte	W02
	.byte		c_v-26
	.byte	W01
	.byte		c_v-31
	.byte	W01
	.byte		c_v-32
	.byte	W01
	.byte		c_v-35
	.byte	W01
	.byte		c_v-31
	.byte	W01
	.byte		c_v-25
	.byte	W01
	.byte		c_v-19
	.byte	W01
	.byte		c_v-7
	.byte	W01
	.byte		c_v
	.byte	W01
	.byte		N23	
	.byte	W24
	.byte		N11	, Bn3
	.byte	W12
	.byte			As3
	.byte	W12
	.byte			An3
	.byte	W12
	.byte		N68	, Gs3
	.byte	W24
	.byte	W96
	.byte	W48
	.byte		N44	
	.byte	W48
	.byte		N96	, Bn3
	.byte	W96
	.byte	W24
	.byte		N09	, Fn3
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte		N08	, As3
	.byte	W12
	.byte		N32	, Ds4
	.byte	W36
	.byte			Gn3
	.byte	W36
	.byte		N28	, Gs3
	.byte	W36
	.byte		N76	, Cs4
	.byte	W24
	.byte	W60
	.byte		N10	, As3
	.byte	W12
	.byte		N20	, Bn3
	.byte	W22
	.byte	BEND	, c_v
	.byte	W01
	.byte		c_v-13
	.byte	W01
	.byte		c_v-27
	.byte		N72	, Cn4
	.byte	W01
	.byte	BEND	, c_v-55
	.byte	W01
	.byte		c_v-59
	.byte	W12
	.byte		c_v-59
	.byte	W01
	.byte		c_v-56
	.byte	W02
	.byte		c_v-52
	.byte	W01
	.byte		c_v-48
	.byte	W02
	.byte		c_v-44
	.byte	W01
	.byte		c_v-40
	.byte	W02
	.byte		c_v-37
	.byte	W01
	.byte		c_v-33
	.byte	W02
	.byte		c_v-29
	.byte	W01
	.byte		c_v-25
	.byte	W02
	.byte		c_v-21
	.byte	W01
	.byte		c_v-18
	.byte	W02
	.byte		c_v-14
	.byte	W01
	.byte		c_v-10
	.byte	W02
	.byte		c_v-6
	.byte	W01
	.byte		c_v-2
	.byte	W01
	.byte		c_v
	.byte	W13
	.byte		c_v
	.byte	W02
	.byte		c_v+4
	.byte	W01
	.byte		c_v+9
	.byte	W02
	.byte		c_v+13
	.byte	W01
	.byte		c_v+18
	.byte	W02
	.byte		c_v+22
	.byte	W01
	.byte		c_v+27
	.byte	W02
	.byte		c_v+31
	.byte	W01
	.byte		c_v+36
	.byte	W02
	.byte		c_v+40
	.byte	W01
	.byte		c_v+45
	.byte	W02
	.byte		c_v+50
	.byte	W01
	.byte		c_v+54
	.byte	W02
	.byte		c_v+60
	.byte	W02
	.byte		N12	
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte	FINE

	                                                        

	.global song001_3
song001_3:	            
	.byte	KEYSH	, 0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	VOICE	, 80
	.byte	VOL	, v120
	.byte	PAN	, c_v
	.byte	BENDR	, 3
	.byte	LFOS	, 31
	.byte	LFODL	, 0
	.byte	MOD	, 32
	.byte	MODT	, 2
	.byte	W96
	.byte	W96
	.byte	W36
	.byte		N22	, Ds3, v127
	.byte	W24
	.byte		N17	
	.byte	W18
	.byte		N05	, Dn3
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte		N07	, Ds3
	.byte	W24
	.byte		TIE	, Fn3
	.byte	W12
	.byte	W92
	.byte	W03
	.byte		EOT	
	.byte	W01
song001_3_1:
	.byte	W24
	.byte		N17	, Ds3, v127
	.byte	W18
	.byte		N05	, Dn3
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte		N07	, Ds3
	.byte	W24
	.byte		N18	, Fn3
	.byte	W12
	.byte	PEND
	.byte	W12
	.byte		N78	
	.byte	W84
	.byte	W24
	.byte		N17	, Ds3
	.byte	W18
	.byte		N05	, Dn3
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte		N07	, Ds3
	.byte	W24
	.byte		TIE	, Fn3
	.byte	W12
	.byte	W92
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte	PATT	
		mPtr	song001_3_1
	.byte	W12
	.byte		N32	, Fn3, v127
	.byte	W36
	.byte		N11	, Fn3, v104
	.byte	W12
	.byte			Fs3, v112
	.byte	W12
	.byte		N19	, Gn3, v108
	.byte	W24
	.byte		TIE	, Gs3, v120
	.byte	W96
	.byte	W92
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		N92	, Gn3, v104
	.byte	W96
	.byte		N28	
	.byte	W36
	.byte		N30	, Gn3, v084
	.byte	W36
	.byte			Gn3, v116
	.byte	W24
	.byte	W12
	.byte		N21	, Gn3, v120
	.byte	W24
	.byte		N11	, Fs3, v112
	.byte	W12
	.byte			Fn3, v104
	.byte	W12
	.byte			En3, v092
	.byte	W12
	.byte		TIE	, Ds3, v096
	.byte	W24
	.byte	W96
	.byte	W92
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		TIE	, Dn3, v108
	.byte	W96
	.byte	W32
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		N14	, Dn3, v112
	.byte	W24
	.byte		N30	, Dn3, v108
	.byte	W30
	.byte	FINE

	                                                        

	.global song001_4
song001_4:	            
	.byte	KEYSH	, 0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	VOICE	, 87
	.byte	VOL	, v093
	.byte	PAN	, c_v
	.byte	BENDR	, 3
	.byte	LFOS	, 31
	.byte	LFODL	, 0
	.byte	MOD	, 32
	.byte	MODT	, 2
	.byte	W96
	.byte	W96
	.byte	W36
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
	.byte		N02	, Dn2, v040
	.byte	W03
	.byte			Ds2, v092
	.byte	W02
	.byte			Fn2, v044
	.byte	W03
	.byte		N01	, Gn2, v068
	.byte	W02
	.byte			An2, v096
	.byte	W02
	.byte			As2, v108
	.byte	W02
	.byte			Dn3, v120
	.byte	W01
	.byte		N02	, Ds3, v112
	.byte	W04
	.byte		N01	, An3, v116
	.byte	W01
	.byte			As3, v104
	.byte	W01
	.byte			Cn4, v092
	.byte	W02
	.byte		N02	, Dn4, v080
	.byte	W01
	.byte	W02
	.byte		N01	, Ds4, v020
	.byte	W01
	.byte		N04	, En4, v096
	.byte	W05
	.byte		N48	, Fn4, v092
	.byte	W48
	.byte	W03
	.byte		N04	, En4, v100
	.byte	W06
	.byte			Ds4, v096
	.byte	W06
	.byte		N05	, Cs4, v084
	.byte	W08
	.byte		N02	, As3, v032
	.byte	W04
	.byte		N05	, Ds4, v116
	.byte	W06
	.byte			Cs4, v096
	.byte	W07
	.byte		N04	, As3, v060
	.byte	W07
	.byte		N03	, Gs3, v068
	.byte	W05
	.byte		N06	, Cs4, v116
	.byte	W06
	.byte		N05	, As3, v096
	.byte	W06
	.byte			Gs3, v104
	.byte	W07
	.byte			Fn3, v084
	.byte	W16
	.byte			Gs3, v108
	.byte	W08
	.byte		N02	, Fn3, v056
	.byte	W05
	.byte		N05	, As3, v100
	.byte	W09
	.byte		N02	, Fn3, v028
	.byte	W03
	.byte		N05	, Bn3, v116
	.byte	W06
	.byte			As3, v088
	.byte	W06
	.byte		N06	, Gs3, v104
	.byte	W07
	.byte		N04	, Fn3, v084
	.byte	W05
	.byte		N06	, Bn3, v096
	.byte	W06
	.byte		N07	, Cn4, v104
	.byte	W12
	.byte		N05	, Bn3, v120
	.byte	W12
	.byte			As3, v096
	.byte	W11
	.byte			Gs3, v116
	.byte	W06
	.byte			Gn3, v092
	.byte	W07
	.byte		N04	, Fn3, v100
	.byte	W06
	.byte		N05	, En3, v088
	.byte	W06
	.byte			Gn3, v116
	.byte	W07
	.byte			Cs3, v108
	.byte	W11
	.byte		N09	, Ds3, v116
	.byte	W10
	.byte		N04	, Cs3, v104
	.byte	W02
	.byte	W04
	.byte		N03	, Cn3, v076
	.byte	W04
	.byte		N04	, Ds3, v084
	.byte	W05
	.byte		N03	, Dn3, v088
	.byte	W03
	.byte		N05	, Cs3, v072
	.byte	W06
	.byte			Cn3, v100
	.byte	W06
	.byte			Bn2, v092
	.byte	W05
	.byte		N03	, As2, v060
	.byte	W06
	.byte		N05	, Gs2, v084
	.byte	W06
	.byte			Gn2
	.byte	W07
	.byte		N02	, Fn2, v068
	.byte	W06
	.byte		N04	, Gs2, v108
	.byte	W06
	.byte		N02	, Fn2, v048
	.byte	W05
	.byte		N05	, Gn2, v076
	.byte	W06
	.byte			Gs2, v096
	.byte	W07
	.byte			As2, v064
	.byte	W06
	.byte			Bn2, v072
	.byte	W06
	.byte		N06	, Cn3
	.byte	W02
	.byte	W05
	.byte		N05	, Ds3, v092
	.byte	W06
	.byte			Gn3, v080
	.byte	W07
	.byte		N06	, As3, v108
	.byte	W08
	.byte		N04	, Gn3, v024
	.byte	W04
	.byte		N07	, Gs3, v100
	.byte	W08
	.byte		N05	, Gn3, v072
	.byte	W05
	.byte		N03	, Fs3, v076
	.byte	W05
	.byte		N04	, Fn3, v084
	.byte	W06
	.byte		N05	, En3, v080
	.byte	W06
	.byte		N03	, Ds3, v068
	.byte	W06
	.byte		N06	, Cs3
	.byte	W30
	.byte	W08
	.byte		N01	, Bn2, v080
	.byte	W02
	.byte		N02	, As2, v040
	.byte	W04
	.byte		N10	, Cn3, v096
	.byte	W12
	.byte		N23	, Ds3, v124
	.byte	W24
	.byte		N03	, Cn3, v092
	.byte	W05
	.byte		N04	, Ds3, v084
	.byte	W05
	.byte		N12	, Fs3, v124
	.byte	W13
	.byte		N04	, Ds3, v072
	.byte	W06
	.byte			Fs3, v100
	.byte	W05
	.byte		N12	, Gs3, v124
	.byte	W12
	.byte		N03	, Fs3, v080
	.byte	W04
	.byte		N06	, Gs3, v064
	.byte	W07
	.byte		N12	, As3, v116
	.byte	W12
	.byte		N05	, Gs3, v096
	.byte	W07
	.byte			As3, v080
	.byte	W05
	.byte		N10	, Cn4, v120
	.byte	W12
	.byte		N02	, As3, v076
	.byte	W06
	.byte		N05	, Cn4, v100
	.byte	W06
	.byte		N11	, Ds4, v120
	.byte	W13
	.byte		N03	, Cn4, v052
	.byte	W06
	.byte		N05	, Ds4, v096
	.byte	W06
	.byte			Fn4, v120
	.byte	W06
	.byte		N06	, Fs4, v124
	.byte	W06
	.byte		N22	, Gn4, v112
	.byte	W24
	.byte	W01
	.byte		N04	, Fs4
	.byte	W06
	.byte			Fn4
	.byte	W05
	.byte			Ds4, v096
	.byte	W06
	.byte		N05	, Dn4
	.byte	W06
	.byte		N04	, Cn4, v084
	.byte	W07
	.byte			As3, v068
	.byte	W06
	.byte		N02	, Bn3, v104
	.byte	W05
	.byte		N06	, Gn4, v124
	.byte	W07
	.byte		N04	, Bn3, v092
	.byte	W06
	.byte		N02	, As3, v072
	.byte	W06
	.byte		N04	, Gs3, v104
	.byte	W05
	.byte			Gn3, v076
	.byte	W06
	.byte		N05	, Fn3, v084
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte		N06	, Cn4, v108
	.byte	W07
	.byte		N04	, Gn3, v076
	.byte	W05
	.byte			Fn3, v092
	.byte	W06
	.byte		N02	, En3, v088
	.byte	W05
	.byte			Ds3, v092
	.byte	W05
	.byte		N05	, Cs3
	.byte	W06
	.byte		N02	, Bn2, v048
	.byte	W02
	.byte		N04	, As2, v088
	.byte	W05
	.byte		N05	, Ds3, v120
	.byte	W06
	.byte		N04	, Cs3, v112
	.byte	W05
	.byte		N02	, Bn2, v080
	.byte	W03
	.byte			As2, v096
	.byte	W02
	.byte		N05	, An2, v072
	.byte	W06
	.byte		N03	, Gn2, v056
	.byte	W04
	.byte		N02	, Fn2, v060
	.byte	W03
	.byte		N08	, Ds2, v088
	.byte	W08
	.byte		N04	, As1, v084
	.byte	W06
	.byte	W96
	.byte	W96
	.byte		N36	, As1, v124
	.byte		N36	, As2, v104
	.byte	W36
	.byte			Bn1, v124
	.byte		N36	, Bn2, v104
	.byte	W36
	.byte		N12	, Cn2, v124
	.byte		N12	, Cn3, v104
	.byte	W12
	.byte			Cn2, v124
	.byte		N12	, Cn3, v104
	.byte	W12
	.byte	FINE

	                                                        

	.global song001_5
song001_5:	            
	.byte	KEYSH	, 0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	VOICE	, 3
	.byte	VOL	, v066
	.byte	PAN	, c_v
	.byte	BENDR	, 3
	.byte	LFOS	, 23
	.byte	LFODL	, 22
	.byte	MOD	, 0
	.byte	MODT	, 0
	.byte	W96
	.byte	W96
	.byte	W36
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N06	, Gs3, v112
	.byte	W06
	.byte			Cn4, v108
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Gs4, v096
	.byte	W06
	.byte			As4, v108
	.byte	W06
	.byte			Cn5, v104
	.byte	W06
	.byte			Fn3, v108
	.byte	W06
	.byte			Gs3, v116
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Ds4, v096
	.byte	W06
	.byte			Fn4, v116
	.byte	W06
	.byte			Gs4, v124
	.byte	W06
	.byte			Cs3, v096
	.byte	W06
	.byte			Fs3, v116
	.byte	W06
	.byte			Gs3, v112
	.byte	W06
	.byte			As3, v104
	.byte	W06
	.byte			Cs4, v108
	.byte	W06
	.byte			Fs4, v120
	.byte	W06
	.byte			Gs4, v108
	.byte	W06
	.byte			As4, v116
	.byte	W06
	.byte			Cs5
	.byte	W06
	.byte			As4, v108
	.byte	W06
	.byte			Fs4, v112
	.byte	W06
	.byte			Cs4, v104
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			Fs4, v124
	.byte	W06
	.byte			Cs4, v112
	.byte	W06
	.byte			As3, v088
	.byte	W06
	.byte			Cs4, v124
	.byte	W06
	.byte			As3, v108
	.byte	W06
	.byte			Fs3, v116
	.byte	W06
	.byte			Cs3, v127
	.byte	W06
	.byte		N36	, Cn4, v112
	.byte	W36
	.byte		N36	
	.byte	W36
	.byte		N12	, Cn4, v108
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte	FINE

	                                                        

	.global song001_6
song001_6:	            
	.byte	KEYSH	, 0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	VOICE	, 72
	.byte	VOL	, v120
	.byte	PAN	, c_v
	.byte	BENDR	, 3
	.byte	LFOS	, 31
	.byte	LFODL	, 0
	.byte	MOD	, 32
	.byte	MODT	, 2
	.byte	W96
	.byte	W96
	.byte	W36
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N36	, Cn3, v096
	.byte	W36
	.byte			Fn3
	.byte	W36
	.byte		TIE	, As2
	.byte	W24
	.byte	W96
	.byte		EOT	
	.byte	FINE

	                                                        

	.global song001_7
song001_7:	            
	.byte	KEYSH	, 0
	.byte	VOICE	, 74
	.byte	VOL	, v070
	.byte	PAN	, c_v
	.byte	BENDR	, 12
	.byte	LFOS	, 56
	.byte	LFODL	, 0
	.byte	MOD	, 0
	.byte	MODT	, 2
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
	.byte	VOL	, v070
	.byte		TIE	, Fn1, v120
	.byte	W24
	.byte	W24
	.byte			As2
	.byte	W48
	.byte			Ds3
	.byte	W24
	.byte	W23
	.byte		EOT	, Fn1
	.byte	W01
	.byte		TIE	, Fn2
	.byte		TIE	, Gs3
	.byte	W08
	.byte	VOL	, v070
	.byte	W01
	.byte		v068
	.byte	W01
	.byte		v067
	.byte	W01
	.byte		v065
	.byte	W01
	.byte		v063
	.byte	W01
	.byte		v061
	.byte	W01
	.byte		v059
	.byte	W01
	.byte		v057
	.byte	W01
	.byte		v055
	.byte	W01
	.byte		v053
	.byte	W01
	.byte		v051
	.byte	W01
	.byte		v050
	.byte	W01
	.byte		v048
	.byte	W01
	.byte		v046
	.byte	W01
	.byte		v044
	.byte	W01
	.byte		v042
	.byte	W01
	.byte		v040
	.byte	W01
	.byte		v038
	.byte	W01
	.byte		v037
	.byte	W04
	.byte		v038
	.byte	W02
	.byte		v039
	.byte	W03
	.byte		v040
	.byte	W02
	.byte		v041
	.byte	W02
	.byte		v042
	.byte	W02
	.byte		v043
	.byte	W03
	.byte		v044
	.byte	W02
	.byte		v045
	.byte	W02
	.byte		v046
	.byte	W03
	.byte		v047
	.byte	W02
	.byte		v048
	.byte	W02
	.byte		v049
	.byte	W02
	.byte		v050
	.byte	W03
	.byte		v051
	.byte	W02
	.byte		v051
	.byte	W02
	.byte		v052
	.byte	W02
	.byte		v053
	.byte	W03
	.byte		v054
	.byte	W02
	.byte		v055
	.byte	W01
	.byte	W01
	.byte		v056
	.byte	W03
	.byte		v057
	.byte	W02
	.byte		v058
	.byte	W02
	.byte		v059
	.byte	W02
	.byte		v060
	.byte	W03
	.byte		v061
	.byte	W02
	.byte		v062
	.byte	W02
	.byte		v063
	.byte	W02
	.byte		v064
	.byte	W03
	.byte		v065
	.byte	W02
	.byte		v066
	.byte	W02
	.byte		v067
	.byte	W03
	.byte		v068
	.byte	W02
	.byte		v068
	.byte	W02
	.byte		v069
	.byte	W02
	.byte		v070
	.byte	W03
	.byte		v071
	.byte	W02
	.byte		v072
	.byte	W02
	.byte		v073
	.byte	W03
	.byte		v074
	.byte	W02
	.byte		v075
	.byte	W02
	.byte		v076
	.byte	W02
	.byte		v077
	.byte	W03
	.byte		v078
	.byte	W02
	.byte		v079
	.byte	W02
	.byte		v080
	.byte	W02
	.byte		v081
	.byte	W03
	.byte		v082
	.byte	W02
	.byte		v083
	.byte	W02
	.byte		v084
	.byte	W03
	.byte		v085
	.byte	W02
	.byte		v085
	.byte	W02
	.byte		v086
	.byte	W02
	.byte		v087
	.byte	W03
	.byte		v088
	.byte	W02
	.byte		v089
	.byte	W02
	.byte		v090
	.byte	W02
	.byte		v091
	.byte	W01
	.byte		v092
	.byte	W17
	.byte		EOT	, Fn2
	.byte			As2
	.byte			Ds3
	.byte			Gs3
	.byte	W01
	.byte		N04	, Fn2, v060
	.byte		N04	, Fn3
	.byte	W04
	.byte			Gn2, v068
	.byte		N04	, Gn3
	.byte	W04
	.byte			Gs2, v080
	.byte		N04	, Gs3
	.byte	W04
	.byte			As2, v088
	.byte		N04	, As3
	.byte	W04
	.byte			Cn3, v100
	.byte		N04	, Cn4
	.byte	W04
	.byte			Dn3, v108
	.byte		N04	, Dn4
	.byte	W04
	.byte			En3, v120
	.byte		N04	, En4
	.byte	W04
	.byte	VOL	, v094
	.byte		N16	, Fn2, v127
	.byte		N16	, Fn3
	.byte	W23
	.byte	BEND	, c_v-14
	.byte	W01
	.byte		N16	, Gs2, v100
	.byte		N16	, Cn3
	.byte	W01
	.byte	BEND	, c_v-10
	.byte	W01
	.byte		c_v-5
	.byte	W02
	.byte		c_v
	.byte	W14
	.byte		c_v-12
	.byte	W01
	.byte		c_v-25
	.byte	W01
	.byte		c_v-37
	.byte	W01
	.byte		c_v-60
	.byte	W01
	.byte		c_v-52
	.byte	W01
	.byte		c_v-34
	.byte	W01
	.byte		c_v-25
	.byte		N11	, Gs2, v104
	.byte		N11	, Cn3
	.byte	W01
	.byte	BEND	, c_v-16
	.byte	W01
	.byte		c_v
	.byte	W10
	.byte		N11	, Cn3, v116
	.byte		N11	, Ds3
	.byte	W12
	.byte		N09	, Gs2, v112
	.byte		N09	, Cn3
	.byte	W12
	.byte		TIE	, Dn3, v124
	.byte		TIE	, Fn3
	.byte	W12
	.byte	W02
	.byte	VOL	, v092
	.byte	W01
	.byte		v086
	.byte	W01
	.byte		v083
	.byte	W01
	.byte		v077
	.byte	W01
	.byte		v071
	.byte	W01
	.byte		v068
	.byte	W01
	.byte		v062
	.byte	W01
	.byte		v056
	.byte	W01
	.byte		v051
	.byte	W01
	.byte		v046
	.byte	W01
	.byte		v040
	.byte	W01
	.byte		v038
	.byte	W01
	.byte		v039
	.byte	W01
	.byte		v041
	.byte	W01
	.byte		v042
	.byte	W01
	.byte		v044
	.byte	W01
	.byte		v045
	.byte	W01
	.byte		v047
	.byte	W01
	.byte		v048
	.byte	W01
	.byte		v050
	.byte	W01
	.byte		v051
	.byte	W01
	.byte		v052
	.byte	W01
	.byte		v054
	.byte	W01
	.byte		v055
	.byte	W01
	.byte		v057
	.byte	W01
	.byte		v058
	.byte	W01
	.byte		v060
	.byte	W01
	.byte		v061
	.byte	W01
	.byte		v063
	.byte	W01
	.byte		v064
	.byte	W01
	.byte		v066
	.byte	W01
	.byte		v067
	.byte	W01
	.byte		v068
	.byte	W01
	.byte		v069
	.byte	W01
	.byte		v070
	.byte	W01
	.byte		v072
	.byte	W01
	.byte		v073
	.byte	W01
	.byte		v075
	.byte	W01
	.byte		v076
	.byte	W01
	.byte		v078
	.byte	W01
	.byte		v079
	.byte	W01
	.byte		v081
	.byte	W01
	.byte		v082
	.byte	W01
	.byte		v084
	.byte	W01
	.byte		v085
	.byte	W01
	.byte		v086
	.byte	W01
	.byte		v088
	.byte	W01
	.byte		v089
	.byte	W01
	.byte		v091
	.byte	W01
	.byte		v092
	.byte	W01
	.byte		v094
	.byte	W40
	.byte	W01
	.byte		EOT	, Dn3
	.byte			Fn3
	.byte	W03
	.byte	W23
	.byte	BEND	, c_v-14
	.byte	W01
	.byte		N15	, Gs2, v104
	.byte		N15	, Cn3
	.byte	W01
	.byte	BEND	, c_v-10
	.byte	W01
	.byte		c_v-5
	.byte	W02
	.byte		c_v
	.byte	W11
	.byte		c_v
	.byte	W01
	.byte		c_v-7
	.byte	W01
	.byte		c_v-22
	.byte	W01
	.byte		c_v-30
	.byte	W01
	.byte		c_v-37
	.byte	W01
	.byte		c_v-52
	.byte	W01
	.byte		c_v-60
	.byte	W01
	.byte		c_v-52
	.byte	W01
	.byte		c_v-34
	.byte	W01
	.byte		c_v-25
	.byte		N11	, Gs2, v108
	.byte		N11	, Cn3
	.byte	W01
	.byte	BEND	, c_v-16
	.byte	W01
	.byte		c_v
	.byte	W10
	.byte		N11	, Cn3, v112
	.byte		N11	, Ds3
	.byte	W12
	.byte		N10	, Gs2, v096
	.byte		N10	, Cn3
	.byte	W12
	.byte			Ds3, v120
	.byte		N10	, Gn3
	.byte	W10
	.byte	BEND	, c_v
	.byte	W02
	.byte	W12
	.byte		N80	, Dn3
	.byte		N80	, Fn3
	.byte	W09
	.byte	VOL	, v088
	.byte	W01
	.byte		v079
	.byte	W01
	.byte		v073
	.byte	W01
	.byte		v064
	.byte	W01
	.byte		v054
	.byte	W03
	.byte		v055
	.byte	W01
	.byte		v056
	.byte	W01
	.byte		v057
	.byte	W02
	.byte		v058
	.byte	W01
	.byte		v059
	.byte	W01
	.byte		v060
	.byte	W01
	.byte		v061
	.byte	W02
	.byte		v062
	.byte	W01
	.byte		v063
	.byte	W01
	.byte		v064
	.byte	W01
	.byte		v065
	.byte	W02
	.byte		v066
	.byte	W01
	.byte		v067
	.byte	W01
	.byte		v068
	.byte	W01
	.byte		v068
	.byte	W02
	.byte		v069
	.byte	W01
	.byte		v070
	.byte	W01
	.byte		v071
	.byte	W01
	.byte		v072
	.byte	W02
	.byte		v073
	.byte	W01
	.byte		v074
	.byte	W01
	.byte		v075
	.byte	W01
	.byte		v076
	.byte	W02
	.byte		v077
	.byte	W01
	.byte		v078
	.byte	W01
	.byte		v079
	.byte	W01
	.byte		v080
	.byte	W02
	.byte		v081
	.byte	W01
	.byte		v082
	.byte	W01
	.byte		v083
	.byte	W01
	.byte		v084
	.byte	W02
	.byte		v085
	.byte	W01
	.byte		v085
	.byte	W01
	.byte		v086
	.byte	W01
	.byte		v087
	.byte	W02
	.byte		v088
	.byte	W01
	.byte		v089
	.byte	W01
	.byte		v090
	.byte	W01
	.byte		v091
	.byte	W02
	.byte		v092
	.byte	W01
	.byte		v094
	.byte	W18
	.byte		v094
	.byte	W23
	.byte	BEND	, c_v-14
	.byte	W01
	.byte		N15	, Cn3
	.byte		N15	, Fn3
	.byte	W01
	.byte	BEND	, c_v-10
	.byte	W01
	.byte		c_v-5
	.byte	W02
	.byte		c_v
	.byte	W14
	.byte		c_v-12
	.byte	W01
	.byte		c_v-25
	.byte	W01
	.byte		c_v-37
	.byte	W01
	.byte		c_v-60
	.byte	W01
	.byte		c_v-52
	.byte	W01
	.byte		c_v-34
	.byte	W01
	.byte		c_v-25
	.byte		N11	, Cn3, v104
	.byte		N11	, Fn3
	.byte	W01
	.byte	BEND	, c_v-16
	.byte	W01
	.byte		c_v
	.byte	W10
	.byte		N11	, Ds3, v120
	.byte		N11	, Gs3
	.byte	W12
	.byte		N10	, Cn3, v112
	.byte		N10	, Fn3
	.byte	W12
	.byte		TIE	, Fn3, v127
	.byte		TIE	, As3
	.byte	W12
	.byte	W02
	.byte	VOL	, v092
	.byte	W01
	.byte		v086
	.byte	W01
	.byte		v083
	.byte	W01
	.byte		v077
	.byte	W01
	.byte		v071
	.byte	W01
	.byte		v068
	.byte	W01
	.byte		v062
	.byte	W01
	.byte		v056
	.byte	W01
	.byte		v051
	.byte	W01
	.byte		v046
	.byte	W01
	.byte		v040
	.byte	W01
	.byte		v038
	.byte	W01
	.byte		v039
	.byte	W01
	.byte		v041
	.byte	W01
	.byte		v042
	.byte	W01
	.byte		v044
	.byte	W01
	.byte		v045
	.byte	W01
	.byte		v047
	.byte	W01
	.byte		v048
	.byte	W01
	.byte		v050
	.byte	W01
	.byte		v051
	.byte	W01
	.byte		v052
	.byte	W01
	.byte		v054
	.byte	W01
	.byte		v055
	.byte	W01
	.byte		v057
	.byte	W01
	.byte		v058
	.byte	W01
	.byte		v060
	.byte	W01
	.byte		v061
	.byte	W01
	.byte		v063
	.byte	W01
	.byte		v064
	.byte	W01
	.byte		v066
	.byte	W01
	.byte		v067
	.byte	W01
	.byte		v068
	.byte	W01
	.byte		v069
	.byte	W01
	.byte		v070
	.byte	W01
	.byte		v072
	.byte	W01
	.byte		v073
	.byte	W01
	.byte		v075
	.byte	W01
	.byte		v076
	.byte	W01
	.byte		v078
	.byte	W01
	.byte		v079
	.byte	W01
	.byte		v081
	.byte	W01
	.byte		v082
	.byte	W01
	.byte		v084
	.byte	W01
	.byte		v085
	.byte	W01
	.byte		v086
	.byte	W01
	.byte		v088
	.byte	W01
	.byte		v089
	.byte	W01
	.byte		v091
	.byte	W01
	.byte		v092
	.byte	W01
	.byte		v094
	.byte	W32
	.byte	W02
	.byte		EOT	, Fn3
	.byte			As3
	.byte	W10
	.byte	W23
	.byte	BEND	, c_v-14
	.byte	W01
	.byte		N18	, Cn3, v120
	.byte		N18	, Fn3
	.byte	W01
	.byte	BEND	, c_v-10
	.byte	W01
	.byte		c_v-5
	.byte	W02
	.byte		c_v
	.byte	W11
	.byte		c_v
	.byte	W01
	.byte		c_v-7
	.byte	W01
	.byte		c_v-22
	.byte	W01
	.byte		c_v-30
	.byte	W01
	.byte		c_v-37
	.byte	W01
	.byte		c_v-52
	.byte	W01
	.byte		c_v-60
	.byte	W01
	.byte		c_v-52
	.byte	W01
	.byte		c_v-34
	.byte	W01
	.byte		c_v-25
	.byte		N11	, Cn3, v096
	.byte		N11	, Fn3
	.byte	W01
	.byte	BEND	, c_v-16
	.byte	W01
	.byte		c_v
	.byte	W10
	.byte		N10	, Fn3, v116
	.byte		N10	, Gs3
	.byte	W12
	.byte		N09	, Cn3, v108
	.byte		N09	, Fn3
	.byte	W12
	.byte		N10	, Gs3, v120
	.byte		N10	, Cn4
	.byte	W10
	.byte	BEND	, c_v
	.byte	W02
	.byte	W12
	.byte		N32	, Fn3, v127
	.byte		N32	, As3
	.byte	W09
	.byte	VOL	, v088
	.byte	W01
	.byte		v079
	.byte	W01
	.byte		v073
	.byte	W01
	.byte		v064
	.byte	W01
	.byte		v054
	.byte	W03
	.byte		v055
	.byte	W01
	.byte		v056
	.byte	W01
	.byte		v057
	.byte	W02
	.byte		v058
	.byte	W01
	.byte		v059
	.byte	W01
	.byte		v060
	.byte	W01
	.byte		v061
	.byte	W02
	.byte		v062
	.byte	W01
	.byte		v063
	.byte	W01
	.byte		v064
	.byte	W01
	.byte		v065
	.byte	W02
	.byte		v066
	.byte	W01
	.byte		v067
	.byte	W01
	.byte		v068
	.byte	W01
	.byte		v068
	.byte	W02
	.byte		v069
	.byte	W01
	.byte		v070
	.byte		N11	, Fn3
	.byte		N11	, As3
	.byte	W01
	.byte	VOL	, v071
	.byte	W01
	.byte		v072
	.byte	W02
	.byte		v073
	.byte	W01
	.byte		v074
	.byte	W01
	.byte		v075
	.byte	W01
	.byte		v076
	.byte	W02
	.byte		v077
	.byte	W01
	.byte		v078
	.byte	W01
	.byte		v079
	.byte	W01
	.byte		v080
	.byte		N11	, Fs3
	.byte		N11	, Bn3
	.byte	W02
	.byte	VOL	, v081
	.byte	W01
	.byte		v082
	.byte	W01
	.byte		v083
	.byte	W01
	.byte		v084
	.byte	W02
	.byte		v085
	.byte	W01
	.byte		v085
	.byte	W01
	.byte		v086
	.byte	W01
	.byte		v087
	.byte	W02
	.byte		v088
	.byte		N23	, Gn3
	.byte		N23	, Cn4
	.byte	W01
	.byte	VOL	, v089
	.byte	W01
	.byte		v090
	.byte	W01
	.byte		v091
	.byte	W02
	.byte		v092
	.byte	W01
	.byte		v094
	.byte	W18
	.byte		N36	, Gs3
	.byte		N36	, Cs4
	.byte	W01
	.byte	BEND	, c_v
	.byte	W16
	.byte		c_v
	.byte	W01
	.byte		c_v-5
	.byte	W02
	.byte		c_v-10
	.byte	W01
	.byte		c_v-15
	.byte	W02
	.byte		c_v-20
	.byte	W01
	.byte		c_v-25
	.byte	W02
	.byte		c_v-30
	.byte	W01
	.byte		c_v-36
	.byte	W02
	.byte		c_v-41
	.byte	W01
	.byte		c_v-46
	.byte	W02
	.byte		c_v-51
	.byte	W01
	.byte		c_v-56
	.byte	W02
	.byte		c_v-64
	.byte	W09
	.byte		c_v-30
	.byte	W01
	.byte		c_v
	.byte	W03
	.byte		N92	, Gs2
	.byte	W48
	.byte			Cs3
	.byte	W48
	.byte		N44	, Fn3
	.byte	W48
	.byte		N92	, Cn3
	.byte		N92	, En3
	.byte	W96
	.byte	BEND	, c_v
	.byte		N30	
	.byte		N30	, Gn3
	.byte	W18
	.byte	BEND	, c_v
	.byte	W01
	.byte		c_v-4
	.byte	W02
	.byte		c_v-8
	.byte	W01
	.byte		c_v-13
	.byte	W02
	.byte		c_v-17
	.byte	W01
	.byte		c_v-22
	.byte	W02
	.byte		c_v-26
	.byte	W01
	.byte		c_v-31
	.byte	W01
	.byte		c_v-32
	.byte	W01
	.byte		c_v-35
	.byte	W01
	.byte		c_v-31
	.byte	W01
	.byte		c_v-25
	.byte	W01
	.byte		c_v-19
	.byte	W01
	.byte		c_v-7
	.byte	W01
	.byte		c_v
	.byte	W01
	.byte		c_v
	.byte		N30	, En3
	.byte		N30	, Gn3
	.byte	W18
	.byte	BEND	, c_v
	.byte	W01
	.byte		c_v-4
	.byte	W02
	.byte		c_v-8
	.byte	W01
	.byte		c_v-13
	.byte	W02
	.byte		c_v-17
	.byte	W01
	.byte		c_v-22
	.byte	W02
	.byte		c_v-26
	.byte	W01
	.byte		c_v-31
	.byte	W01
	.byte		c_v-32
	.byte	W01
	.byte		c_v-35
	.byte	W01
	.byte		c_v-31
	.byte	W01
	.byte		c_v-25
	.byte	W01
	.byte		c_v-19
	.byte	W01
	.byte		c_v-7
	.byte	W01
	.byte		c_v
	.byte	W01
	.byte		c_v
	.byte		N30	, En3
	.byte		N30	, Gn3
	.byte	W18
	.byte	BEND	, c_v
	.byte	W01
	.byte		c_v-4
	.byte	W02
	.byte		c_v-8
	.byte	W01
	.byte		c_v-13
	.byte	W02
	.byte		c_v-17
	.byte	W01
	.byte		c_v-22
	.byte	W02
	.byte		c_v-26
	.byte	W01
	.byte		c_v-31
	.byte	W01
	.byte		c_v-32
	.byte	W01
	.byte		c_v-35
	.byte	W01
	.byte		c_v-31
	.byte	W01
	.byte		c_v-25
	.byte	W01
	.byte		c_v-19
	.byte	W01
	.byte		c_v-7
	.byte	W01
	.byte		c_v
	.byte	W01
	.byte		N23	, En3
	.byte		N23	, Gn3
	.byte	W24
	.byte		N11	, Ds3
	.byte		N11	, Fs3
	.byte	W12
	.byte			Dn3
	.byte		N11	, Fn3
	.byte	W12
	.byte			Cs3
	.byte		N11	, En3
	.byte	W12
	.byte		N68	, Cn3
	.byte		N68	, Ds3
	.byte	W24
	.byte	W48
	.byte		N92	, Gs2
	.byte	W48
	.byte			Cn3
	.byte	W48
	.byte		N44	, Ds3
	.byte	W48
	.byte		N96	, Dn3
	.byte		N96	, Gn3
	.byte	W96
	.byte	W24
	.byte		N09	, Fn2
	.byte		N09	, Fn3
	.byte	W12
	.byte			Gn2
	.byte		N09	, Gn3
	.byte	W12
	.byte		N08	, As2
	.byte		N08	, As3
	.byte	W12
	.byte		N32	, Ds3
	.byte		N32	, Ds4
	.byte	W36
	.byte			Ds3
	.byte		N32	, Cn4
	.byte	W36
	.byte		N28	, Fn3
	.byte		N28	, Cn4
	.byte	W36
	.byte		N76	, Fn3
	.byte		N76	, Cn4
	.byte	W24
	.byte	W60
	.byte		N10	, As2
	.byte		N10	, As3
	.byte	W12
	.byte		N20	, Bn2
	.byte		N20	, Bn3
	.byte	W24
	.byte		N36	, Cn3
	.byte		N36	, Cn4
	.byte	W36
	.byte			Cn3
	.byte		N36	, Cn4
	.byte	W36
	.byte		N12	, Cn3
	.byte		N12	, Cn4
	.byte	W12
	.byte			Cn3
	.byte		N12	, Cn4
	.byte	W12
	.byte	FINE

	                                                        

	.global song001_8
song001_8:	            
	.byte	KEYSH	, 0
	.byte	VOICE	, 46
	.byte	VOL	, v066
	.byte	PAN	, c_v
	.byte	BENDR	, 3
	.byte	LFOS	, 23
	.byte	LFODL	, 22
	.byte	MOD	, 0
	.byte	MODT	, 0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W24
	.byte		TIE	, Cn2, v120
	.byte	W72
	.byte	W96
	.byte	W96
	.byte	W92
	.byte	W03
	.byte		EOT	
	.byte	W36
	.byte	W01
song001_8_1:
	.byte		N20	, Fn2, v127
	.byte	W24
	.byte		N14	
	.byte	W18
	.byte		N04	
	.byte	W06
	.byte		N09	
	.byte	W12
	.byte		N10	, Gs2
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte		N16	, As2
	.byte	W12
	.byte	PEND
song001_8_2:
	.byte	W12
	.byte		N07	, As2, v127
	.byte	W12
	.byte		N05	, Dn2
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N07	, Ds2
	.byte	W12
	.byte		N09	
	.byte	W12
	.byte		N08	, En2
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song001_8_1
	.byte	W12
	.byte		N10	, As2, v127
	.byte	W12
	.byte		N05	, Dn2
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N07	, Ds2
	.byte	W12
	.byte		N09	
	.byte	W12
	.byte		N08	, En2
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte	PATT	
		mPtr	song001_8_1
	.byte	PATT	
		mPtr	song001_8_2
	.byte	PATT	
		mPtr	song001_8_1
	.byte	W12
	.byte		N10	, As2, v127
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N04	
	.byte	W06
	.byte		N11	
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte		N10	, Gs2
	.byte	W12
song001_8_3:
	.byte		N07	, Cs3, v127
	.byte	W12
	.byte		N07	
	.byte	W12
	.byte		N07	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N07	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N07	
	.byte	W12
	.byte		N07	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song001_8_3
	.byte		N07	, Cn3, v127
	.byte	W12
	.byte		N07	
	.byte	W12
	.byte		N07	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N07	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N07	
	.byte	W12
	.byte		N07	
	.byte	W12
	.byte		N24	
	.byte	W36
	.byte		N30	
	.byte	W36
	.byte		N24	
	.byte	W24
	.byte	W12
	.byte		N23	
	.byte	W24
	.byte		N11	, Bn2
	.byte	W12
	.byte			As2
	.byte	W12
	.byte		N10	, An2
	.byte	W12
	.byte		N20	, Gs2
	.byte	W24
song001_8_4:
	.byte		N07	, Gs2, v127
	.byte	W12
	.byte		N07	
	.byte	W12
	.byte		N07	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N07	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N07	
	.byte	W12
	.byte		N07	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song001_8_4
	.byte		N07	, Gn2, v127
	.byte	W12
	.byte		N07	
	.byte	W12
	.byte		N07	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N07	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N07	
	.byte	W12
	.byte		N07	
	.byte	W12
	.byte		N07	
	.byte	W12
	.byte		N07	
	.byte	W12
	.byte		N07	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N07	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N19	
	.byte	W24
	.byte		N28	, Gs2
	.byte	W36
	.byte			Cs2
	.byte	W36
	.byte		TIE	, Fs2
	.byte	W24
	.byte	W84
	.byte	W01
	.byte		EOT	
	.byte	W11
	.byte		N30	, As1
	.byte	W36
	.byte			Bn1
	.byte	W36
	.byte		N07	, Cn2
	.byte	W12
	.byte		N09	
	.byte	W09
	.byte	FINE

	                                                        

	.global song001_9
song001_9:	            
	.byte	KEYSH	, 0
	.byte	VOICE	, 120
	.byte	VOL	, v085
	.byte	PAN	, c_v+63
	.byte	BENDR	, 3
	.byte	W96
	.byte	W96
	.byte	W72
	.byte		TIE	, Cn3, v127
	.byte	W24
	.byte	W72
	.byte			Fs3
	.byte	W24
	.byte	W96
	.byte	W72
	.byte		EOT	, Cn3
	.byte	W24
	.byte	W72
	.byte			Fs3
	.byte	W24
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W36
	.byte	FINE

	                                                         

	.global song001_10
song001_10:	            
	.byte	KEYSH	, 0
	.byte	VOICE	, 120
	.byte	VOL	, v085
	.byte	PAN	, c_v-64
	.byte	BENDR	, 3
	.byte	W96
	.byte	W96
	.byte	W72
	.byte	W01
	.byte		TIE	, Cn3, v127
	.byte	W23
	.byte	W72
	.byte	W01
	.byte			Fs3
	.byte	W23
	.byte	W96
	.byte	W72
	.byte	W01
	.byte		EOT	, Cn3
	.byte	W23
	.byte	W72
	.byte	W01
	.byte			Fs3
	.byte	W23
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W36
	.byte	FINE

	                                                         

	.global song001_11
song001_11:	            
	.byte	KEYSH	, 0
	.byte	VOICE	, 121
	.byte	VOL	, v120
	.byte	PAN	, c_v
	.byte	BENDR	, 3
	.byte	LFOS	, 56
	.byte	LFODL	, 0
	.byte	MOD	, 0
	.byte	MODT	, 2
	.byte	BEND	, c_v
	.byte		TIE	, Cn3, v127
	.byte	W08
	.byte	VOL	, v119
	.byte	W04
	.byte		v118
	.byte	W04
	.byte		v117
	.byte	W04
	.byte		v116
	.byte	W04
	.byte		v115
	.byte	W04
	.byte		v114
	.byte	W04
	.byte		v113
	.byte	W04
	.byte		v112
	.byte	W04
	.byte		v111
	.byte	W04
	.byte		v110
	.byte	W04
	.byte		v109
	.byte	W04
	.byte		v108
	.byte	W04
	.byte		v107
	.byte	W04
	.byte		v106
	.byte	W04
	.byte		v105
	.byte	W04
	.byte		v104
	.byte	W04
	.byte		v103
	.byte	W04
	.byte		v102
	.byte	W05
	.byte		v102
	.byte	W04
	.byte		v101
	.byte	W04
	.byte		v100
	.byte	W04
	.byte		v099
	.byte	W03
	.byte	W01
	.byte		v098
	.byte	W04
	.byte		v097
	.byte	W04
	.byte		v096
	.byte	W04
	.byte		v095
	.byte	W04
	.byte		v094
	.byte	W04
	.byte		v093
	.byte	W04
	.byte		v092
	.byte	W04
	.byte		v091
	.byte	W04
	.byte		v090
	.byte	W04
	.byte		v089
	.byte	W04
	.byte		v088
	.byte	W04
	.byte		v087
	.byte	W04
	.byte		v086
	.byte	W04
	.byte		v085
	.byte	W04
	.byte		v085
	.byte	W04
	.byte		v084
	.byte	W05
	.byte		v083
	.byte	W04
	.byte		v082
	.byte	W04
	.byte		v081
	.byte	W04
	.byte		v080
	.byte	W04
	.byte		v079
	.byte	W04
	.byte		v078
	.byte	W04
	.byte		v077
	.byte	W04
	.byte		v076
	.byte	W02
	.byte	W02
	.byte		v075
	.byte	W04
	.byte		v074
	.byte	W04
	.byte		v073
	.byte	W04
	.byte		v072
	.byte	W04
	.byte		v071
	.byte	W04
	.byte		v070
	.byte	W04
	.byte		v069
	.byte	W04
	.byte		v068
	.byte	W04
	.byte		v068
	.byte	W04
	.byte		v067
	.byte	W04
	.byte		v066
	.byte	W04
	.byte		v065
	.byte	W05
	.byte		v064
	.byte	W04
	.byte		v063
	.byte	W04
	.byte		v062
	.byte	W04
	.byte		v061
	.byte	W04
	.byte		v060
	.byte	W04
	.byte		v059
	.byte	W04
	.byte		v058
	.byte	W04
	.byte		v057
	.byte	W04
	.byte		v056
	.byte	W04
	.byte		v055
	.byte	W04
	.byte		v054
	.byte	W04
	.byte		v053
	.byte	W01
	.byte	W03
	.byte		v052
	.byte	W04
	.byte		v051
	.byte	W04
	.byte		v051
	.byte	W04
	.byte		v050
	.byte	W04
	.byte		v049
	.byte	W04
	.byte		v048
	.byte	W04
	.byte		v047
	.byte	W04
	.byte		v046
	.byte	W05
	.byte		v045
	.byte	W04
	.byte		v044
	.byte	W04
	.byte		v043
	.byte	W04
	.byte		v042
	.byte	W04
	.byte		v041
	.byte	W04
	.byte		v040
	.byte	W04
	.byte		v039
	.byte	W04
	.byte		v038
	.byte	W04
	.byte		v037
	.byte	W04
	.byte		v036
	.byte	W04
	.byte		v035
	.byte	W04
	.byte		v034
	.byte	W04
	.byte		v034
	.byte	W04
	.byte		v033
	.byte	W04
	.byte		v032
	.byte	W04
	.byte		v031
	.byte	W04
	.byte		v030
	.byte	W04
	.byte		v029
	.byte	W04
	.byte		v028
	.byte	W04
	.byte		v027
	.byte	W05
	.byte		v026
	.byte	W04
	.byte		v025
	.byte	W04
	.byte		v024
	.byte	W04
	.byte		v023
	.byte	W04
	.byte		v022
	.byte	W04
	.byte		v021
	.byte	W04
	.byte		v020
	.byte	W04
	.byte		v019
	.byte	W04
	.byte		v018
	.byte	W04
	.byte		v017
	.byte	W04
	.byte		v017
	.byte	W04
	.byte		v016
	.byte	W04
	.byte		v015
	.byte	W04
	.byte		v014
	.byte	W04
	.byte		v013
	.byte	W04
	.byte		v012
	.byte	W03
	.byte	BEND	, c_v
	.byte	W01
	.byte	VOL	, v011
	.byte	W04
	.byte		v010
	.byte	W04
	.byte		v009
	.byte	W03
	.byte	W01
	.byte		v008
	.byte	W05
	.byte		v007
	.byte	W04
	.byte		v006
	.byte	W04
	.byte		v005
	.byte	W04
	.byte		v004
	.byte	W04
	.byte		v003
	.byte	W04
	.byte		v002
	.byte	W04
	.byte		v001
	.byte	W04
	.byte		v000
	.byte	W60
	.byte	W02
	.byte	W96
	.byte	W92
	.byte		EOT	
	.byte	W04
	.byte	W96
	.byte	W96
	.byte	W36
	.byte	FINE

	                                                         

	.global song001_12
song001_12:	            
	.byte	KEYSH	, 0
	.byte	VOICE	, 2
	.byte	VOL	, v012
	.byte	PAN	, c_v
	.byte	BENDR	, 12
	.byte	LFOS	, 56
	.byte	LFODL	, 0
	.byte	MOD	, 42
	.byte	MODT	, 0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W48
	.byte	VOL	, v067
	.byte	BEND	, c_v-64
	.byte		TIE	, Fs3, v124
	.byte	W04
	.byte	BEND	, c_v-64
	.byte	W03
	.byte		c_v-62
	.byte	W03
	.byte		c_v-59
	.byte	W03
	.byte		c_v-57
	.byte	W03
	.byte		c_v-54
	.byte	W03
	.byte		c_v-51
	.byte	W03
	.byte		c_v-49
	.byte	W03
	.byte		c_v-46
	.byte	W03
	.byte		c_v-43
	.byte	W03
	.byte		c_v-41
	.byte	W03
	.byte		c_v-38
	.byte	W03
	.byte		c_v-35
	.byte	W03
	.byte		c_v-33
	.byte	W03
	.byte		c_v-30
	.byte	W03
	.byte		c_v-27
	.byte	W02
	.byte	W01
	.byte		c_v-25
	.byte	W03
	.byte		c_v-22
	.byte	W03
	.byte		c_v-19
	.byte	W03
	.byte		c_v-17
	.byte	W03
	.byte		c_v-14
	.byte	W03
	.byte		c_v-11
	.byte	W03
	.byte		c_v-9
	.byte	W03
	.byte		c_v-6
	.byte	W03
	.byte		c_v-3
	.byte	W03
	.byte		c_v-1
	.byte	W03
	.byte		c_v+2
	.byte	W03
	.byte		c_v+5
	.byte	W03
	.byte		c_v+7
	.byte	W03
	.byte		c_v+10
	.byte	W03
	.byte		c_v+13
	.byte	W03
	.byte		c_v+15
	.byte	W03
	.byte		c_v+18
	.byte	W03
	.byte		c_v+21
	.byte	W03
	.byte		c_v+23
	.byte	W03
	.byte		c_v+26
	.byte	W03
	.byte		c_v+28
	.byte	W03
	.byte		c_v+31
	.byte	W03
	.byte		c_v+34
	.byte	W03
	.byte		c_v+36
	.byte	W03
	.byte		c_v+39
	.byte	W03
	.byte		c_v+42
	.byte	W03
	.byte		c_v+44
	.byte	W03
	.byte		c_v+47
	.byte	W03
	.byte	VOL	, v067
	.byte	BEND	, c_v+50
	.byte	W03
	.byte		c_v+52
	.byte	W01
	.byte	VOL	, v066
	.byte	W02
	.byte		v065
	.byte	BEND	, c_v+55
	.byte	W01
	.byte	VOL	, v064
	.byte	W02
	.byte		v063
	.byte	BEND	, c_v+58
	.byte	W02
	.byte	VOL	, v062
	.byte	W01
	.byte	BEND	, c_v+60
	.byte	W01
	.byte	VOL	, v061
	.byte	W01
	.byte	BEND	, c_v+63
	.byte	W01
	.byte	VOL	, v060
	.byte	W01
	.byte		v059
	.byte	W02
	.byte		v058
	.byte	W02
	.byte		v057
	.byte	W02
	.byte		v056
	.byte	W01
	.byte		v055
	.byte	W02
	.byte		v054
	.byte	W02
	.byte		v053
	.byte	W02
	.byte		v052
	.byte	W01
	.byte		v051
	.byte	W02
	.byte		v051
	.byte	W02
	.byte		v050
	.byte	W02
	.byte		v049
	.byte	W02
	.byte		v048
	.byte	W01
	.byte		v047
	.byte	W02
	.byte		v046
	.byte	W02
	.byte		v045
	.byte	W02
	.byte		v044
	.byte	W01
	.byte		v043
	.byte	W02
	.byte		v042
	.byte	W02
	.byte		v041
	.byte	W02
	.byte		v040
	.byte	W02
	.byte		v039
	.byte	W01
	.byte		v038
	.byte	W02
	.byte		v037
	.byte	W02
	.byte		v036
	.byte	W02
	.byte		v035
	.byte	W01
	.byte		v034
	.byte	W02
	.byte		v034
	.byte	W02
	.byte		v033
	.byte	W02
	.byte		v032
	.byte	W02
	.byte		v031
	.byte	W01
	.byte		v030
	.byte	W02
	.byte		v029
	.byte	W02
	.byte		v028
	.byte	W02
	.byte		v027
	.byte	W01
	.byte		v026
	.byte	W02
	.byte		v025
	.byte	W02
	.byte		v024
	.byte	W02
	.byte		v023
	.byte	W02
	.byte		v022
	.byte	W01
	.byte		v021
	.byte	W02
	.byte		v020
	.byte	W02
	.byte		v019
	.byte	W02
	.byte		v018
	.byte	W01
	.byte		v017
	.byte	W02
	.byte		v017
	.byte	W02
	.byte		v016
	.byte	W02
	.byte		v015
	.byte	W01
	.byte		v014
	.byte	W02
	.byte		v013
	.byte	W02
	.byte		v012
	.byte	W02
	.byte		v011
	.byte	W02
	.byte		v010
	.byte	W01
	.byte		v009
	.byte	W02
	.byte		v008
	.byte	W02
	.byte		v007
	.byte	W02
	.byte		v006
	.byte	W01
	.byte		v005
	.byte	W02
	.byte		v004
	.byte	W02
	.byte		v003
	.byte	W02
	.byte		v002
	.byte	W02
	.byte		v001
	.byte	W01
	.byte		v000
	.byte	W01
	.byte		v000
	.byte	W03
	.byte		EOT	
	.byte	W13
	.byte	FINE

	mAlignWord
	.global C_DECL(song001)
C_DECL(song001):	            
	.byte	12		            
	.byte	0		            
	.byte	0		          
	.byte	128		        

mAlignWord
	mPtr	voicegroup000		                 

	mPtr	song001_1		       
	mPtr	song001_2		       
	mPtr	song001_3		       
	mPtr	song001_4		       
	mPtr	song001_5		       
	mPtr	song001_6		       
	mPtr	song001_7		       
	mPtr	song001_8		       
	mPtr	song001_9		       
	mPtr	song001_10		       
	mPtr	song001_11		       
	mPtr	song001_12		       
