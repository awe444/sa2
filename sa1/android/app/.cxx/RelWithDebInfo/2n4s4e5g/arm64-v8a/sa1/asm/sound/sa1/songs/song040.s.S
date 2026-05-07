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
# 2 "/home/awaszczak/git/sa2/sa1/sound/sa1/songs/song040.s"
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
# 3 "/home/awaszczak/git/sa2/sa1/sound/sa1/songs/song040.s"
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
# 4 "/home/awaszczak/git/sa2/sa1/sound/sa1/songs/song040.s"

	mSectionRodata

	                                                        

	mAlignWord
	.global song040_1
song040_1:	            
	.byte	KEYSH	, 0
	.byte	TEMPO	, 63
	.byte	VOICE	, 127
	.byte	VOL	, v115
	.byte	PAN	, c_v
	.byte	BENDR	, 3
	.byte	W48
	.byte		N12	, Dn1, v076
	.byte	W12
	.byte			Dn1, v032
	.byte	W12
	.byte			Dn1, v080
	.byte	W12
	.byte			Dn1, v032
	.byte	W12
	.byte			Dn1, v084
	.byte	W12
	.byte			Dn1, v032
	.byte	W12
	.byte			Dn1, v084
	.byte	W12
	.byte			Dn1, v032
	.byte	W12
song040_1_1:
	.byte		N12	, Dn1, v084
	.byte	W12
	.byte			Dn1, v032
	.byte	W12
	.byte			Dn1, v076
	.byte	W12
	.byte			Dn1, v032
	.byte	W12
	.byte			Dn1, v080
	.byte	W12
	.byte			Dn1, v032
	.byte	W12
	.byte			Dn1, v084
	.byte	W12
	.byte			Dn1, v032
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song040_1_1
	.byte		N12	, Dn1, v080
	.byte	W12
	.byte			Dn1, v032
	.byte	W12
	.byte			Dn1, v084
	.byte	W12
	.byte			Dn1, v032
	.byte	W12
	.byte		N06	, Dn1, v068
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte			Cs1, v127
	.byte	W12
	.byte		N06	
	.byte	W06
	.byte			Cs1, v124
	.byte	W06
	.byte		N12	, Cn1, v127
	.byte		N96	, Gn2
	.byte	W12
	.byte	W12
	.byte		N12	, Ds1, v032
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Ds1, v076
	.byte	W12
	.byte			Dn1, v032
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Dn1, v080
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Dn1, v032
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Dn1, v084
	.byte	W12
	.byte			Dn1, v032
	.byte	W12
song040_1_2:
	.byte		N12	, Cn1, v127
	.byte		N12	, Dn1, v076
	.byte	W12
	.byte			Dn1, v032
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Dn1, v076
	.byte	W12
	.byte			Dn1, v044
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Dn1, v080
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Dn1, v040
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Dn1, v084
	.byte	W12
	.byte			Cn1, v127
	.byte		N24	, Ds1, v076
	.byte	W12
	.byte	PEND
song040_1_3:
	.byte	W12
	.byte		N12	, Dn1, v032
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Dn1, v076
	.byte	W12
	.byte			Dn1, v044
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Dn1, v080
	.byte	W12
	.byte		N06	, Cn1, v127
	.byte		N12	, Dn1, v040
	.byte	W06
	.byte		N06	, Cn1, v127
	.byte	W06
	.byte		N12	, Cs1
	.byte		N12	, Dn1, v084
	.byte	W12
	.byte			Cn1, v127
	.byte		N24	, Ds1, v076
	.byte	W12
	.byte	PEND
song040_1_4:
	.byte	W12
	.byte		N12	, Dn1, v032
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Dn1, v076
	.byte	W12
	.byte			Dn1, v044
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Dn1, v080
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Dn1, v040
	.byte	W12
	.byte		N06	, Cs1, v127
	.byte		N12	, Dn1, v084
	.byte	W06
	.byte		N06	, Cs1, v127
	.byte	W06
	.byte		N12	, Cn1
	.byte		N24	, Ds1, v076
	.byte	W12
	.byte	PEND
song040_1_5:
	.byte	W12
	.byte		N12	, Dn1, v032
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Dn1, v076
	.byte	W12
	.byte			Dn1, v044
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Dn1, v080
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Dn1, v040
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Dn1, v084
	.byte	W12
	.byte			Dn1, v044
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song040_1_2
	.byte	PATT	
		mPtr	song040_1_3
	.byte	PATT	
		mPtr	song040_1_4
	.byte	PATT	
		mPtr	song040_1_5
	.byte	PATT	
		mPtr	song040_1_2
	.byte	PATT	
		mPtr	song040_1_3
	.byte	PATT	
		mPtr	song040_1_4
	.byte	PATT	
		mPtr	song040_1_5
	.byte	PATT	
		mPtr	song040_1_2
	.byte	PATT	
		mPtr	song040_1_3
	.byte	W12
	.byte		N12	, Dn1, v032
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Dn1, v076
	.byte	W12
	.byte			Dn1, v044
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Dn1, v080
	.byte	W12
	.byte			Dn1, v040
	.byte		N12	, Gs1, v127
	.byte	W12
	.byte			Cs1
	.byte		N12	, Dn1, v084
	.byte	W12
	.byte			Cn1, v127
	.byte		N24	, Ds1, v076
	.byte	W12
	.byte	W12
	.byte		N12	, Ds1, v032
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Ds1, v076
	.byte	W12
	.byte			Ds1, v044
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Ds1, v080
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Ds1, v040
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Ds1, v084
	.byte	W12
	.byte			Ds1, v044
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Ds1, v076
	.byte	W12
	.byte			Cn1, v127
	.byte	W12
	.byte		N06	, Cs1
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N12	, Cn1
	.byte		N66	, Cs2
	.byte	W18
	.byte		N05	, Cs1
	.byte	W06
	.byte		N12	, Cn1
	.byte	W12
	.byte		N05	, Gn1
	.byte	W06
	.byte			Cs1
	.byte	W06
	.byte		N12	, Cn1
	.byte		N24	, Ds1, v072
	.byte	W12
song040_1_6:
	.byte	W12
	.byte		N12	, Ds1, v060
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Ds1, v076
	.byte	W12
	.byte			Ds1, v060
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Ds1, v080
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Ds1, v052
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Ds1, v084
	.byte	W12
	.byte			Ds1, v060
	.byte	W12
	.byte	PEND
song040_1_7:
	.byte		N12	, Cn1, v127
	.byte		N12	, Ds1, v084
	.byte	W12
	.byte			Ds1, v060
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Ds1, v076
	.byte	W12
	.byte			Ds1, v060
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Ds1, v080
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Ds1, v052
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Ds1, v084
	.byte	W12
	.byte			Cn1, v127
	.byte		N24	, Ds1, v084
	.byte	W12
	.byte	PEND
song040_1_8:
	.byte	W12
	.byte		N12	, Ds1, v060
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Ds1, v076
	.byte	W12
	.byte			Ds1, v060
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Ds1, v080
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Ds1, v052
	.byte	W12
	.byte		N06	, Cn1, v127
	.byte		N12	, Ds1, v084
	.byte	W06
	.byte		N06	, Cs1, v127
	.byte	W06
	.byte		N06	
	.byte		N12	, Ds1, v060
	.byte	W06
	.byte		N06	, Cn1, v127
	.byte	W06
	.byte	PEND
	.byte		N06	
	.byte		N36	, Cs2, v084
	.byte	W06
	.byte		N06	, Cn1, v127
	.byte	W06
	.byte		N12	, Cs1, v068
	.byte	W12
	.byte		N06	, Cs1, v127
	.byte		N12	, Dn1, v044
	.byte	W06
	.byte		N06	, Cs1, v127
	.byte	W06
	.byte		N12	, Cn1
	.byte		N36	, Gn2, v084
	.byte	W18
	.byte		N06	, Cs1, v127
	.byte	W06
	.byte		N12	, Cn1
	.byte	W12
	.byte		N05	, Cs1
	.byte		N12	, Dn1, v044
	.byte	W06
	.byte		N06	, Cs1, v127
	.byte	W06
	.byte		N12	, Cn1
	.byte		N24	, Ds1, v072
	.byte	W12
	.byte	PATT	
		mPtr	song040_1_6
	.byte	PATT	
		mPtr	song040_1_7
	.byte	PATT	
		mPtr	song040_1_8
	.byte		N06	, Cn1, v127
	.byte		N36	, Cs2, v084
	.byte	W06
	.byte		N06	, Cn1, v127
	.byte	W06
	.byte		N12	, Cs1, v068
	.byte	W12
	.byte		N06	, Cs1, v127
	.byte		N12	, Dn1, v044
	.byte	W06
	.byte		N06	, Cs1, v127
	.byte	W06
	.byte		N12	, Cn1
	.byte		N36	, Fs2, v084
	.byte	W24
	.byte		N06	, Cs1, v127
	.byte	W12
	.byte			Cn1
	.byte		N12	, Dn1, v044
	.byte	W12
	.byte		N06	, Cn1, v127
	.byte		N36	, Gn2, v084
	.byte	W12
	.byte	W12
	.byte		N12	, Ds1, v060
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Ds1, v076
	.byte	W12
	.byte			Ds1, v060
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Ds1, v080
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Ds1, v052
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Ds1, v084
	.byte	W12
	.byte			Ds1, v052
	.byte	W12
song040_1_9:
	.byte		N12	, Cn1, v127
	.byte		N12	, Ds1, v084
	.byte	W12
	.byte			Ds1, v060
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Ds1, v076
	.byte	W12
	.byte			Ds1, v060
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Ds1, v080
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Ds1, v052
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Ds1, v084
	.byte	W12
	.byte			Ds1, v052
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song040_1_9
	.byte	PATT	
		mPtr	song040_1_9
	.byte	PATT	
		mPtr	song040_1_9
	.byte	PATT	
		mPtr	song040_1_9
	.byte	PATT	
		mPtr	song040_1_9
	.byte	PATT	
		mPtr	song040_1_9
	.byte	PATT	
		mPtr	song040_1_9
	.byte	PATT	
		mPtr	song040_1_9
	.byte	PATT	
		mPtr	song040_1_9
song040_1_11:
	.byte		N12	, Cn1, v127
	.byte		N12	, Ds1, v084
	.byte	W12
	.byte			Ds1, v060
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Ds1, v076
	.byte	W12
	.byte			Ds1, v060
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Ds1, v080
	.byte	W12
	.byte		N11	, Cs1, v127
	.byte		N12	, Ds1, v052
	.byte	W12
	.byte		N06	, Cs1, v127
	.byte	W06
	.byte		N05	, An1
	.byte	W06
	.byte		N11	, Gn1
	.byte	W12
	.byte	PEND
song040_1_10:
	.byte		N12	, Cn1, v127
	.byte		N36	, Fs2
	.byte	W12
	.byte		N12	, Dn1, v040
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Dn1, v040
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Dn1, v040
	.byte		N40	, Gn2, v127
	.byte	W12
	.byte		N12	, Dn1, v040
	.byte	W12
	.byte		N11	, Cs1, v127
	.byte		N12	, Dn1, v040
	.byte	W12
	.byte		N06	, Cs1, v127
	.byte		N12	, Dn1, v040
	.byte	W06
	.byte		N05	, An1, v127
	.byte	W06
	.byte		N12	, Dn1, v040
	.byte		N11	, Gn1, v127
	.byte	W12
	.byte	PEND
	.byte		N12	, Cn1
	.byte		N36	, Fs2
	.byte	W12
	.byte		N12	, Dn1, v040
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Dn1, v040
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Dn1, v040
	.byte		N40	, Gn2, v127
	.byte	W12
	.byte		N12	, Dn1, v040
	.byte	W12
	.byte		N11	, Cs1, v127
	.byte		N12	, Ds1, v040
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte		N12	, Ds1, v052
	.byte	W12
	.byte		N05	, Cs1, v127
	.byte		N12	, Ds1, v072
	.byte	W06
	.byte		N05	, Cs1, v127
	.byte	W06
	.byte	PATT	
		mPtr	song040_1_10
	.byte		N12	, Cn1, v127
	.byte		N12	, Dn1, v040
	.byte		N32	, Fs2, v127
	.byte	W12
	.byte		N12	, Dn1, v040
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Dn1, v040
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Dn1, v040
	.byte		N32	, Gn2, v127
	.byte	W12
	.byte		N12	, Dn1, v040
	.byte	W12
	.byte		N06	, Cs1, v127
	.byte		N12	, Dn1, v040
	.byte	W06
	.byte		N06	, Cs1, v127
	.byte	W06
	.byte		N12	, Dn1, v040
	.byte		N06	, An1, v127
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte		N12	, Dn1, v040
	.byte		N06	, Gn1, v127
	.byte	W06
	.byte			Cs1
	.byte	W06
	.byte		N12	, Cn1
	.byte		N44	, Gn2
	.byte	W12
	.byte		N12	, Ds1, v060
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Ds1, v076
	.byte	W12
	.byte		N11	, Ds1, v060
	.byte	W12
	.byte		N12	, Cn1, v127
	.byte		N12	, Ds1, v080
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Ds1, v052
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Ds1, v084
	.byte	W12
	.byte			Ds1, v052
	.byte	W12
	.byte	PATT	
		mPtr	song040_1_9
	.byte	PATT	
		mPtr	song040_1_9
	.byte	PATT	
		mPtr	song040_1_9
	.byte	PATT	
		mPtr	song040_1_9
	.byte	PATT	
		mPtr	song040_1_9
	.byte	PATT	
		mPtr	song040_1_9
	.byte	PATT	
		mPtr	song040_1_11
	.byte		N12	, Cn1, v127
	.byte		N48	, Fs2
	.byte	W24
	.byte		N12	, Cs1
	.byte		N12	, Ds1, v076
	.byte	W12
	.byte			Ds1, v060
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Ds1, v080
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Ds1, v052
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Ds1, v084
	.byte	W12
	.byte			Ds1, v052
	.byte	W12
	.byte	PATT	
		mPtr	song040_1_9
	.byte	PATT	
		mPtr	song040_1_9
	.byte	PATT	
		mPtr	song040_1_9
	.byte	PATT	
		mPtr	song040_1_9
	.byte		N12	, Cn1, v127
	.byte		N12	, Ds1, v084
	.byte	W12
	.byte			Ds1, v060
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Ds1, v076
	.byte	W12
	.byte			Ds1, v060
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Ds1, v080
	.byte	W12
	.byte		N11	, Cs1, v127
	.byte		N12	, Ds1, v052
	.byte	W12
	.byte		N06	, Cs1, v127
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			An1
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			Gn1
	.byte	W06
	.byte			Fs1
	.byte	W06
	.byte		N12	, Cs1
	.byte		N12	, Ds1, v076
	.byte		N96	, Gn2, v127
	.byte	W12
	.byte		N12	, Ds1, v060
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Ds1, v080
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Ds1, v052
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Ds1, v084
	.byte	W12
	.byte			Ds1, v052
	.byte	W12
	.byte	PATT	
		mPtr	song040_1_9
	.byte	PATT	
		mPtr	song040_1_9
	.byte		N12	, Cn1, v127
	.byte		N12	, Ds1, v084
	.byte	W12
	.byte			Ds1, v060
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Ds1, v076
	.byte	W12
	.byte			Ds1, v060
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Ds1, v080
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Ds1, v052
	.byte	W12
	.byte		N06	, Cs1, v127
	.byte		N12	, Ds1, v084
	.byte	W12
	.byte		N06	, Cs1, v127
	.byte		N12	, Ds1, v052
	.byte	W06
	.byte		N06	, Cs1, v127
	.byte	W06
	.byte			An1
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			Gn1
	.byte	W06
	.byte			Fs1
	.byte	W06
	.byte		N12	, Cs1
	.byte		N12	, Ds1, v076
	.byte		N48	, Fs2, v127
	.byte	W12
	.byte		N12	, Ds1, v060
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Ds1, v080
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Ds1, v052
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Ds1, v084
	.byte	W12
	.byte			Ds1, v052
	.byte	W12
	.byte	PATT	
		mPtr	song040_1_9
	.byte	PATT	
		mPtr	song040_1_9
	.byte		N12	, Cn1, v127
	.byte		N12	, Ds1, v084
	.byte	W12
	.byte			Ds1, v060
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Ds1, v076
	.byte	W12
	.byte			Ds1, v060
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Ds1, v080
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Ds1, v052
	.byte	W12
	.byte		N06	, Cs1, v127
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N12	, Cn1
	.byte		N48	, Gn2
	.byte	W24
	.byte		N12	, Cs1
	.byte		N12	, Ds1, v076
	.byte	W12
	.byte			Ds1, v060
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Ds1, v080
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Ds1, v052
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Ds1, v084
	.byte	W12
	.byte			Ds1, v052
	.byte	W12
	.byte	PATT	
		mPtr	song040_1_9
	.byte	PATT	
		mPtr	song040_1_9
	.byte		N12	, Cn1, v127
	.byte		N12	, Ds1, v084
	.byte	W12
	.byte			Ds1, v060
	.byte	W12
	.byte			Cs1, v127
	.byte		N12	, Ds1, v076
	.byte	W12
	.byte			Ds1, v060
	.byte	W12
	.byte			Cn1, v127
	.byte		N12	, Ds1, v080
	.byte	W12
	.byte		N06	, Cs1, v127
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			An1
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			Gn1
	.byte	W06
	.byte			Fs1
	.byte	W06
	.byte		N12	, Cs1
	.byte		N06	, Ds1, v084
	.byte	W48
	.byte		N12	, Cn1, v127
	.byte		N06	, Ds1, v084
	.byte	W12
	.byte	FINE

	                                                        

	.global song040_2
