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
# 2 "/home/awaszczak/git/sa2/sa1/sound/sa1/songs/song017.s"
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
# 3 "/home/awaszczak/git/sa2/sa1/sound/sa1/songs/song017.s"
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
# 4 "/home/awaszczak/git/sa2/sa1/sound/sa1/songs/song017.s"

	mSectionRodata

	                                                        

	mAlignWord
	.global song017_1
song017_1:	            
	.byte	KEYSH	, 0
song017_1_4:
	.byte	TEMPO	, 45
	.byte	VOICE	, 127
	.byte	VOL	, v110
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte	LFOS	, 43
	.byte	MODT	, 2
	.byte	LFODL	, 0
	.byte		N04	, Cn1, v127
	.byte		N03	, Dn1, v056
	.byte	W07
	.byte		N04	, Cs1, v127
	.byte	W12
	.byte			Cn1
	.byte		N16	, En1, v056
	.byte	W05
	.byte		N08	, Gn1, v127
	.byte	W07
	.byte			Gs1
	.byte	W05
	.byte		N04	, Cn1
	.byte		N03	, Ds1, v056
	.byte	W07
	.byte		N04	, Cs1, v127
	.byte	W12
	.byte			Cn1
	.byte		N16	, En1, v056
	.byte	W05
	.byte		N08	, An1, v127
	.byte	W07
	.byte			Gs1
	.byte	W05
	.byte		N04	, Cn1
	.byte		N19	, En1, v056
	.byte	W07
	.byte		N04	, Cs1, v127
	.byte	W12
	.byte			Cn1
	.byte		N16	, En1, v056
	.byte	W05
	.byte		N08	, Gn1, v127
	.byte	W07
	.byte			Gs1
	.byte	W05
song017_1_2:
	.byte		N08	, Cs1, v127
	.byte		N03	, En1, v056
	.byte	W12
	.byte		N04	, Cn1, v127
	.byte		N16	, En1, v052
	.byte	W24
	.byte	PEND
song017_1_1:
	.byte		N12	, Ds1, v052
	.byte	W12
	.byte		N04	, Dn1, v060
	.byte	W08
	.byte		N04	
	.byte	W04
	.byte		N12	, Ds1, v044
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
song017_1_3:
	.byte		N12	, Ds1, v052
	.byte	W12
	.byte		N04	, Cn1, v127
	.byte	W08
	.byte			Cs1
	.byte	W04
	.byte			Cn1
	.byte	W04
	.byte			Gn1
	.byte	W04
	.byte			Cs1
	.byte	W04
	.byte	PEND
	.byte	VOICE	, 127
	.byte	VOL	, v110
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte	LFOS	, 43
	.byte	MODT	, 2
	.byte	LFODL	, 0
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W07
	.byte			Cn1
	.byte		N16	, En1, v056
	.byte	W05
	.byte		N08	, Gn1, v127
	.byte	W07
	.byte			Gs1
	.byte	W05
	.byte		N04	, Cn1
	.byte		N03	, Ds1, v056
	.byte	W12
	.byte		N04	, Cs1, v127
	.byte	W07
	.byte			Cn1
	.byte		N16	, En1, v056
	.byte	W05
	.byte		N08	, An1, v127
	.byte	W07
	.byte			Gs1
	.byte	W05
	.byte		N04	, Cn1
	.byte		N19	, En1, v056
	.byte	W12
	.byte		N04	, Cs1, v127
	.byte	W07
	.byte			Cn1
	.byte		N16	, En1, v056
	.byte	W05
	.byte		N08	, Gn1, v127
	.byte	W07
	.byte			Gs1
	.byte	W05
	.byte	PATT	
		mPtr	song017_1_2
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_3
	.byte	GOTO	
		mPtr	song017_1_4
	.byte	FINE

	                                                        

	.global song017_2
song017_2:	            
	.byte	KEYSH	, 0
song017_2_33:
	.byte	VOICE	, 125
	.byte	VOL	, v110
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte	LFOS	, 43
	.byte	MODT	, 2
	.byte	LFODL	, 0
	.byte		N04	, Bn2, v104
	.byte	W19
	.byte		N16	, Bn1, v096
	.byte	W17
	.byte		N04	, Bn2, v104
	.byte	W19
	.byte		N16	, Bn1, v100
	.byte	W17
	.byte		N04	, Bn2, v108
	.byte	W19
	.byte		N16	, Bn1, v104
	.byte	W17
	.byte		N04	, Bn2, v100
	.byte	W12
	.byte		N16	, Bn1, v108
	.byte	W24
song017_2_1:
	.byte		N19	, En2, v116
	.byte	W30
	.byte	W01
	.byte		N04	, En2, v096
	.byte	W05
	.byte	PEND
song017_2_2:
	.byte		N18	, Bn1, v084
	.byte	W19
	.byte		N04	, En2, v088
	.byte	W05
	.byte		N10	, Bn1, v084
	.byte	W12
	.byte	PEND
song017_2_3:
	.byte		N17	, Fn2, v112
	.byte	W24
	.byte		N08	, Fn2, v104
	.byte	W12
	.byte	PEND
song017_2_4:
	.byte		N12	, Bn1, v096
	.byte	W19
	.byte		N04	, Fn2, v064
	.byte	W05
	.byte		N07	, Bn1, v088
	.byte	W12
	.byte	PEND
song017_2_5:
	.byte		N17	, Fs2, v112
	.byte	W24
	.byte		N11	, An2, v104
	.byte	W12
	.byte	PEND
song017_2_6:
	.byte		N16	, Bn2, v096
	.byte	W19
	.byte		N04	, Bn2, v088
	.byte	W05
	.byte		N11	, An2, v104
	.byte	W12
	.byte	PEND
song017_2_7:
	.byte		N18	, Gs2, v104
	.byte	W24
	.byte		N10	, Gn2, v100
	.byte	W12
	.byte	PEND
song017_2_8:
	.byte		N14	, Fs2, v112
	.byte	W19
	.byte		N03	, Fs2, v092
	.byte	W05
	.byte		N11	, Bn1, v100
	.byte	W12
	.byte	PEND
song017_2_9:
	.byte		N15	, En2, v096
	.byte	W24
	.byte		N11	, En2, v108
	.byte	W12
	.byte	PEND
song017_2_10:
	.byte		N12	, Bn1, v084
	.byte	W19
	.byte		N04	, En2, v092
	.byte	W05
	.byte		N10	, Bn1, v088
	.byte	W12
	.byte	PEND
song017_2_11:
	.byte		N18	, Fn2, v108
	.byte	W24
	.byte		N10	, Fn2, v112
	.byte	W12
	.byte	PEND
song017_2_12:
	.byte		N12	, Bn1, v076
	.byte	W19
	.byte		N04	, Fn2, v104
	.byte	W05
	.byte		N11	, Bn1, v084
	.byte	W12
	.byte	PEND
song017_2_13:
	.byte		N14	, Fs2, v116
	.byte	W19
	.byte		N04	, Fs2, v084
	.byte	W05
	.byte		N11	, An2, v104
	.byte	W12
	.byte	PEND