song040_2:	            
	.byte	KEYSH	, 0
	.byte	VOICE	, 12
	.byte	VOL	, v060
	.byte	PAN	, c_v
	.byte	BENDR	, 3
	.byte	W48
song040_2_1:
	.byte		N03	, Gn4, v124
	.byte	W12
	.byte			Gn5, v092
	.byte	W06
	.byte			Dn5, v088
	.byte	W06
	.byte			Gn4, v084
	.byte	W06
	.byte			Gn5, v080
	.byte	W06
	.byte			Dn5, v076
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			Gn5, v072
	.byte	W06
	.byte			Dn5, v068
	.byte	W06
	.byte			Gn4, v064
	.byte	W06
	.byte			Gn5, v060
	.byte	W06
	.byte			Dn5, v056
	.byte	W06
	.byte			Gn4, v052
	.byte	W06
	.byte			Gn5, v048
	.byte	W06
	.byte			Dn5, v044
	.byte	W06
	.byte	PEND
song040_2_2:
	.byte		N03	, Gn4, v044
	.byte	W06
	.byte			Gn5, v040
	.byte	W06
	.byte			Dn5, v036
	.byte	W06
	.byte			Gn4, v032
	.byte	W06
	.byte			Gn5, v028
	.byte	W06
	.byte			Dn5, v024
	.byte	W06
	.byte			Gn4, v020
	.byte	W06
	.byte			Gn5, v016
	.byte	W06
	.byte			Dn5, v012
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			Gn5, v008
	.byte	W06
	.byte			Dn5, v004
	.byte	W30
	.byte	PEND
	.byte	PATT	
		mPtr	song040_2_1
	.byte	PATT	
		mPtr	song040_2_2
	.byte	PATT	
		mPtr	song040_2_1
	.byte	PATT	
		mPtr	song040_2_2
	.byte	PATT	
		mPtr	song040_2_1
	.byte	PATT	
		mPtr	song040_2_2
	.byte	PATT	
		mPtr	song040_2_1
	.byte	PATT	
		mPtr	song040_2_2
	.byte	PATT	
		mPtr	song040_2_1
	.byte	PATT	
		mPtr	song040_2_2
song040_2_3:
	.byte		N03	, An4, v124
	.byte	W12
	.byte			An5, v092
	.byte	W06
	.byte			Dn5, v088
	.byte	W06
	.byte			An4, v084
	.byte	W06
	.byte			An5, v080
	.byte	W06
	.byte			Dn5, v076
	.byte	W06
	.byte			An4
	.byte	W06
	.byte			An5, v072
	.byte	W06
	.byte			Dn5, v068
	.byte	W06
	.byte			An4, v064
	.byte	W06
	.byte			An5, v060
	.byte	W06
	.byte			Dn5, v056
	.byte	W06
	.byte			An4, v052
	.byte	W06
	.byte			An5, v048
	.byte	W06
	.byte			Dn5, v044
	.byte	W06
	.byte	PEND
song040_2_4:
	.byte		N03	, An4, v044
	.byte	W06
	.byte			An5, v040
	.byte	W06
	.byte			Dn5, v036
	.byte	W06
	.byte			An4, v032
	.byte	W06
	.byte			An5, v028
	.byte	W06
	.byte			Dn5, v024
	.byte	W06
	.byte			An4, v020
	.byte	W06
	.byte			An5, v016
	.byte	W06
	.byte			Dn5, v012
	.byte	W06
	.byte			An4
	.byte	W06
	.byte			An5, v008
	.byte	W06
	.byte			Dn5, v004
	.byte	W30
	.byte	PEND
	.byte	PATT	
		mPtr	song040_2_3
	.byte	PATT	
		mPtr	song040_2_4
	.byte	PATT	
		mPtr	song040_2_3
	.byte	PATT	
		mPtr	song040_2_4
	.byte	PATT	
		mPtr	song040_2_3
	.byte	PATT	
		mPtr	song040_2_4
	.byte	PATT	
		mPtr	song040_2_3
	.byte	PATT	
		mPtr	song040_2_4
	.byte	PATT	
		mPtr	song040_2_3
	.byte	PATT	
		mPtr	song040_2_4
	.byte	PATT	
		mPtr	song040_2_3
	.byte	PATT	
		mPtr	song040_2_4
	.byte	PATT	
		mPtr	song040_2_3
	.byte	PATT	
		mPtr	song040_2_4
	.byte	PATT	
		mPtr	song040_2_3
	.byte	PATT	
		mPtr	song040_2_4
song040_2_5:
	.byte		N03	, Gs4, v124
	.byte	W12
	.byte			Gs5, v092
	.byte	W06
	.byte			Cs5, v088
	.byte	W06
	.byte			Gs4, v084
	.byte	W06
	.byte			Gs5, v080
	.byte	W06
	.byte			Cs5, v076
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte			Gs5, v072
	.byte	W06
	.byte			Cs5, v068
	.byte	W06
	.byte			Gs4, v064
	.byte	W06
	.byte			Gs5, v060
	.byte	W06
	.byte			Cs5, v056
	.byte	W06
	.byte			Gs4, v052
	.byte	W06
	.byte			Gs5, v048
	.byte	W06
	.byte			Cs5, v044
	.byte	W06
	.byte	PEND
song040_2_6:
	.byte		N03	, Gs4, v044
	.byte	W06
	.byte			Gs5, v040
	.byte	W06
	.byte			Cs5, v036
	.byte	W06
	.byte			Gs4, v032
	.byte	W06
	.byte			Gs5, v028
	.byte	W06
	.byte			Cs5, v024
	.byte	W06
	.byte			Gs4, v020
	.byte	W06
	.byte			Gs5, v016
	.byte	W06
	.byte			Cs5, v012
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte			Gs5, v008
	.byte	W06
	.byte			Cs5, v004
	.byte	W30
	.byte	PEND
song040_2_7:
	.byte		N03	, As4, v124
	.byte	W12
	.byte			As5, v092
	.byte	W06
	.byte			Ds5, v088
	.byte	W06
	.byte			As4, v084
	.byte	W06
	.byte			As5, v080
	.byte	W06
	.byte			Ds5, v076
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			As5, v072
	.byte	W06
	.byte			Ds5, v068
	.byte	W06
	.byte			As4, v064
	.byte	W06
	.byte			As5, v060
	.byte	W06
	.byte			Ds5, v056
	.byte	W06
	.byte			As4, v052
	.byte	W06
	.byte			As5, v048
	.byte	W06
	.byte			Ds5, v044
	.byte	W06
	.byte	PEND
song040_2_8:
	.byte		N03	, As4, v044
	.byte	W06
	.byte			As5, v040
	.byte	W06
	.byte			Ds5, v036
	.byte	W06
	.byte			As4, v032
	.byte	W06
	.byte			As5, v028
	.byte	W06
	.byte			Ds5, v024
	.byte	W06
	.byte			As4, v020
	.byte	W06
	.byte			As5, v016
	.byte	W06
	.byte			Ds5, v012
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			As5, v008
	.byte	W06
	.byte			Ds5, v004
	.byte	W30
	.byte	PEND
	.byte	PATT	
		mPtr	song040_2_5
	.byte	PATT	
		mPtr	song040_2_6
	.byte	PATT	
		mPtr	song040_2_7
	.byte	PATT	
		mPtr	song040_2_8
song040_2_9:
	.byte		N03	, Fs4, v124
	.byte	W12
	.byte			Fs5, v092
	.byte	W06
	.byte			Bn4, v088
	.byte	W06
	.byte			Fs4, v084
	.byte	W06
	.byte			Fs5, v080
	.byte	W06
	.byte			Bn4, v076
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Fs5, v072
	.byte	W06
	.byte			Bn4, v068
	.byte	W06
	.byte			Fs4, v064
	.byte	W06
	.byte			Fs5, v060
	.byte	W06
	.byte			Bn4, v056
	.byte	W06
	.byte			Fs4, v052
	.byte	W06
	.byte			Fs5, v048
	.byte	W06
	.byte			Bn4, v044
	.byte	W06
	.byte	PEND
song040_2_10:
	.byte		N03	, Fs4, v044
	.byte	W06
	.byte			Fs5, v040
	.byte	W06
	.byte			Bn4, v036
	.byte	W06
	.byte			Fs4, v032
	.byte	W06
	.byte			Fs5, v028
	.byte	W06
	.byte			Bn4, v024
	.byte	W06
	.byte			Fs4, v020
	.byte	W06
	.byte			Fs5, v016
	.byte	W06
	.byte			Bn4, v012
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Fs5, v008
	.byte	W06
	.byte			Bn4, v004
	.byte	W30
	.byte	PEND
	.byte	PATT	
		mPtr	song040_2_5
	.byte	PATT	
		mPtr	song040_2_6
	.byte	PATT	
		mPtr	song040_2_9
	.byte	PATT	
		mPtr	song040_2_10
	.byte	PATT	
		mPtr	song040_2_3
	.byte	PATT	
		mPtr	song040_2_4
song040_2_11:
	.byte		N03	, As4, v124
	.byte	W12
	.byte			As5, v092
	.byte	W06
	.byte			Fn5, v088
	.byte	W06
	.byte			As4, v084
	.byte	W06
	.byte			As5, v080
	.byte	W06
	.byte			Fn5, v076
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			As5, v072
	.byte	W06
	.byte			Fn5, v068
	.byte	W06
	.byte			As4, v064
	.byte	W06
	.byte			As5, v060
	.byte	W06
	.byte			Fn5, v056
	.byte	W06
	.byte			As4, v052
	.byte	W06
	.byte			As5, v048
	.byte	W06
	.byte			Fn5, v044
	.byte	W06
	.byte	PEND
song040_2_12:
	.byte		N03	, As4, v044
	.byte	W06
	.byte			As5, v040
	.byte	W06
	.byte			Fn5, v036
	.byte	W06
	.byte			As4, v032
	.byte	W06
	.byte			As5, v028
	.byte	W06
	.byte			Fn5, v024
	.byte	W06
	.byte			As4, v020
	.byte	W06
	.byte			As5, v016
	.byte	W06
	.byte			Fn5, v012
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			As5, v008
	.byte	W06
	.byte			Fn5, v004
	.byte	W30
	.byte	PEND
	.byte	PATT	
		mPtr	song040_2_11
	.byte	PATT	
		mPtr	song040_2_12
	.byte	PATT	
		mPtr	song040_2_11
	.byte	PATT	
		mPtr	song040_2_12
	.byte	PATT	
		mPtr	song040_2_11
	.byte	PATT	
		mPtr	song040_2_12
	.byte		N03	, Gs4, v124
	.byte	W12
	.byte			Gs5, v092
	.byte	W06
	.byte			Ds5, v088
	.byte	W06
	.byte			Gs4, v084
	.byte	W06
	.byte			Gs5, v080
	.byte	W06
	.byte			Ds5, v076
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte			Gs5, v072
	.byte	W06
	.byte			Ds5, v068
	.byte	W06
	.byte			Gs4, v064
	.byte	W06
	.byte			Gs5, v060
	.byte	W06
	.byte			Ds5, v056
	.byte	W06
	.byte			Gs4, v052
	.byte	W06
	.byte			Gs5, v048
	.byte	W06
	.byte			Ds5, v044
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte			Gs5, v040
	.byte	W06
	.byte			Ds5, v036
	.byte	W06
	.byte			Gs4, v032
	.byte	W06
	.byte			Gs5, v028
	.byte	W06
	.byte			Ds5, v024
	.byte	W06
	.byte			Gs4, v020
	.byte	W06
	.byte			Gs5, v016
	.byte	W06
	.byte			Ds5, v012
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte			Gs5, v008
	.byte	W06
	.byte			Ds5, v004
	.byte	W30
	.byte	PATT	
		mPtr	song040_2_1
	.byte	PATT	
		mPtr	song040_2_2
	.byte		N03	, Fn4, v124
	.byte	W12
	.byte			Fn5, v092
	.byte	W06
	.byte			Cn5, v088
	.byte	W06
	.byte			Fn4, v084
	.byte	W06
	.byte			Fn5, v080
	.byte	W06
	.byte			Cn5, v076
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			Fn5, v072
	.byte	W06
	.byte			Cn5, v068
	.byte	W06
	.byte			Fn4, v064
	.byte	W06
	.byte			Fn5, v060
	.byte	W06
	.byte			Cn5, v056
	.byte	W06
	.byte			Fn4, v052
	.byte	W06
	.byte			Fn5, v048
	.byte	W06
	.byte			Cn5, v044
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			Fn5, v040
	.byte	W06
	.byte			Cn5, v036
	.byte	W06
	.byte			Fn4, v032
	.byte	W06
	.byte			Fn5, v028
	.byte	W06
	.byte			Cn5, v024
	.byte	W06
	.byte			Fn4, v020
	.byte	W06
	.byte			Fn5, v016
	.byte	W06
	.byte			Cn5, v012
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			Fn5, v008
	.byte	W06
	.byte			Cn5, v004
	.byte	W30
	.byte	PATT	
		mPtr	song040_2_7
	.byte	PATT	
		mPtr	song040_2_8
	.byte	PATT	
		mPtr	song040_2_7
	.byte	PATT	
		mPtr	song040_2_8
	.byte	PATT	
		mPtr	song040_2_7
	.byte	PATT	
		mPtr	song040_2_8
	.byte	PATT	
		mPtr	song040_2_7
	.byte	PATT	
		mPtr	song040_2_8
	.byte	PATT	
		mPtr	song040_2_7
	.byte	PATT	
		mPtr	song040_2_8
	.byte	PATT	
		mPtr	song040_2_7
	.byte		N03	, As4, v044
	.byte	W06
	.byte			As5, v040
	.byte	W06
	.byte			Ds5, v036
	.byte	W06
	.byte			As4, v032
	.byte	W06
	.byte			As5, v028
	.byte	W06
	.byte			Ds5, v024
	.byte	W06
	.byte			As4, v020
	.byte	W06
	.byte			As5, v016
	.byte	W06
	.byte			Ds5, v012
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			As5, v008
	.byte	W06
	.byte			Ds5, v004
	.byte	W03
	.byte	FINE

	                                                        

	.global song040_3
song040_3:	            
	.byte	KEYSH	, 0
	.byte	VOICE	, 76
	.byte	VOL	, v127
	.byte	PAN	, c_v
	.byte	BENDR	, 3
	.byte	LFOS	, 56
	.byte	LFODL	, 0
	.byte	MOD	, 0
	.byte	MODT	, 2
	.byte	W48
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
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N36	, Fs3, v076
	.byte	W36
	.byte		N60	, Gs3
	.byte	W60
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		TIE	, As3, v068
	.byte	W96
	.byte	W07
	.byte		EOT	
	.byte	W05
	.byte		N19	
	.byte	W24
	.byte		N32	, As3, v064
	.byte	W36
	.byte		N23	, As3, v056
	.byte	W24
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N92	, Fn3, v076
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N96	, Ds3, v068
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte			Fs3
	.byte	W96
	.byte	FINE

	                                                        

	.global song040_4
song040_4:	            
	.byte	KEYSH	, 0
	.byte	VOICE	, 80
	.byte	VOL	, v127
	.byte	PAN	, c_v
	.byte	BENDR	, 3
	.byte	LFOS	, 56
	.byte	LFODL	, 0
	.byte	MOD	, 0
	.byte	MODT	, 2
	.byte	W48
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W54
	.byte		N05	, Bn0, v084
	.byte	W01
	.byte		N07	, Cn1, v088
	.byte	W01
	.byte		N08	, Dn1, v080
	.byte	W01
	.byte		N02	, En1, v044
	.byte	W04
	.byte		N04	, En1, v092
	.byte	W02
	.byte			Fn1, v084
	.byte	W02
	.byte			Gn1, v096
	.byte	W02
	.byte			An1, v084
	.byte	W01
	.byte		N03	, Bn1, v096
	.byte	W02
	.byte			Cn2, v100
	.byte	W01
	.byte			Dn2, v104
	.byte	W02
	.byte			En2, v116
	.byte	W01
	.byte			Fn2, v108
	.byte	W01
	.byte		N04	, Gn2, v104
	.byte	W02
	.byte			An2, v100
	.byte	W01
	.byte		N05	, Bn2, v084
	.byte	W02
	.byte		N03	, Cn3, v052
	.byte	W04
	.byte		TIE	, Dn3, v080
	.byte	W12
	.byte	W92
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		N08	, Dn3, v108
	.byte	W12
	.byte		N19	
	.byte	W24
	.byte		N32	, Dn3, v112
	.byte	W36
	.byte		N11	, Dn3, v104
	.byte	W12
	.byte		N32	, Fn2, v116
	.byte	W12
	.byte	W24
	.byte		N44	, Fn3, v104
	.byte	W48
	.byte		N11	, Fn3, v108
	.byte	W12
	.byte		N56	, Gn3, v092
	.byte	W12
	.byte	W48
	.byte		N23	, Gn3, v072
	.byte	W24
	.byte		N11	, Gn2, v092
	.byte	W12
	.byte		N56	, Dn3, v116
	.byte	W12
	.byte	W48
	.byte		N20	, Dn3, v104
	.byte	W24
	.byte			Dn3, v076
	.byte	W24
	.byte		N05	, Dn3, v104
	.byte	W12
	.byte		N22	, Dn3, v088
	.byte	W24
	.byte		N30	, Dn3, v112
	.byte	W36
	.byte		N11	
	.byte	W12
	.byte		N56	, Fn3
	.byte	W12
	.byte	W48
	.byte		N09	, Fn3, v104
	.byte	W12
	.byte		N23	
	.byte	W24
	.byte		N32	, Gn3, v108
	.byte	W12
	.byte	W24
	.byte		N17	, Gn3, v096
	.byte	W24
	.byte		N09	, Gn3, v100
	.byte	W12
	.byte		N11	, Gn3, v120
	.byte	W12
	.byte			Gn2, v092
	.byte	W12
	.byte		N56	, An2, v120
	.byte	W12
	.byte	W48
	.byte		N44	, An2, v108
	.byte	W48
	.byte		N06	, An2, v104
	.byte	W12
	.byte		N19	
	.byte	W24
	.byte		N30	, An2, v108
	.byte	W36
	.byte		N11	, An2, v104
	.byte	W12
	.byte		N56	, Cn3, v120
	.byte	W12
	.byte	W48
	.byte		N09	, Cn3, v108
	.byte	W12
	.byte		N23	, Cn3, v116
	.byte	W24
	.byte		N32	, Dn3, v120
	.byte	W12
	.byte	W24
	.byte		N22	, Dn3, v112
	.byte	W24
	.byte		N07	, Dn3, v124
	.byte	W12
	.byte		N22	, Dn3, v116
	.byte	W24
	.byte		N54	, An2, v108
	.byte	W12
	.byte	W48
	.byte		N09	, An2, v096
	.byte	W12
	.byte		N19	, An2, v104
	.byte	W24
	.byte		N10	, An2, v092
	.byte	W12
	.byte		N21	, An2, v108
	.byte	W24
	.byte		N09	, An2, v092
	.byte	W12
	.byte		N30	
	.byte	W36
	.byte		N10	, An2, v084
	.byte	W12
	.byte		N56	, Cn3, v104
	.byte	W12
	.byte	W48
	.byte		N08	, Cn3, v092
	.byte	W12
	.byte		N20	, Cn3, v108
	.byte	W24
	.byte			Dn3
	.byte	W12
	.byte	W12
	.byte		N32	, Dn3, v112
	.byte	W36
	.byte		N08	
	.byte	W12
	.byte		N09	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		TIE	, En3, v096
	.byte	W12
	.byte	W92
	.byte	W01
	.byte		EOT	
	.byte	W03
	.byte		N30	, En3, v120
	.byte	W30
	.byte	W01
	.byte		N02	, Dn3, v064
	.byte	W04
	.byte			Cn3, v060
	.byte	W02
	.byte			Bn2, v076
	.byte	W02
	.byte			An2, v072
	.byte	W03
	.byte			Gn2, v036
	.byte	W32
	.byte	W02
	.byte		N05	, Dn1, v076
	.byte	W01
	.byte		N02	, Cn1, v064
	.byte	W01
	.byte		N06	, En1, v048
	.byte	W03
	.byte		N04	, Fn1, v056
	.byte	W02
	.byte			Gn1, v088
	.byte	W02
	.byte			An1, v084
	.byte	W01
	.byte			Bn1, v076
	.byte	W02
	.byte			Cn2, v084
	.byte	W01
	.byte			Dn2, v092
	.byte	W02
	.byte			En2, v100
	.byte	W01
	.byte			Fn2, v096
	.byte	W02
	.byte			Gn2, v084
	.byte	W02
	.byte		N16	, An2, v052
	.byte	W24
	.byte		N17	, An2, v096
	.byte	W24
	.byte		N09	, An2, v104
	.byte	W12
	.byte		N08	, An2, v044
	.byte	W12
	.byte		N21	, An2, v092
	.byte	W24
	.byte		N11	, An2, v060
	.byte	W36
	.byte		N12	, An2, v116
	.byte	W24
	.byte		N09	, An2, v108
	.byte	W12
	.byte		N11	, An2, v076
	.byte	W12
	.byte		N54	, Dn3, v120
	.byte	W12
	.byte	W48
	.byte		N20	, Dn3, v096
	.byte	W24
	.byte		N20	
	.byte	W24
	.byte		N32	, Fn3, v116
	.byte	W36
	.byte			Gn3, v124
	.byte	W36
	.byte		N11	, Gn2, v120
	.byte	W12
	.byte			An2
	.byte	W12
	.byte		N20	, An2, v108
	.byte	W36
	.byte		N07	, An2, v056
	.byte	W12
	.byte		N17	, An2, v108
	.byte	W24
	.byte		N32	, An2, v100
	.byte	W24
	.byte	W12
	.byte		N12	
	.byte	W24
	.byte		N24	, An2, v108
	.byte	W36
	.byte		N11	, An2, v092
	.byte	W12
	.byte		N80	, Dn3, v116
	.byte	W12
	.byte	W72
	.byte		N19	, Dn3, v100
	.byte	W24
	.byte		N30	, Fn2, v120
	.byte	W36
	.byte		N44	, Gn2, v108
	.byte	W48
	.byte		TIE	, Gs2, v120
	.byte	W12
	.byte	W96
	.byte	W42
	.byte	W01
	.byte		EOT	
	.byte	W05
	.byte		N44	, Gs2, v104
	.byte	W48
	.byte		TIE	, As2, v088
	.byte	W96
	.byte	W09
	.byte		EOT	
	.byte	W03
	.byte		N19	, As2, v112
	.byte	W24
	.byte		N56	, As2, v088
	.byte	W60
	.byte		TIE	, Gs2, v080
	.byte	W96
	.byte	W44
	.byte		EOT	
	.byte	W04
	.byte		N09	, Gs2, v092
	.byte	W12
	.byte		N32	, Gs2, v088
	.byte	W36
	.byte		N44	, As2, v096
	.byte	W48
	.byte		N88	, As2, v112
	.byte	W48
	.byte	W48
	.byte		N08	, As2, v092
	.byte	W12
	.byte		N32	
	.byte	W36
	.byte		TIE	, Fs2, v096
	.byte	W96
	.byte	W44
	.byte	W01
	.byte		EOT	
	.byte	W03
	.byte		N09	, Fs2, v092
	.byte	W12
	.byte		N32	, Fs2, v096
	.byte	W36
	.byte		N90	, Cs3, v100
	.byte	W96
	.byte		N09	, Cs3, v084
	.byte	W12
	.byte		N20	, Cs3, v096
	.byte	W24
	.byte		N48	
	.byte	W60
	.byte		N32	, Fs2, v104
	.byte	W36
	.byte		N56	, Gs2, v116
	.byte	W60
	.byte	W96
	.byte		N32	, Gn2, v112
	.byte	W36
	.byte		N48	, An2, v124
	.byte	W60
	.byte		N32	, As2, v116
	.byte	W36
	.byte		N56	, Cn3, v124
	.byte	W60
	.byte		N92	, Fn3, v112
	.byte	W96
	.byte		N06	, Fn3, v108
	.byte	W12
	.byte		N21	, Fn3, v100
	.byte	W24
	.byte		N56	, Fn3, v116
	.byte	W60
	.byte	W96
	.byte	W96
	.byte		N88	, Fn3, v100
	.byte	W96
	.byte		N06	, Fn3, v096
	.byte	W12
	.byte		N19	, Fn3, v108
	.byte	W24
	.byte		N56	
	.byte	W60
	.byte		N92	, Ds3, v112
	.byte	W96
	.byte		N68	, Ds3, v068
	.byte	W72
	.byte		N23	, En3, v127
	.byte	W24
	.byte		N92	, Ds3, v104
	.byte	W96
	.byte		N07	
	.byte	W12
	.byte		N42	, Ds3, v108
	.byte	W48
	.byte		N20	, Ds3, v092
	.byte	W24
	.byte		N11	, Ds3, v104
	.byte	W12
	.byte	W96
	.byte		N88	, Cs3, v108
	.byte	W96
	.byte		N92	, Ds3
	.byte	W96
	.byte		N64	, Fn3, v100
	.byte	W96
	.byte		N92	, As2, v127
	.byte	W96
	.byte		N07	, As2, v068
	.byte	W12
	.byte		N21	, As2, v100
	.byte	W24
	.byte		N60	, As2, v127
	.byte	W60
	.byte		TIE	, Ds3, v104
	.byte	W96
	.byte	W01
	.byte		EOT	
	.byte	W92
	.byte	W03
	.byte		N92	, As2, v116
	.byte	W96
	.byte		N07	
	.byte	W12
	.byte		N22	, As2, v104
	.byte	W24
	.byte		N56	, As2, v120
	.byte	W60
	.byte		N92	, Fs3, v112
	.byte	W96
	.byte	W96
	.byte		TIE	, As2, v116
	.byte	W96
	.byte	W80
	.byte		EOT	
	.byte		N05	, Bn2, v020
	.byte	W01
	.byte		N07	, Cn3, v072
	.byte	W04
	.byte		N05	, Dn3, v060
	.byte	W02
	.byte			En3, v064
	.byte	W02
	.byte		N06	, Fn3, v056
	.byte	W02
	.byte			Gn3, v032
	.byte	W01
	.byte		N04	, An3, v024
	.byte	W04
	.byte		TIE	, As3, v108
	.byte	W96
	.byte	W88
	.byte	W01
	.byte		EOT	
	.byte	W07
	.byte		N11	, As3, v127
	.byte	W48
	.byte		N10	, As2, v112
	.byte	W10
	.byte	FINE

	                                                        

	.global song040_5
song040_5:	            
	.byte	KEYSH	, 0
	.byte	VOICE	, 45
	.byte	VOL	, v127
	.byte	PAN	, c_v
	.byte	BENDR	, 3
	.byte	LFOS	, 23
	.byte	LFODL	, 22
	.byte	MOD	, 0
	.byte	MODT	, 0
	.byte	W48
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W84
	.byte		N17	, Gn1, v104
	.byte	W12
	.byte	W12
	.byte		N05	, Gn1, v096
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Gn1, v092
	.byte	W12
	.byte			Gn1, v096
	.byte	W12
	.byte			Gn1, v088
	.byte	W12
	.byte			Gn2, v096
	.byte	W12
	.byte			Gn1, v104
	.byte	W12
	.byte			Gn1, v112
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Gn1
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Gn1
	.byte	W12
	.byte		N17	, As1
	.byte	W12