song017_2_14:
	.byte		N11	, Bn2, v096
	.byte	W12
	.byte			Bn1, v084
	.byte	W12
	.byte			Fs2, v104
	.byte	W12
	.byte	PEND
song017_2_15:
	.byte		N20	, En2, v108
	.byte	W24
	.byte		N09	, En2, v088
	.byte	W12
	.byte	PEND
song017_2_16:
	.byte		N10	, Bn2, v080
	.byte	W19
	.byte		N04	, En2, v084
	.byte	W05
	.byte		N11	, As2, v100
	.byte	W12
	.byte	PEND
song017_2_17:
	.byte		N11	, An2, v104
	.byte	W12
	.byte			Bn2, v096
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte	PEND
song017_2_18:
	.byte		N11	, Bn2, v088
	.byte	W12
	.byte			An2, v104
	.byte	W12
	.byte			Gs2, v076
	.byte	W12
	.byte	PEND
song017_2_19:
	.byte		N11	, An2, v104
	.byte	W12
	.byte			Bn2, v080
	.byte	W12
	.byte			Cn3, v096
	.byte	W12
	.byte	PEND
song017_2_20:
	.byte		N11	, Dn3, v096
	.byte	W12
	.byte			Dn2, v076
	.byte	W12
	.byte			An2, v088
	.byte	W12
	.byte	PEND
song017_2_21:
	.byte		N11	, Gn2, v096
	.byte	W12
	.byte			An2, v104
	.byte	W12
	.byte			Bn2, v084
	.byte	W12
	.byte	PEND
song017_2_22:
	.byte		N11	, Cn3, v100
	.byte	W12
	.byte			Bn2, v104
	.byte	W12
	.byte			Gn2, v096
	.byte	W12
	.byte	PEND
song017_2_23:
	.byte		N11	, Fs2, v100
	.byte	W12
	.byte		N07	, Gs2, v080
	.byte	W07
	.byte		N04	, Fs2, v076
	.byte	W05
	.byte		N11	, An2, v112
	.byte	W12
	.byte	PEND
song017_2_24:
	.byte		N11	, Bn2, v096
	.byte	W12
	.byte		N07	, Cs3, v084
	.byte	W07
	.byte		N04	, Bn2
	.byte	W05
	.byte		N11	, Ds3, v096
	.byte	W12
	.byte	PEND
song017_2_25:
	.byte		N16	, En3, v104
	.byte	W19
	.byte		N04	, En3, v100
	.byte	W05
	.byte		N09	, Bn2, v096
	.byte	W12
	.byte	PEND
song017_2_26:
	.byte		N13	, En2, v116
	.byte	W19
	.byte		N04	, Bn2, v088
	.byte	W05
	.byte		N11	, En2, v096
	.byte	W12
	.byte	PEND
song017_2_27:
	.byte		N13	, Fn2, v100
	.byte	W19
	.byte		N04	, Fn2, v088
	.byte	W05
	.byte		N10	, Bn2, v092
	.byte	W12
	.byte	PEND
song017_2_28:
	.byte		N12	, Fn2, v096
	.byte	W19
	.byte		N04	, Bn2, v072
	.byte	W05
	.byte		N07	, Fn2, v108
	.byte	W12
	.byte	PEND
song017_2_29:
	.byte		N11	, Fs2, v100
	.byte	W12
	.byte			Cs3, v096
	.byte	W12
	.byte			An2, v112
	.byte	W12
	.byte	PEND
song017_2_30:
	.byte		N10	, Bn2, v088
	.byte	W12
	.byte		N11	, Bn1, v092
	.byte	W12
	.byte			Fs2, v100
	.byte	W12
	.byte	PEND
song017_2_31:
	.byte		N13	, En2, v104
	.byte	W24
	.byte		N11	, En2, v084
	.byte	W12
	.byte	PEND
song017_2_32:
	.byte		N15	, Bn1, v100
	.byte	W19
	.byte		N03	, En2, v096
	.byte	W05
	.byte		N06	, Bn1
	.byte	W12
	.byte	PEND
song017_2_34:
	.byte		N08	, Bn2, v080
	.byte	W19
	.byte		N03	, Bn2, v076
	.byte	W05
	.byte		N11	, Bn1, v096
	.byte	W12
	.byte	PEND
song017_2_35:
	.byte		N05	, Bn2, v100
	.byte	W19
	.byte		N04	, Bn2, v088
	.byte	W05
	.byte		N11	, Bn1, v092
	.byte	W12
	.byte	PEND
song017_2_36:
	.byte		N04	, Bn2, v108
	.byte	W19
	.byte			Bn2, v084
	.byte	W05
	.byte		N11	, Bn1, v096
	.byte	W12
	.byte	PEND
	.byte		N03	, Bn2, v112
	.byte	W12
	.byte		N21	, Bn1, v108
	.byte	W24
	.byte	PATT	
		mPtr	song017_2_1
	.byte	PATT	
		mPtr	song017_2_2
	.byte	PATT	
		mPtr	song017_2_3
	.byte	PATT	
		mPtr	song017_2_4
	.byte	PATT	
		mPtr	song017_2_5
	.byte	PATT	
		mPtr	song017_2_6
	.byte	PATT	
		mPtr	song017_2_7
	.byte	PATT	
		mPtr	song017_2_8
	.byte	PATT	
		mPtr	song017_2_9
	.byte	PATT	
		mPtr	song017_2_10
	.byte	PATT	
		mPtr	song017_2_11
	.byte	PATT	
		mPtr	song017_2_12
	.byte	PATT	
		mPtr	song017_2_13
	.byte	PATT	
		mPtr	song017_2_14
	.byte	PATT	
		mPtr	song017_2_15
	.byte	PATT	
		mPtr	song017_2_16
	.byte	PATT	
		mPtr	song017_2_17
	.byte	PATT	
		mPtr	song017_2_18
	.byte	PATT	
		mPtr	song017_2_19
	.byte	PATT	
		mPtr	song017_2_20
	.byte	PATT	
		mPtr	song017_2_21
	.byte	PATT	
		mPtr	song017_2_22
	.byte	PATT	
		mPtr	song017_2_23
	.byte	PATT	
		mPtr	song017_2_24
	.byte	PATT	
		mPtr	song017_2_25
	.byte	PATT	
		mPtr	song017_2_26
	.byte	PATT	
		mPtr	song017_2_27
	.byte	PATT	
		mPtr	song017_2_28
	.byte	PATT	
		mPtr	song017_2_29
	.byte	PATT	
		mPtr	song017_2_30
	.byte	PATT	
		mPtr	song017_2_31
	.byte	PATT	
		mPtr	song017_2_32
	.byte	GOTO	
		mPtr	song017_2_33
	.byte	PATT	
		mPtr	song017_2_34
	.byte	PATT	
		mPtr	song017_2_35
	.byte	PATT	
		mPtr	song017_2_36
	.byte		N03	, Bn2, v112
	.byte	W12
	.byte		N21	, Bn1, v108
	.byte	W21
	.byte	FINE

	                                                        

	.global song017_3
song017_3:	            
	.byte	KEYSH	, 0
song017_3_6:
	.byte	VOICE	, 88
	.byte	VOL	, v095
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte	LFOS	, 43
	.byte	MODT	, 2
	.byte	LFODL	, 0
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	MOD	, 1
	.byte	W07
	.byte		N06	, Bn1, v104
	.byte		N06	, Ds2
	.byte		N06	, Gs2
	.byte	W12
	.byte		N04	, Bn1, v096
	.byte		N04	, Ds2
	.byte		N04	, Gs2
	.byte	W05
	.byte		N06	, En2, v100
	.byte		N06	, Gs2
	.byte		N06	, Bn2
	.byte	W07
	.byte		N04	, En2
	.byte		N04	, Gs2
	.byte		N04	, Cs3
	.byte	W05
song017_3_1:
	.byte		N12	, Gs2, v108
	.byte		N12	, Cs3
	.byte		N12	, En3
	.byte	W19
	.byte		N04	, En2, v088
	.byte		N04	, Gs2
	.byte		N04	, Cs3
	.byte	W05
	.byte		N06	, Gs2, v108
	.byte		N06	, Cs3
	.byte		N06	, En3
	.byte	W07
	.byte		N04	, As2, v104
	.byte		N04	, En3
	.byte		N04	, Gn3
	.byte	W05
	.byte	PEND
song017_3_2:
	.byte		N06	, Bn2, v116
	.byte		N06	, Fn3
	.byte		N06	, Gs3
	.byte	W07
	.byte		N03	, As2, v096
	.byte		N03	, En3
	.byte		N03	, Gn3
	.byte	W05
	.byte		N06	, Bn2, v116
	.byte		N06	, Fn3
	.byte		N06	, Gs3
	.byte	W07
	.byte		N32	, Fn2, v100
	.byte		N32	, Gs2
	.byte		N32	, Cs3
	.byte	W17
	.byte	PEND
	.byte	W30
	.byte	BEND	, c_v
	.byte	W06
	.byte	W07
	.byte		N07	, Cs3, v124
	.byte		N07	, En3
	.byte		N07	, An3
	.byte	W12
	.byte		N04	, Cs3, v108
	.byte		N04	, En3
	.byte		N04	, An3
	.byte	W05
	.byte		N09	, En2, v104
	.byte		N09	, An2
	.byte		N09	, Cs3
	.byte	W12
	.byte		N07	, An2, v108
	.byte		N07	, Cs3
	.byte		N07	, En3
	.byte	W12
	.byte		N06	, Fn2
	.byte		N06	, As2
	.byte		N06	, Dn3
	.byte	W07
	.byte		N04	, Fs2, v068
	.byte		N04	, Bn2
	.byte		N04	, Ds3
	.byte	W05
	.byte		N07	, An2, v096
	.byte		N07	, Cs3
	.byte		N07	, En3
	.byte	W07
	.byte		N04	, An2
	.byte		N04	, Ds3
	.byte		N04	, Fs3
	.byte	W05
	.byte		N19	, Ds3, v116
	.byte		N19	, Fs3
	.byte		N44	, Bn3
	.byte	W19
	.byte		N14	, Dn3
	.byte		N14	, Fn3
	.byte	W17
	.byte		N04	, Cs3, v112
	.byte		N04	, En3
	.byte	W07
	.byte			Cs3, v116
	.byte		N04	, En3
	.byte	W13
	.byte		N16	, An2, v096
	.byte		N16	, Ds3
	.byte		N16	, Fs3
	.byte	W16
	.byte		N04	, Gs2
	.byte		N04	, Bn2
	.byte		N04	, Ds3
	.byte	W07
	.byte		N15	, Bn1
	.byte		N15	, Ds2
	.byte		N15	, Gs2
	.byte	W17
	.byte		N05	, En2, v092
	.byte		N05	, Gs2
	.byte		N05	, Bn2
	.byte	W07
	.byte		N04	, En2, v100
	.byte		N04	, Gs2
	.byte		N04	, Cs3
	.byte	W05
	.byte		N13	, Gs2, v104
	.byte		N13	, Cs3
	.byte		N13	, En3
	.byte	W19
	.byte		N04	, En2, v068
	.byte		N04	, Gs2
	.byte		N04	, Cs3
	.byte	W05
	.byte		N06	, Gs2, v104
	.byte		N06	, Cs3
	.byte		N06	, En3
	.byte	W07
	.byte		N04	, As2, v096
	.byte		N04	, En3
	.byte		N04	, Gn3
	.byte	W05
	.byte		N06	, Bn2, v108
	.byte		N06	, Fn3
	.byte		N06	, Gs3
	.byte	W07
	.byte		N04	, As2, v088
	.byte		N04	, En3
	.byte		N04	, Gn3
	.byte	W05
	.byte		N06	, Bn2, v108
	.byte		N06	, Fn3
	.byte		N06	, Gs3
	.byte	W07
	.byte		N40	, Fn2, v096
	.byte		N40	, Gs2
	.byte		N40	, Cs3
	.byte	W17
	.byte	W36
song017_3_3:
	.byte	W07
	.byte		N10	, Cs3, v116
	.byte		N10	, En3
	.byte		N10	, An3
	.byte	W12
	.byte		N04	, Cs3
	.byte		N04	, En3
	.byte		N04	, An3
	.byte	W05
	.byte		N08	, En2, v084
	.byte		N08	, An2
	.byte		N08	, Cs3
	.byte	W12
	.byte	PEND
song017_3_4:
	.byte		N08	, An2, v096
	.byte		N08	, Cs3
	.byte		N08	, En3
	.byte	W12
	.byte		N06	, En2, v100
	.byte		N06	, An2
	.byte		N06	, Cs3
	.byte	W07
	.byte		N04	, Fs2, v080
	.byte		N04	, Bn2
	.byte		N04	, Ds3
	.byte	W05
	.byte		N05	, An2, v088
	.byte		N05	, Cs3
	.byte		N05	, En3
	.byte	W07
	.byte		N04	, An2, v100
	.byte		N04	, Ds3
	.byte		N04	, Fs3
	.byte	W05
	.byte	PEND
song017_3_5:
	.byte		N48	, Gs2, v100
	.byte		N17	, Cs3
	.byte		N48	, En3
	.byte	W19
	.byte		N04	, Cs3
	.byte	W05
	.byte		N05	, Cn3
	.byte	W12
	.byte	PEND
	.byte		N13	, Bn2
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W07
	.byte		N06	, Bn1, v104
	.byte		N06	, Ds2
	.byte		N06	, Gs2
	.byte	W12
	.byte		N04	, Bn1, v096
	.byte		N04	, Ds2
	.byte		N04	, Gs2
	.byte	W05
	.byte		N06	, En2, v100
	.byte		N06	, Gs2
	.byte		N06	, Bn2
	.byte	W07
	.byte		N04	, En2
	.byte		N04	, Gs2
	.byte		N04	, Cs3
	.byte	W05
	.byte	PATT	
		mPtr	song017_3_1
	.byte	PATT	
		mPtr	song017_3_2
	.byte	W36
	.byte	PATT	
		mPtr	song017_3_3
	.byte	PATT	
		mPtr	song017_3_4
	.byte	PATT	
		mPtr	song017_3_5
	.byte		N13	, Bn2, v100
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	GOTO	
		mPtr	song017_3_6
	.byte	FINE

	                                                        

	.global song017_4