song040_5_1:
	.byte	W12
	.byte		N05	, As1, v112
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N17	, Cn2
	.byte	W12
	.byte	PEND
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			Fn1
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte		N17	, Gn1
	.byte	W12
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Gn1
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Gn1
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Gn1
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Gn1
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			An1
	.byte	W12
	.byte		N17	, As1
	.byte	W12
	.byte	PATT	
		mPtr	song040_5_1
	.byte	W12
	.byte		N05	, Cn2, v112
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte		N17	, Dn2
	.byte	W12
song040_5_2:
	.byte	W12
	.byte		N05	, Dn2, v112
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte	PEND
song040_5_3:
	.byte		N05	, Dn3, v112
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			En2
	.byte	W12
	.byte		N17	, Fn2
	.byte	W12
	.byte	PEND
song040_5_4:
	.byte	W12
	.byte		N05	, Fn2, v112
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N17	, Gn2
	.byte	W12
	.byte	PEND
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte		N17	, Dn2
	.byte	W12
	.byte	PATT	
		mPtr	song040_5_2
	.byte	PATT	
		mPtr	song040_5_3
	.byte	PATT	
		mPtr	song040_5_4
	.byte	W12
	.byte		N05	, Gn2, v112
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte		N17	, An2
	.byte	W12
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W36
	.byte		N23	, An1
	.byte	W24
	.byte		N05	, Cn2
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte		N17	, Dn2
	.byte	W12
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
song040_5_5:
	.byte		N05	, Dn2, v112
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte	PEND
	.byte			Gn1
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			As1
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N17	, Cn2
	.byte	W24
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte	PATT	
		mPtr	song040_5_5
	.byte	PATT	
		mPtr	song040_5_5
	.byte		N05	, Gn1, v112
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			An1
	.byte	W12
	.byte			As1
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N17	, Cn2
	.byte	W24
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N17	, Cs2
	.byte	W12
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
song040_5_7:
	.byte		N05	, Cs2, v112
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte	PEND
song040_5_6:
	.byte		N05	, Ds2, v112
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song040_5_6
	.byte	PATT	
		mPtr	song040_5_7
	.byte	PATT	
		mPtr	song040_5_7
song040_5_8:
	.byte		N05	, Cn2, v112
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song040_5_8
song040_5_9:
	.byte		N05	, Bn1, v112
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song040_5_9
song040_5_10:
	.byte		N05	, As1, v112
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song040_5_10
	.byte		N32	, Gs1, v112
	.byte	W36
	.byte		N23	, As1
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte		N05	, Gs2
	.byte	W06
	.byte			An2
	.byte	W06
	.byte		N11	, As2
	.byte	W12
	.byte		N32	, Bn1
	.byte	W36
	.byte		N23	, Cs2
	.byte	W24
	.byte		N05	, As2
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte		N11	, Cs2
	.byte	W12
	.byte		N32	, An1
	.byte	W36
	.byte		N23	, Bn1
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte		N05	, An2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte		N11	, Bn2
	.byte	W12
	.byte		N32	, Cn2
	.byte	W36
	.byte		N23	, Fn2
	.byte	W24
	.byte		N05	, Ds3
	.byte	W06
	.byte			En3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte		N11	, Fn2
	.byte	W12
song040_5_11:
	.byte		N05	, As1, v112
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			As1
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			As1
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte	PEND
song040_5_12:
	.byte		N05	, As2, v112
	.byte	W12
	.byte			As1
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			As1
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			As1
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song040_5_11
	.byte		N05	, As2, v112
	.byte	W12
	.byte			As1
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			As1
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte	PATT	
		mPtr	song040_5_11
	.byte	PATT	
		mPtr	song040_5_12
	.byte	PATT	
		mPtr	song040_5_11
	.byte		N05	, As2, v112
	.byte	W12
	.byte			As1
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			As1
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			An1
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			Gn1
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Gn1
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Gn1
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte			Fn1
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			Fn1
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			Fn1
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			As1
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			As1
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			Gs2
	.byte	W06
	.byte			An2
	.byte	W06
	.byte		N11	, As2
	.byte	W12
song040_5_13:
	.byte		N05	, Ds2, v112
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			Ds3
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			Ds3
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song040_5_13
	.byte	PATT	
		mPtr	song040_5_13
	.byte	PATT	
		mPtr	song040_5_13
	.byte	PATT	
		mPtr	song040_5_13
	.byte	PATT	
		mPtr	song040_5_13
	.byte	PATT	
		mPtr	song040_5_13
	.byte	PATT	
		mPtr	song040_5_13
	.byte	PATT	
		mPtr	song040_5_13
	.byte	PATT	
		mPtr	song040_5_13
	.byte	PATT	
		mPtr	song040_5_13
	.byte	PATT	
		mPtr	song040_5_13
	.byte		N05	, Ds2, v112
	.byte	W48
	.byte			Ds1
	.byte	W05
	.byte	FINE

	                                                        

	.global song040_6
song040_6:	            
	.byte	KEYSH	, 0
	.byte	VOICE	, 74
	.byte	VOL	, v110
	.byte	PAN	, c_v
	.byte	BENDR	, 3
	.byte	LFOS	, 23
	.byte	LFODL	, 22
	.byte	MOD	, 0
	.byte	MODT	, 0
	.byte	W48
	.byte		TIE	, Gn1, v096
	.byte	W96
	.byte			Dn2
	.byte	W96
	.byte	W96
	.byte	W80
	.byte	W03
	.byte		EOT	, Gn1
	.byte			Dn2
	.byte	W01
	.byte		N22	, Gn3, v127
	.byte	W12
	.byte	W12
	.byte		N09	
	.byte	W84
	.byte	W60
	.byte		N11	, As3
	.byte	W12
	.byte		N05	, An3, v120
	.byte	W12
	.byte		N68	, Gn3, v127
	.byte	W12
	.byte	W60
	.byte		N11	, Dn3, v108
	.byte	W12
	.byte		N05	, En3
	.byte	W12
	.byte		N64	, Gn3, v127
	.byte	W12
	.byte	W60
	.byte		N11	, Dn3, v108
	.byte	W12
	.byte		N08	, En3, v096
	.byte	W12
	.byte		N21	, Gn3, v127
	.byte	W12
	.byte	W12
	.byte		N11	
	.byte	W84
	.byte	W60
	.byte			As3
	.byte	W12
	.byte		N05	, An3, v112
	.byte	W12
	.byte		N68	, Gn3, v127
	.byte	W12
	.byte	W60
	.byte		N05	, Dn3, v088
	.byte	W12
	.byte		N03	, En3, v096
	.byte	W12
	.byte		N64	, Gn3, v124
	.byte	W12
	.byte	W72
	.byte		N04	, Gs3, v112
	.byte	W12
	.byte		N44	, An3
	.byte	W12
	.byte	W36
	.byte		N10	, An3, v108
	.byte	W60
song040_6_1:
	.byte	W60
	.byte		N11	, Cn4, v112
	.byte	W12
	.byte		N06	, Bn3, v104
	.byte	W12
	.byte		N60	, An3, v124
	.byte	W12
	.byte	PEND
song040_6_2:
	.byte	W60
	.byte		N11	, Cn3, v108
	.byte	W12
	.byte		N05	, Dn3, v104
	.byte	W12
	.byte		N68	, An3, v116
	.byte	W12
	.byte	PEND
	.byte	W60
	.byte		N16	, An3, v108
	.byte	W24
	.byte		N40	, An3, v120
	.byte	W12
	.byte	W36
	.byte		N11	, An3, v116
	.byte	W60
	.byte	PATT	
		mPtr	song040_6_1
	.byte	PATT	
		mPtr	song040_6_2
	.byte	W60
	.byte		N11	, An3, v116
	.byte	W12
	.byte		N08	, Bn3, v096
	.byte	W12
	.byte		N56	, Cs4, v120
	.byte	W12
	.byte	W48
	.byte		N44	
	.byte	W48
	.byte		N13	
	.byte	W60
	.byte		N05	, An3, v116
	.byte	W12
	.byte		N11	, Fn4, v127
	.byte	W12
	.byte		N21	, Dn4, v124
	.byte	W12
	.byte	W24
	.byte		N16	, Cn4, v104
	.byte	W24
	.byte		N15	, Bn3, v127
	.byte	W24
	.byte		N17	, As3
	.byte	W24
song040_6_3:
	.byte		N18	, An3, v124
	.byte	W24
	.byte		N10	, Dn4
	.byte	W12
	.byte		N24	, Gn3, v120
	.byte	W36
	.byte		N11	, Fn3, v084
	.byte	W12
	.byte		N76	, Dn3, v096
	.byte	W12
	.byte	PEND
	.byte	W72
	.byte		N20	, Dn3, v112
	.byte	W24
	.byte		N11	, Fn3, v120
	.byte	W12
	.byte			En3, v100
	.byte	W12
	.byte			Dn3, v112
	.byte	W12
	.byte		N23	, En3, v120
	.byte	W24
	.byte		N11	, Dn3, v100
	.byte	W12
	.byte			Cn3, v108
	.byte	W12
	.byte		N23	, Dn3, v127
	.byte	W12
	.byte	W12
	.byte		N10	, Dn4, v124
	.byte	W36
	.byte		N11	, Cn4, v104
	.byte	W24
	.byte		N15	, Bn3, v127
	.byte	W24
	.byte	PATT	
		mPtr	song040_6_3
	.byte	W72
	.byte		N20	, Dn3, v112
	.byte	W24
	.byte	VOL	, v110
	.byte		N11	, Fn3, v100
	.byte	W12
	.byte			En3, v096
	.byte	W12
	.byte		N09	, Dn3, v104
	.byte	W12
	.byte		N19	, En3, v120
	.byte	W24
	.byte		N10	, Fn3, v096
	.byte	W12
	.byte			Gn3, v092
	.byte	W12
	.byte		TIE	, Gs3, v108
	.byte	W10
	.byte	VOL	, v110
	.byte	W02
	.byte		v109
	.byte	W01
	.byte		v108
	.byte	W01
	.byte		v107
	.byte	W01
	.byte		v105
	.byte	W01
	.byte		v104
	.byte	W01
	.byte		v103
	.byte	W01
	.byte		v102
	.byte	W01
	.byte		v101
	.byte	W01
	.byte		v100
	.byte	W01
	.byte		v099
	.byte	W01
	.byte		v098
	.byte	W01
	.byte		v097
	.byte	W01
	.byte		v095
	.byte	W01
	.byte		v094
	.byte	W01
	.byte		v093
	.byte	W01
	.byte		v092
	.byte	W01
	.byte		v091
	.byte	W01
	.byte		v090
	.byte	W01
	.byte		v089
	.byte	W01
	.byte		v088
	.byte	W01
	.byte		v087
	.byte	W01
	.byte		v085
	.byte	W01
	.byte		v084
	.byte	W01
	.byte		v083
	.byte	W01
	.byte		v082
	.byte	W01
	.byte		v081
	.byte	W01
	.byte		v080
	.byte	W01
	.byte		v079
	.byte	W01
	.byte		v078
	.byte	W01
	.byte		v077
	.byte	W01
	.byte		v075
	.byte	W01
	.byte		v074
	.byte	W01
	.byte		v073
	.byte	W01
	.byte		v072
	.byte	W01
	.byte		v071
	.byte	W01
	.byte		v070
	.byte	W01
	.byte		v069
	.byte	W01
	.byte		v068
	.byte	W01
	.byte		v067
	.byte	W01
	.byte		v065
	.byte	W01
	.byte		v064
	.byte	W01
	.byte		v063
	.byte	W01
	.byte		v062
	.byte	W01
	.byte		v061
	.byte	W01
	.byte		v060
	.byte	W01
	.byte		v059
	.byte	W01
	.byte		v058
	.byte	W01
	.byte		v057
	.byte	W01
	.byte		v055
	.byte	W01
	.byte		v054
	.byte	W01
	.byte		v053
	.byte	W01
	.byte		v052
	.byte	W01
	.byte		v051
	.byte	W01
	.byte		v050
	.byte	W01
	.byte		v049
	.byte	W01
	.byte		v048
	.byte	W01
	.byte		v047
	.byte	W01
	.byte		v045
	.byte	W01
	.byte		v044
	.byte	W02
	.byte		v043
	.byte	W01
	.byte		v042
	.byte	W01
	.byte		v041
	.byte	W01
	.byte		v040
	.byte	W01
	.byte		v039
	.byte	W01
	.byte		v038
	.byte	W01
	.byte		v036
	.byte	W01
	.byte		v035
	.byte	W01
	.byte		v034
	.byte	W01
	.byte		v033
	.byte	W01
	.byte		v032
	.byte	W01
	.byte		v031
	.byte	W01
	.byte		v030
	.byte	W01
	.byte		v029
	.byte	W01
	.byte		v028
	.byte	W01
	.byte		v026
	.byte	W01
	.byte		v025
	.byte	W01
	.byte		v024
	.byte	W01
	.byte		v023
	.byte	W01
	.byte		v022
	.byte	W01
	.byte		v021
	.byte	W01
	.byte		v020
	.byte	W01
	.byte		v019
	.byte	W01
	.byte		v018
	.byte	W01
	.byte		v016
	.byte	W01
	.byte		v015
	.byte	W01
	.byte		v014
	.byte	W01
	.byte		v013
	.byte	W01
	.byte		v012
	.byte	W01
	.byte		v011
	.byte	W01
	.byte		v010
	.byte	W01
	.byte		v009
	.byte	W01
	.byte		v008
	.byte	W01
	.byte		v006
	.byte	W01
	.byte		EOT	
	.byte	VOL	, v005
	.byte	W01
	.byte		v004
	.byte	W01
	.byte		v003
	.byte	W01
	.byte		v002
	.byte	W01
	.byte		v001
	.byte	W01
	.byte		v000
	.byte	W92
	.byte	W01
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		v110
	.byte	W96
	.byte		v110
	.byte		N36	, Bn2, v084
	.byte		N36	, Ds3
	.byte	W05
	.byte	VOL	, v097
	.byte	W01
	.byte		v077
	.byte	W01
	.byte		v063
	.byte	W01
	.byte		v057
	.byte	W01
	.byte		v059
	.byte	W01
	.byte		v061
	.byte	W01
	.byte		v063
	.byte	W01
	.byte		v066
	.byte	W01
	.byte		v068
	.byte	W01
	.byte		v070
	.byte	W01
	.byte		v072
	.byte	W01
	.byte		v074
	.byte	W01
	.byte		v077
	.byte	W01
	.byte		v079
	.byte	W01
	.byte		v081
	.byte	W01
	.byte		v083
	.byte	W01
	.byte		v086
	.byte	W01
	.byte		v088
	.byte	W01
	.byte		v090
	.byte	W01
	.byte		v092
	.byte	W01
	.byte		v094
	.byte	W01
	.byte		v097
	.byte	W01
	.byte		v099
	.byte	W01
	.byte		v101
	.byte	W01
	.byte		v103
	.byte	W01
	.byte		v105
	.byte	W01
	.byte		v107
	.byte	W01
	.byte		v110
	.byte	W04
	.byte		N60	, Cs3, v096
	.byte		N60	, Fn3
	.byte	W05
	.byte	VOL	, v107
	.byte	W01
	.byte		v099
	.byte	W01
	.byte		v088
	.byte	W01
	.byte		v077
	.byte	W01
	.byte		v069
	.byte	W01
	.byte		v058
	.byte	W01
	.byte		v056
	.byte	W01
	.byte		v057
	.byte	W01
	.byte		v058
	.byte	W01
	.byte		v059
	.byte	W01
	.byte		v061
	.byte	W01
	.byte		v062
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
	.byte		v071
	.byte	W01
	.byte		v072
	.byte	W01
	.byte		v073
	.byte	W01
	.byte		v074
	.byte	W01
	.byte		v076
	.byte	W01
	.byte		v077
	.byte	W01
	.byte		v078
	.byte	W01
	.byte		v079
	.byte	W01
	.byte		v081
	.byte	W01
	.byte		v082
	.byte	W01
	.byte		v083
	.byte	W01
	.byte		v084
	.byte	W01
	.byte		v086
	.byte	W01
	.byte		v087
	.byte	W01
	.byte		v088
	.byte	W01
	.byte		v089
	.byte	W01
	.byte		v091
	.byte	W01
	.byte		v092
	.byte	W01
	.byte		v093
	.byte	W01
	.byte		v094
	.byte	W01
	.byte		v096
	.byte	W01
	.byte		v097
	.byte	W01
	.byte		v098
	.byte	W01
	.byte		v099
	.byte	W01
	.byte		v100
	.byte	W01
	.byte		v101
	.byte	W01
	.byte		v102
	.byte	W01
	.byte		v103
	.byte	W01
	.byte		v105
	.byte	W01
	.byte		v106
	.byte	W01
	.byte		v107
	.byte	W01
	.byte		v108
	.byte	W01
	.byte		v110
	.byte	W05
	.byte		v110
	.byte		N36	, Ds3, v116
	.byte		N36	, Fs3
	.byte	W05
	.byte	VOL	, v097
	.byte	W01
	.byte		v077
	.byte	W01
	.byte		v063
	.byte	W01
	.byte		v057
	.byte	W01
	.byte		v059
	.byte	W01
	.byte		v061
	.byte	W01
	.byte		v063
	.byte	W01
	.byte		v066
	.byte	W01
	.byte		v068
	.byte	W01
	.byte		v070
	.byte	W01
	.byte		v072
	.byte	W01
	.byte		v074
	.byte	W01
	.byte		v077
	.byte	W01
	.byte		v079
	.byte	W01
	.byte		v081
	.byte	W01
	.byte		v083
	.byte	W01
	.byte		v086
	.byte	W01
	.byte		v088
	.byte	W01
	.byte		v090
	.byte	W01
	.byte		v092
	.byte	W01
	.byte		v094
	.byte	W01
	.byte		v097
	.byte	W01
	.byte		v099
	.byte	W01
	.byte		v101
	.byte	W01
	.byte		v103
	.byte	W01
	.byte		v105
	.byte	W01
	.byte		v107
	.byte	W01
	.byte		v110
	.byte	W04
	.byte		N60	, Fn3, v127
	.byte		N60	, Gs3
	.byte	W05
	.byte	VOL	, v107
	.byte	W01
	.byte		v099
	.byte	W01
	.byte		v088
	.byte	W01
	.byte		v077
	.byte	W01
	.byte		v069
	.byte	W01
	.byte		v058
	.byte	W01
	.byte		v056
	.byte	W01
	.byte		v057
	.byte	W01
	.byte		v058
	.byte	W01
	.byte		v059
	.byte	W01
	.byte		v061
	.byte	W01
	.byte		v062
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
	.byte		v071
	.byte	W01
	.byte		v072
	.byte	W01
	.byte		v073
	.byte	W01
	.byte		v074
	.byte	W01
	.byte		v076
	.byte	W01
	.byte		v077
	.byte	W01
	.byte		v078
	.byte	W01
	.byte		v079
	.byte	W01
	.byte		v081
	.byte	W01
	.byte		v082
	.byte	W01
	.byte		v083
	.byte	W01
	.byte		v084
	.byte	W01
	.byte		v086
	.byte	W01
	.byte		v087
	.byte	W01
	.byte		v088
	.byte	W01
	.byte		v089
	.byte	W01
	.byte		v091
	.byte	W01
	.byte		v092
	.byte	W01
	.byte		v093
	.byte	W01
	.byte		v094
	.byte	W01
	.byte		v096
	.byte	W01
	.byte		v097
	.byte	W01
	.byte		v098
	.byte	W01
	.byte		v099
	.byte	W01
	.byte		v100
	.byte	W01
	.byte		v101
	.byte	W01
	.byte		v102
	.byte	W01
	.byte		v103
	.byte	W01
	.byte		v105
	.byte	W01
	.byte		v106
	.byte	W01
	.byte		v107
	.byte	W01
	.byte		v108
	.byte	W01
	.byte		v110
	.byte	W05
	.byte		v110
	.byte		N36	, Cn3, v096
	.byte		N36	, En3
	.byte	W05
	.byte	VOL	, v097
	.byte	W01
	.byte		v077
	.byte	W01
	.byte		v063
	.byte	W01
	.byte		v057
	.byte	W01
	.byte		v059
	.byte	W01
	.byte		v061
	.byte	W01
	.byte		v063
	.byte	W01
	.byte		v066
	.byte	W01
	.byte		v068
	.byte	W01
	.byte		v070
	.byte	W01
	.byte		v072
	.byte	W01
	.byte		v074
	.byte	W01
	.byte		v077
	.byte	W01
	.byte		v079
	.byte	W01
	.byte		v081
	.byte	W01
	.byte		v083
	.byte	W01
	.byte		v086
	.byte	W01
	.byte		v088
	.byte	W01
	.byte		v090
	.byte	W01
	.byte		v092
	.byte	W01
	.byte		v094
	.byte	W01
	.byte		v097
	.byte	W01
	.byte		v099
	.byte	W01
	.byte		v101
	.byte	W01
	.byte		v103
	.byte	W01
	.byte		v105
	.byte	W01
	.byte		v107
	.byte	W01
	.byte		v110
	.byte	W04
	.byte		N60	, Dn3, v104
	.byte		N60	, Fs3
	.byte	W05
	.byte	VOL	, v107
	.byte	W01
	.byte		v099
	.byte	W01
	.byte		v088
	.byte	W01
	.byte		v077
	.byte	W01
	.byte		v069
	.byte	W01
	.byte		v058
	.byte	W01
	.byte		v056
	.byte	W01
	.byte		v057
	.byte	W01
	.byte		v058
	.byte	W01
	.byte		v059
	.byte	W01
	.byte		v061
	.byte	W01
	.byte		v062
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
	.byte		v071
	.byte	W01
	.byte		v072
	.byte	W01
	.byte		v073
	.byte	W01
	.byte		v074
	.byte	W01
	.byte		v076
	.byte	W01
	.byte		v077
	.byte	W01
	.byte		v078
	.byte	W01
	.byte		v079
	.byte	W01
	.byte		v081
	.byte	W01
	.byte		v082
	.byte	W01
	.byte		v083
	.byte	W01
	.byte		v084
	.byte	W01
	.byte		v086
	.byte	W01
	.byte		v087
	.byte	W01
	.byte		v088
	.byte	W01
	.byte		v089
	.byte	W01
	.byte		v091
	.byte	W01
	.byte		v092
	.byte	W01
	.byte		v093
	.byte	W01
	.byte		v094
	.byte	W01
	.byte		v096
	.byte	W01
	.byte		v097
	.byte	W01
	.byte		v098
	.byte	W01
	.byte		v099
	.byte	W01
	.byte		v100
	.byte	W01
	.byte		v101
	.byte	W01
	.byte		v102
	.byte	W01
	.byte		v103
	.byte	W01
	.byte		v105
	.byte	W01
	.byte		v106
	.byte	W01
	.byte		v107
	.byte	W01
	.byte		v108
	.byte	W01
	.byte		v110
	.byte	W05
	.byte		v110
	.byte		N36	, Ds3, v120
	.byte		N36	, Gn3
	.byte	W05
	.byte	VOL	, v097
	.byte	W01
	.byte		v077
	.byte	W01
	.byte		v063
	.byte	W01
	.byte		v057
	.byte	W01
	.byte		v059
	.byte	W01
	.byte		v061
	.byte	W01
	.byte		v063
	.byte	W01
	.byte		v066
	.byte	W01
	.byte		v068
	.byte	W01
	.byte		v070
	.byte	W01
	.byte		v072
	.byte	W01
	.byte		v074
	.byte	W01
	.byte		v077
	.byte	W01
	.byte		v079
	.byte	W01
	.byte		v081
	.byte	W01
	.byte		v083
	.byte	W01
	.byte		v086
	.byte	W01
	.byte		v088
	.byte	W01
	.byte		v090
	.byte	W01
	.byte		v092
	.byte	W01
	.byte		v094
	.byte	W01
	.byte		v097
	.byte	W01
	.byte		v099
	.byte	W01
	.byte		v101
	.byte	W01
	.byte		v103
	.byte	W01
	.byte		v105
	.byte	W01
	.byte		v107
	.byte	W01
	.byte		v110
	.byte	W04
	.byte		N60	, Fn3, v127
	.byte		N60	, An3
	.byte	W05
	.byte	VOL	, v107
	.byte	W01
	.byte		v099
	.byte	W01
	.byte		v088
	.byte	W01
	.byte		v077
	.byte	W01
	.byte		v069
	.byte	W01
	.byte		v058
	.byte	W01
	.byte		v056
	.byte	W01
	.byte		v057
	.byte	W01
	.byte		v058
	.byte	W01
	.byte		v059
	.byte	W01
	.byte		v061
	.byte	W01
	.byte		v062
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
	.byte		v071
	.byte	W01
	.byte		v072
	.byte	W01
	.byte		v073
	.byte	W01
	.byte		v074
	.byte	W01
	.byte		v076
	.byte	W01
	.byte		v077
	.byte	W01
	.byte		v078
	.byte	W01
	.byte		v079
	.byte	W01
	.byte		v081
	.byte	W01
	.byte		v082
	.byte	W01
	.byte		v083
	.byte	W01
	.byte		v084
	.byte	W01
	.byte		v086
	.byte	W01
	.byte		v087
	.byte	W01
	.byte		v088
	.byte	W01
	.byte		v089
	.byte	W01
	.byte		v091
	.byte	W01
	.byte		v092
	.byte	W01
	.byte		v093
	.byte	W01
	.byte		v094
	.byte	W01
	.byte		v096
	.byte	W01
	.byte		v097
	.byte	W01
	.byte		v098
	.byte	W01
	.byte		v099
	.byte	W01
	.byte		v100
	.byte	W01
	.byte		v101
	.byte	W01
	.byte		v102
	.byte	W01
	.byte		v103
	.byte	W01
	.byte		v105
	.byte	W01
	.byte		v106
	.byte	W01
	.byte		v107
	.byte	W01
	.byte		v108
	.byte	W01
	.byte		v110
	.byte	W05
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
	.byte	W72
	.byte		N04	, Fn2, v104
	.byte		N04	, Fn3
	.byte	W04
	.byte			Gn2, v120
	.byte		N04	, Gn3
	.byte	W04
	.byte			Gs2, v112
	.byte		N04	, Gs3
	.byte	W04
	.byte			As2, v124
	.byte		N04	, As3
	.byte	W04
	.byte			Cn3, v116
	.byte		N04	, Cn4
	.byte	W04
	.byte			Dn3, v127
	.byte		N04	, Dn4
	.byte	W04
	.byte		N08	, Ds3
	.byte		N08	, Ds4
	.byte	W96
song040_6_4:
	.byte	W12
	.byte		N11	, As2, v080
	.byte		N11	, As3
	.byte	W12
	.byte		N09	, Cn3, v084
	.byte		N09	, Cn4
	.byte	W12
	.byte		N07	, Ds3, v088
	.byte		N07	, Ds4
	.byte	W24
	.byte		N16	, Ds2, v080
	.byte		N16	, Ds3
	.byte	W24
	.byte		TIE	, Ds2, v072
	.byte		TIE	, Ds3
	.byte	W12
	.byte	PEND
	.byte	W96
	.byte	W24
	.byte	W03
	.byte		EOT	, Ds2
	.byte			Ds3
	.byte	W44
	.byte	W01
	.byte		N04	, Fn2, v104
	.byte		N04	, Fn3
	.byte	W04
	.byte			Gn2, v120
	.byte		N04	, Gn3
	.byte	W04
	.byte			Gs2, v112
	.byte		N04	, Gs3
	.byte	W04
	.byte			As2, v124
	.byte		N04	, As3
	.byte	W04
	.byte			Cn3, v116
	.byte		N04	, Cn4
	.byte	W04
	.byte			Dn3, v127
	.byte		N04	, Dn4
	.byte	W04
	.byte		N08	, Ds3
	.byte		N08	, Ds4
	.byte	W96
	.byte	PATT	
		mPtr	song040_6_4
	.byte	W96
	.byte	W24
	.byte	W03
	.byte		EOT	, Ds2
	.byte			Ds3
	.byte	W44
	.byte	W01
	.byte		N04	, Fn2, v104
	.byte		N04	, Fn3
	.byte	W04
	.byte			Gn2, v120
	.byte		N04	, Gn3
	.byte	W04
	.byte			Gs2, v112
	.byte		N04	, Gs3
	.byte	W04
	.byte			As2, v124
	.byte		N04	, As3
	.byte	W04
	.byte			Cn3, v116
	.byte		N04	, Cn4
	.byte	W04
	.byte			Dn3, v127
	.byte		N04	, Dn4
	.byte	W04
	.byte		N80	, Ds3, v068
	.byte		N08	, Ds4, v127
	.byte	W84
	.byte		N05	, Ds3, v108
	.byte	W06
	.byte			Ds3, v124
	.byte	W06
	.byte		N88	, Ds3, v100
	.byte		N88	, Gn3
	.byte	W96
	.byte		N78	
	.byte		N80	, As3, v124
	.byte	W84
	.byte		N04	, Gn3, v100
	.byte		N05	, As3, v124
	.byte	W06
	.byte		N04	, Gn3, v108
	.byte		N05	, As3, v127
	.byte	W06
	.byte		N84	, Gn3
	.byte		N88	, As3
	.byte	W96
	.byte		N12	, Ds3, v124
	.byte		N13	, Ds4, v127
	.byte	W48
	.byte		N14	, Ds1, v124
	.byte		N14	, Ds2, v127
	.byte	W14
	.byte	FINE

	                                                        

	.global song040_7