song017_4:	            
	.byte	KEYSH	, 0
song017_4_5:
	.byte	VOICE	, 117
	.byte	PAN	, c_v
	.byte	VOL	, v059
	.byte	PRIO	, 30
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	MOD	, 1
	.byte	W07
	.byte		N06	, Gs3, v104
	.byte	W12
	.byte		N04	, Gs3, v096
	.byte	W05
	.byte		N06	, Bn3, v100
	.byte	W07
	.byte		N04	, Cs4
	.byte	W05
song017_4_1:
	.byte		N12	, En4, v108
	.byte	W19
	.byte		N04	, Cs4, v088
	.byte	W05
	.byte		N06	, En4, v108
	.byte	W07
	.byte		N04	, Gn4, v104
	.byte	W05
	.byte	PEND
song017_4_2:
	.byte		N06	, Gs4, v116
	.byte	W07
	.byte		N03	, Gn4, v096
	.byte	W05
	.byte		N06	, Gs4, v116
	.byte	W07
	.byte		N32	, Cs4, v100
	.byte	W17
	.byte	PEND
	.byte	W30
	.byte	BEND	, c_v
	.byte	W06
	.byte	W07
	.byte		N07	, An4, v124
	.byte	W12
	.byte		N04	, An4, v108
	.byte	W05
	.byte		N09	, Cs4, v104
	.byte	W12
	.byte		N07	, En4, v108
	.byte	W12
	.byte		N06	, Dn4
	.byte	W07
	.byte		N04	, Ds4, v068
	.byte	W05
	.byte		N07	, En4, v096
	.byte	W07
	.byte		N04	, Fs4
	.byte	W05
	.byte		N44	, Bn4, v116
	.byte	W36
	.byte	W36
	.byte	W07
	.byte		N15	, Gs3, v096
	.byte	W17
	.byte		N05	, Bn3, v092
	.byte	W07
	.byte		N04	, Cs4, v100
	.byte	W05
	.byte		N13	, En4, v104
	.byte	W19
	.byte		N04	, Cs4, v068
	.byte	W05
	.byte		N06	, En4, v104
	.byte	W07
	.byte		N04	, Gn4, v096
	.byte	W05
	.byte		N06	, Gs4, v108
	.byte	W07
	.byte		N04	, Gn4, v088
	.byte	W05
	.byte		N06	, Gs4, v108
	.byte	W07
	.byte		N40	, Cs4, v096
	.byte	W17
	.byte	W36
song017_4_3:
	.byte	W07
	.byte		N10	, An4, v116
	.byte	W12
	.byte		N04	
	.byte	W05
	.byte		N08	, Cs4, v084
	.byte	W12
	.byte	PEND
song017_4_4:
	.byte		N08	, En4, v096
	.byte	W12
	.byte		N06	, Cs4, v100
	.byte	W07
	.byte		N04	, Ds4, v080
	.byte	W05
	.byte		N05	, En4, v088
	.byte	W07
	.byte		N04	, Fs4, v100
	.byte	W05
	.byte	PEND
	.byte		N48	, En4
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W07
	.byte		N06	, Gs3, v104
	.byte	W12
	.byte		N04	, Gs3, v096
	.byte	W05
	.byte		N06	, Bn3, v100
	.byte	W07
	.byte		N04	, Cs4
	.byte	W05
	.byte	PATT	
		mPtr	song017_4_1
	.byte	PATT	
		mPtr	song017_4_2
	.byte	W36
	.byte	PATT	
		mPtr	song017_4_3
	.byte	PATT	
		mPtr	song017_4_4
	.byte		N48	, En4, v100
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	GOTO	
		mPtr	song017_4_5
	.byte	FINE

	                                                        

	.global song017_5
song017_5:	            
	.byte	KEYSH	, 0
song017_5_4:
	.byte	VOICE	, 75
	.byte	VOL	, v064
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte	LFOS	, 43
	.byte	MODT	, 2
	.byte	LFODL	, 0
	.byte	PRIO	, 30
	.byte	W06
	.byte		N04	, En2, v108
	.byte		N04	, Gs2
	.byte		N04	, Bn2
	.byte	W17
	.byte		N10	, En2, v112
	.byte		N10	, Gs2
	.byte		N10	, Bn2
	.byte	W13
song017_5_1:
	.byte	W06
	.byte		N04	, Fn2, v112
	.byte		N04	, Gs2
	.byte		N04	, Bn2
	.byte	W17
	.byte		N10	, Fn2, v104
	.byte		N10	, Gs2
	.byte		N10	, Bn2
	.byte	W13
	.byte	PEND
song017_5_2:
	.byte	W06
	.byte		N04	, Fs2, v100
	.byte		N04	, An2
	.byte		N04	, Bn2
	.byte	W17
	.byte		N10	, Fs2, v108
	.byte		N10	, An2
	.byte		N10	, Bn2
	.byte	W12
	.byte		N03	, Ds2, v112
	.byte		N03	, Fs2
	.byte		N03	, Bn2
	.byte	W01
	.byte	PEND
song017_5_3:
	.byte	W11
	.byte		N22	, Bn1, v120
	.byte	W24
	.byte	W01
	.byte	PEND
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W06
	.byte		N04	, En2, v108
	.byte		N04	, Gs2
	.byte		N04	, Bn2
	.byte	W17
	.byte		N10	, En2, v112
	.byte		N10	, Gs2
	.byte		N10	, Bn2
	.byte	W13
	.byte	PATT	
		mPtr	song017_5_1
	.byte	PATT	
		mPtr	song017_5_2
	.byte	PATT	
		mPtr	song017_5_3
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	GOTO	
		mPtr	song017_5_4
	.byte	FINE

	                                                        

	.global song017_6
song017_6:	            
	.byte	KEYSH	, 0