song040_7:	            
	.byte	KEYSH	, 0
	.byte	VOICE	, 85
	.byte	PAN	, c_v
	.byte	BENDR	, 3
	.byte	VOL	, v127
	.byte	LFOS	, 31
	.byte	LFODL	, 22
	.byte	MOD	, 0
	.byte	MODT	, 0
	.byte	W48
song040_7_1:
	.byte		N05	, Gn2, v100
	.byte	W12
	.byte			Gn2, v096
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			Gn2, v092
	.byte	W12
	.byte			Gn2, v096
	.byte	W12
	.byte			Gn2, v088
	.byte	W12
	.byte			Gn2, v096
	.byte	W12
	.byte			Gn2, v104
	.byte	W12
	.byte	PEND
	.byte			Gn2, v100
	.byte	W12
	.byte			Gn2, v096
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			Gn2, v092
	.byte	W12
	.byte			Gn2, v096
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			Gn2, v092
	.byte	W12
	.byte			Gn2, v096
	.byte	W12
	.byte	PATT	
		mPtr	song040_7_1
	.byte		N05	, Gn2, v100
	.byte	W12
	.byte			Gn2, v096
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			Gn2, v092
	.byte	W12
	.byte			Gn2, v096
	.byte	W06
	.byte			Gn2, v088
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte			Gn2, v096
	.byte	W05
	.byte	FINE

	                                                        

	.global song040_8
song040_8:	            
	.byte	KEYSH	, 0
	.byte	VOICE	, 0
	.byte	VOL	, v055
	.byte	PAN	, c_v
	.byte	BENDR	, 12
	.byte	LFOS	, 31
	.byte	LFODL	, 22
	.byte	MOD	, 2
	.byte	MODT	, 0
	.byte	W48
	.byte	W96
	.byte	W92
	.byte	BEND	, c_v-64
	.byte	W04
	.byte		TIE	, Gn4, v100
	.byte	W72
	.byte	W03
	.byte	BEND	, c_v-64
	.byte	W02
	.byte		c_v-59
	.byte	W01
	.byte		c_v-54
	.byte	W02
	.byte		c_v-49
	.byte	W01
	.byte		c_v-44
	.byte	W02
	.byte		c_v-39
	.byte	W01
	.byte		c_v-34
	.byte	W02
	.byte		c_v-29
	.byte	W01
	.byte		c_v-24
	.byte	W02
	.byte		c_v-19
	.byte	W01
	.byte		c_v-14
	.byte	W02
	.byte		c_v-9
	.byte	W01
	.byte		c_v-4
	.byte	W01
	.byte		c_v
	.byte	W02
	.byte	W80
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		N22	, Gn3, v127
	.byte	W12
	.byte	W12
	.byte		N09	
	.byte	W84
	.byte	W60
	.byte		N11	, Dn4
	.byte	W12
	.byte		N05	, Cn4, v120
	.byte	W12
	.byte		N68	, As3, v127
	.byte	W12
	.byte	W60
	.byte		N11	, Fn3, v108
	.byte	W12
	.byte		N05	, Gn3
	.byte	W12
	.byte		N64	, Cn4, v127
	.byte	W12
	.byte	W60
	.byte		N11	, Gn3, v108
	.byte	W12
	.byte		N08	, An3, v096
	.byte	W12
	.byte		N21	, Bn3, v127
	.byte	W12
	.byte	W12
	.byte		N11	
	.byte	W84
	.byte	W60
	.byte			Dn4
	.byte	W12
	.byte		N05	, Cn4, v112
	.byte	W12
	.byte		N68	, As3, v127
	.byte	W12
	.byte	W60
	.byte		N05	, Fn3, v088
	.byte	W12
	.byte		N03	, Gn3, v096
	.byte	W12
	.byte		N64	, Cn4, v124
	.byte	W12
	.byte	W72
	.byte		N04	, Cs4, v112
	.byte	W12
	.byte		N44	, Dn4
	.byte	W12
	.byte	W36
	.byte		N10	, Dn4, v108
	.byte	W60
song040_8_1:
	.byte	W60
	.byte		N11	, An4, v127
	.byte	W12
	.byte		N06	, Gn4
	.byte	W12
	.byte		N60	, Fn4
	.byte	W12
	.byte	PEND
song040_8_2:
	.byte	W60
	.byte		N17	, Fn3, v127
	.byte	W24
	.byte		N66	, Dn4
	.byte	W12
	.byte	PEND
	.byte	W60
	.byte		N11	
	.byte	W12
	.byte		N05	, En4
	.byte	W12
	.byte			Fn4
	.byte	W06
	.byte		N32	, Fs4
	.byte	W06
	.byte	W36
	.byte		N10	
	.byte	W60
	.byte	PATT	
		mPtr	song040_8_1
	.byte	PATT	
		mPtr	song040_8_2
	.byte	W60
	.byte		N11	, Fn4, v127
	.byte	W12
	.byte		N08	, Gn4
	.byte	W12
	.byte		N23	, En4
	.byte	W12
	.byte	W12
	.byte		N28	, An4
	.byte	W36
	.byte		N42	, En4
	.byte	W48
	.byte		N13	, En3
	.byte	W60
	.byte		N05	, An3
	.byte	W12
	.byte		N11	, Fn4
	.byte	W12
	.byte		N21	, Dn4
	.byte	W12
	.byte	W24
	.byte		N16	, Cn4
	.byte	W24
	.byte		N15	, Bn3
	.byte	W24
	.byte		N17	, As3
	.byte	W24
	.byte		N18	, An3
	.byte	W24
	.byte		N10	, Dn4
	.byte	W12
	.byte		N24	, Gn3
	.byte	W36
	.byte		N11	, Fn3
	.byte	W12
	.byte		N76	, Dn3
	.byte	W12
	.byte	W72
	.byte		N20	, Gn3
	.byte	W24
	.byte		N11	, Dn4
	.byte	W12
	.byte			Cn4
	.byte	W12
	.byte			As3
	.byte	W12
	.byte		N23	, Cn4
	.byte	W24
	.byte		N11	, As3
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N10	, Fs4
	.byte	W36
	.byte		N11	, Cn4
	.byte	W24
	.byte		N15	, Bn3
	.byte	W24
	.byte		N18	, An3
	.byte	W24
	.byte		N10	, Dn4
	.byte	W12
	.byte		N24	, Gn3
	.byte	W36
	.byte		N11	, Dn4
	.byte	W12
	.byte		N76	, Gn3
	.byte	W12
	.byte	W72
	.byte		N20	, Dn3
	.byte	W24
	.byte	VOL	, v055
	.byte		N11	, Dn4, v100
	.byte	W12
	.byte			Cn4, v096
	.byte	W12
	.byte		N09	, As3, v104
	.byte	W12
	.byte		N19	, Cn4, v120
	.byte	W24
	.byte		N10	, Dn4, v096
	.byte	W12
	.byte			En4, v092
	.byte	W12
	.byte		TIE	, Fn4, v108
	.byte	W09
	.byte	VOL	, v055
	.byte	W03
	.byte		v054
	.byte	W01
	.byte		v053
	.byte	W02
	.byte		v052
	.byte	W01
	.byte		v051
	.byte	W01
	.byte		v050
	.byte	W02
	.byte		v049
	.byte	W01
	.byte		v048
	.byte	W01
	.byte		v047
	.byte	W02
	.byte		v046
	.byte	W01
	.byte		v045
	.byte	W02
	.byte		v044
	.byte	W01
	.byte		v043
	.byte	W01
	.byte		v042
	.byte	W02
	.byte		v041
	.byte	W01
	.byte		v040
	.byte	W01
	.byte		v039
	.byte	W02
	.byte		v038
	.byte	W01
	.byte		v037
	.byte	W02
	.byte		v036
	.byte	W01
	.byte		v035
	.byte	W01
	.byte		v034
	.byte	W02
	.byte		v033
	.byte	W01
	.byte		v032
	.byte	W01
	.byte		v031
	.byte	W02
	.byte		v030
	.byte	W01
	.byte		v029
	.byte	W02
	.byte		v028
	.byte	W01
	.byte		v027
	.byte	W01
	.byte		v026
	.byte	W02
	.byte		v025
	.byte	W01
	.byte		v024
	.byte	W01
	.byte		v023
	.byte	W02
	.byte		v022
	.byte	W01
	.byte		v021
	.byte	W02
	.byte		v020
	.byte	W01
	.byte		v019
	.byte	W01
	.byte		v018
	.byte	W02
	.byte		v017
	.byte	W01
	.byte		v016
	.byte	W01
	.byte		v015
	.byte	W02
	.byte		v014
	.byte	W01
	.byte		v013
	.byte	W02
	.byte		v012
	.byte	W01
	.byte		v011
	.byte	W01
	.byte		v010
	.byte	W02
	.byte		v009
	.byte	W01
	.byte		v008
	.byte	W01
	.byte		v007
	.byte	W02
	.byte		v006
	.byte	W01
	.byte		v005
	.byte	W02
	.byte		v004
	.byte	W01
	.byte		v003
	.byte	W01
	.byte		v002
	.byte	W02
	.byte		v001
	.byte	W01
	.byte		v000
	.byte	W14
	.byte		EOT	
	.byte	W08
	.byte	VOICE	, 2
	.byte	VOL	, v065
	.byte	PAN	, c_v
	.byte	BENDR	, 12
	.byte	LFOS	, 31
	.byte	LFODL	, 22
	.byte	MOD	, 2
	.byte	MODT	, 0
	.byte	W96
song040_8_3:
	.byte	W48
	.byte		N04	, Ds2, v004
	.byte	W04
	.byte			Fn2
	.byte	W04
	.byte			Gn2, v008
	.byte	W04
	.byte			As2, v012
	.byte	W04
	.byte			Ds3
	.byte	W04
	.byte			Fn3, v016
	.byte	W04
	.byte			Gn3, v020
	.byte	W04
	.byte			As3
	.byte	W04
	.byte			Ds4, v024
	.byte	W04
	.byte			As3, v028
	.byte	W04
	.byte			Gn3, v032
	.byte	W04
	.byte			Fn3
	.byte	W04
	.byte	PEND
song040_8_4:
	.byte		N04	, Ds3, v036
	.byte	W04
	.byte			Fn3, v040
	.byte	W04
	.byte			Gn3
	.byte	W04
	.byte			As3, v044
	.byte	W04
	.byte			Ds4, v048
	.byte	W04
	.byte			Fn4, v052
	.byte	W04
	.byte			Gn4
	.byte	W04
	.byte			As4, v056
	.byte	W04
	.byte			Ds5, v060
	.byte	W04
	.byte			As4
	.byte	W04
	.byte			Gn4, v064
	.byte	W04
	.byte			Fn4, v068
	.byte	W04
	.byte			Ds4, v072
	.byte	W04
	.byte			Fn4
	.byte	W04
	.byte			Gn4, v076
	.byte	W04
	.byte			As4, v080
	.byte	W04
	.byte			Ds5
	.byte	W04
	.byte			Fn5, v084
	.byte	W04
	.byte			Gn5, v072
	.byte	W04
	.byte			As5
	.byte	W04
	.byte			Ds6, v068
	.byte	W04
	.byte			As5
	.byte	W04
	.byte			Gn5, v064
	.byte	W04
	.byte			Fn5
	.byte	W04
	.byte	PEND
	.byte			Ds5, v060
	.byte	W04
	.byte			As4, v056
	.byte	W04
	.byte			Gn4
	.byte	W04
	.byte			Fn4, v052
	.byte	W04
	.byte			Gn4
	.byte	W04
	.byte			As4, v048
	.byte	W04
	.byte			Ds5, v044
	.byte	W04
	.byte			As4
	.byte	W04
	.byte			Gn4, v040
	.byte	W04
	.byte			Fn4
	.byte	W04
	.byte			Ds4, v036
	.byte	W04
	.byte			As3, v032
	.byte	W04
	.byte			Gn3
	.byte	W04
	.byte			Fn3, v028
	.byte	W04
	.byte			Gn3
	.byte	W04
	.byte			As3, v024
	.byte	W04
	.byte			Ds4, v020
	.byte	W04
	.byte			As3
	.byte	W04
	.byte			Gn3, v016
	.byte	W04
	.byte			Fn3
	.byte	W04
	.byte			Ds3, v012
	.byte	W04
	.byte			As2
	.byte	W04
	.byte			Ds2, v008
	.byte	W08
	.byte	W96
	.byte	PATT	
		mPtr	song040_8_3
	.byte	PATT	
		mPtr	song040_8_4
	.byte		N04	, Fs5, v060
	.byte	W04
	.byte			Cs5, v056
	.byte	W04
	.byte			As4
	.byte	W04
	.byte			Gs4, v052
	.byte	W04
	.byte			As4
	.byte	W04
	.byte			Cs5, v048
	.byte	W04
	.byte			Fs5, v044
	.byte	W04
	.byte			Cs5
	.byte	W04
	.byte			As4, v040
	.byte	W04
	.byte			Gs4
	.byte	W04
	.byte			Fs4, v036
	.byte	W04
	.byte			Cs4, v032
	.byte	W04
	.byte			As3
	.byte	W04
	.byte			Gs3, v028
	.byte	W04
	.byte			As3
	.byte	W04
	.byte			Cs4, v024
	.byte	W04
	.byte			Fs4, v020
	.byte	W04
	.byte			Cs4
	.byte	W04
	.byte			As3, v016
	.byte	W04
	.byte			Gs3
	.byte	W04
	.byte			Fs3, v012
	.byte	W04
	.byte			Cs3
	.byte	W04
	.byte			Fs2, v008
	.byte	W08
	.byte	W96
	.byte	W96
	.byte			Fs2, v020
	.byte	W04
	.byte			Gs2
	.byte	W04
	.byte			As2, v024
	.byte	W04
	.byte			Cs3, v028
	.byte	W04
	.byte			Fs3
	.byte	W04
	.byte			Gs3, v032
	.byte	W04
	.byte			As3, v036
	.byte	W04
	.byte			Cs4
	.byte	W04
	.byte			Fs4, v040
	.byte	W04
	.byte			Cs4, v044
	.byte	W04
	.byte			As3, v048
	.byte	W04
	.byte			Gs3
	.byte	W04
	.byte			Fs3, v052
	.byte	W04
	.byte			Gs3, v056
	.byte	W04
	.byte			As3
	.byte	W04
	.byte			Cs4, v060
	.byte	W04
	.byte			Fs4, v064
	.byte	W04
	.byte			Gs4, v068
	.byte	W04
	.byte			As4
	.byte	W04
	.byte			Cs5, v072
	.byte	W04
	.byte			Fs5, v076
	.byte	W04
	.byte			Cs5
	.byte	W04
	.byte			As4, v080
	.byte	W04
	.byte			Gs4, v084
	.byte	W04
	.byte	W36
	.byte		N06	, Cs4, v044
	.byte	W06
	.byte			As3, v040
	.byte	W06
	.byte			Fs4, v044
	.byte	W06
	.byte			Cs4, v040
	.byte	W06
	.byte			As3, v044
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			As3, v048
	.byte	W06
	.byte			Gs3, v060
	.byte	W06
	.byte			Fs3, v056
	.byte	W06
	.byte			Cs3, v060
	.byte	W06
	.byte	W36
	.byte			Ds3, v036
	.byte	W06
	.byte			As2, v048
	.byte	W06
	.byte			Bn2, v036
	.byte	W06
	.byte			Ds3, v044
	.byte	W06
	.byte			Gs3, v056
	.byte	W06
	.byte			Fs3, v048
	.byte	W06
	.byte			Fn3, v040
	.byte	W06
	.byte			Gs3, v060
	.byte	W06
	.byte			Cs4
	.byte	W12
	.byte	W36
	.byte			Dn4, v044
	.byte	W06
	.byte			Bn3, v040
	.byte	W06
	.byte			Gn4, v044
	.byte	W06
	.byte			Dn4, v040
	.byte	W06
	.byte			Bn3, v044
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Bn3, v048
	.byte	W06
	.byte			An3, v060
	.byte	W06
	.byte			Gn3, v056
	.byte	W06
	.byte			Dn3, v060
	.byte	W06
	.byte	W36
	.byte			Gn3, v044
	.byte	W06
	.byte			Ds3, v036
	.byte	W06
	.byte			Fn3, v040
	.byte	W06
	.byte			Gn3, v044
	.byte	W06
	.byte			An3, v048
	.byte	W06
	.byte			As3, v044
	.byte	W06
	.byte		N04	, Gn3, v036
	.byte	W04
	.byte			An3, v044
	.byte	W04
	.byte			As3, v036
	.byte	W04
	.byte			Cn4, v032
	.byte	W04
	.byte			Dn4, v040
	.byte	W04
	.byte			Ds4, v044
	.byte	W04
	.byte		TIE	, Fn4, v048
	.byte	W96
	.byte	W68
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		N04	, Fn3, v036
	.byte	W04
	.byte			Gn3, v040
	.byte	W04
	.byte			An3
	.byte	W04
	.byte			As3, v048
	.byte	W04
	.byte			Cn4, v036
	.byte	W04
	.byte			Dn4, v048
	.byte	W04
	.byte		N96	, Ds4
	.byte	W96
	.byte		N48	, As4
	.byte	W48
	.byte			An4
	.byte	W48
	.byte		TIE	, Fn4
	.byte	W96
	.byte	W72
	.byte		EOT	
	.byte		N04	, Fn3, v036
	.byte	W04
	.byte			Gn3, v040
	.byte	W04
	.byte			An3
	.byte	W04
	.byte			As3, v048
	.byte	W04
	.byte			Cn4, v036
	.byte	W04
	.byte			Dn4, v048
	.byte	W04
	.byte		N96	, Cn4
	.byte	W96
	.byte		N48	
	.byte	W48
	.byte		N24	
	.byte	W24
	.byte			Cs4
	.byte	W24
	.byte		TIE	, Cn4
	.byte	W96
	.byte	W96
	.byte		EOT	
	.byte		N96	, As3
	.byte	W96
	.byte		N96	
	.byte	W96
	.byte			Cn4
	.byte	W96
	.byte			Dn4
	.byte	W96
	.byte		TIE	, As3
	.byte	W96
	.byte	W96
	.byte		EOT	
	.byte		N96	, Cn4
	.byte	W96
	.byte			Ds4
	.byte	W96
	.byte		TIE	, As3
	.byte	W96
	.byte	W96
	.byte		EOT	
	.byte		N96	, Bn3
	.byte	W96
	.byte			Ds4
	.byte	W96
	.byte		TIE	, As3
	.byte	W96
	.byte	W96
	.byte		EOT	
	.byte		TIE	
	.byte	W96
	.byte	W96
	.byte		EOT	
	.byte		N12	, Ds4, v044
	.byte	W48
	.byte			Ds3
	.byte	W12
	.byte	FINE

	                                                        

	.global song040_9