song017_6_1:
	.byte	VOICE	, 93
	.byte	VOL	, v077
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte	LFOS	, 43
	.byte	MODT	, 2
	.byte	LFODL	, 0
	.byte	PRIO	, 30
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W12
	.byte		N24	, Bn3, v100
	.byte		N03	, As4, v096
	.byte		N24	, Bn4, v108
	.byte	W24
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W01
	.byte		N03	, Bn4, v104
	.byte	W04
	.byte		N02	, As4, v084
	.byte	W03
	.byte		N03	, An4, v092
	.byte	W03
	.byte			Gs4, v108
	.byte	W09
	.byte			Fs4, v104
	.byte	W04
	.byte		N02	, Fn4, v092
	.byte	W03
	.byte			Gs4, v068
	.byte	W03
	.byte			Fn4, v060
	.byte	W03
	.byte			Cs4, v068
	.byte	W03
	.byte		N05	, Fs4, v104
	.byte	W07
	.byte		N02	, Cs4, v088
	.byte	W11
	.byte		N03	, An3, v084
	.byte	W04
	.byte		N11	, Fs3, v080
	.byte	W14
	.byte	W36
	.byte	W13
	.byte		N03	, Gn3, v112
	.byte	W04
	.byte			Gs3, v088
	.byte	W04
	.byte			Bn3
	.byte	W03
	.byte		N04	, Ds4, v116
	.byte	W08
	.byte			Fs4, v112
	.byte	W04
	.byte		N06	, Fn4, v096
	.byte	W07
	.byte		N03	, Ds4, v056
	.byte	W05
	.byte		N04	, En4, v120
	.byte	W07
	.byte		N03	, Cs4, v080
	.byte	W05
	.byte		N02	, An3, v088
	.byte	W03
	.byte			Cs4, v060
	.byte	W03
	.byte			An3, v088
	.byte	W03
	.byte			Fs3
	.byte	W03
	.byte		N07	, Gs3, v096
	.byte	W08
	.byte		N16	, Bn3, v084
	.byte	W28
	.byte	W36
	.byte	W36
	.byte		N04	, Cs5, v112
	.byte	W08
	.byte			Cn5, v108
	.byte	W04
	.byte			Bn4, v104
	.byte	W08
	.byte		N03	, An4, v108
	.byte	W04
	.byte		N02	, Gs4, v096
	.byte	W03
	.byte			An4, v040
	.byte	W03
	.byte			Gs4, v068
	.byte	W03
	.byte		N03	, Fn4, v092
	.byte	W03
	.byte		N07	, Fs4, v120
	.byte	W09
	.byte		N02	, Cs4, v104
	.byte	W11
	.byte		N03	, An3, v100
	.byte	W04
	.byte		N12	, Fs3, v096
	.byte	W12
	.byte	W36
	.byte	W13
	.byte		N03	, Gn3, v108
	.byte	W03
	.byte			Gs3, v084
	.byte	W04
	.byte		N02	, Bn3, v068
	.byte	W03
	.byte		N03	, Ds4, v100
	.byte	W07
	.byte		N04	, Fs4, v116
	.byte	W06
	.byte		N05	, Ds4, v092
	.byte	W07
	.byte		N03	, En4, v080
	.byte	W05
	.byte		N06	, Gs4, v100
	.byte	W08
	.byte		N04	, Bn3, v096
	.byte		N04	, Bn4
	.byte	W11
	.byte		N07	, Cn4, v120
	.byte		N07	, Cn5
	.byte	W05
	.byte		N11	, Cs4, v116
	.byte		N11	, An4
	.byte		N11	, Cs5
	.byte	W19
	.byte		N04	, Cn4, v100
	.byte		N04	, Gs4
	.byte		N04	, Cn5
	.byte	W05
	.byte		N05	, Cs4, v116
	.byte		N05	, An4
	.byte		N05	, Cs5
	.byte	W07
	.byte		N04	, Cn4, v084
	.byte		N04	, Gs4
	.byte		N04	, Cn5
	.byte	W05
	.byte		N14	, Cs4, v112
	.byte		N14	, An4
	.byte		N14	, Cs5
	.byte	W19
	.byte		N03	, Cn4, v100
	.byte		N03	, Gs4
	.byte		N03	, Cn5
	.byte	W05
	.byte		N06	, Cs4, v108
	.byte		N06	, An4
	.byte		N06	, Cs5
	.byte	W07
	.byte		N03	, Cn4, v060
	.byte		N03	, Gs4
	.byte		N03	, Cn5
	.byte	W05
	.byte		N07	, Cs4, v108
	.byte		N07	, An4
	.byte		N07	, Cs5
	.byte	W07
	.byte		N04	, En3, v104
	.byte		N04	, Cs4
	.byte		N04	, En4
	.byte	W12
	.byte		N12	, En3, v096
	.byte		N12	, Cs4
	.byte		N12	, En4
	.byte	W17
	.byte	W07
	.byte		N05	, En4, v112
	.byte		N05	, Cn5
	.byte		N05	, En5
	.byte	W12
	.byte			Dn4, v104
	.byte		N05	, Bn4
	.byte		N05	, Dn5
	.byte	W12
	.byte		N03	, Cn4, v080
	.byte		N03	, An4
	.byte		N03	, Cn5
	.byte	W05
	.byte		N16	, Bn3, v096
	.byte		N16	, Gn4
	.byte		N16	, Bn4
	.byte	W19
	.byte		N04	, An3, v084
	.byte		N04	, Fs4
	.byte		N04	, An4
	.byte	W05
	.byte		N05	, Bn3, v104
	.byte		N05	, Gn4
	.byte		N05	, Bn4
	.byte	W07
	.byte		N04	, An3, v068
	.byte		N04	, Fs4
	.byte		N04	, An4
	.byte	W05
	.byte		N07	, Bn3, v104
	.byte		N07	, Gn4
	.byte		N07	, Bn4
	.byte	W07
	.byte		N03	, Dn3, v092
	.byte		N03	, Bn3
	.byte		N03	, Dn4
	.byte	W12
	.byte		N06	, Gn3, v112
	.byte		N06	, Dn4
	.byte		N06	, Gn4
	.byte	W12
	.byte		N04	, Bn3, v100
	.byte		N04	, Gn4
	.byte		N04	, Bn4
	.byte	W05
	.byte		N08	, An3, v108
	.byte		N08	, Fs4
	.byte		N08	, An4
	.byte	W12
	.byte		N04	, An3, v100
	.byte		N04	, Fs4
	.byte		N04	, An4
	.byte	W07
	.byte			Gs3, v096
	.byte		N04	, Fn4
	.byte		N04	, Gs4
	.byte	W05
	.byte		N03	, An3, v104
	.byte		N03	, Fs4
	.byte		N03	, An4
	.byte	W07
	.byte			As3
	.byte		N03	, Gn4
	.byte		N03	, As4
	.byte	W05
	.byte		N04	, Bn3, v108
	.byte		N04	, Gn4
	.byte		N04	, Bn4
	.byte	W07
	.byte		N03	, Gn4, v120
	.byte	W05
	.byte		N01	, Ds4, v092
	.byte	W03
	.byte		N02	, Gn4, v096
	.byte	W03
	.byte			Ds4, v084
	.byte	W03
	.byte		N03	, Bn3, v096
	.byte	W03
	.byte		N07	, An3, v120
	.byte	W07
	.byte		N03	, Gn3, v080
	.byte	W05
	.byte		N12	, Gs3, v096
	.byte	W36
	.byte	W36
	.byte	W36
	.byte		N03	, En3, v100
	.byte	W04
	.byte			Fn3
	.byte	W04
	.byte			Gs3, v104
	.byte	W04
	.byte			Bn3
	.byte	W04
	.byte			Cs4, v096
	.byte	W04
	.byte			Dn4, v100
	.byte	W04
	.byte			En4, v096
	.byte	W04
	.byte			Fn4, v084
	.byte	W04
	.byte			Gs4, v088
	.byte	W04
	.byte		N05	, Bn4, v108
	.byte	W08
	.byte		N03	, An4, v104
	.byte	W12
	.byte			Fs4, v096
	.byte	W04
	.byte		N10	, Cs4, v084
	.byte	W12
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W13
	.byte		N18	, Ds2, v060
	.byte		N15	, An2, v084
	.byte	W23
	.byte	W02
	.byte		N01	, Ds2, v080
	.byte	W01
	.byte			Gs2, v060
	.byte	W28
	.byte	W01
	.byte		N30	, Gs2, v068
	.byte	W01
	.byte			Ds2, v060
	.byte	W03
	.byte	W36
	.byte		N04	, Fn2, v052
	.byte	W02
	.byte		N02	, Bn2, v020
	.byte	W32
	.byte	W02
	.byte		N01	, Fn2, v076
	.byte		N01	, Gs2, v068
	.byte		N03	, Bn2, v072
	.byte	W20
	.byte		N16	, Fn2
	.byte		N16	, Bn2, v076
	.byte	W16
	.byte		N24	, An2, v080
	.byte	W01
	.byte			En2, v076
	.byte	W32
	.byte	W03
	.byte		N03	, An2, v104
	.byte	W01
	.byte		N02	, En2, v084
	.byte	W17
	.byte		N17	, An2, v120
	.byte	W01
	.byte		N19	, Ds2, v100
	.byte	W17
	.byte	W01
	.byte		N11	, Gs2, v068
	.byte		N08	, Bn2, v060
	.byte	W17
	.byte		N14	, Fn2, v088
	.byte	W02
	.byte		N03	, Bn2, v084
	.byte	W16
	.byte	W01
	.byte			En2
	.byte		N03	, An2, v100
	.byte	W15
	.byte		N01	, Cs3, v076
	.byte	W08
	.byte		N36	, Ds2
	.byte		N13	, An2, v084
	.byte	W12
	.byte	W01
	.byte		N24	, Gs2, v064
	.byte		N28	, Bn2, v072
	.byte	W32
	.byte	W03
	.byte	W07
	.byte		N08	, Gs2, v100
	.byte		N03	, Bn2
	.byte		N04	, Ds3, v108
	.byte	W05
	.byte			Cs3, v080
	.byte		N05	, En3, v072
	.byte	W12
	.byte		N08	, Gs2
	.byte		N09	, Bn2, v088
	.byte		N09	, Ds3
	.byte	W12
	.byte		N28	, Bn2, v084
	.byte	W01
	.byte		N24	, Fn2, v048
	.byte		N23	, Gs2, v020
	.byte	W32
	.byte	W03
	.byte	W01
	.byte		N09	, Fn2, v112
	.byte		N06	, Bn2, v116
	.byte		N07	, Dn3
	.byte	W08
	.byte		N03	, Fs2, v084
	.byte		N04	, Cs3, v076
	.byte	W01
	.byte			En3, v072
	.byte	W10
	.byte		N14	, Bn2, v076
	.byte	W01
	.byte		N17	, Fn2, v088
	.byte	W15
	.byte		N28	, An2, v080
	.byte	W01
	.byte		N24	, En2, v056
	.byte		N30	, Cs3, v068
	.byte	W32
	.byte	W02
	.byte		N04	, An2
	.byte	W01
	.byte			Cs3
	.byte		N03	, En3, v096
	.byte	W19
	.byte		N11	, Ds2, v060
	.byte		N13	, An2, v072
	.byte		N13	, Ds3, v088
	.byte	W16
	.byte		N02	, Ds2, v060
	.byte		N02	, Gs2, v084
	.byte		N03	, Bn2
	.byte	W01
	.byte	W32
	.byte			Gs2
	.byte	W04
	.byte		N06	, Ds3, v096
	.byte		N10	, Gs3
	.byte	W08
	.byte		N02	, En3, v076
	.byte	W11
	.byte		N03	, En3, v104
	.byte	W01
	.byte			Gs3, v100
	.byte	W12
	.byte		N01	, En3, v096
	.byte		N03	, Gs3
	.byte	W04
	.byte	W21
	.byte			Cs3, v108
	.byte	W15
	.byte		N18	, Cs3, v096
	.byte		N19	, En3, v112
	.byte	W20
	.byte		N02	, Cs3, v096
	.byte		N03	, En3, v092
	.byte	W16
	.byte		N02	, Cs3, v096
	.byte		N03	, En3, v104
	.byte	W20
	.byte		N02	, Cs3, v092
	.byte		N03	, En3
	.byte	W11
	.byte			Cn3
	.byte	W01
	.byte		N02	, En3, v080
	.byte	W04
	.byte	W20
	.byte		N16	, Bn2, v100
	.byte		N16	, En3, v108
	.byte	W16
	.byte		N03	, Cn3, v112
	.byte	W19
	.byte			Bn2, v088
	.byte		N03	, Dn3, v104
	.byte	W12
	.byte		N30	, Bn2, v084
	.byte		N30	, Dn3, v100
	.byte	W05
	.byte	W36
	.byte		N03	, An2, v084
	.byte		N03	, Cs3, v104
	.byte	W01
	.byte		N01	, En2, v044
	.byte	W18
	.byte		N03	, Cs3, v108
	.byte	W17
	.byte	W07
	.byte			An2, v100
	.byte		N03	, Cn3, v104
	.byte	W12
	.byte		N13	, An2
	.byte		N14	, Cn3
	.byte	W17
	.byte		N03	, Gs2, v084
	.byte		N04	, Bn2
	.byte	W36
	.byte	W21
	.byte		N03	, Gs3, v104
	.byte	W01
	.byte		N02	, Gs2, v076
	.byte		N02	, Bn2, v088
	.byte	W14
	.byte	W01
	.byte		N32	, Fn2, v092
	.byte		N32	, Bn2, v080
	.byte	W32
	.byte	W03
	.byte	W10
	.byte		N02	, Dn3, v088
	.byte	W02
	.byte		N03	, Gs2, v084
	.byte		N03	, Fn3, v080
	.byte		N04	, Bn3
	.byte	W08
	.byte			Gs2, v052
	.byte		N04	, Dn3, v084
	.byte		N04	, Fn3, v080
	.byte		N03	, Bn3, v056
	.byte	W08
	.byte		N04	, Fn2, v080
	.byte		N02	, Bn2, v056
	.byte		N04	, Dn3, v068
	.byte		N04	, Gs3, v088
	.byte	W08
	.byte		N07	, Fn2, v044
	.byte		N02	, Bn2, v052
	.byte		N04	, Dn3, v080
	.byte		N04	, Gs3, v076
	.byte	W08
	.byte		N21	, En2, v040
	.byte		N20	, An2, v056
	.byte		N21	, Cs3, v088
	.byte		N20	, An3, v100
	.byte	W28
	.byte		N02	, An2, v076
	.byte		N03	, Cs3, v088
	.byte	W02
	.byte		N01	, En2, v056
	.byte	W17
	.byte		N12	, Ds2, v092
	.byte	W01
	.byte		N15	, An2, v108
	.byte	W16
	.byte		N03	, Ds2, v072
	.byte		N02	, Gs2, v088
	.byte		N03	, Bn2, v076
	.byte	W19
	.byte		N20	, Ds2, v084
	.byte		N19	, Gs2, v092
	.byte		N19	, Bn2, v080
	.byte	W17
	.byte	W11
	.byte		N23	, Bn2, v120
	.byte		N24	, Bn3
	.byte	W24
	.byte	W01
	.byte	GOTO	
		mPtr	song017_6_1
	.byte	W01
	.byte	FINE

	                                                        

	.global song017_7
song017_7:	            
	.byte	KEYSH	, 0
song017_7_1:
	.byte	VOICE	, 122
	.byte	PAN	, c_v
	.byte	VOL	, v110
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W13
	.byte		N03	, Fs2, v092
	.byte	W03
	.byte		N02	, Gs2, v088
	.byte	W03
	.byte		N03	, An2, v096
	.byte	W04
	.byte			Bn2, v104
	.byte	W04
	.byte			Cs3
	.byte	W03
	.byte			Dn3, v108
	.byte	W04
	.byte		N09	, Ds3, v112
	.byte	W02
	.byte	W09
	.byte			Ds3, v120
	.byte	W10
	.byte		N04	, Cs3, v092
	.byte	W04
	.byte			Ds3
	.byte	W05
	.byte		N05	, Bn2, v084
	.byte	W08
	.byte		N10	, Bn2, v076
	.byte	W11
	.byte		N05	, Gs2, v072
	.byte	W05
	.byte		N12	, Bn2, v060
	.byte	W16
	.byte		N02	, Bn2, v084
	.byte	W03
	.byte		N03	, Cs3, v092
	.byte	W01
	.byte	W02
	.byte		N08	, Dn3, v120
	.byte	W10
	.byte		N07	, Dn3, v127
	.byte	W09
	.byte		N03	, Cs3, v088
	.byte	W03
	.byte		N04	, Dn3, v100
	.byte	W05
	.byte		N06	, Bn2, v076
	.byte	W07
	.byte	W02
	.byte		N07	, Bn2, v096
	.byte	W10
	.byte		N08	, Gs2, v072
	.byte	W09
	.byte		N06	, Bn2, v076
	.byte	W09
	.byte		N04	, Bn2, v084
	.byte	W05
	.byte		N06	, An2, v056
	.byte	W01
	.byte	W06
	.byte			Gs2, v072
	.byte	W08
	.byte		N05	, Bn2, v064
	.byte	W06
	.byte		N10	, An2, v040
	.byte	W16
	.byte	W12
	.byte		N04	, An2, v068
	.byte	W07
	.byte			Bn2, v060
	.byte	W05
	.byte		N05	, Cs3, v100
	.byte	W07
	.byte		N03	, En3, v104
	.byte	W05
	.byte		N06	, Gn3, v127
	.byte	W08
	.byte		N05	, Gs3, v120
	.byte	W05
	.byte		N04	, Gn3, v112
	.byte	W06
	.byte			En3, v084
	.byte	W05
	.byte			Bn2, v096
	.byte	W07
	.byte		N05	, As2, v084
	.byte	W05
	.byte			An2, v112
	.byte	W07
	.byte		N04	, Gn2, v068
	.byte	W05
	.byte			Gs2, v088
	.byte	W07
	.byte		N03	, Bn2, v072
	.byte	W05
	.byte		N05	, Cs3, v092
	.byte	W07
	.byte			En3, v108
	.byte	W05
	.byte	W01
	.byte			Ds3, v060
	.byte	W07
	.byte		N03	, En3
	.byte	W04
	.byte		N06	, Fs3, v124
	.byte	W08
	.byte			Gs3
	.byte	W11
	.byte		N05	, Gs3, v096
	.byte	W05
	.byte	W01
	.byte		N08	, Bn2, v076
	.byte	W12
	.byte		N11	
	.byte	W20
	.byte		N03	
	.byte	W03
	.byte	W01
	.byte		N06	, Gs3, v116
	.byte	W08
	.byte			An3, v127
	.byte	W11
	.byte		N08	, Bn3, v116
	.byte	W09
	.byte		N06	, An3, v127
	.byte	W07
	.byte	W01
	.byte			Gs3, v104
	.byte	W09
	.byte		N08	, Gs3, v108
	.byte	W09
	.byte		N07	, Fn3, v076
	.byte	W08
	.byte		N05	, Gs3, v056
	.byte	W07
	.byte			Fs3, v080
	.byte	W02
	.byte	W07
	.byte		N17	, Fs3, v068
	.byte	W28
	.byte	W01
	.byte		N02	, An3, v124
	.byte	W03
	.byte			Cs4, v096
	.byte	W03
	.byte			An3, v124
	.byte	W03
	.byte		N01	, Fs3, v096
	.byte	W03
	.byte			Gs3, v076
	.byte	W03
	.byte		N02	, Bn3, v084
	.byte	W03
	.byte		N01	, Gs3, v040
	.byte	W03
	.byte		N02	, En3, v084
	.byte	W03
	.byte			Fs3, v088
	.byte	W03
	.byte		N01	, An3, v092
	.byte	W03
	.byte			Fs3, v068
	.byte	W03
	.byte		N02	, Ds3, v080
	.byte	W02
	.byte		N05	, En3, v068
	.byte	W01
	.byte	W07
	.byte		N04	, En3, v092
	.byte	W11
	.byte			Bn2, v056
	.byte	W05
	.byte		N05	, Ds3, v096
	.byte	W07
	.byte		N04	, Fs3, v120
	.byte	W06
	.byte			Ds3, v068
	.byte	W07
	.byte		N03	, En3, v076
	.byte	W05
	.byte		N05	, Gs3, v100
	.byte	W08
	.byte		N04	, Bn3, v104
	.byte	W11
	.byte			Cn4, v116
	.byte	W05
	.byte		N08	, Cs4
	.byte	W17
	.byte		N05	, En3, v096
	.byte	W06
	.byte		N06	, Ds3, v088
	.byte	W09
	.byte		N03	, En3, v084
	.byte	W04
	.byte	W01
	.byte		N05	, Bn3, v124
	.byte	W07
	.byte		N04	, An3, v096
	.byte	W05
	.byte			Gs3, v072
	.byte	W06
	.byte			Bn3, v116
	.byte	W06
	.byte		N05	, An3, v104
	.byte	W07
	.byte		N04	, En3, v036
	.byte	W04
	.byte		N05	, Cn3, v084
	.byte	W08
	.byte		N02	, An2, v040
	.byte	W04
	.byte		N04	, Dn3, v120
	.byte	W08
	.byte		N02	, Cs3, v060
	.byte	W03
	.byte		N05	, Cn3, v096
	.byte	W07
	.byte			Dn3, v127
	.byte	W06
	.byte	W01
	.byte		N03	, Bn2, v064
	.byte	W04
	.byte		N02	, Dn3, v080
	.byte	W04
	.byte			Fs3, v092
	.byte	W03
	.byte		N06	, An3, v127
	.byte	W07
	.byte		N04	, Gn3, v096
	.byte	W05
	.byte		N05	, Fs3
	.byte	W07
	.byte		N03	, Gn3, v120
	.byte	W05
	.byte		N05	, An3, v124
	.byte	W07
	.byte		N04	, Bn3, v116
	.byte	W05
	.byte			Cn4, v127
	.byte	W07
	.byte		N05	, Dn4
	.byte	W12
	.byte		N04	, Bn3, v120
	.byte	W05
	.byte	W08
	.byte		N02	, Fs3, v084
	.byte	W04
	.byte		N07	, An3, v127
	.byte	W08
	.byte		N01	, Fs3, v052
	.byte	W03
	.byte		N05	, Gn3, v124
	.byte	W08
	.byte		N03	, Gn3, v068
	.byte	W03
	.byte		N06	, Fs3, v084
	.byte	W02
	.byte	W07
	.byte		N03	, En3, v096
	.byte	W05
	.byte		N05	, Ds3, v068
	.byte	W08
	.byte		N03	, En3, v088
	.byte	W04
	.byte		N06	, Fs3, v120
	.byte	W08
	.byte		N04	, Gn3, v112
	.byte	W04
	.byte	W01
	.byte		N05	, Gs3
	.byte	W07
	.byte		N04	, An3, v120
	.byte	W06
	.byte		N05	, Bn3, v096
	.byte	W07
	.byte		N04	, Cs4, v124
	.byte	W09
	.byte		N05	, Ds4, v116
	.byte	W06
	.byte	W02
	.byte		N04	, En3, v088
	.byte		N07	, En4, v116
	.byte	W10
	.byte		N03	, En3, v076
	.byte	W02
	.byte		N04	, En4, v096
	.byte	W08
	.byte		N03	, Dn3, v124
	.byte		N06	, Dn4, v108
	.byte	W08
	.byte		N03	, Dn3, v080
	.byte	W01
	.byte			Dn4
	.byte	W05
	.byte	W03
	.byte		N02	, Bn2, v076
	.byte		N02	, Bn3
	.byte	W09
	.byte		N04	, Bn2, v092
	.byte		N04	, Bn3, v084
	.byte	W09
	.byte		N03	, As2
	.byte		N05	, As3, v104
	.byte	W07
	.byte		N03	, An2, v084
	.byte		N04	, An3, v104
	.byte	W07
	.byte		N03	, En3, v080
	.byte	W01
	.byte		N06	, En2, v068
	.byte	W06
	.byte		N02	, Gn2, v072
	.byte		N02	, Gn3, v080
	.byte	W02
	.byte		N04	, Gs3, v092
	.byte	W01
	.byte		N03	, Gs2
	.byte	W08
	.byte		N02	, Gs2, v080
	.byte		N06	, Gs3, v096
	.byte	W08
	.byte		N05	, Gs2, v072
	.byte		N07	, Gs3, v100
	.byte	W08
	.byte		N02	, An2, v080
	.byte		N03	, An3, v072
	.byte	W03
	.byte	W02
	.byte		N04	, Gs3, v056
	.byte	W01
	.byte		N07	, Gs2, v060
	.byte	W09
	.byte		N06	, Gs3, v084
	.byte	W01
	.byte		N02	, Gs2, v052
	.byte	W06
	.byte		N11	, Fn2, v060
	.byte		N11	, Fn3, v072
	.byte	W17
	.byte	W09
	.byte		N03	, Fs2, v100
	.byte		N02	, Fs3, v120
	.byte	W10
	.byte		N03	, Fs2, v080
	.byte	W01
	.byte		N04	, Fs3, v116
	.byte	W05
	.byte			An2, v108
	.byte		N06	, Cs3
	.byte	W09
	.byte		N08	, An2, v092
	.byte	W01
	.byte		N07	, Cs3, v084
	.byte	W01
	.byte	W11
	.byte		N06	, En3, v112
	.byte	W08
	.byte		N03	, Cs3, v052
	.byte	W04
	.byte		N05	, Ds3, v104
	.byte	W08
	.byte		N04	, En3, v108
	.byte	W04
	.byte		N05	, Fs3, v100
	.byte	W01
	.byte	W07
	.byte		N06	, En3, v120
	.byte	W11
	.byte		N04	, Bn2, v084
	.byte	W05
	.byte		N06	, Gs2
	.byte	W07
	.byte		N04	, En2, v076
	.byte	W05
	.byte		N06	, An2, v108
	.byte		N06	, Cs3
	.byte	W01
	.byte	W07
	.byte		N03	, En2, v052
	.byte	W05
	.byte			Gs2, v092
	.byte		N05	, Bn2, v084
	.byte	W07
	.byte		N02	, Gs2, v088
	.byte		N05	, Bn2, v084
	.byte	W07
	.byte		N08	, En2, v072
	.byte	W10
	.byte	GOTO	
		mPtr	song017_7_1
	.byte	FINE

	                                                        

	.global song017_8