song040_9:	            
	.byte	KEYSH	, 0
	.byte	VOICE	, 77
	.byte	VOL	, v127
	.byte	PAN	, c_v
	.byte	BENDR	, 3
	.byte	LFOS	, 31
	.byte	LFODL	, 22
	.byte	MOD	, 0
	.byte	MODT	, 0
	.byte	W48
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
	.byte	W48
	.byte		N36	, Ds4, v056
	.byte	W48
	.byte		N28	, Gn4, v112
	.byte	W48
	.byte		N36	, As4, v120
	.byte	W48
	.byte		N44	, Gs4, v127
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N09	, Gn4, v112
	.byte	W48
	.byte		N30	, As4, v127
	.byte	W48
	.byte		N36	, Bn4, v116
	.byte	W96
	.byte	W96
	.byte	W48
	.byte		N12	, Fs4, v112
	.byte	W48
	.byte		N30	, As4, v120
	.byte	W48
	.byte			Cs5, v124
	.byte	W48
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W48
	.byte		N44	, As3, v100
	.byte		N44	, Fn4
	.byte	W48
	.byte			Dn4, v104
	.byte		N44	, As4
	.byte	W48
	.byte			Fn4, v092
	.byte		N44	, Dn5
	.byte	W48
	.byte		N92	, Gn4, v120
	.byte		N92	, Ds5
	.byte	W96
	.byte		N76	, As3, v052
	.byte		N76	, Gn4
	.byte	W96
	.byte	W48
	.byte		N44	, Dn4, v060
	.byte		N44	, As4
	.byte	W48
	.byte			Fn4, v112
	.byte		N44	, Dn5
	.byte	W48
	.byte			As4, v088
	.byte		N44	, Fn5
	.byte	W48
	.byte		N72	, Gn4, v092
	.byte		N72	, Ds5
	.byte	W84
	.byte		N05	, Fn4, v072
	.byte		N05	, Dn5
	.byte	W06
	.byte			En4
	.byte		N05	, Cs5
	.byte	W06
	.byte		N68	, Ds4, v080
	.byte		N68	, Cn5
	.byte	W72
	.byte		N23	, Ds4, v096
	.byte		N23	, Cn5
	.byte	W24
	.byte		N44	, Gs4, v112
	.byte		N44	, Ds5
	.byte	W48
	.byte		N48	, Cn4
	.byte		N48	, Gs4
	.byte	W48
	.byte	W24
	.byte		N19	, Cn4, v080
	.byte		N19	, Gs4
	.byte	W24
	.byte		N23	, Gs4, v084
	.byte		N23	, Fn5
	.byte	W24
	.byte		N22	, Gn4, v096
	.byte		N22	, Ds5
	.byte	W24
	.byte		N68	, Fn4, v104
	.byte		N68	, Dn5
	.byte	W72
	.byte		N28	, Dn4, v068
	.byte		N28	, As4
	.byte	W24
	.byte	W48
	.byte		N21	, Cn5, v124
	.byte		N21	, Gs5
	.byte	W24
	.byte		N18	, As4, v072
	.byte		N18	, Gn5
	.byte	W24
	.byte		N44	, Cn5, v120
	.byte		N44	, Gn5
	.byte	W48
	.byte		N60	, Gs4, v088
	.byte		N60	, Ds5
	.byte	W48
	.byte	W24
	.byte		N23	, Fn4, v080
	.byte		N23	, Dn5
	.byte	W24
	.byte			Gn4
	.byte		N23	, Ds5
	.byte	W24
	.byte			Gs4, v100
	.byte		N23	, Fn5
	.byte	W24
	.byte		N30	, Gn4, v116
	.byte		N30	, Ds5
	.byte	W30
	.byte	FINE

	                                                         

	.global song040_10
song040_10:	            
	.byte	KEYSH	, 0
	.byte	VOICE	, 93
	.byte	VOL	, v110
	.byte	PAN	, c_v
	.byte	BENDR	, 3
	.byte	LFOS	, 31
	.byte	LFODL	, 22
	.byte	MOD	, 0
	.byte	MODT	, 0
	.byte	W48
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W84
	.byte		N20	, Gn3, v112
	.byte	W12
	.byte	W12
	.byte		N11	, Gn3, v096
	.byte	W12
	.byte		N05	, As3, v068
	.byte		N11	, Bn3, v084
	.byte		N11	, Dn4, v096
	.byte	W12
	.byte			Gn3, v084
	.byte	W12
	.byte			Cn4
	.byte		N11	, En4, v088
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte		N05	, As3, v056
	.byte		N11	, Bn3, v076
	.byte		N11	, Dn4, v080
	.byte	W12
	.byte		N16	, Gn3, v096
	.byte	W12
	.byte	W12
	.byte		N11	, Gn3, v108
	.byte	W12
	.byte		N05	, As3, v072
	.byte		N10	, Bn3, v084
	.byte		N10	, Dn4, v096
	.byte	W12
	.byte			Gn3, v084
	.byte	W12
	.byte			Cn4
	.byte		N10	, En4, v096
	.byte	W12
	.byte		N11	, Gn3, v076
	.byte	W12
	.byte		N03	, As3, v072
	.byte		N09	, Bn3, v084
	.byte		N09	, Dn4, v096
	.byte	W12
	.byte		N40	, Fn3, v108
	.byte		N44	, Dn4, v104
	.byte	W12
	.byte	W36
	.byte		N07	, Fn3, v088
	.byte		N08	, Dn4, v080
	.byte	W12
	.byte			Fn3, v084
	.byte		N08	, Dn4, v104
	.byte	W12
	.byte		N06	, Fn3, v096
	.byte		N07	, Dn4, v092
	.byte	W12
	.byte			Fn3, v080
	.byte		N11	, Dn4, v096
	.byte	W12
	.byte		N28	, Gn3, v120
	.byte		N30	, En4, v108
	.byte	W12
	.byte	W24
	.byte		N18	, Gn3, v096
	.byte		N19	, En4
	.byte	W24
	.byte		N08	, Gn3, v092
	.byte		N09	, En4, v096
	.byte	W12
	.byte		N20	, Gn3, v104
	.byte		N13	, En4, v096
	.byte	W24
	.byte		N03	, As3, v084
	.byte		N21	, Bn3
	.byte		N21	, Dn4, v092
	.byte	W12
	.byte	W12
	.byte		N10	, Gn3, v100
	.byte	W12
	.byte		N05	, As3, v076
	.byte		N11	, Bn3, v072
	.byte		N11	, Dn4, v092
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			Cn4, v084
	.byte		N11	, En4, v096
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte		N03	, As3, v068
	.byte		N11	, Bn3, v080
	.byte		N11	, Dn4, v096
	.byte	W12
	.byte		N17	, Gn3, v092
	.byte	W12
	.byte	W12
	.byte		N11	, Gn3, v104
	.byte	W12
	.byte		N04	, As3, v072
	.byte		N11	, Bn3, v076
	.byte		N11	, Dn4, v096
	.byte	W12
	.byte			Gn3, v088
	.byte	W12
	.byte			Cn4, v076
	.byte		N11	, En4, v100
	.byte	W12
	.byte		N09	, Gn3, v080
	.byte	W12
	.byte		N06	, As3
	.byte		N10	, Bn3, v068
	.byte		N08	, Dn4, v084
	.byte	W12
	.byte		N44	, Fn3, v116
	.byte		N44	, Dn4, v108
	.byte	W12
	.byte	W36
	.byte		N08	, Fn3, v092
	.byte		N07	, Dn4, v108
	.byte	W12
	.byte			Fn3, v104
	.byte		N08	, Dn4
	.byte	W12
	.byte		N19	, Fn3, v092
	.byte		N23	, Dn4, v104
	.byte	W24
	.byte		N30	, Gn3, v116
	.byte		N32	, En4, v108
	.byte	W12
	.byte	W24
	.byte		N18	, Gn3, v092
	.byte		N19	, En4, v100
	.byte	W24
	.byte		N07	, Gn3, v088
	.byte		N07	, En4, v108
	.byte	W12
	.byte		N18	, Gn3, v092
	.byte		N08	, En4
	.byte	W12
	.byte		N07	, En4, v108
	.byte	W12
	.byte		N19	, An3, v096
	.byte		N24	, Fs4, v124
	.byte	W12
	.byte	W12
	.byte		N09	, An3, v076
	.byte	W12
	.byte		N08	, Dn4, v088
	.byte		N11	, Fs4, v108
	.byte	W12
	.byte		N09	, An3, v052
	.byte	W12
	.byte		N03	, Ds4, v072
	.byte		N10	, En4, v096
	.byte		N11	, Gn4
	.byte	W12
	.byte			An3, v072
	.byte	W12
	.byte		N08	, Dn4, v096
	.byte		N11	, Fs4, v108
	.byte	W12
	.byte		N18	, An3, v064
	.byte	W12
	.byte	W12
	.byte		N09	, An3, v100
	.byte	W12
	.byte		N08	, Dn4
	.byte		N11	, Fs4, v112
	.byte	W12
	.byte			An3, v072
	.byte	W12
	.byte		N05	, Ds4, v088
	.byte		N10	, En4, v076
	.byte		N11	, Gn4, v100
	.byte	W12
	.byte			An3, v084
	.byte	W12
	.byte		N08	, Dn4, v096
	.byte		N10	, Fs4, v100
	.byte	W12
	.byte		N40	, An3, v092
	.byte		N40	, Fn4, v076
	.byte	W12
	.byte	W36
	.byte		N09	, An3, v088
	.byte		N08	, Fn4, v096
	.byte	W12
	.byte		N09	, An3, v108
	.byte		N09	, Fn4, v112
	.byte	W12
	.byte		N19	, An3, v104
	.byte		N21	, Fn4
	.byte	W24
	.byte		N32	, Bn3
	.byte		N32	, Dn4
	.byte	W12
	.byte	W24
	.byte		N08	, Bn3, v088
	.byte		N09	, Dn4, v120
	.byte	W12
	.byte		N20	, Bn3, v108
	.byte		N20	, Gn4, v112
	.byte	W24
	.byte		N07	, Bn3, v068
	.byte		N09	, Dn4, v092
	.byte	W12
	.byte		N05	, Bn3, v084
	.byte		N09	, Gn4, v104
	.byte	W12
	.byte		N20	, An3, v072
	.byte		N20	, Fs4
	.byte	W12
	.byte	W12
	.byte		N11	, An3, v080
	.byte	W12
	.byte		N09	, Dn4, v100
	.byte		N11	, Fs4, v108
	.byte	W12
	.byte			An3, v056
	.byte	W12
	.byte		N05	, Ds4, v096
	.byte		N12	, En4, v076
	.byte		N13	, Gn4, v104
	.byte	W12
	.byte		N11	, An3, v076
	.byte	W12
	.byte			Dn4, v096
	.byte		N11	, Fs4, v108
	.byte	W12
	.byte		N16	, An3, v076
	.byte	W12
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N11	, Dn4, v100
	.byte		N11	, Fs4, v104
	.byte	W12
	.byte			An3, v080
	.byte	W12
	.byte		N06	, Ds4, v068
	.byte		N09	, En4, v076
	.byte		N10	, Gn4, v096
	.byte	W12
	.byte		N11	, An3, v092
	.byte	W12
	.byte		N08	, Dn4, v096
	.byte		N09	, Fs4, v108
	.byte	W12
	.byte		N30	, An3, v100
	.byte		N36	, Fn4, v112
	.byte	W12
	.byte	W36
	.byte		N05	, An3, v076
	.byte		N08	, Fn4, v096
	.byte	W12
	.byte			An3
	.byte		N08	, Fn4
	.byte	W12
	.byte		N09	, An3, v104
	.byte		N10	, Fn4, v092
	.byte	W12
	.byte		N07	, An3, v076
	.byte		N12	, Fn4, v064
	.byte	W12
	.byte		N05	, Bn3, v112
	.byte		N28	, Dn4, v104
	.byte	W12
	.byte	W24
	.byte		N11	, Cn4, v076
	.byte		N14	, Gn4, v100
	.byte	W24
	.byte		N08	, Bn3, v084
	.byte		N08	, Gn4, v104
	.byte	W12
	.byte		N06	, Bn3, v044
	.byte		N08	, Gn4, v072
	.byte	W12
	.byte		N06	, Bn3, v068
	.byte		N07	, Gn4, v092
	.byte	W12
	.byte		N13	, Dn4, v096
	.byte		N15	, An4, v108
	.byte	W12
	.byte	W12
	.byte		N08	, Dn4, v096
	.byte		N07	, An4, v084
	.byte	W12
	.byte			Dn4, v096
	.byte		N08	, An4, v112
	.byte	W12
	.byte		N06	, Dn4, v088
	.byte		N08	, An4, v096
	.byte	W12
	.byte			Dn4
	.byte		N07	, An4, v084
	.byte	W12
	.byte			Dn4, v096
	.byte		N08	, An4, v112
	.byte	W12
	.byte		N06	, Dn4, v088
	.byte		N08	, An4, v096
	.byte	W12
	.byte		N10	, Dn4, v092
	.byte		N10	, An4, v104
	.byte	W12
	.byte		N14	, Cs4, v116
	.byte		N12	, An4, v124
	.byte	W36
	.byte		N10	, Cs4, v116
	.byte		N19	, An4, v112
	.byte	W24
	.byte		N07	, Cs4, v104
	.byte		N07	, An4, v096
	.byte	W12
	.byte		N11	, Cs4, v080
	.byte		N09	, An4, v100
	.byte	W24
	.byte	W12
	.byte		N02	, Dn4, v084
	.byte		N03	, An4
	.byte	W12
	.byte		N10	, Fn4, v112
	.byte		N14	, An4, v108
	.byte	W12
	.byte		N06	, Fs4, v072
	.byte	W12
	.byte		N10	, Dn4, v096
	.byte		N11	, An4, v092
	.byte	W12
	.byte		N04	, An3, v032
	.byte	W12
	.byte		N10	, Dn4, v096
	.byte		N10	, An4, v100
	.byte	W12
	.byte		N03	, An3, v072
	.byte	W12
	.byte		N07	, An3, v096
	.byte		N07	, Cn4
	.byte	W12
	.byte		N08	, An3, v084
	.byte		N11	, Cn4
	.byte	W12
	.byte		N06	, Gn3, v076
	.byte		N05	, Bn3
	.byte	W12
	.byte		N14	, Fs3, v096
	.byte		N16	, An3, v084
	.byte	W24
	.byte		N09	, Dn3, v076
	.byte	W12
	.byte		N10	, Fs3, v084
	.byte		N11	, An3, v096
	.byte	W12
	.byte		N13	, Dn3, v092
	.byte	W12
	.byte	W12
	.byte		N06	, An3, v108
	.byte		N07	, Cn4, v104
	.byte	W12
	.byte		N17	, An3, v084
	.byte		N16	, Cn4, v096
	.byte	W24
	.byte		N14	, Gn3, v104
	.byte		N17	, Bn3, v096
	.byte	W24
	.byte		N11	, Fn3
	.byte		N14	, An3, v088
	.byte	W24
	.byte		N11	, As3, v116
	.byte		N11	, Dn4, v112
	.byte	W12
	.byte			Fn3, v088
	.byte	W12
	.byte		N08	, As3, v096
	.byte		N07	, Dn4
	.byte	W12
	.byte		N22	, Cn4, v108
	.byte		N21	, En4, v116
	.byte	W24
	.byte		N09	, Gn3, v088
	.byte	W12
	.byte		N11	, Cn4, v092
	.byte		N11	, En4, v104
	.byte	W12
	.byte			An3, v088
	.byte	W12
	.byte		N13	
	.byte	W12
	.byte		N06	, Dn4, v080
	.byte	W12
	.byte		N10	, An3, v084
	.byte		N10	, Fs4
	.byte	W12
	.byte			An3
	.byte		N10	, Fs4
	.byte	W12
	.byte		N09	, Fn4, v108
	.byte		N14	, An4, v104
	.byte	W12
	.byte		N06	, Fs4, v096
	.byte	W12
	.byte		N08	, Dn4, v100
	.byte		N11	, An4, v092
	.byte	W12
	.byte		N08	, An3, v032
	.byte	W12
	.byte		N06	, An3, v100
	.byte		N06	, Cn4, v108
	.byte	W12
	.byte		N09	, An3, v096
	.byte		N11	, Cn4
	.byte	W12
	.byte		N08	, Gn3, v080
	.byte		N04	, Bn3, v084
	.byte	W12
	.byte		N14	, Fs3, v068
	.byte		N16	, An3
	.byte	W24
	.byte		N08	, Dn3, v072
	.byte	W12
	.byte		N10	, Fs3, v080
	.byte		N11	, An3, v096
	.byte	W12
	.byte		N13	, Dn3, v076
	.byte	W12
	.byte	W12
	.byte		N06	, An3, v104
	.byte		N06	, Cn4
	.byte	W12
	.byte		N17	, An3, v084
	.byte		N17	, Cn4, v076
	.byte	W24
	.byte		N12	, Gn3, v104
	.byte		N17	, Bn3, v096
	.byte	W24
	.byte		N10	, Fs3, v080
	.byte		N10	, An3, v068
	.byte	W12
	.byte		N06	, Dn3, v080
	.byte	W12
	.byte		N11	, As3, v108
	.byte		N24	, Dn4, v112
	.byte	W12
	.byte		N11	, Fn3, v084
	.byte	W12
	.byte		N08	, As3, v100
	.byte	W12
	.byte		N21	, Cn4, v104
	.byte		N20	, En4
	.byte	W24
	.byte		N11	, Gn3, v096
	.byte	W12
	.byte			Cn4
	.byte		N11	, En4
	.byte	W12
	.byte		N21	, Cs4, v104
	.byte		N20	, Fn4
	.byte	W12
	.byte	W09
	.byte	FINE

	                                                         

	.global song040_11