song017_8:	            
	.byte	KEYSH	, 0
song017_8_3:
	.byte	VOICE	, 80
	.byte	VOL	, v090
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte	LFOS	, 43
	.byte	MODT	, 2
	.byte	LFODL	, 0
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W12
	.byte		N72	, En3, v127
	.byte	W24
	.byte	W36
song017_8_1:
	.byte	W19
	.byte		N03	, En3, v120
	.byte	W12
	.byte		N03	
	.byte	W05
	.byte	PEND
	.byte		N32	, Gn3, v116
	.byte	W36
	.byte		N66	, Dn3, v120
	.byte	W36
	.byte	W36
	.byte		N30	, En3, v116
	.byte	W36
song017_8_2:
	.byte		N06	, Fs3, v116
	.byte	W07
	.byte		N04	, Fs3, v112
	.byte	W12
	.byte		N16	, Fs3, v120
	.byte	W17
	.byte	PEND
	.byte		N06	, Bn2, v116
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte		N84	, En3, v127
	.byte	W36
	.byte	W36
	.byte	PATT	
		mPtr	song017_8_1
	.byte		N32	, Gn3, v116
	.byte	W36
	.byte		N66	, Dn3, v120
	.byte	W36
	.byte	W36
	.byte		N30	, En3, v116
	.byte	W36
	.byte	PATT	
		mPtr	song017_8_2
	.byte		N06	, Bn2, v116
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	W36
	.byte	GOTO	
		mPtr	song017_8_3
	.byte	FINE

	mAlignWord
	.global C_DECL(song017)
C_DECL(song017):	            
	.byte	8		            
	.byte	0		            
	.byte	0		          
	.byte	128		        

mAlignWord
	mPtr	voicegroup000		                 

	mPtr	song017_1		       
	mPtr	song017_2		       
	mPtr	song017_3		       
	mPtr	song017_4		       
	mPtr	song017_5		       
	mPtr	song017_6		       
	mPtr	song017_7		       
	mPtr	song017_8		       