song040_11:	            
	.byte	KEYSH	, 0
	.byte	VOICE	, 95
	.byte	VOL	, v110
	.byte	PAN	, c_v
	.byte	BENDR	, 3
	.byte	LFOS	, 31
	.byte	LFODL	, 22
	.byte	MOD	, 0
	.byte	MODT	, 0
	.byte	W48
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
	.byte	W48
	.byte		N44	, Gs2, v100
	.byte	W48
	.byte		N92	, Cs3, v116
	.byte	W48
	.byte		N44	, Gs3, v112
	.byte	W48
	.byte			Ds3, v076
	.byte		N92	, Gn3, v088
	.byte	W48
	.byte		N44	, As2, v076
	.byte	W48
	.byte			As2, v080
	.byte		N92	, Ds3, v068
	.byte	W48
	.byte		N44	, Cn3, v080
	.byte	W48
	.byte			Gs2, v096
	.byte		TIE	, Cs3
	.byte	W48
	.byte		N44	, Fn3, v084
	.byte	W48
	.byte			Gs3, v092
	.byte	W44
	.byte	W03
	.byte		EOT	, Cs3
	.byte	W01
	.byte		N44	, Fn3, v096
	.byte		N44	, Cs4, v068
	.byte	W48
	.byte			Gn3, v100
	.byte		N92	, Ds4
	.byte	W48
	.byte		N44	, As2
	.byte	W48
	.byte		N48	, Fn3, v112
	.byte		N92	, As3, v100
	.byte	W48
	.byte		N44	, Ds3, v112
	.byte	W48
	.byte		TIE	, Bn2, v092
	.byte		N44	, Fs3, v080
	.byte	W48
	.byte			Fn3, v112
	.byte	W48
	.byte			Fs3, v104
	.byte	W44
	.byte	W03
	.byte		EOT	, Bn2
	.byte	W01
	.byte		N44	, Bn2, v124
	.byte		N44	, Ds4
	.byte	W48
	.byte			Fs3
	.byte		N92	, Cs4
	.byte	W48
	.byte		N44	, Cs3, v104
	.byte	W48
	.byte			Fs3, v100
	.byte		N92	, Fs4, v120
	.byte	W48
	.byte		N44	, As3, v100
	.byte	W48
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
	.byte	W96
	.byte	W96
	.byte			As2, v080
	.byte	W48
	.byte			As3, v104
	.byte	W48
	.byte		N92	, Gs3, v088
	.byte	W96
	.byte		N44	, Ds3, v068
	.byte	W48
	.byte			Gs3, v080
	.byte	W48
	.byte		TIE	, Gn3, v096
	.byte	W96
	.byte	W30
	.byte	W01
	.byte		EOT	
	.byte	W64
	.byte	W01
	.byte		N92	, Bn2, v080
	.byte	W96
	.byte		N44	, Fs3
	.byte	W48
	.byte			Bn3, v096
	.byte	W48
	.byte		TIE	, As3, v108
	.byte	W96
	.byte	W64
	.byte	W01
	.byte		EOT	
	.byte	W07
	.byte		N23	, As2, v112
	.byte	W24
	.byte		TIE	, As3, v124
	.byte	W96
	.byte	W44
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		N44	, As2, v112
	.byte	W44
	.byte	W03
	.byte	FINE

	                                                         

	.global song040_12
song040_12:	            
	.byte	KEYSH	, 0
	.byte	VOICE	, 98
	.byte	VOL	, v127
	.byte	PAN	, c_v
	.byte	BENDR	, 3
	.byte	LFOS	, 31
	.byte	LFODL	, 22
	.byte	MOD	, 0
	.byte	MODT	, 0
	.byte	W48
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
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W36
	.byte		N06	, Cs4, v116
	.byte	W06
	.byte			As3, v112
	.byte	W06
	.byte			Fs4, v116
	.byte	W06
	.byte			Cs4, v112
	.byte	W06
	.byte			As3, v116
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			As3, v120
	.byte	W06
	.byte			Gs3, v127
	.byte	W06
	.byte			Fs3, v124
	.byte	W06
	.byte			Cs3, v127
	.byte	W06
	.byte	W36
	.byte			Ds3, v108
	.byte	W06
	.byte			As2, v120
	.byte	W06
	.byte			Bn2, v104
	.byte	W06
	.byte			Ds3, v116
	.byte	W06
	.byte			Gs3, v124
	.byte	W06
	.byte			Fs3, v120
	.byte	W06
	.byte			Fn3, v108
	.byte	W06
	.byte			Gs3, v127
	.byte	W06
	.byte			Cs4
	.byte	W12
	.byte	W36
	.byte			Dn4, v116
	.byte	W06
	.byte			Bn3, v112
	.byte	W06
	.byte			Gn4, v116
	.byte	W06
	.byte			Dn4, v112
	.byte	W06
	.byte			Bn3, v116
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Bn3, v120
	.byte	W06
	.byte			An3, v127
	.byte	W06
	.byte			Gn3, v124
	.byte	W06
	.byte			Dn3, v127
	.byte	W06
	.byte	W36
	.byte			Gn3, v116
	.byte	W06
	.byte			Ds3, v108
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Gn3, v112
	.byte	W06
	.byte			An3, v116
	.byte	W06
	.byte			As3
	.byte	W06
	.byte		N04	, Gn3, v104
	.byte	W04
	.byte			An3, v112
	.byte	W04
	.byte			As3, v108
	.byte	W04
	.byte			Cn4, v100
	.byte	W04
	.byte			Dn4, v108
	.byte	W04
	.byte			Ds4, v116
	.byte	W04
	.byte	VOL	, v060
	.byte		TIE	, Fn4
	.byte	W96
	.byte	W68
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		N04	, Fn3, v104
	.byte	W04
	.byte			Gn3, v108
	.byte	W04
	.byte			An3
	.byte	W04
	.byte			As3, v120
	.byte	W04
	.byte			Cn4, v104
	.byte	W04
	.byte			Dn4, v116
	.byte	W04
	.byte		N96	, Ds4
	.byte	W96
	.byte		N48	, As4
	.byte	W48
	.byte			An4
	.byte	W48
	.byte		TIE	, Fn4
	.byte	W96
	.byte	W72
	.byte		EOT	
	.byte		N04	, Fn3, v104
	.byte	W04
	.byte			Gn3, v108
	.byte	W04
	.byte			An3
	.byte	W04
	.byte			As3, v120
	.byte	W04
	.byte			Cn4, v104
	.byte	W04
	.byte			Dn4, v116
	.byte	W04
	.byte		N96	, Ds4
	.byte	W96
	.byte		N48	
	.byte	W48
	.byte		N24	
	.byte	W24
	.byte			En4
	.byte	W24
	.byte		TIE	, Ds4
	.byte	W96
	.byte	W96
	.byte		EOT	
	.byte		N96	, Dn4
	.byte	W96
	.byte			En4
	.byte	W96
	.byte			Ds4
	.byte	W96
	.byte			Gs4
	.byte	W96
	.byte		TIE	, Gn4
	.byte	W96
	.byte	W96
	.byte		EOT	
	.byte		N96	, Ds4
	.byte	W96
	.byte			Gs4
	.byte	W96
	.byte		TIE	, Gn4
	.byte	W96
	.byte	W96
	.byte		EOT	
	.byte		N96	, Ds4
	.byte	W96
	.byte			Fs4
	.byte	W96
	.byte		TIE	, Gn4
	.byte	W96
	.byte	W96
	.byte		EOT	
	.byte		TIE	
	.byte	W96
	.byte	W96
	.byte		EOT	
	.byte	FINE

	mAlignWord
	.global C_DECL(song040)
C_DECL(song040):	            
	.byte	12		            
	.byte	0		            
	.byte	0		          
	.byte	178		        

mAlignWord
	mPtr	voicegroup000		                 

	mPtr	song040_1		       
	mPtr	song040_2		       
	mPtr	song040_3		       
	mPtr	song040_4		       
	mPtr	song040_5		       
	mPtr	song040_6		       
	mPtr	song040_7		       
	mPtr	song040_8		       
	mPtr	song040_9		       
	mPtr	song040_10		       
	mPtr	song040_11		       
	mPtr	song040_12		       
