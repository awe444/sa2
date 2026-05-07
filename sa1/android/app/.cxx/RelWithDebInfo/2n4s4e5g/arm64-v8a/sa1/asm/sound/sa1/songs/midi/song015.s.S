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
# 2 "/home/awaszczak/git/sa2/sa1/sound/sa1/songs/midi/song015.s"
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
# 3 "/home/awaszczak/git/sa2/sa1/sound/sa1/songs/midi/song015.s"
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
# 4 "/home/awaszczak/git/sa2/sa1/sound/sa1/songs/midi/song015.s"

	.equ	song015_grp, voicegroup000
	.equ	song015_pri, 0
	.equ	song015_rev, reverb_set+0
	.equ	song015_mvl, 110
	.equ	song015_key, 0
	.equ	song015_tbs, 1
	.equ	song015_exg, 0
	.equ	song015_cmp, 1

	mSectionRodata
	.global	C_DECL(song015)
	mAlignWord

                                                        

song015_1:
	.byte	KEYSH , song015_key+0
                                                
	.byte	TEMPO , 190*song015_tbs/2
	.byte		VOICE , 127
	.byte		VOL   , 127*song015_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		LFOS  , 43
	.byte		MODT  , 2
	.byte		LFODL , 0
	.byte		N07   , Cn1 , v127
	.byte		N07   , Ds1 , v068
	.byte	W24
	.byte		        Dn1 , v052
	.byte	W48
	.byte		N07   
	.byte	W24
                                                
	.byte	W24
	.byte		N07   
	.byte	W48
	.byte		N07   
	.byte	W24
                                                
	.byte	W16
	.byte		        Cs1 , v127
	.byte	W08
	.byte		N15   
	.byte		N07   , Dn1 , v052
	.byte	W16
	.byte		        Cn1 , v127
	.byte	W08
	.byte		N15   
	.byte	W16
	.byte		N07   , Cs1 
	.byte	W08
	.byte		N15   
	.byte		N07   , Dn1 , v052
	.byte	W16
	.byte		        Cn1 , v127
	.byte	W08
                                                
	.byte		N15   , Gn1 
	.byte	W16
	.byte		N07   , Gs1 
	.byte	W08
	.byte		N15   , Cs1 
	.byte		N07   , Dn1 , v052
	.byte	W16
	.byte		        Cs1 , v127
	.byte	W08
	.byte		        Cn1 
	.byte	W08
	.byte		        Gs1 
	.byte	W08
	.byte		        Cs1 
	.byte	W08
	.byte		N15   
	.byte		N07   , Dn1 , v052
	.byte	W16
	.byte		N15   , Cn1 , v127
	.byte		N92   , Cs2 
	.byte	W08
                                                
	.byte		N07   , Ds1 , v064
	.byte	W08
	.byte		        Dn1 , v052
	.byte	W08
	.byte		        Cn1 , v127
	.byte		N07   , Dn1 , v036
	.byte	W08
	.byte		N15   , Cs1 , v127
	.byte		N07   , Dn1 , v064
	.byte	W08
	.byte		        Dn1 , v052
	.byte	W08
	.byte		        Cn1 , v127
	.byte		N07   , Dn1 , v036
	.byte	W08
	.byte		N15   , Cn1 , v127
	.byte		N07   , Dn1 , v064
	.byte	W08
	.byte		        Dn1 , v052
	.byte	W08
	.byte		        Cn1 , v127
	.byte		N07   , Dn1 , v036
	.byte	W08
	.byte		N15   , Cs1 , v127
	.byte		N07   , Dn1 , v064
	.byte	W08
	.byte		        Dn1 , v052
	.byte	W08
	.byte		N08   , Cn1 , v127
	.byte		N07   , Dn1 , v036
	.byte	W08
                                                
song015_1_005:
	.byte		N15   , Cn1 , v127
	.byte		N07   , Ds1 , v064
	.byte	W08
	.byte		        Dn1 , v052
	.byte	W08
	.byte		        Cn1 , v127
	.byte		N07   , Dn1 , v036
	.byte	W08
	.byte		N15   , Cs1 , v127
	.byte		N07   , Dn1 , v064
	.byte	W08
	.byte		        Dn1 , v052
	.byte	W08
	.byte		        Cn1 , v127
	.byte		N07   , Dn1 , v036
	.byte	W08
	.byte		N15   , Cn1 , v127
	.byte		N07   , Dn1 , v064
	.byte	W08
	.byte		        Dn1 , v052
	.byte	W08
	.byte		        Cn1 , v127
	.byte		N07   , Dn1 , v036
	.byte	W08
	.byte		N15   , Cs1 , v127
	.byte		N07   , Dn1 , v064
	.byte	W08
	.byte		        Dn1 , v052
	.byte	W08
	.byte		N08   , Cn1 , v127
	.byte		N07   , Dn1 , v036
	.byte	W08
	.byte	PEND
song015_1_B1:
                                                
	.byte	PATT
	 mPtr	song015_1_005
                                                
	.byte		N15   , Cn1 , v127
	.byte		N07   , Ds1 , v064
	.byte	W08
	.byte		        Dn1 , v052
	.byte	W08
	.byte		        Cn1 , v127
	.byte		N07   , Dn1 , v036
	.byte	W08
	.byte		N15   , Cs1 , v127
	.byte		N07   , Dn1 , v064
	.byte	W08
	.byte		        Dn1 , v052
	.byte	W08
	.byte		        Cn1 , v127
	.byte		N07   , Dn1 , v036
	.byte	W08
	.byte		N15   , Cn1 , v127
	.byte		N07   , Dn1 , v064
	.byte	W08
	.byte		        Dn1 , v052
	.byte	W08
	.byte		        Cs1 , v127
	.byte		N07   , Dn1 , v036
	.byte	W08
	.byte		        Cs1 , v127
	.byte		N07   , Dn1 , v064
	.byte	W08
	.byte		        Cs1 , v127
	.byte		N07   , Dn1 , v052
	.byte	W08
	.byte		N08   , Cs1 , v127
	.byte		N07   , Dn1 , v036
	.byte	W08
                                                
song015_1_008:
	.byte		N15   , Cn1 , v127
	.byte		N07   , Ds1 , v064
	.byte		N92   , Cs2 , v127
	.byte	W08
	.byte		N07   , Dn1 , v052
	.byte	W08
	.byte		        Cn1 , v127
	.byte		N07   , Dn1 , v036
	.byte	W08
	.byte		N15   , Cs1 , v127
	.byte		N07   , Dn1 , v064
	.byte	W08
	.byte		        Dn1 , v052
	.byte	W08
	.byte		        Cn1 , v127
	.byte		N07   , Dn1 , v036
	.byte	W08
	.byte		N15   , Cn1 , v127
	.byte		N07   , Dn1 , v064
	.byte	W08
	.byte		        Dn1 , v052
	.byte	W08
	.byte		        Cn1 , v127
	.byte		N07   , Dn1 , v036
	.byte	W08
	.byte		N15   , Cs1 , v127
	.byte		N07   , Dn1 , v064
	.byte	W08
	.byte		        Dn1 , v052
	.byte	W08
	.byte		N08   , Cn1 , v127
	.byte		N07   , Dn1 , v036
	.byte	W08
	.byte	PEND
                                                
	.byte	PATT
	 mPtr	song015_1_005
                                                
	.byte	PATT
	 mPtr	song015_1_005
                                                
song015_1_011:
	.byte		N15   , Cn1 , v127
	.byte		N07   , Ds1 , v064
	.byte	W08
	.byte		        Dn1 , v052
	.byte	W08
	.byte		        Cn1 , v127
	.byte		N07   , Dn1 , v036
	.byte	W08
	.byte		N15   , Cs1 , v127
	.byte		N07   , Dn1 , v064
	.byte	W08
	.byte		        Dn1 , v052
	.byte	W08
	.byte		        Cn1 , v127
	.byte		N07   , Dn1 , v036
	.byte	W08
	.byte		N15   , Cn1 , v127
	.byte		N07   , Dn1 , v064
	.byte	W08
	.byte		        Dn1 , v052
	.byte	W08
	.byte		        Cn1 , v127
	.byte		N07   , Dn1 , v036
	.byte	W08
	.byte		N15   , Cs1 , v127
	.byte		N07   , Dn1 , v064
	.byte	W08
	.byte		        Dn1 , v052
	.byte	W08
	.byte		N08   , Cs1 , v127
	.byte		N07   , Dn1 , v036
	.byte	W08
	.byte	PEND
                                                
	.byte	PATT
	 mPtr	song015_1_008
                                                
	.byte	PATT
	 mPtr	song015_1_005
                                                
	.byte	PATT
	 mPtr	song015_1_005
                                                
	.byte	PATT
	 mPtr	song015_1_005
                                                
	.byte	PATT
	 mPtr	song015_1_005
                                                
song015_1_017:
	.byte		N15   , Cn1 , v127
	.byte		N07   , Ds1 , v064
	.byte	W08
	.byte		        Dn1 , v052
	.byte	W08
	.byte		        Cn1 , v127
	.byte		N07   , Dn1 , v036
	.byte	W08
	.byte		N15   , Cs1 , v127
	.byte		N07   , Dn1 , v064
	.byte	W08
	.byte		        Dn1 , v052
	.byte	W08
	.byte		        Cn1 , v127
	.byte		N07   , Dn1 , v036
	.byte	W08
	.byte		N15   , Cn1 , v127
	.byte		N07   , Dn1 , v064
	.byte	W08
	.byte		        Dn1 , v052
	.byte	W08
	.byte		        Cn1 , v127
	.byte		N07   , Dn1 , v036
	.byte	W08
	.byte		        Cs1 , v127
	.byte		N07   , Dn1 , v064
	.byte	W08
	.byte		        Cs1 , v127
	.byte		N07   , Dn1 , v052
	.byte	W08
	.byte		        Cs1 , v127
	.byte		N07   , Dn1 , v036
	.byte	W08
	.byte	PEND
                                                
song015_1_018:
	.byte		N08   , Cn1 , v127
	.byte		N08   , Ds1 , v096
	.byte	W24
	.byte		N07   , Dn1 , v056
	.byte	W48
	.byte		N07   
	.byte	W24
	.byte	PEND
                                                
song015_1_019:
	.byte	W24
	.byte		N07   , Dn1 , v056
	.byte	W24
	.byte		N15   , Cs1 , v127
	.byte	W16
	.byte		N07   , Gn1 
	.byte	W08
	.byte		        Cn1 
	.byte		N07   , Dn1 , v056
	.byte	W08
	.byte		        Cs1 , v127
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte	PEND
                                                
	.byte	PATT
	 mPtr	song015_1_008
                                                
	.byte	PATT
	 mPtr	song015_1_005
                                                
	.byte	PATT
	 mPtr	song015_1_005
                                                
	.byte		N15   , Cn1 , v127
	.byte		N07   , Ds1 , v064
	.byte	W08
	.byte		        Dn1 , v052
	.byte	W08
	.byte		        Cn1 , v127
	.byte		N07   , Dn1 , v036
	.byte	W08
	.byte		N15   , Cs1 , v127
	.byte		N07   , Dn1 , v064
	.byte	W08
	.byte		        Dn1 , v052
	.byte	W08
	.byte		        Cn1 , v127
	.byte		N07   , Dn1 , v036
	.byte	W08
	.byte		        Dn1 , v064
	.byte		N07   , An1 , v127
	.byte	W08
	.byte		        Dn1 , v052
	.byte		N07   , An1 , v127
	.byte	W08
	.byte		        Dn1 , v036
	.byte		N07   , Gs1 , v127
	.byte	W08
	.byte		        Dn1 , v064
	.byte		N07   , Gs1 , v127
	.byte	W08
	.byte		        Cn1 
	.byte		N07   , Dn1 , v052
	.byte	W08
	.byte		N08   , Cs1 , v127
	.byte		N07   , Dn1 , v036
	.byte	W08
                                                
	.byte	PATT
	 mPtr	song015_1_008
                                                
	.byte	PATT
	 mPtr	song015_1_005
                                                
	.byte	PATT
	 mPtr	song015_1_005
                                                
	.byte	PATT
	 mPtr	song015_1_011
                                                
	.byte	PATT
	 mPtr	song015_1_008
                                                
	.byte	PATT
	 mPtr	song015_1_005
                                                
	.byte	PATT
	 mPtr	song015_1_005
                                                
	.byte	PATT
	 mPtr	song015_1_005
                                                
	.byte	PATT
	 mPtr	song015_1_005
                                                
	.byte	PATT
	 mPtr	song015_1_017
                                                
	.byte	PATT
	 mPtr	song015_1_018
                                                
	.byte	PATT
	 mPtr	song015_1_019
                                                
	.byte	PATT
	 mPtr	song015_1_008
                                                
song015_1_037:
	.byte		N15   , Cn1 , v127
	.byte		N07   , Ds1 , v064
	.byte	W08
	.byte		        Dn1 , v052
	.byte	W08
	.byte		        Cn1 , v127
	.byte		N07   , Dn1 , v036
	.byte	W08
	.byte		N15   , Cs1 , v127
	.byte		N07   , Dn1 , v064
	.byte	W08
	.byte		        Dn1 , v052
	.byte	W08
	.byte		        Cn1 , v127
	.byte		N07   , Dn1 , v036
	.byte	W08
	.byte		N15   , Cn1 , v127
	.byte		N07   , Dn1 , v064
	.byte	W08
	.byte		        Dn1 , v052
	.byte	W08
	.byte		        Cs1 , v127
	.byte		N07   , Dn1 , v036
	.byte	W08
	.byte		        Cs1 , v127
	.byte		N07   , Dn1 , v064
	.byte	W08
	.byte		        Dn1 , v052
	.byte		N07   , Gs1 , v127
	.byte	W08
	.byte		        Dn1 , v036
	.byte		N08   , Gn1 , v127
	.byte	W08
	.byte	PEND
                                                
	.byte	PATT
	 mPtr	song015_1_008
                                                
	.byte	PATT
	 mPtr	song015_1_005
                                                
	.byte	PATT
	 mPtr	song015_1_005
                                                
	.byte		N15   , Cn1 , v127
	.byte		N07   , Ds1 , v064
	.byte	W08
	.byte		        Dn1 , v052
	.byte	W08
	.byte		        Cn1 , v127
	.byte		N07   , Dn1 , v036
	.byte	W08
	.byte		N15   , Cs1 , v127
	.byte		N07   , Dn1 , v064
	.byte	W08
	.byte		        Dn1 , v052
	.byte	W08
	.byte		        Cn1 , v127
	.byte		N07   , Dn1 , v036
	.byte	W08
	.byte		N15   , Cn1 , v127
	.byte		N07   , Dn1 , v064
	.byte	W08
	.byte		        Dn1 , v052
	.byte	W08
	.byte		        Cn1 , v127
	.byte		N07   , Dn1 , v036
	.byte	W08
	.byte		        Cs1 , v127
	.byte		N07   , Dn1 , v064
	.byte	W08
	.byte		        Cs1 , v127
	.byte		N07   , Dn1 , v052
	.byte	W08
	.byte		N08   , Cs1 , v127
	.byte		N07   , Dn1 , v036
	.byte	W08
                                                
	.byte	PATT
	 mPtr	song015_1_005
                                                
	.byte	PATT
	 mPtr	song015_1_005
                                                
	.byte	PATT
	 mPtr	song015_1_005
                                                
	.byte		N15   , Cn1 , v127
	.byte		N07   , Ds1 , v064
	.byte	W08
	.byte		        Dn1 , v052
	.byte	W08
	.byte		        Cn1 , v127
	.byte		N07   , Dn1 , v036
	.byte	W08
	.byte		N15   , Cs1 , v127
	.byte		N07   , Dn1 , v064
	.byte	W08
	.byte		        Dn1 , v052
	.byte	W08
	.byte		        Cn1 , v127
	.byte		N07   , Dn1 , v036
	.byte	W08
	.byte		        Cs1 , v127
	.byte		N07   , Dn1 , v064
	.byte	W08
	.byte		        Dn1 , v052
	.byte		N07   , Gs1 , v127
	.byte	W08
	.byte		        Dn1 , v036
	.byte		N07   , Gn1 , v127
	.byte	W08
	.byte		        Cn1 
	.byte		N07   , Dn1 , v064
	.byte	W08
	.byte		        Dn1 , v052
	.byte		N07   , Fs1 , v127
	.byte	W08
	.byte		N08   , Cs1 
	.byte		N07   , Dn1 , v036
	.byte	W08
                                                
	.byte	PATT
	 mPtr	song015_1_008
                                                
	.byte	PATT
	 mPtr	song015_1_005
                                                
	.byte	PATT
	 mPtr	song015_1_005
                                                
	.byte	PATT
	 mPtr	song015_1_011
                                                
	.byte	PATT
	 mPtr	song015_1_005
                                                
	.byte	PATT
	 mPtr	song015_1_037
                                                
	.byte		N07   , Cn1 , v127
	.byte		N07   , En1 , v064
	.byte	W24
	.byte		        Dn1 , v036
	.byte	W16
	.byte		        Cs1 , v127
	.byte	W08
	.byte		N15   
	.byte	W16
	.byte		N07   , Cn1 
	.byte		N07   , En1 , v064
	.byte	W08
	.byte		        Dn1 , v036
	.byte	W16
	.byte		        Cn1 , v127
	.byte		N92   , Gn2 
	.byte	W08
                                                
	.byte	W24
	.byte		N07   , Dn1 , v036
	.byte	W16
	.byte		        Cs1 , v127
	.byte	W08
	.byte		N15   , Gs1 
	.byte	W16
	.byte		N07   , Cs1 
	.byte	W08
	.byte		N07   
	.byte		N07   , Dn1 , v036
	.byte	W08
	.byte		        Cs1 , v127
	.byte	W08
	.byte		N15   , Cn1 
	.byte		N92   , Cs2 
	.byte	W08
                                                
	.byte	W08
	.byte		N07   , Dn1 , v052
	.byte	W08
	.byte		        Cn1 , v127
	.byte		N07   , Dn1 , v036
	.byte	W08
	.byte		N15   , Cs1 , v127
	.byte		N07   , Dn1 , v064
	.byte	W08
	.byte		        Dn1 , v052
	.byte	W08
	.byte		        Cn1 , v127
	.byte		N07   , Dn1 , v036
	.byte	W08
	.byte		N15   , Cn1 , v127
	.byte		N07   , Dn1 , v064
	.byte	W08
	.byte		        Dn1 , v052
	.byte	W08
	.byte		        Cn1 , v127
	.byte		N07   , Dn1 , v036
	.byte	W08
	.byte		N15   , Cs1 , v127
	.byte		N07   , Dn1 , v064
	.byte	W08
	.byte		        Dn1 , v052
	.byte	W08
	.byte		N08   , Cn1 , v127
	.byte		N07   , Dn1 , v036
	.byte	W08
                                                
	.byte	PATT
	 mPtr	song015_1_005
	.byte	GOTO
	 mPtr	song015_1_B1
song015_1_B2:
                                                
	.byte	FINE

                                                        

song015_2:
	.byte	KEYSH , song015_key+0
                                                
	.byte		VOICE , 85
	.byte		VOL   , 110*song015_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		LFOS  , 31
	.byte		MODT  , 0
	.byte		LFODL , 0
	.byte	PRIO  , 30
	.byte		N15   , An3 , v104
	.byte	W16
	.byte		N07   , Cn4 , v084
	.byte	W08
	.byte		N15   , An3 , v100
	.byte	W16
	.byte		N10   , En4 , v112
	.byte	W24
	.byte		N11   , Ds4 
	.byte	W24
	.byte		N07   , Dn4 , v100
	.byte	W08
                                                
	.byte		N14   , Cn4 
	.byte	W16
	.byte		N07   , An3 , v076
	.byte	W08
	.byte		N14   , Ds4 , v116
	.byte	W16
	.byte		N30   , Dn4 , v108
	.byte	W32
	.byte		N15   , Cn4 , v088
	.byte	W16
	.byte		N07   , An3 , v092
	.byte	W08
                                                
	.byte		N11   , Gn3 , v108
	.byte	W16
	.byte		N07   , En3 , v084
	.byte	W08
	.byte		N15   , Gs3 , v104
	.byte	W16
	.byte		N21   , An3 , v112
	.byte	W48
	.byte		N07   , An3 , v100
	.byte	W08
                                                
	.byte		N14   , Cn4 , v096
	.byte	W16
	.byte		N07   , Dn4 , v108
	.byte	W08
	.byte		N12   , Ds4 , v104
	.byte	W16
	.byte		N21   , En4 
	.byte	W24
	.byte		N07   , Gn4 , v112
	.byte	W08
	.byte		N15   , Gs4 , v116
	.byte	W16
	.byte		N07   , An4 , v108
	.byte	W08
                                                
	.byte	W96
                                                
	.byte	W96
song015_2_B1:
                                                
	.byte	W96
                                                
	.byte	W96
                                                
song015_2_008:
	.byte		N15   , An4 , v088
	.byte	W16
	.byte		        Cn5 , v096
	.byte	W16
	.byte		        En5 , v112
	.byte	W16
	.byte		TIE   , Ds5 , v104
	.byte	W48
	.byte	PEND
                                                
	.byte		MOD   , 4
	.byte	W54
	.byte		EOT   
	.byte	W18
	.byte		N07   , Dn5 , v096
	.byte	W08
	.byte		        Cn5 , v088
	.byte	W08
	.byte		        An4 , v104
	.byte	W08
                                                
song015_2_010:
	.byte		N15   , Cn5 , v104
	.byte	W16
	.byte		N14   , Dn5 , v116
	.byte	W24
	.byte		N20   , Cn5 
	.byte	W56
	.byte	PEND
                                                
	.byte	W96
                                                
song015_2_012:
	.byte		MOD   , 0
	.byte		N15   , An4 , v127
	.byte	W16
	.byte		        Cn5 , v112
	.byte	W16
	.byte		        Gn5 , v120
	.byte	W16
	.byte		TIE   , Fs5 , v116
	.byte	W48
	.byte	PEND
                                                
song015_2_013:
	.byte		MOD   , 4
	.byte	W56
	.byte	W03
	.byte	PEND
	.byte		EOT   , Fs5 
	.byte	W13
	.byte		N07   , En5 , v116
	.byte	W08
	.byte		        Dn5 , v092
	.byte	W08
	.byte		        Cn5 , v120
	.byte	W08
                                                
song015_2_014:
	.byte		N15   , Cn5 , v096
	.byte	W16
	.byte		N13   , Dn5 , v112
	.byte	W80
	.byte	PEND
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W72
	.byte		N24   , Bn5 , v096
	.byte	W24
                                                
song015_2_018:
	.byte		N16   , An5 , v096
	.byte	W88
	.byte		N08   , An4 , v112
	.byte	W08
	.byte	PEND
                                                
song015_2_019:
	.byte		N08   , Ds5 , v112
	.byte	W08
	.byte		        Dn5 , v108
	.byte	W08
	.byte		        Cn5 , v112
	.byte	W08
	.byte		N16   , Dn5 , v116
	.byte	W16
	.byte		N08   , Cn5 , v112
	.byte	W08
	.byte		N16   , An4 , v100
	.byte	W16
	.byte		N08   , En4 
	.byte	W08
	.byte		N16   , Gn4 , v120
	.byte	W16
	.byte		N32   , An4 , v124
	.byte	W08
	.byte	PEND
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	PATT
	 mPtr	song015_2_008
                                                
	.byte		MOD   , 4
	.byte	W54
	.byte		EOT   , Ds5 
	.byte	W18
	.byte		N07   , Dn5 , v096
	.byte	W08
	.byte		        Cn5 , v088
	.byte	W08
	.byte		        An4 , v104
	.byte	W08
                                                
	.byte	PATT
	 mPtr	song015_2_010
                                                
	.byte	W96
                                                
	.byte	PATT
	 mPtr	song015_2_012
                                                
	.byte	PATT
	 mPtr	song015_2_013
	.byte		EOT   , Fs5 
	.byte	W13
	.byte		N07   , En5 , v116
	.byte	W08
	.byte		        Dn5 , v092
	.byte	W08
	.byte		        Cn5 , v120
	.byte	W08
                                                
	.byte	PATT
	 mPtr	song015_2_014
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W72
	.byte		N24   , Bn5 , v096
	.byte	W24
                                                
	.byte	PATT
	 mPtr	song015_2_018
                                                
	.byte	PATT
	 mPtr	song015_2_019
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte		VOL   , 110*song015_mvl/mxv
	.byte	W02
	.byte		        109*song015_mvl/mxv
	.byte	W01
	.byte		        108*song015_mvl/mxv
	.byte	W01
	.byte		        107*song015_mvl/mxv
	.byte	W01
	.byte		        106*song015_mvl/mxv
	.byte	W01
	.byte		        104*song015_mvl/mxv
	.byte	W02
	.byte		        104*song015_mvl/mxv
	.byte	W01
	.byte		        103*song015_mvl/mxv
	.byte	W01
	.byte		        102*song015_mvl/mxv
	.byte	W01
	.byte		        101*song015_mvl/mxv
	.byte	W01
	.byte		        100*song015_mvl/mxv
	.byte	W01
	.byte		        99*song015_mvl/mxv
	.byte	W01
	.byte		        97*song015_mvl/mxv
	.byte	W02
	.byte		        97*song015_mvl/mxv
	.byte	W01
	.byte		        96*song015_mvl/mxv
	.byte	W01
	.byte		        95*song015_mvl/mxv
	.byte	W01
	.byte		        94*song015_mvl/mxv
	.byte	W01
	.byte		        93*song015_mvl/mxv
	.byte	W01
	.byte		        92*song015_mvl/mxv
	.byte	W02
	.byte		        91*song015_mvl/mxv
	.byte	W01
	.byte		        89*song015_mvl/mxv
	.byte	W01
	.byte		        89*song015_mvl/mxv
	.byte	W01
	.byte		        88*song015_mvl/mxv
	.byte	W01
	.byte		        87*song015_mvl/mxv
	.byte	W01
	.byte		        86*song015_mvl/mxv
	.byte	W01
	.byte		        85*song015_mvl/mxv
	.byte	W02
	.byte		        84*song015_mvl/mxv
	.byte	W01
	.byte		        82*song015_mvl/mxv
	.byte	W01
	.byte		        82*song015_mvl/mxv
	.byte	W01
	.byte		        81*song015_mvl/mxv
	.byte	W01
	.byte		        80*song015_mvl/mxv
	.byte	W01
	.byte		        79*song015_mvl/mxv
	.byte	W01
	.byte		        78*song015_mvl/mxv
	.byte	W02
	.byte		        76*song015_mvl/mxv
	.byte	W09
	.byte		        77*song015_mvl/mxv
	.byte		N96   , Cn4 , v116
	.byte	W05
	.byte		VOL   , 78*song015_mvl/mxv
	.byte	W05
	.byte		        79*song015_mvl/mxv
	.byte	W05
	.byte		        80*song015_mvl/mxv
	.byte	W05
	.byte		        81*song015_mvl/mxv
	.byte	W04
	.byte		        82*song015_mvl/mxv
	.byte	W05
	.byte		        82*song015_mvl/mxv
	.byte	W05
	.byte		        84*song015_mvl/mxv
	.byte	W05
	.byte		        85*song015_mvl/mxv
	.byte	W05
	.byte		        86*song015_mvl/mxv
	.byte	W04
                                                
	.byte		        87*song015_mvl/mxv
	.byte	W05
	.byte		        88*song015_mvl/mxv
	.byte	W05
	.byte		        89*song015_mvl/mxv
	.byte	W05
	.byte		        89*song015_mvl/mxv
	.byte	W05
	.byte		        91*song015_mvl/mxv
	.byte	W04
	.byte		        92*song015_mvl/mxv
	.byte	W05
	.byte		        93*song015_mvl/mxv
	.byte	W05
	.byte		        94*song015_mvl/mxv
	.byte	W05
	.byte		        95*song015_mvl/mxv
	.byte	W05
	.byte		        96*song015_mvl/mxv
	.byte	W04
	.byte		        97*song015_mvl/mxv
	.byte		N48   , Gn4 
	.byte	W05
	.byte		VOL   , 97*song015_mvl/mxv
	.byte	W05
	.byte		        99*song015_mvl/mxv
	.byte	W05
	.byte		        100*song015_mvl/mxv
	.byte	W05
	.byte		        101*song015_mvl/mxv
	.byte	W04
	.byte		        102*song015_mvl/mxv
	.byte	W05
	.byte		        103*song015_mvl/mxv
	.byte	W05
	.byte		        104*song015_mvl/mxv
	.byte	W05
	.byte		        104*song015_mvl/mxv
	.byte	W05
	.byte		        106*song015_mvl/mxv
	.byte	W04
                                                
	.byte		        107*song015_mvl/mxv
	.byte		N32   , Fs4 , v127
	.byte	W05
	.byte		VOL   , 108*song015_mvl/mxv
	.byte	W05
	.byte		        109*song015_mvl/mxv
	.byte	W01
	.byte		        110*song015_mvl/mxv
	.byte	W36
	.byte	W01
	.byte		N15   
	.byte	W16
	.byte		N23   , Ds4 
	.byte	W24
	.byte		N48   , Bn3 
	.byte	W08
                                                
	.byte	W96
                                                
	.byte		VOL   , 110*song015_mvl/mxv
	.byte	W02
	.byte		        109*song015_mvl/mxv
	.byte	W01
	.byte		        108*song015_mvl/mxv
	.byte	W01
	.byte		        107*song015_mvl/mxv
	.byte	W01
	.byte		        106*song015_mvl/mxv
	.byte	W01
	.byte		        104*song015_mvl/mxv
	.byte	W02
	.byte		        104*song015_mvl/mxv
	.byte	W01
	.byte		        103*song015_mvl/mxv
	.byte	W01
	.byte		        102*song015_mvl/mxv
	.byte	W01
	.byte		        101*song015_mvl/mxv
	.byte	W01
	.byte		        100*song015_mvl/mxv
	.byte	W01
	.byte		        99*song015_mvl/mxv
	.byte	W01
	.byte		        97*song015_mvl/mxv
	.byte	W02
	.byte		        97*song015_mvl/mxv
	.byte	W01
	.byte		        96*song015_mvl/mxv
	.byte	W01
	.byte		        95*song015_mvl/mxv
	.byte	W01
	.byte		        94*song015_mvl/mxv
	.byte	W01
	.byte		        93*song015_mvl/mxv
	.byte	W01
	.byte		        92*song015_mvl/mxv
	.byte	W02
	.byte		        91*song015_mvl/mxv
	.byte	W01
	.byte		        89*song015_mvl/mxv
	.byte	W01
	.byte		        89*song015_mvl/mxv
	.byte	W01
	.byte		        88*song015_mvl/mxv
	.byte	W01
	.byte		        87*song015_mvl/mxv
	.byte	W01
	.byte		        86*song015_mvl/mxv
	.byte	W01
	.byte		        85*song015_mvl/mxv
	.byte	W02
	.byte		        84*song015_mvl/mxv
	.byte	W01
	.byte		        82*song015_mvl/mxv
	.byte	W01
	.byte		        82*song015_mvl/mxv
	.byte	W01
	.byte		        81*song015_mvl/mxv
	.byte	W01
	.byte		        80*song015_mvl/mxv
	.byte	W01
	.byte		        79*song015_mvl/mxv
	.byte	W01
	.byte		        78*song015_mvl/mxv
	.byte	W02
	.byte		        76*song015_mvl/mxv
	.byte	W09
	.byte		        77*song015_mvl/mxv
	.byte		N96   , Gn3 , v116
	.byte	W05
	.byte		VOL   , 78*song015_mvl/mxv
	.byte	W05
	.byte		        79*song015_mvl/mxv
	.byte	W05
	.byte		        80*song015_mvl/mxv
	.byte	W05
	.byte		        81*song015_mvl/mxv
	.byte	W04
	.byte		        82*song015_mvl/mxv
	.byte	W05
	.byte		        82*song015_mvl/mxv
	.byte	W05
	.byte		        84*song015_mvl/mxv
	.byte	W05
	.byte		        85*song015_mvl/mxv
	.byte	W05
	.byte		        86*song015_mvl/mxv
	.byte	W04
                                                
	.byte		        87*song015_mvl/mxv
	.byte	W05
	.byte		        88*song015_mvl/mxv
	.byte	W05
	.byte		        89*song015_mvl/mxv
	.byte	W05
	.byte		        89*song015_mvl/mxv
	.byte	W05
	.byte		        91*song015_mvl/mxv
	.byte	W04
	.byte		        92*song015_mvl/mxv
	.byte	W05
	.byte		        93*song015_mvl/mxv
	.byte	W05
	.byte		        94*song015_mvl/mxv
	.byte	W05
	.byte		        95*song015_mvl/mxv
	.byte	W05
	.byte		        96*song015_mvl/mxv
	.byte	W04
	.byte		        97*song015_mvl/mxv
	.byte		N48   , En4 
	.byte	W05
	.byte		VOL   , 97*song015_mvl/mxv
	.byte	W05
	.byte		        99*song015_mvl/mxv
	.byte	W05
	.byte		        100*song015_mvl/mxv
	.byte	W05
	.byte		        101*song015_mvl/mxv
	.byte	W04
	.byte		        102*song015_mvl/mxv
	.byte	W05
	.byte		        103*song015_mvl/mxv
	.byte	W05
	.byte		        104*song015_mvl/mxv
	.byte	W05
	.byte		        104*song015_mvl/mxv
	.byte	W05
	.byte		        106*song015_mvl/mxv
	.byte	W04
                                                
	.byte		        107*song015_mvl/mxv
	.byte		N32   , Ds4 , v127
	.byte	W05
	.byte		VOL   , 108*song015_mvl/mxv
	.byte	W05
	.byte		        109*song015_mvl/mxv
	.byte	W01
	.byte		        110*song015_mvl/mxv
	.byte	W36
	.byte	W01
	.byte		N15   
	.byte	W16
	.byte		N23   , En4 
	.byte	W24
	.byte		N56   , Fs4 
	.byte	W08
                                                
	.byte	W96
                                                
song015_2_046:
	.byte		VOL   , 110*song015_mvl/mxv
	.byte	W02
	.byte		        109*song015_mvl/mxv
	.byte	W01
	.byte		        108*song015_mvl/mxv
	.byte	W01
	.byte		        107*song015_mvl/mxv
	.byte	W01
	.byte		        106*song015_mvl/mxv
	.byte	W01
	.byte		        104*song015_mvl/mxv
	.byte	W02
	.byte		        104*song015_mvl/mxv
	.byte	W01
	.byte		        103*song015_mvl/mxv
	.byte	W01
	.byte		        102*song015_mvl/mxv
	.byte	W01
	.byte		        101*song015_mvl/mxv
	.byte	W01
	.byte		        100*song015_mvl/mxv
	.byte	W01
	.byte		        99*song015_mvl/mxv
	.byte	W01
	.byte		        97*song015_mvl/mxv
	.byte	W02
	.byte		        97*song015_mvl/mxv
	.byte	W01
	.byte		        96*song015_mvl/mxv
	.byte	W01
	.byte		        95*song015_mvl/mxv
	.byte	W01
	.byte		        94*song015_mvl/mxv
	.byte	W01
	.byte		        93*song015_mvl/mxv
	.byte	W01
	.byte		        92*song015_mvl/mxv
	.byte	W02
	.byte		        91*song015_mvl/mxv
	.byte	W01
	.byte		        89*song015_mvl/mxv
	.byte	W01
	.byte		        89*song015_mvl/mxv
	.byte	W01
	.byte		        88*song015_mvl/mxv
	.byte	W01
	.byte		        87*song015_mvl/mxv
	.byte	W01
	.byte		        86*song015_mvl/mxv
	.byte	W01
	.byte		        85*song015_mvl/mxv
	.byte	W02
	.byte		        84*song015_mvl/mxv
	.byte	W01
	.byte		        82*song015_mvl/mxv
	.byte	W01
	.byte		        82*song015_mvl/mxv
	.byte	W01
	.byte		        81*song015_mvl/mxv
	.byte	W01
	.byte		        80*song015_mvl/mxv
	.byte	W01
	.byte		        79*song015_mvl/mxv
	.byte	W01
	.byte		        78*song015_mvl/mxv
	.byte	W02
	.byte		        76*song015_mvl/mxv
	.byte	W09
	.byte		        77*song015_mvl/mxv
	.byte		N96   , Ds4 , v116
	.byte	W05
	.byte		VOL   , 78*song015_mvl/mxv
	.byte	W05
	.byte		        79*song015_mvl/mxv
	.byte	W05
	.byte		        80*song015_mvl/mxv
	.byte	W05
	.byte		        81*song015_mvl/mxv
	.byte	W04
	.byte		        82*song015_mvl/mxv
	.byte	W05
	.byte		        82*song015_mvl/mxv
	.byte	W05
	.byte		        84*song015_mvl/mxv
	.byte	W05
	.byte		        85*song015_mvl/mxv
	.byte	W05
	.byte		        86*song015_mvl/mxv
	.byte	W04
	.byte	PEND
                                                
song015_2_047:
	.byte		VOL   , 87*song015_mvl/mxv
	.byte	W05
	.byte		        88*song015_mvl/mxv
	.byte	W05
	.byte		        89*song015_mvl/mxv
	.byte	W05
	.byte		        89*song015_mvl/mxv
	.byte	W05
	.byte		        91*song015_mvl/mxv
	.byte	W04
	.byte		        92*song015_mvl/mxv
	.byte	W05
	.byte		        93*song015_mvl/mxv
	.byte	W05
	.byte		        94*song015_mvl/mxv
	.byte	W05
	.byte		        95*song015_mvl/mxv
	.byte	W05
	.byte		        96*song015_mvl/mxv
	.byte	W04
	.byte		        97*song015_mvl/mxv
	.byte		N48   , As4 , v116
	.byte	W05
	.byte		VOL   , 97*song015_mvl/mxv
	.byte	W05
	.byte		        99*song015_mvl/mxv
	.byte	W05
	.byte		        100*song015_mvl/mxv
	.byte	W05
	.byte		        101*song015_mvl/mxv
	.byte	W04
	.byte		        102*song015_mvl/mxv
	.byte	W05
	.byte		        103*song015_mvl/mxv
	.byte	W05
	.byte		        104*song015_mvl/mxv
	.byte	W05
	.byte		        104*song015_mvl/mxv
	.byte	W05
	.byte		        106*song015_mvl/mxv
	.byte	W04
	.byte	PEND
                                                
	.byte		        107*song015_mvl/mxv
	.byte		N32   , An4 , v127
	.byte	W05
	.byte		VOL   , 108*song015_mvl/mxv
	.byte	W05
	.byte		        109*song015_mvl/mxv
	.byte	W01
	.byte		        110*song015_mvl/mxv
	.byte	W36
	.byte	W01
	.byte		N15   
	.byte	W16
	.byte		N23   , Fs4 
	.byte	W24
	.byte		N48   , Dn4 
	.byte	W08
                                                
	.byte	W96
                                                
	.byte	PATT
	 mPtr	song015_2_046
                                                
	.byte	PATT
	 mPtr	song015_2_047
                                                
	.byte		VOL   , 107*song015_mvl/mxv
	.byte		N16   , An4 , v127
	.byte	W05
	.byte		VOL   , 108*song015_mvl/mxv
	.byte	W05
	.byte		        109*song015_mvl/mxv
	.byte	W01
	.byte		        110*song015_mvl/mxv
	.byte	W36
	.byte	W01
	.byte		N15   
	.byte	W16
	.byte		        As4 
	.byte	W24
	.byte		N54   , Bn4 
	.byte	W08
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W96
	.byte	GOTO
	 mPtr	song015_2_B1
song015_2_B2:
                                                
	.byte	FINE

                                                        

song015_3:
	.byte	KEYSH , song015_key+0
                                                
	.byte		VOICE , 84
	.byte		VOL   , 110*song015_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		MOD   , 31
	.byte		LFOS  , 43
	.byte		MODT  , 2
	.byte		LFODL , 0
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W01
	.byte		N07   , Dn4 , v092
	.byte	W05
	.byte		N09   , Ds4 , v064
	.byte	W05
	.byte		N08   , En4 
	.byte	W10
	.byte		N07   , An4 , v104
	.byte	W08
	.byte		N08   , Dn4 , v096
	.byte	W09
	.byte		N07   , Ds4 , v080
	.byte	W06
	.byte		N48   , Dn4 , v076
	.byte	W52
song015_3_B1:
                                                
	.byte	W03
	.byte		N11   , Cn4 , v124
	.byte	W15
	.byte		N03   , An3 , v044
	.byte	W08
	.byte		N08   , Dn4 , v120
	.byte	W15
	.byte		N18   , Cn4 , v116
	.byte	W32
	.byte		N12   , An3 
	.byte	W16
	.byte		N07   , En3 , v096
	.byte	W07
                                                
	.byte	W02
	.byte		N08   , Ds3 , v112
	.byte	W14
	.byte		        Dn3 , v092
	.byte	W11
	.byte		N06   , Cn3 , v076
	.byte	W15
	.byte		N05   , An2 , v016
	.byte	W07
	.byte		N10   , Dn3 , v116
	.byte	W15
	.byte		N03   , An2 , v068
	.byte	W08
	.byte		N12   , Cn3 , v080
	.byte	W17
	.byte		N32   , An2 
	.byte	W07
                                                
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
                                                
	.byte	W84
	.byte	W03
	.byte		N18   , Dn4 , v127
	.byte		N20   , An4 
	.byte	W09
                                                
	.byte	W09
	.byte		N08   , Ds4 , v080
	.byte	W08
	.byte		N04   , Dn4 , v048
	.byte	W04
	.byte		N06   , Cn4 , v084
	.byte	W06
	.byte		N15   , Dn4 , v112
	.byte	W16
	.byte		N24   , Cn4 , v108
	.byte	W30
	.byte	W01
	.byte		N10   , An3 , v104
	.byte	W17
	.byte		N04   , En3 , v056
	.byte	W05
                                                
	.byte	W03
	.byte		N08   , Gn3 , v116
	.byte	W15
	.byte		        Gs3 , v127
	.byte	W10
	.byte		N16   , An3 , v116
	.byte	W23
	.byte		N10   , Gn3 , v127
	.byte	W13
	.byte		N06   , En3 , v084
	.byte	W11
	.byte		N07   , Ds3 , v112
	.byte	W14
	.byte		N28   , Dn3 , v124
	.byte	W07
                                                
	.byte	W24
	.byte	W01
	.byte		N10   , Cn3 , v100
	.byte	W15
	.byte		N05   , An2 , v080
	.byte	W10
	.byte		N07   , Dn3 , v116
	.byte	W16
	.byte		N10   , Dn3 , v112
	.byte	W09
	.byte		N12   , Cn3 , v104
	.byte	W14
	.byte		N09   , An2 , v088
	.byte	W07
                                                
	.byte	W06
	.byte		N10   , An2 , v016
	.byte	W90
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte		N05   , Dn3 , v116
	.byte		N18   , An3 , v120
	.byte	W01
	.byte		N19   , Ds3 , v116
	.byte	W24
	.byte		N18   , An3 , v120
	.byte	W01
	.byte		N21   , Ds3 
	.byte	W24
	.byte	W01
	.byte		N13   , Dn3 , v127
	.byte	W01
	.byte		        An3 , v092
	.byte	W14
	.byte		N07   , Cn3 , v108
	.byte	W11
	.byte		N12   , An2 , v104
	.byte	W13
	.byte		N24   , Cn3 , v096
	.byte	W06
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W36
	.byte	W03
	.byte		N09   , Gs3 , v124
	.byte	W09
	.byte		N08   , An3 , v104
	.byte	W15
	.byte		        Gn4 , v127
	.byte	W11
	.byte		        Fs4 , v120
	.byte	W12
	.byte		N10   , Fn4 , v112
	.byte	W10
                                                
	.byte	W03
	.byte		N08   , Ds4 , v116
	.byte	W14
	.byte		        Cn4 , v100
	.byte	W10
	.byte		N11   , An3 , v096
	.byte	W15
	.byte		N10   , Gs3 , v124
	.byte	W11
	.byte		N09   , Gn3 , v100
	.byte	W14
	.byte		        Fs3 , v108
	.byte	W10
	.byte		        Fn3 , v096
	.byte	W14
	.byte		        Ds3 , v072
	.byte	W05
                                                
	.byte	W05
	.byte		N17   , Cn3 , v056
	.byte	W90
	.byte	W01
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W24
	.byte		N14   , Ds4 , v124
	.byte	W01
	.byte		N13   , An4 , v120
	.byte	W24
	.byte	W01
	.byte		N14   , Dn4 , v108
	.byte	W23
	.byte		N15   , Cn4 , v112
	.byte	W23
                                                
	.byte	W02
	.byte		N13   , Dn4 , v127
	.byte	W14
	.byte		N08   , Cn4 , v088
	.byte	W14
	.byte		N04   , An3 , v028
	.byte	W09
	.byte		N09   , Dn4 , v127
	.byte	W11
	.byte		N13   , Cn4 , v104
	.byte	W14
	.byte		N09   , An3 , v044
	.byte	W12
	.byte		N06   , En3 , v076
	.byte	W12
	.byte		N07   , Gn3 , v100
	.byte	W08
                                                
	.byte	W28
	.byte		N12   , Fs3 , v124
	.byte	W15
	.byte		N07   , Gn3 , v092
	.byte	W08
	.byte		N10   , An3 , v120
	.byte	W13
	.byte		N08   , Gn3 , v112
	.byte	W11
	.byte		N10   , Fs3 , v120
	.byte	W11
	.byte		N08   , En3 , v096
	.byte	W10
                                                
	.byte	W01
	.byte		N10   , Ds3 , v116
	.byte	W15
	.byte		N09   , Fs3 , v124
	.byte	W09
	.byte		N13   , Cn3 , v108
	.byte	W17
	.byte		N04   , As2 , v080
	.byte	W07
	.byte		N03   , As2 , v032
	.byte	W04
	.byte		N14   , Bn2 , v092
	.byte	W20
	.byte		N24   , Bn2 , v100
	.byte	W23
                                                
	.byte	W40
	.byte		N08   , Gn2 , v116
	.byte	W09
	.byte		N07   , Cn3 , v100
	.byte	W08
	.byte		N05   , En3 , v084
	.byte	W05
	.byte		N08   , Gn3 , v100
	.byte	W09
	.byte		N09   , Ds3 , v120
	.byte	W13
	.byte		N08   , En3 , v068
	.byte	W10
	.byte		N12   , Fs3 , v116
	.byte	W02
                                                
	.byte	W13
	.byte		N08   , Gn3 , v100
	.byte	W11
	.byte		N09   , An3 , v112
	.byte	W14
	.byte		        Bn3 , v120
	.byte	W11
	.byte		        Cn4 , v116
	.byte	W12
	.byte		N08   , Dn4 , v124
	.byte	W11
	.byte		N06   , As3 , v116
	.byte	W06
	.byte		N10   , Bn3 , v108
	.byte	W11
	.byte		        An3 
	.byte	W07
                                                
	.byte	W04
	.byte		N08   , Gn3 , v100
	.byte	W21
	.byte		N11   , Fs3 , v120
	.byte	W18
	.byte		N17   , Ds3 , v127
	.byte	W22
	.byte		N10   , Ds3 , v112
	.byte	W10
	.byte		N12   , Fs3 , v116
	.byte	W14
	.byte		N16   , Bn2 , v088
	.byte	W07
                                                
	.byte	W16
	.byte		N07   , Bn2 , v096
	.byte	W10
	.byte		N08   , Cs3 , v108
	.byte	W13
	.byte		N09   , Ds3 , v116
	.byte	W10
	.byte		N08   , En3 , v104
	.byte	W12
	.byte		N09   , Fs3 , v112
	.byte	W12
	.byte		N10   , Gn3 , v104
	.byte	W13
	.byte		N07   , An3 , v108
	.byte	W10
                                                
	.byte	W01
	.byte		N09   , As3 , v124
	.byte	W13
	.byte		N08   , Cn4 , v108
	.byte	W10
	.byte		N10   , Cs4 , v116
	.byte	W15
	.byte		N15   , Fn4 , v127
	.byte	W24
	.byte		N07   , Ds4 , v112
	.byte	W32
	.byte	W01
                                                
	.byte	W36
	.byte	W03
	.byte		N06   , Cn4 , v076
	.byte	W09
	.byte		N07   , Cs4 , v084
	.byte	W16
	.byte		N15   , Gs4 , v127
	.byte	W24
	.byte		N14   , Gn4 
	.byte	W08
                                                
	.byte	W18
	.byte		N12   , Fs4 
	.byte	W22
	.byte		N08   , En4 , v108
	.byte	W10
	.byte		N10   , Ds4 , v116
	.byte	W17
	.byte		N09   , Dn4 , v088
	.byte	W18
	.byte		        Cn4 , v108
	.byte	W11
                                                
	.byte	W02
	.byte		N10   , As3 , v127
	.byte	W16
	.byte		N08   , An3 , v104
	.byte	W09
	.byte		N10   , Gn3 , v096
	.byte	W13
	.byte		N09   , Fs3 , v104
	.byte	W21
	.byte		        Fs3 , v108
	.byte	W10
	.byte		N13   , An3 , v104
	.byte	W17
	.byte		N15   , Dn3 , v080
	.byte	W08
                                                
	.byte	W48
	.byte		N09   , Cn4 , v112
	.byte	W09
	.byte		N07   , Cs4 , v104
	.byte	W08
	.byte		N06   , Dn4 , v084
	.byte	W07
	.byte		N08   , Ds4 , v112
	.byte	W09
	.byte		N06   , Dn4 , v088
	.byte	W07
	.byte		        Cs4 , v096
	.byte	W06
	.byte		N09   , Cn4 , v116
	.byte	W02
                                                
	.byte	W15
	.byte		N07   , As3 , v092
	.byte	W01
	.byte		N18   , An3 , v108
	.byte	W20
	.byte		N08   , Gn3 , v096
	.byte	W11
	.byte		N11   , Fs3 , v112
	.byte	W13
	.byte		N09   , An3 , v096
	.byte	W10
	.byte		N10   , Ds3 , v112
	.byte	W15
	.byte		N07   , Cn3 , v060
	.byte	W08
	.byte		N17   , Dn3 , v120
	.byte	W03
                                                
	.byte	W48
	.byte		N13   , Dn3 , v127
	.byte	W16
	.byte		N09   , Ds3 , v120
	.byte	W23
	.byte		N36   , En3 , v127
	.byte	W09
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W96
	.byte	GOTO
	 mPtr	song015_3_B1
song015_3_B2:
                                                
	.byte	FINE

                                                        

song015_4:
	.byte	KEYSH , song015_key+0
                                                
	.byte		VOICE , 68
	.byte		VOL   , 127*song015_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		LFOS  , 43
	.byte		MODT  , 2
	.byte		LFODL , 0
	.byte		N15   , An2 , v104
	.byte	W16
	.byte		N07   , Cn3 , v084
	.byte	W08
	.byte		N15   , An2 , v100
	.byte	W16
	.byte		N10   , En3 , v112
	.byte	W24
	.byte		N11   , Ds3 
	.byte	W24
	.byte		N07   , Dn3 , v100
	.byte	W08
                                                
	.byte		N14   , Cn3 
	.byte	W16
	.byte		N07   , An2 , v076
	.byte	W08
	.byte		N14   , Ds3 , v116
	.byte	W16
	.byte		N30   , Dn3 , v108
	.byte	W32
	.byte		N15   , Cn3 , v088
	.byte	W16
	.byte		N07   , An2 , v092
	.byte	W08
                                                
	.byte		N11   , Gn2 , v108
	.byte	W16
	.byte		N07   , En2 , v084
	.byte	W08
	.byte		N15   , Gs2 , v104
	.byte	W16
	.byte		N21   , An2 , v112
	.byte	W48
	.byte		N07   , An2 , v100
	.byte	W08
                                                
	.byte		N14   , En3 , v096
	.byte	W16
	.byte		N07   , En3 , v108
	.byte	W08
	.byte		N12   , Ds3 , v104
	.byte	W16
	.byte		N21   , Dn3 
	.byte	W24
	.byte		N07   , Cn3 , v112
	.byte	W08
	.byte		N15   , Bn2 , v116
	.byte	W16
	.byte		N07   , An2 , v108
	.byte	W08
                                                
song015_4_004:
	.byte		N10   , An2 , v120
	.byte	W16
	.byte		N07   , An2 , v104
	.byte	W08
	.byte		N15   , Cn3 
	.byte	W16
	.byte		N08   , An2 , v112
	.byte	W24
	.byte		N07   , An2 , v100
	.byte	W08
	.byte		        En2 , v084
	.byte	W08
	.byte		        Gn2 , v096
	.byte	W08
	.byte		        Gs2 , v108
	.byte	W08
	.byte	PEND
                                                
	.byte	PATT
	 mPtr	song015_4_004
song015_4_B1:
                                                
	.byte	PATT
	 mPtr	song015_4_004
                                                
	.byte	PATT
	 mPtr	song015_4_004
                                                
	.byte	PATT
	 mPtr	song015_4_004
                                                
	.byte	PATT
	 mPtr	song015_4_004
                                                
	.byte	PATT
	 mPtr	song015_4_004
                                                
	.byte	PATT
	 mPtr	song015_4_004
                                                
	.byte	PATT
	 mPtr	song015_4_004
                                                
song015_4_013:
	.byte		N10   , An2 , v120
	.byte	W16
	.byte		N07   , An2 , v104
	.byte	W08
	.byte		N15   , Cn3 
	.byte	W16
	.byte		N08   , An2 , v112
	.byte	W24
	.byte		N07   , An2 , v100
	.byte	W08
	.byte		        Gs2 , v084
	.byte	W08
	.byte		        Gn2 , v096
	.byte	W08
	.byte		        Fs2 , v108
	.byte	W08
	.byte	PEND
                                                
song015_4_014:
	.byte		N10   , Fn2 , v120
	.byte	W16
	.byte		N07   , Fn2 , v104
	.byte	W08
	.byte		N15   , Cn3 
	.byte	W16
	.byte		N08   , Fn2 , v112
	.byte	W24
	.byte		N07   , Fn2 , v100
	.byte	W08
	.byte		        Cn2 , v084
	.byte	W08
	.byte		        Ds2 , v096
	.byte	W08
	.byte		        En2 , v108
	.byte	W08
	.byte	PEND
                                                
song015_4_015:
	.byte		N10   , Fn2 , v120
	.byte	W16
	.byte		N07   , Fn2 , v104
	.byte	W08
	.byte		N15   , Cn3 
	.byte	W16
	.byte		N08   , Fn2 , v112
	.byte	W24
	.byte		N07   , Fn2 , v100
	.byte	W08
	.byte		        Cn2 , v084
	.byte	W08
	.byte		        Fn2 , v096
	.byte	W08
	.byte		        Ds2 , v108
	.byte	W08
	.byte	PEND
                                                
song015_4_016:
	.byte		N10   , En2 , v120
	.byte	W16
	.byte		N07   , En2 , v104
	.byte	W08
	.byte		N15   , Bn2 
	.byte	W16
	.byte		N08   , En2 , v112
	.byte	W24
	.byte		N07   , En2 , v100
	.byte	W08
	.byte		        Bn1 , v084
	.byte	W08
	.byte		        Dn2 , v096
	.byte	W08
	.byte		        Ds2 , v108
	.byte	W08
	.byte	PEND
                                                
song015_4_017:
	.byte		N10   , En2 , v120
	.byte	W16
	.byte		N07   , En2 , v104
	.byte	W08
	.byte		N15   , Bn2 
	.byte	W16
	.byte		N08   , En2 , v112
	.byte	W24
	.byte		N07   , En2 , v100
	.byte	W08
	.byte		        Bn2 , v084
	.byte	W08
	.byte		        En3 , v096
	.byte	W08
	.byte		        Ds3 , v108
	.byte	W08
	.byte	PEND
                                                
	.byte		N15   , Dn3 , v104
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	PATT
	 mPtr	song015_4_004
                                                
	.byte	PATT
	 mPtr	song015_4_004
                                                
	.byte	PATT
	 mPtr	song015_4_004
                                                
	.byte	PATT
	 mPtr	song015_4_004
                                                
	.byte	PATT
	 mPtr	song015_4_004
                                                
	.byte	PATT
	 mPtr	song015_4_004
                                                
	.byte	PATT
	 mPtr	song015_4_004
                                                
	.byte	PATT
	 mPtr	song015_4_004
                                                
	.byte	PATT
	 mPtr	song015_4_004
                                                
	.byte	PATT
	 mPtr	song015_4_013
                                                
	.byte	PATT
	 mPtr	song015_4_014
                                                
	.byte	PATT
	 mPtr	song015_4_015
                                                
	.byte	PATT
	 mPtr	song015_4_016
                                                
	.byte	PATT
	 mPtr	song015_4_017
                                                
	.byte		N15   , Dn3 , v104
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	PATT
	 mPtr	song015_4_004
                                                
	.byte		N10   , An2 , v120
	.byte	W16
	.byte		N07   , An2 , v104
	.byte	W08
	.byte		N15   , Cn3 
	.byte	W16
	.byte		N08   , An2 , v112
	.byte	W24
	.byte		N07   , En2 , v100
	.byte	W08
	.byte		        An2 , v084
	.byte	W08
	.byte		        As2 , v096
	.byte	W08
	.byte		        Bn2 , v108
	.byte	W08
                                                
song015_4_038:
	.byte		N10   , Cn3 , v120
	.byte	W16
	.byte		N07   , Cn3 , v104
	.byte	W08
	.byte		N15   , Gn3 
	.byte	W16
	.byte		N08   , Cn3 , v112
	.byte	W24
	.byte		N07   , Cn3 , v100
	.byte	W08
	.byte		        Gn2 , v084
	.byte	W08
	.byte		        As2 , v096
	.byte	W08
	.byte		        Bn2 , v108
	.byte	W08
	.byte	PEND
                                                
song015_4_039:
	.byte		N10   , Cn3 , v120
	.byte	W16
	.byte		N07   , Cn3 , v104
	.byte	W08
	.byte		N15   , Gn3 
	.byte	W16
	.byte		N08   , Cn3 , v112
	.byte	W24
	.byte		N07   , Cn3 , v100
	.byte	W08
	.byte		        Gn2 , v084
	.byte	W08
	.byte		        Cn3 , v096
	.byte	W08
	.byte		        As2 , v108
	.byte	W08
	.byte	PEND
                                                
song015_4_040:
	.byte		N10   , Bn2 , v120
	.byte	W16
	.byte		N07   , Bn2 , v104
	.byte	W08
	.byte		N15   , Fs3 
	.byte	W16
	.byte		N08   , Bn2 , v112
	.byte	W24
	.byte		N07   , Bn2 , v100
	.byte	W08
	.byte		        Fs2 , v084
	.byte	W08
	.byte		        An2 , v096
	.byte	W08
	.byte		        As2 , v108
	.byte	W08
	.byte	PEND
                                                
	.byte		N10   , Bn2 , v120
	.byte	W16
	.byte		N07   , Bn2 , v104
	.byte	W08
	.byte		N15   , Fs3 
	.byte	W16
	.byte		N08   , Bn2 , v112
	.byte	W24
	.byte		N07   , Bn2 , v100
	.byte	W08
	.byte		        An2 , v084
	.byte	W08
	.byte		        As2 , v096
	.byte	W08
	.byte		        Bn2 , v108
	.byte	W08
                                                
	.byte	PATT
	 mPtr	song015_4_038
                                                
	.byte	PATT
	 mPtr	song015_4_039
                                                
	.byte	PATT
	 mPtr	song015_4_040
                                                
	.byte		N10   , Bn2 , v120
	.byte	W16
	.byte		N07   , Bn2 , v104
	.byte	W08
	.byte		N15   , Fs3 
	.byte	W16
	.byte		N08   , Bn2 , v112
	.byte	W24
	.byte		N07   , Bn2 , v100
	.byte	W08
	.byte		        Cn3 , v084
	.byte	W08
	.byte		        Cs3 , v096
	.byte	W08
	.byte		        Dn3 , v108
	.byte	W08
                                                
song015_4_046:
	.byte		N10   , Ds3 , v120
	.byte	W16
	.byte		N07   , Ds3 , v104
	.byte	W08
	.byte		N15   , As3 
	.byte	W16
	.byte		N08   , Ds3 , v112
	.byte	W24
	.byte		N07   , Ds3 , v100
	.byte	W08
	.byte		        As2 , v084
	.byte	W08
	.byte		        Cs3 , v096
	.byte	W08
	.byte		        Dn3 , v108
	.byte	W08
	.byte	PEND
                                                
song015_4_047:
	.byte		N10   , Ds3 , v120
	.byte	W16
	.byte		N07   , Ds3 , v104
	.byte	W08
	.byte		N15   , As3 
	.byte	W16
	.byte		N08   , Ds3 , v112
	.byte	W24
	.byte		N07   , Ds3 , v100
	.byte	W08
	.byte		        As2 , v084
	.byte	W08
	.byte		        Ds3 , v096
	.byte	W08
	.byte		        Cs3 , v108
	.byte	W08
	.byte	PEND
                                                
	.byte		N10   , Dn3 , v120
	.byte	W16
	.byte		N07   , Dn3 , v104
	.byte	W08
	.byte		N15   , An3 
	.byte	W16
	.byte		N08   , Dn3 , v112
	.byte	W24
	.byte		N07   , Dn3 , v100
	.byte	W08
	.byte		        An2 , v084
	.byte	W08
	.byte		        Cn3 , v096
	.byte	W08
	.byte		        Cs3 , v108
	.byte	W08
                                                
	.byte		N10   , Dn3 , v120
	.byte	W16
	.byte		N07   , Dn3 , v104
	.byte	W08
	.byte		N15   , An3 
	.byte	W16
	.byte		N08   , Dn3 , v112
	.byte	W24
	.byte		N07   , Dn3 , v100
	.byte	W08
	.byte		        Cn3 , v084
	.byte	W08
	.byte		        Cs3 , v096
	.byte	W08
	.byte		        Dn3 , v108
	.byte	W08
                                                
	.byte	PATT
	 mPtr	song015_4_046
                                                
	.byte	PATT
	 mPtr	song015_4_047
                                                
	.byte		N10   , Dn3 , v120
	.byte	W40
	.byte		N07   , Dn3 , v084
	.byte	W08
	.byte		N10   , Dn3 , v120
	.byte	W16
	.byte		N07   , Ds3 , v108
	.byte	W24
	.byte		N10   , En3 , v120
	.byte	W08
                                                
	.byte	W40
	.byte		N07   , Ds3 , v084
	.byte	W08
	.byte		        En3 , v108
	.byte	W08
	.byte		        Ds3 
	.byte	W08
	.byte		        Dn3 
	.byte	W08
	.byte		N15   , Cn3 
	.byte	W16
	.byte		N07   , An2 
	.byte	W08
                                                
	.byte	W16
	.byte		        An2 , v104
	.byte	W08
	.byte		N15   , Cn3 
	.byte	W16
	.byte		N08   , An2 , v112
	.byte	W24
	.byte		N07   , An2 , v100
	.byte	W08
	.byte		        En2 , v084
	.byte	W08
	.byte		        Gn2 , v096
	.byte	W08
	.byte		        Gs2 , v108
	.byte	W08
                                                
	.byte		        An2 
	.byte	W16
	.byte		        An2 , v104
	.byte	W08
	.byte		N15   , Cn3 
	.byte	W16
	.byte		N08   , An2 , v112
	.byte	W24
	.byte		N07   , An2 , v100
	.byte	W08
	.byte		        En2 , v084
	.byte	W08
	.byte		        Gn2 , v096
	.byte	W08
	.byte		        Gs2 , v108
	.byte	W08
	.byte	GOTO
	 mPtr	song015_4_B1
song015_4_B2:
                                                
	.byte	FINE

                                                        

song015_5:
	.byte	KEYSH , song015_key+0
                                                
	.byte		VOICE , 87
	.byte		VOL   , 127*song015_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		MOD   , 19
	.byte		LFOS  , 43
	.byte		MODT  , 2
	.byte		LFODL , 0
	.byte	PRIO  , 30
	.byte		N15   , An2 , v104
	.byte	W16
	.byte		N07   , Cn3 , v084
	.byte	W08
	.byte		N15   , An2 , v100
	.byte	W16
	.byte		N10   , En3 , v112
	.byte	W24
	.byte		N11   , Ds3 
	.byte	W24
	.byte		N07   , Dn3 , v100
	.byte	W08
                                                
	.byte		N14   , Cn3 
	.byte	W16
	.byte		N07   , An2 , v076
	.byte	W08
	.byte		N14   , Ds3 , v116
	.byte	W16
	.byte		N30   , Dn3 , v108
	.byte	W32
	.byte		N15   , Cn3 , v088
	.byte	W16
	.byte		N07   , An2 , v092
	.byte	W08
                                                
	.byte		N11   , Gn2 , v108
	.byte	W16
	.byte		N07   , En2 , v084
	.byte	W08
	.byte		N15   , Gs2 , v104
	.byte	W16
	.byte		N21   , An2 , v112
	.byte	W56
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W96
song015_5_B1:
                                                
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
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W96
	.byte	GOTO
	 mPtr	song015_5_B1
song015_5_B2:
                                                
	.byte	FINE

                                                        

song015_6:
	.byte	KEYSH , song015_key+0
                                                
	.byte		VOICE , 74
	.byte		VOL   , 127*song015_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		MOD   , 19
	.byte		LFOS  , 43
	.byte		MODT  , 2
	.byte		LFODL , 0
	.byte	PRIO  , 30
	.byte		N15   , An2 , v104
	.byte	W16
	.byte		N07   , Cn3 , v084
	.byte	W08
	.byte		N15   , An2 , v100
	.byte	W16
	.byte		N10   , En3 , v112
	.byte	W24
	.byte		N11   , Ds3 
	.byte	W24
	.byte		N07   , Dn3 , v100
	.byte	W08
                                                
	.byte		N14   , Cn3 
	.byte	W16
	.byte		N07   , An2 , v076
	.byte	W08
	.byte		N14   , Ds3 , v116
	.byte	W16
	.byte		N30   , Dn3 , v108
	.byte	W32
	.byte		N15   , Cn3 , v088
	.byte	W16
	.byte		N07   , An2 , v092
	.byte	W08
                                                
	.byte		N11   , Gn2 , v108
	.byte	W16
	.byte		N07   , En2 , v084
	.byte	W08
	.byte		N15   , Gs2 , v104
	.byte	W16
	.byte		N21   , An2 , v112
	.byte	W48
	.byte		N07   , An2 , v100
	.byte	W08
                                                
	.byte		N14   , Cn3 , v096
	.byte	W16
	.byte		N07   , Dn3 , v108
	.byte	W08
	.byte		N12   , Ds3 , v104
	.byte	W16
	.byte		N21   , En3 
	.byte	W24
	.byte		N07   , Gn3 , v112
	.byte	W08
	.byte		N15   , Gs3 , v116
	.byte	W16
	.byte		        An3 , v108
	.byte	W08
                                                
	.byte	W96
                                                
	.byte	W96
song015_6_B1:
                                                
	.byte	W96
                                                
	.byte	W96
                                                
song015_6_008:
	.byte		VOL   , 127*song015_mvl/mxv
	.byte		N15   , En2 , v088
	.byte	W16
	.byte		        Gs2 , v096
	.byte	W16
	.byte		        An2 , v112
	.byte	W16
	.byte		TIE   , Cn3 , v104
	.byte	W13
	.byte		VOL   , 125*song015_mvl/mxv
	.byte	W01
	.byte		        121*song015_mvl/mxv
	.byte	W01
	.byte		        115*song015_mvl/mxv
	.byte	W01
	.byte		        109*song015_mvl/mxv
	.byte	W01
	.byte		        104*song015_mvl/mxv
	.byte	W01
	.byte		        99*song015_mvl/mxv
	.byte	W01
	.byte		        92*song015_mvl/mxv
	.byte	W01
	.byte		        88*song015_mvl/mxv
	.byte	W01
	.byte		        82*song015_mvl/mxv
	.byte	W01
	.byte		        76*song015_mvl/mxv
	.byte	W01
	.byte		        72*song015_mvl/mxv
	.byte	W01
	.byte		        65*song015_mvl/mxv
	.byte	W01
	.byte		        59*song015_mvl/mxv
	.byte	W01
	.byte		        55*song015_mvl/mxv
	.byte	W01
	.byte		        49*song015_mvl/mxv
	.byte	W01
	.byte		        43*song015_mvl/mxv
	.byte	W01
	.byte		        39*song015_mvl/mxv
	.byte	W01
	.byte		        36*song015_mvl/mxv
	.byte	W01
	.byte		        37*song015_mvl/mxv
	.byte	W01
	.byte		        39*song015_mvl/mxv
	.byte	W01
	.byte		        41*song015_mvl/mxv
	.byte	W01
	.byte		        42*song015_mvl/mxv
	.byte	W01
	.byte		        44*song015_mvl/mxv
	.byte	W01
	.byte		        44*song015_mvl/mxv
	.byte	W01
	.byte		        47*song015_mvl/mxv
	.byte	W01
	.byte		        48*song015_mvl/mxv
	.byte	W01
	.byte		        50*song015_mvl/mxv
	.byte	W01
	.byte		        51*song015_mvl/mxv
	.byte	W01
	.byte		        52*song015_mvl/mxv
	.byte	W01
	.byte		        54*song015_mvl/mxv
	.byte	W01
	.byte		        56*song015_mvl/mxv
	.byte	W01
	.byte		        58*song015_mvl/mxv
	.byte	W01
	.byte		        59*song015_mvl/mxv
	.byte	W01
	.byte		        61*song015_mvl/mxv
	.byte	W01
	.byte		        62*song015_mvl/mxv
	.byte	W01
	.byte	PEND
                                                
song015_6_009:
	.byte		VOL   , 64*song015_mvl/mxv
	.byte	W01
	.byte		        65*song015_mvl/mxv
	.byte	W01
	.byte		        67*song015_mvl/mxv
	.byte	W01
	.byte		        67*song015_mvl/mxv
	.byte	W01
	.byte		        70*song015_mvl/mxv
	.byte	W01
	.byte		        71*song015_mvl/mxv
	.byte	W01
	.byte		        73*song015_mvl/mxv
	.byte	W01
	.byte		        74*song015_mvl/mxv
	.byte	W01
	.byte		        76*song015_mvl/mxv
	.byte	W01
	.byte		        78*song015_mvl/mxv
	.byte	W01
	.byte		        79*song015_mvl/mxv
	.byte	W01
	.byte		        81*song015_mvl/mxv
	.byte	W01
	.byte		        82*song015_mvl/mxv
	.byte	W01
	.byte		        84*song015_mvl/mxv
	.byte	W01
	.byte		        85*song015_mvl/mxv
	.byte	W01
	.byte		        87*song015_mvl/mxv
	.byte	W01
	.byte		        88*song015_mvl/mxv
	.byte	W01
	.byte		        89*song015_mvl/mxv
	.byte	W01
	.byte		        91*song015_mvl/mxv
	.byte	W01
	.byte		        93*song015_mvl/mxv
	.byte	W01
	.byte		        94*song015_mvl/mxv
	.byte	W01
	.byte		        96*song015_mvl/mxv
	.byte	W01
	.byte		        97*song015_mvl/mxv
	.byte	W01
	.byte		        99*song015_mvl/mxv
	.byte	W01
	.byte		        101*song015_mvl/mxv
	.byte	W01
	.byte		        102*song015_mvl/mxv
	.byte	W01
	.byte		        104*song015_mvl/mxv
	.byte	W01
	.byte		        104*song015_mvl/mxv
	.byte	W01
	.byte		        106*song015_mvl/mxv
	.byte	W01
	.byte		        107*song015_mvl/mxv
	.byte	W01
	.byte		        109*song015_mvl/mxv
	.byte	W01
	.byte		        110*song015_mvl/mxv
	.byte	W01
	.byte		        112*song015_mvl/mxv
	.byte	W01
	.byte		        112*song015_mvl/mxv
	.byte	W01
	.byte		        115*song015_mvl/mxv
	.byte	W01
	.byte		        117*song015_mvl/mxv
	.byte	W01
	.byte		        118*song015_mvl/mxv
	.byte	W01
	.byte		        119*song015_mvl/mxv
	.byte	W01
	.byte		        121*song015_mvl/mxv
	.byte	W01
	.byte		        123*song015_mvl/mxv
	.byte	W01
	.byte		        124*song015_mvl/mxv
	.byte	W01
	.byte		        126*song015_mvl/mxv
	.byte	W01
	.byte		        127*song015_mvl/mxv
	.byte	W12
	.byte	PEND
	.byte		EOT   , Cn3 
	.byte	W18
	.byte		N07   , Dn3 , v096
	.byte	W08
	.byte		        Cn3 , v088
	.byte	W08
	.byte		        An2 , v104
	.byte	W08
                                                
song015_6_010:
	.byte		N15   , Cn3 , v104
	.byte	W16
	.byte		N14   , Dn3 , v116
	.byte	W24
	.byte		N20   , Cn3 
	.byte	W56
	.byte	PEND
                                                
	.byte	W96
                                                
song015_6_012:
	.byte		N15   , En2 , v127
	.byte	W16
	.byte		        Gs2 , v112
	.byte	W16
	.byte		        Cn3 , v120
	.byte	W16
	.byte		N02   , An2 , v124
	.byte	W02
	.byte		        As2 , v120
	.byte	W02
	.byte		        Bn2 , v127
	.byte	W04
	.byte		TIE   , Cn3 , v116
	.byte	W14
	.byte		VOL   , 124*song015_mvl/mxv
	.byte	W01
	.byte		        116*song015_mvl/mxv
	.byte	W01
	.byte		        104*song015_mvl/mxv
	.byte	W01
	.byte		        92*song015_mvl/mxv
	.byte	W01
	.byte		        84*song015_mvl/mxv
	.byte	W01
	.byte		        73*song015_mvl/mxv
	.byte	W01
	.byte		        61*song015_mvl/mxv
	.byte	W01
	.byte		        52*song015_mvl/mxv
	.byte	W01
	.byte		        41*song015_mvl/mxv
	.byte	W01
	.byte		        33*song015_mvl/mxv
	.byte	W02
	.byte		        35*song015_mvl/mxv
	.byte	W01
	.byte		        36*song015_mvl/mxv
	.byte	W01
	.byte		        37*song015_mvl/mxv
	.byte	W01
	.byte		        39*song015_mvl/mxv
	.byte	W01
	.byte		        40*song015_mvl/mxv
	.byte	W01
	.byte		        41*song015_mvl/mxv
	.byte	W01
	.byte		        42*song015_mvl/mxv
	.byte	W01
	.byte		        44*song015_mvl/mxv
	.byte	W01
	.byte		        44*song015_mvl/mxv
	.byte	W01
	.byte		        46*song015_mvl/mxv
	.byte	W01
	.byte		        48*song015_mvl/mxv
	.byte	W01
	.byte		        49*song015_mvl/mxv
	.byte	W01
	.byte		        50*song015_mvl/mxv
	.byte	W01
	.byte		        51*song015_mvl/mxv
	.byte	W01
	.byte		        52*song015_mvl/mxv
	.byte	W01
	.byte	PEND
                                                
song015_6_013:
	.byte		VOL   , 54*song015_mvl/mxv
	.byte	W01
	.byte		        55*song015_mvl/mxv
	.byte	W01
	.byte		        57*song015_mvl/mxv
	.byte	W01
	.byte		        58*song015_mvl/mxv
	.byte	W01
	.byte		        59*song015_mvl/mxv
	.byte	W01
	.byte		        61*song015_mvl/mxv
	.byte	W01
	.byte		        62*song015_mvl/mxv
	.byte	W01
	.byte		        63*song015_mvl/mxv
	.byte	W01
	.byte		        64*song015_mvl/mxv
	.byte	W01
	.byte		        66*song015_mvl/mxv
	.byte	W02
	.byte		        67*song015_mvl/mxv
	.byte	W01
	.byte		        69*song015_mvl/mxv
	.byte	W01
	.byte		        70*song015_mvl/mxv
	.byte	W01
	.byte		        71*song015_mvl/mxv
	.byte	W01
	.byte		        72*song015_mvl/mxv
	.byte	W01
	.byte		        74*song015_mvl/mxv
	.byte	W01
	.byte		        74*song015_mvl/mxv
	.byte	W01
	.byte		        76*song015_mvl/mxv
	.byte	W01
	.byte		        78*song015_mvl/mxv
	.byte	W01
	.byte		        79*song015_mvl/mxv
	.byte	W01
	.byte		        80*song015_mvl/mxv
	.byte	W01
	.byte		        81*song015_mvl/mxv
	.byte	W01
	.byte		        82*song015_mvl/mxv
	.byte	W01
	.byte		        84*song015_mvl/mxv
	.byte	W01
	.byte		        85*song015_mvl/mxv
	.byte	W01
	.byte		        87*song015_mvl/mxv
	.byte	W01
	.byte		        88*song015_mvl/mxv
	.byte	W01
	.byte		        89*song015_mvl/mxv
	.byte	W01
	.byte		        89*song015_mvl/mxv
	.byte	W01
	.byte		        92*song015_mvl/mxv
	.byte	W01
	.byte		        93*song015_mvl/mxv
	.byte	W01
	.byte		        94*song015_mvl/mxv
	.byte	W01
	.byte		        96*song015_mvl/mxv
	.byte	W01
	.byte		        97*song015_mvl/mxv
	.byte	W01
	.byte		        97*song015_mvl/mxv
	.byte	W01
	.byte		        100*song015_mvl/mxv
	.byte	W02
	.byte		        101*song015_mvl/mxv
	.byte	W01
	.byte		        102*song015_mvl/mxv
	.byte	W01
	.byte		        104*song015_mvl/mxv
	.byte	W01
	.byte		        104*song015_mvl/mxv
	.byte	W01
	.byte		        106*song015_mvl/mxv
	.byte	W01
	.byte		        108*song015_mvl/mxv
	.byte	W01
	.byte		        109*song015_mvl/mxv
	.byte	W01
	.byte		        110*song015_mvl/mxv
	.byte	W01
	.byte		        111*song015_mvl/mxv
	.byte	W01
	.byte		        112*song015_mvl/mxv
	.byte	W01
	.byte		        114*song015_mvl/mxv
	.byte	W01
	.byte		        115*song015_mvl/mxv
	.byte	W01
	.byte		        117*song015_mvl/mxv
	.byte	W01
	.byte		        118*song015_mvl/mxv
	.byte	W01
	.byte		        119*song015_mvl/mxv
	.byte	W01
	.byte		        119*song015_mvl/mxv
	.byte	W01
	.byte		        122*song015_mvl/mxv
	.byte	W01
	.byte		        123*song015_mvl/mxv
	.byte	W01
	.byte		        124*song015_mvl/mxv
	.byte	W01
	.byte		        126*song015_mvl/mxv
	.byte	W01
	.byte		        127*song015_mvl/mxv
	.byte	W01
	.byte	PEND
	.byte		EOT   , Cn3 
	.byte	W13
	.byte		N07   , Cn3 , v116
	.byte	W08
	.byte		        As2 , v092
	.byte	W08
	.byte		        An2 , v120
	.byte	W08
                                                
song015_6_014:
	.byte		N15   , An2 , v096
	.byte	W16
	.byte		N13   , An2 , v112
	.byte	W80
	.byte	PEND
                                                
	.byte	W96
                                                
	.byte		N96   , En2 , v096
	.byte	W96
                                                
song015_6_017:
	.byte		N48   , Bn2 , v096
	.byte	W48
	.byte		        Gs3 
	.byte	W48
	.byte	PEND
                                                
song015_6_018:
	.byte		N16   , Fs3 , v096
	.byte	W88
	.byte		N08   , An2 , v112
	.byte	W08
	.byte	PEND
                                                
song015_6_019:
	.byte		N08   , Ds3 , v112
	.byte	W08
	.byte		        Dn3 , v108
	.byte	W08
	.byte		        Cn3 , v112
	.byte	W08
	.byte		N16   , Dn3 , v116
	.byte	W16
	.byte		N08   , Cn3 , v112
	.byte	W08
	.byte		N16   , An2 , v100
	.byte	W16
	.byte		N08   , En2 
	.byte	W08
	.byte		N16   , Gn2 , v120
	.byte	W16
	.byte		N32   , An2 , v124
	.byte	W08
	.byte	PEND
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	PATT
	 mPtr	song015_6_008
                                                
	.byte	PATT
	 mPtr	song015_6_009
	.byte		EOT   , Cn3 
	.byte	W18
	.byte		N07   , Dn3 , v096
	.byte	W08
	.byte		        Cn3 , v088
	.byte	W08
	.byte		        An2 , v104
	.byte	W08
                                                
	.byte	PATT
	 mPtr	song015_6_010
                                                
	.byte	W96
                                                
	.byte	PATT
	 mPtr	song015_6_012
                                                
	.byte	PATT
	 mPtr	song015_6_013
	.byte		EOT   , Cn3 
	.byte	W13
	.byte		N07   , Cn3 , v116
	.byte	W08
	.byte		        As2 , v092
	.byte	W08
	.byte		        An2 , v120
	.byte	W08
                                                
	.byte	PATT
	 mPtr	song015_6_014
                                                
	.byte	W96
                                                
	.byte		N96   , En2 , v096
	.byte	W96
                                                
	.byte	PATT
	 mPtr	song015_6_017
                                                
	.byte	PATT
	 mPtr	song015_6_018
                                                
	.byte	PATT
	 mPtr	song015_6_019
                                                
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
	.byte	GOTO
	 mPtr	song015_6_B1
song015_6_B2:
                                                
	.byte	FINE

                                                        

song015_7:
	.byte	KEYSH , song015_key+0
                                                
	.byte		VOICE , 80
	.byte		VOL   , 127*song015_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		MOD   , 19
	.byte		LFOS  , 43
	.byte		MODT  , 2
	.byte		LFODL , 0
	.byte	PRIO  , 30
	.byte		N20   , Gn3 , v127
	.byte	W21
	.byte		N03   , Fn3 , v084
	.byte	W03
	.byte		N07   , En3 , v076
	.byte	W04
	.byte		N08   , Dn3 , v064
	.byte	W05
	.byte		        Cn3 , v040
	.byte	W06
	.byte		N03   , Bn2 
	.byte	W06
	.byte		        An2 , v044
	.byte	W07
	.byte		N04   , Gn2 , v020
	.byte	W44
                                                
	.byte	W96
                                                
	.byte	W96
                                                
song015_7_003:
	.byte	W68
	.byte	W01
	.byte		N03   , An1 , v072
	.byte		N08   , Bn1 , v108
	.byte	W02
	.byte		N06   , Cn2 , v096
	.byte	W03
	.byte		        Dn2 , v104
	.byte	W02
	.byte		        En2 , v108
	.byte	W02
	.byte		N07   , Fn2 , v092
	.byte	W03
	.byte		N06   , Gn2 , v096
	.byte	W02
	.byte		        An2 , v104
	.byte	W02
	.byte		        Bn2 , v100
	.byte	W03
	.byte		N07   , Cn3 
	.byte	W02
	.byte		N08   , Dn3 
	.byte	W02
	.byte		N11   , En3 , v064
	.byte	W04
	.byte	PEND
                                                
song015_7_004:
	.byte		N08   , Fn3 , v024
	.byte	W05
	.byte		N03   , Fs3 , v104
	.byte	W03
	.byte		TIE   , Gn3 , v100
	.byte	W88
	.byte	PEND
                                                
	.byte	W44
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		N03   , Fs3 , v096
	.byte	W04
	.byte		N19   , Gn3 , v108
	.byte	W20
	.byte		N03   , Fs3 
	.byte	W04
	.byte		N19   , Gn3 
	.byte	W20
song015_7_B1:
                                                
song015_7_006:
	.byte		N03   , Fs3 , v104
	.byte	W04
	.byte		N60   , Gn3 , v112
	.byte	W60
	.byte		N05   , Fn3 , v068
	.byte	W05
	.byte		N04   , En3 , v076
	.byte	W04
	.byte		N02   , Dn3 , v088
	.byte	W04
	.byte		        Cn3 , v076
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        An2 , v084
	.byte	W03
	.byte		        Gn2 , v088
	.byte	W04
	.byte		        Fn2 , v076
	.byte	W04
	.byte	PEND
                                                
song015_7_007:
	.byte		N02   , En2 , v080
	.byte	W03
	.byte		        Dn2 , v084
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		N03   , An1 
	.byte	W04
	.byte		        Gn1 
	.byte	W04
	.byte		N04   , Fn1 , v040
	.byte	W72
	.byte	W01
	.byte	PEND
                                                
song015_7_008:
	.byte		N28   , Gn2 , v120
	.byte	W40
	.byte		N08   
	.byte	W56
	.byte	PEND
                                                
	.byte	PATT
	 mPtr	song015_7_008
                                                
song015_7_010:
	.byte		N28   , Gn2 , v120
	.byte	W40
	.byte		N08   
	.byte	W52
	.byte		N05   , En3 , v052
	.byte	W04
	.byte	PEND
                                                
song015_7_011:
	.byte	W01
	.byte		N13   , Gn3 , v116
	.byte	W16
	.byte		N04   , En3 , v080
	.byte	W06
	.byte		N15   , An3 , v116
	.byte	W16
	.byte		N28   , Gn3 , v120
	.byte	W32
	.byte	W02
	.byte		N11   , Gn3 , v124
	.byte	W16
	.byte		N28   , Gn3 , v127
	.byte	W07
	.byte	PEND
                                                
song015_7_012:
	.byte	W20
	.byte		N06   , Fn3 , v052
	.byte	W03
	.byte		        En3 , v060
	.byte	W06
	.byte		N04   , Dn3 
	.byte	W08
	.byte		N03   , Cn3 , v076
	.byte	W04
	.byte		        Bn2 , v072
	.byte	W03
	.byte		        An2 , v068
	.byte	W04
	.byte		        Gn2 , v060
	.byte	W04
	.byte		        Fn2 , v044
	.byte	W44
	.byte	PEND
                                                
	.byte	PATT
	 mPtr	song015_7_008
                                                
song015_7_014:
	.byte		N22   , Cn3 , v120
	.byte	W40
	.byte		N06   
	.byte	W22
	.byte		        Cn3 , v100
	.byte	W24
	.byte	W01
	.byte		N08   , Cn3 , v092
	.byte	W09
	.byte	PEND
                                                
song015_7_015:
	.byte		N14   , Ds3 , v120
	.byte	W17
	.byte		N04   , Cn3 , v052
	.byte	W06
	.byte		N14   , Fn3 , v120
	.byte	W15
	.byte		N32   , Ds3 , v104
	.byte	W32
	.byte	W02
	.byte		N15   , Cn3 , v100
	.byte	W16
	.byte		N84   , Bn2 , v124
	.byte	W08
	.byte	PEND
                                                
song015_7_016:
	.byte	W76
	.byte	W01
	.byte		N03   , Cn3 , v056
	.byte	W03
	.byte		        Dn3 , v076
	.byte	W03
	.byte		        En3 , v056
	.byte	W01
	.byte		        Fn3 , v088
	.byte	W01
	.byte		N02   , Gn3 , v116
	.byte	W02
	.byte		N04   , An3 , v112
	.byte	W03
	.byte		TIE   , Bn3 , v076
	.byte	W06
	.byte	PEND
                                                
	.byte	W92
	.byte	W01
	.byte		EOT   
	.byte	W01
	.byte		N22   , An3 , v127
	.byte	W02
                                                
song015_7_018:
	.byte	W22
	.byte		N03   , Gn3 , v068
	.byte	W03
	.byte		        Fn3 , v076
	.byte	W02
	.byte		        En3 , v084
	.byte	W03
	.byte		        Dn3 
	.byte	W02
	.byte		        Cn3 , v060
	.byte	W03
	.byte		N04   , Bn2 , v036
	.byte	W60
	.byte	W01
	.byte	PEND
                                                
	.byte	PATT
	 mPtr	song015_7_003
                                                
	.byte	PATT
	 mPtr	song015_7_004
                                                
	.byte	W44
	.byte	W03
	.byte		EOT   , Gn3 
	.byte	W01
	.byte		N03   , Fs3 , v096
	.byte	W04
	.byte		N19   , Gn3 , v108
	.byte	W20
	.byte		N03   , Fs3 
	.byte	W04
	.byte		N19   , Gn3 
	.byte	W20
                                                
	.byte	PATT
	 mPtr	song015_7_006
                                                
	.byte	PATT
	 mPtr	song015_7_007
                                                
	.byte	PATT
	 mPtr	song015_7_008
                                                
	.byte	PATT
	 mPtr	song015_7_008
                                                
	.byte	PATT
	 mPtr	song015_7_010
                                                
	.byte	PATT
	 mPtr	song015_7_011
                                                
	.byte	PATT
	 mPtr	song015_7_012
                                                
	.byte	PATT
	 mPtr	song015_7_008
                                                
	.byte	PATT
	 mPtr	song015_7_014
                                                
	.byte	PATT
	 mPtr	song015_7_015
                                                
	.byte	PATT
	 mPtr	song015_7_016
                                                
	.byte	W92
	.byte	W01
	.byte		EOT   , Bn3 
	.byte	W01
	.byte		N22   , An3 , v127
	.byte	W02
                                                
	.byte	PATT
	 mPtr	song015_7_018
                                                
	.byte	W84
	.byte	W03
	.byte		N09   , Fn3 , v060
	.byte	W05
	.byte		        Fs3 , v084
	.byte	W04
                                                
	.byte	W01
	.byte		N84   , Gn3 , v104
	.byte	W90
	.byte	W01
	.byte		N09   , Fs3 , v080
	.byte	W04
                                                
	.byte	W02
	.byte		        Gn3 , v100
	.byte	W14
	.byte		N10   , Gn3 , v124
	.byte	W23
	.byte		N36   
	.byte	W56
	.byte	W01
                                                
	.byte	W01
	.byte		TIE   , Gn3 , v127
	.byte	W92
	.byte	W03
                                                
	.byte	W96
	.byte		EOT   
                                                
	.byte	W01
	.byte		TIE   , Fs3 , v108
	.byte	W92
	.byte	W03
                                                
	.byte	W42
	.byte		EOT   
	.byte	W04
	.byte		N13   , Fs3 , v088
	.byte	W18
	.byte		N14   , Fs3 , v108
	.byte	W21
	.byte		TIE   , Gn3 , v116
	.byte	W11
                                                
	.byte	W96
                                                
	.byte	W92
	.byte	W02
	.byte		EOT   
	.byte		TIE   , Fs3 , v100
	.byte	W02
                                                
	.byte	W96
                                                
	.byte	W36
	.byte	W03
	.byte		EOT   
	.byte	W09
	.byte		N15   , Gn3 , v096
	.byte	W16
	.byte		N07   , Gs3 , v116
	.byte	W08
	.byte		N15   , An3 , v104
	.byte	W16
	.byte		TIE   , As3 , v112
	.byte	W08
                                                
	.byte	W96
                                                
	.byte	W96
	.byte		EOT   
                                                
	.byte		TIE   , An3 , v100
	.byte	W96
                                                
	.byte	W80
	.byte	W03
	.byte		EOT   
	.byte	W13
                                                
	.byte		N92   , As3 , v108
	.byte	W96
                                                
	.byte		        As3 , v088
	.byte	W92
	.byte	W03
	.byte		N18   , An3 , v120
	.byte	W01
                                                
	.byte	W44
	.byte	W03
	.byte		N14   , An3 , v112
	.byte	W15
	.byte		N11   , As3 , v104
	.byte	W24
	.byte		N56   , Bn3 , v124
	.byte	W10
                                                
	.byte	PATT
	 mPtr	song015_7_003
                                                
	.byte	PATT
	 mPtr	song015_7_004
                                                
	.byte	W44
	.byte	W03
	.byte		EOT   , Gn3 
	.byte	W01
	.byte		N03   , Fs3 , v096
	.byte	W04
	.byte		N19   , Gn3 , v108
	.byte	W20
	.byte		N03   , Fs3 
	.byte	W04
	.byte		N19   , Gn3 
	.byte	W20
	.byte	GOTO
	 mPtr	song015_7_B1
song015_7_B2:
                                                
	.byte	FINE

                                                        

song015_8:
	.byte	KEYSH , song015_key+0
                                                
	.byte		VOICE , 10
	.byte		VOL   , 50*song015_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		LFOS  , 43
	.byte		MODT  , 2
	.byte		LFODL , 0
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W96
song015_8_B1:
                                                
	.byte	W96
                                                
	.byte	W96
                                                
song015_8_008:
	.byte		VOL   , 127*song015_mvl/mxv
	.byte		N15   , Cn3 , v060
	.byte	W16
	.byte		        En3 , v072
	.byte	W16
	.byte		        Cn3 , v088
	.byte	W16
	.byte		TIE   , Fs3 , v076
	.byte	W13
	.byte		VOL   , 125*song015_mvl/mxv
	.byte	W01
	.byte		        121*song015_mvl/mxv
	.byte	W01
	.byte		        115*song015_mvl/mxv
	.byte	W01
	.byte		        109*song015_mvl/mxv
	.byte	W01
	.byte		        104*song015_mvl/mxv
	.byte	W01
	.byte		        99*song015_mvl/mxv
	.byte	W01
	.byte		        92*song015_mvl/mxv
	.byte	W01
	.byte		        88*song015_mvl/mxv
	.byte	W01
	.byte		        82*song015_mvl/mxv
	.byte	W01
	.byte		        76*song015_mvl/mxv
	.byte	W01
	.byte		        72*song015_mvl/mxv
	.byte	W01
	.byte		        65*song015_mvl/mxv
	.byte	W01
	.byte		        59*song015_mvl/mxv
	.byte	W01
	.byte		        55*song015_mvl/mxv
	.byte	W01
	.byte		        49*song015_mvl/mxv
	.byte	W01
	.byte		        43*song015_mvl/mxv
	.byte	W01
	.byte		        39*song015_mvl/mxv
	.byte	W01
	.byte		        36*song015_mvl/mxv
	.byte	W01
	.byte		        37*song015_mvl/mxv
	.byte	W01
	.byte		        39*song015_mvl/mxv
	.byte	W01
	.byte		        41*song015_mvl/mxv
	.byte	W01
	.byte		        42*song015_mvl/mxv
	.byte	W01
	.byte		        44*song015_mvl/mxv
	.byte	W01
	.byte		        44*song015_mvl/mxv
	.byte	W01
	.byte		        47*song015_mvl/mxv
	.byte	W01
	.byte		        48*song015_mvl/mxv
	.byte	W01
	.byte		        50*song015_mvl/mxv
	.byte	W01
	.byte		        51*song015_mvl/mxv
	.byte	W01
	.byte		        52*song015_mvl/mxv
	.byte	W01
	.byte		        54*song015_mvl/mxv
	.byte	W01
	.byte		        56*song015_mvl/mxv
	.byte	W01
	.byte		        58*song015_mvl/mxv
	.byte	W01
	.byte		        59*song015_mvl/mxv
	.byte	W01
	.byte		        61*song015_mvl/mxv
	.byte	W01
	.byte		        62*song015_mvl/mxv
	.byte	W01
	.byte	PEND
                                                
song015_8_009:
	.byte		VOL   , 64*song015_mvl/mxv
	.byte	W01
	.byte		        65*song015_mvl/mxv
	.byte	W01
	.byte		        67*song015_mvl/mxv
	.byte	W01
	.byte		        67*song015_mvl/mxv
	.byte	W01
	.byte		        70*song015_mvl/mxv
	.byte	W01
	.byte		        71*song015_mvl/mxv
	.byte	W01
	.byte		        73*song015_mvl/mxv
	.byte	W01
	.byte		        74*song015_mvl/mxv
	.byte	W01
	.byte		        76*song015_mvl/mxv
	.byte	W01
	.byte		        78*song015_mvl/mxv
	.byte	W01
	.byte		        79*song015_mvl/mxv
	.byte	W01
	.byte		        81*song015_mvl/mxv
	.byte	W01
	.byte		        82*song015_mvl/mxv
	.byte	W01
	.byte		        84*song015_mvl/mxv
	.byte	W01
	.byte		        85*song015_mvl/mxv
	.byte	W01
	.byte		        87*song015_mvl/mxv
	.byte	W01
	.byte		        88*song015_mvl/mxv
	.byte	W01
	.byte		        89*song015_mvl/mxv
	.byte	W01
	.byte		        91*song015_mvl/mxv
	.byte	W01
	.byte		        93*song015_mvl/mxv
	.byte	W01
	.byte		        94*song015_mvl/mxv
	.byte	W01
	.byte		        96*song015_mvl/mxv
	.byte	W01
	.byte		        97*song015_mvl/mxv
	.byte	W01
	.byte		        99*song015_mvl/mxv
	.byte	W01
	.byte		        101*song015_mvl/mxv
	.byte	W01
	.byte		        102*song015_mvl/mxv
	.byte	W01
	.byte		        104*song015_mvl/mxv
	.byte	W01
	.byte		        104*song015_mvl/mxv
	.byte	W01
	.byte		        106*song015_mvl/mxv
	.byte	W01
	.byte		        107*song015_mvl/mxv
	.byte	W01
	.byte		        109*song015_mvl/mxv
	.byte	W01
	.byte		        110*song015_mvl/mxv
	.byte	W01
	.byte		        112*song015_mvl/mxv
	.byte	W01
	.byte		        112*song015_mvl/mxv
	.byte	W01
	.byte		        115*song015_mvl/mxv
	.byte	W01
	.byte		        117*song015_mvl/mxv
	.byte	W01
	.byte		        118*song015_mvl/mxv
	.byte	W01
	.byte		        119*song015_mvl/mxv
	.byte	W01
	.byte		        121*song015_mvl/mxv
	.byte	W01
	.byte		        123*song015_mvl/mxv
	.byte	W01
	.byte		        124*song015_mvl/mxv
	.byte	W01
	.byte		        126*song015_mvl/mxv
	.byte	W01
	.byte		        127*song015_mvl/mxv
	.byte	W12
	.byte	PEND
	.byte		EOT   , Fs3 
	.byte	W18
	.byte		N07   , Dn3 , v072
	.byte	W08
	.byte		        Cn3 , v060
	.byte	W08
	.byte		        An2 , v076
	.byte	W08
                                                
song015_8_010:
	.byte		N15   , Cn3 , v076
	.byte	W16
	.byte		N14   , Dn3 , v092
	.byte	W24
	.byte		N20   , Cn3 
	.byte	W56
	.byte	PEND
                                                
	.byte	W96
                                                
song015_8_012:
	.byte		N15   , Cn3 , v100
	.byte	W16
	.byte		        En3 , v088
	.byte	W16
	.byte		        En3 , v092
	.byte	W16
	.byte		N02   , Fn3 , v096
	.byte	W02
	.byte		        Fs3 
	.byte	W02
	.byte		        Gn3 , v100
	.byte	W04
	.byte		TIE   , Gs3 , v092
	.byte	W14
	.byte		VOL   , 124*song015_mvl/mxv
	.byte	W01
	.byte		        116*song015_mvl/mxv
	.byte	W01
	.byte		        104*song015_mvl/mxv
	.byte	W01
	.byte		        92*song015_mvl/mxv
	.byte	W01
	.byte		        84*song015_mvl/mxv
	.byte	W01
	.byte		        73*song015_mvl/mxv
	.byte	W01
	.byte		        61*song015_mvl/mxv
	.byte	W01
	.byte		        52*song015_mvl/mxv
	.byte	W01
	.byte		        41*song015_mvl/mxv
	.byte	W01
	.byte		        33*song015_mvl/mxv
	.byte	W02
	.byte		        35*song015_mvl/mxv
	.byte	W01
	.byte		        36*song015_mvl/mxv
	.byte	W01
	.byte		        37*song015_mvl/mxv
	.byte	W01
	.byte		        39*song015_mvl/mxv
	.byte	W01
	.byte		        40*song015_mvl/mxv
	.byte	W01
	.byte		        41*song015_mvl/mxv
	.byte	W01
	.byte		        42*song015_mvl/mxv
	.byte	W01
	.byte		        44*song015_mvl/mxv
	.byte	W01
	.byte		        44*song015_mvl/mxv
	.byte	W01
	.byte		        46*song015_mvl/mxv
	.byte	W01
	.byte		        48*song015_mvl/mxv
	.byte	W01
	.byte		        49*song015_mvl/mxv
	.byte	W01
	.byte		        50*song015_mvl/mxv
	.byte	W01
	.byte		        51*song015_mvl/mxv
	.byte	W01
	.byte		        52*song015_mvl/mxv
	.byte	W01
	.byte	PEND
                                                
song015_8_013:
	.byte		VOL   , 54*song015_mvl/mxv
	.byte	W01
	.byte		        55*song015_mvl/mxv
	.byte	W01
	.byte		        57*song015_mvl/mxv
	.byte	W01
	.byte		        58*song015_mvl/mxv
	.byte	W01
	.byte		        59*song015_mvl/mxv
	.byte	W01
	.byte		        61*song015_mvl/mxv
	.byte	W01
	.byte		        62*song015_mvl/mxv
	.byte	W01
	.byte		        63*song015_mvl/mxv
	.byte	W01
	.byte		        64*song015_mvl/mxv
	.byte	W01
	.byte		        66*song015_mvl/mxv
	.byte	W02
	.byte		        67*song015_mvl/mxv
	.byte	W01
	.byte		        69*song015_mvl/mxv
	.byte	W01
	.byte		        70*song015_mvl/mxv
	.byte	W01
	.byte		        71*song015_mvl/mxv
	.byte	W01
	.byte		        72*song015_mvl/mxv
	.byte	W01
	.byte		        74*song015_mvl/mxv
	.byte	W01
	.byte		        74*song015_mvl/mxv
	.byte	W01
	.byte		        76*song015_mvl/mxv
	.byte	W01
	.byte		        78*song015_mvl/mxv
	.byte	W01
	.byte		        79*song015_mvl/mxv
	.byte	W01
	.byte		        80*song015_mvl/mxv
	.byte	W01
	.byte		        81*song015_mvl/mxv
	.byte	W01
	.byte		        82*song015_mvl/mxv
	.byte	W01
	.byte		        84*song015_mvl/mxv
	.byte	W01
	.byte		        85*song015_mvl/mxv
	.byte	W01
	.byte		        87*song015_mvl/mxv
	.byte	W01
	.byte		        88*song015_mvl/mxv
	.byte	W01
	.byte		        89*song015_mvl/mxv
	.byte	W01
	.byte		        89*song015_mvl/mxv
	.byte	W01
	.byte		        92*song015_mvl/mxv
	.byte	W01
	.byte		        93*song015_mvl/mxv
	.byte	W01
	.byte		        94*song015_mvl/mxv
	.byte	W01
	.byte		        96*song015_mvl/mxv
	.byte	W01
	.byte		        97*song015_mvl/mxv
	.byte	W01
	.byte		        97*song015_mvl/mxv
	.byte	W01
	.byte		        100*song015_mvl/mxv
	.byte	W02
	.byte		        101*song015_mvl/mxv
	.byte	W01
	.byte		        102*song015_mvl/mxv
	.byte	W01
	.byte		        104*song015_mvl/mxv
	.byte	W01
	.byte		        104*song015_mvl/mxv
	.byte	W01
	.byte		        106*song015_mvl/mxv
	.byte	W01
	.byte		        108*song015_mvl/mxv
	.byte	W01
	.byte		        109*song015_mvl/mxv
	.byte	W01
	.byte		        110*song015_mvl/mxv
	.byte	W01
	.byte		        111*song015_mvl/mxv
	.byte	W01
	.byte		        112*song015_mvl/mxv
	.byte	W01
	.byte		        114*song015_mvl/mxv
	.byte	W01
	.byte		        115*song015_mvl/mxv
	.byte	W01
	.byte		        117*song015_mvl/mxv
	.byte	W01
	.byte		        118*song015_mvl/mxv
	.byte	W01
	.byte		        119*song015_mvl/mxv
	.byte	W01
	.byte		        119*song015_mvl/mxv
	.byte	W01
	.byte		        122*song015_mvl/mxv
	.byte	W01
	.byte		        123*song015_mvl/mxv
	.byte	W01
	.byte		        124*song015_mvl/mxv
	.byte	W01
	.byte		        126*song015_mvl/mxv
	.byte	W01
	.byte		        127*song015_mvl/mxv
	.byte	W01
	.byte	PEND
	.byte		EOT   , Gs3 
	.byte	W13
	.byte		N07   , En3 , v088
	.byte	W08
	.byte		        Dn3 , v064
	.byte	W08
	.byte		        En3 , v092
	.byte	W08
                                                
song015_8_014:
	.byte		N15   , Ds3 , v072
	.byte	W16
	.byte		N13   , Ds3 , v084
	.byte	W80
	.byte	PEND
                                                
	.byte	W96
                                                
song015_8_016:
	.byte		VOL   , 70*song015_mvl/mxv
	.byte	W48
	.byte		N72   , Gs3 , v096
	.byte	W48
	.byte	PEND
                                                
	.byte	W24
	.byte		N48   , En4 
	.byte	W72
                                                
song015_8_018:
	.byte		N16   , Dn4 , v096
	.byte	W88
	.byte		N08   , An2 , v112
	.byte	W08
	.byte	PEND
                                                
song015_8_019:
	.byte		N08   , Ds3 , v112
	.byte	W08
	.byte		        Dn3 , v108
	.byte	W08
	.byte		        Cn3 , v112
	.byte	W08
	.byte		N16   , Dn3 , v116
	.byte	W16
	.byte		N08   , Cn3 , v112
	.byte	W08
	.byte		N16   , An2 , v100
	.byte	W16
	.byte		N08   , En2 
	.byte	W08
	.byte		N16   , Gn2 , v120
	.byte	W16
	.byte		N32   , An2 , v124
	.byte	W08
	.byte	PEND
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	PATT
	 mPtr	song015_8_008
                                                
	.byte	PATT
	 mPtr	song015_8_009
	.byte		EOT   , Fs3 
	.byte	W18
	.byte		N07   , Dn3 , v072
	.byte	W08
	.byte		        Cn3 , v060
	.byte	W08
	.byte		        An2 , v076
	.byte	W08
                                                
	.byte	PATT
	 mPtr	song015_8_010
                                                
	.byte	W96
                                                
	.byte	PATT
	 mPtr	song015_8_012
                                                
	.byte	PATT
	 mPtr	song015_8_013
	.byte		EOT   , Gs3 
	.byte	W13
	.byte		N07   , En3 , v088
	.byte	W08
	.byte		        Dn3 , v064
	.byte	W08
	.byte		        En3 , v092
	.byte	W08
                                                
	.byte	PATT
	 mPtr	song015_8_014
                                                
	.byte	W96
                                                
	.byte	PATT
	 mPtr	song015_8_016
                                                
	.byte	W24
	.byte		N48   , En4 , v096
	.byte	W72
                                                
	.byte	PATT
	 mPtr	song015_8_018
                                                
	.byte	PATT
	 mPtr	song015_8_019
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte		VOL   , 80*song015_mvl/mxv
	.byte		N96   , Gn2 , v116
	.byte	W02
	.byte		VOL   , 79*song015_mvl/mxv
	.byte	W01
	.byte		        78*song015_mvl/mxv
	.byte	W01
	.byte		        77*song015_mvl/mxv
	.byte	W01
	.byte		        76*song015_mvl/mxv
	.byte	W01
	.byte		        74*song015_mvl/mxv
	.byte	W02
	.byte		        74*song015_mvl/mxv
	.byte	W01
	.byte		        73*song015_mvl/mxv
	.byte	W01
	.byte		        72*song015_mvl/mxv
	.byte	W01
	.byte		        71*song015_mvl/mxv
	.byte	W01
	.byte		        70*song015_mvl/mxv
	.byte	W01
	.byte		        69*song015_mvl/mxv
	.byte	W01
	.byte		        67*song015_mvl/mxv
	.byte	W02
	.byte		        67*song015_mvl/mxv
	.byte	W01
	.byte		        66*song015_mvl/mxv
	.byte	W01
	.byte		        65*song015_mvl/mxv
	.byte	W01
	.byte		        64*song015_mvl/mxv
	.byte	W01
	.byte		        63*song015_mvl/mxv
	.byte	W01
	.byte		        62*song015_mvl/mxv
	.byte	W02
	.byte		        61*song015_mvl/mxv
	.byte	W01
	.byte		        59*song015_mvl/mxv
	.byte	W01
	.byte		        59*song015_mvl/mxv
	.byte	W01
	.byte		        58*song015_mvl/mxv
	.byte	W01
	.byte		        57*song015_mvl/mxv
	.byte	W01
	.byte		        56*song015_mvl/mxv
	.byte	W01
	.byte		        55*song015_mvl/mxv
	.byte	W02
	.byte		        54*song015_mvl/mxv
	.byte	W01
	.byte		        52*song015_mvl/mxv
	.byte	W01
	.byte		        52*song015_mvl/mxv
	.byte	W01
	.byte		        51*song015_mvl/mxv
	.byte	W01
	.byte		        50*song015_mvl/mxv
	.byte	W01
	.byte		        49*song015_mvl/mxv
	.byte	W01
	.byte		        48*song015_mvl/mxv
	.byte	W02
	.byte		        46*song015_mvl/mxv
	.byte	W09
	.byte		        47*song015_mvl/mxv
	.byte	W05
	.byte		        48*song015_mvl/mxv
	.byte	W05
	.byte		        49*song015_mvl/mxv
	.byte	W05
	.byte		        50*song015_mvl/mxv
	.byte	W05
	.byte		        51*song015_mvl/mxv
	.byte	W04
	.byte		        52*song015_mvl/mxv
	.byte	W05
	.byte		        52*song015_mvl/mxv
	.byte	W05
	.byte		        54*song015_mvl/mxv
	.byte	W05
	.byte		        55*song015_mvl/mxv
	.byte	W05
	.byte		        56*song015_mvl/mxv
	.byte	W04
                                                
	.byte		        57*song015_mvl/mxv
	.byte		N96   , En3 
	.byte	W05
	.byte		VOL   , 58*song015_mvl/mxv
	.byte	W05
	.byte		        59*song015_mvl/mxv
	.byte	W05
	.byte		        59*song015_mvl/mxv
	.byte	W05
	.byte		        61*song015_mvl/mxv
	.byte	W04
	.byte		        62*song015_mvl/mxv
	.byte	W05
	.byte		        63*song015_mvl/mxv
	.byte	W05
	.byte		        64*song015_mvl/mxv
	.byte	W05
	.byte		        65*song015_mvl/mxv
	.byte	W05
	.byte		        66*song015_mvl/mxv
	.byte	W04
	.byte		        67*song015_mvl/mxv
	.byte	W05
	.byte		        67*song015_mvl/mxv
	.byte	W05
	.byte		        69*song015_mvl/mxv
	.byte	W05
	.byte		        70*song015_mvl/mxv
	.byte	W05
	.byte		        71*song015_mvl/mxv
	.byte	W04
	.byte		        72*song015_mvl/mxv
	.byte	W05
	.byte		        73*song015_mvl/mxv
	.byte	W05
	.byte		        74*song015_mvl/mxv
	.byte	W05
	.byte		        74*song015_mvl/mxv
	.byte	W05
	.byte		        76*song015_mvl/mxv
	.byte	W04
                                                
	.byte		        77*song015_mvl/mxv
	.byte		N32   , Ds3 , v127
	.byte	W05
	.byte		VOL   , 78*song015_mvl/mxv
	.byte	W05
	.byte		        79*song015_mvl/mxv
	.byte	W01
	.byte		        80*song015_mvl/mxv
	.byte	W36
	.byte	W01
	.byte		N15   
	.byte	W16
	.byte		N23   , Bn2 
	.byte	W24
	.byte		N48   , Fs2 
	.byte	W08
                                                
	.byte	W96
                                                
	.byte		VOL   , 80*song015_mvl/mxv
	.byte		N96   , En2 , v116
	.byte	W02
	.byte		VOL   , 79*song015_mvl/mxv
	.byte	W01
	.byte		        78*song015_mvl/mxv
	.byte	W01
	.byte		        77*song015_mvl/mxv
	.byte	W01
	.byte		        76*song015_mvl/mxv
	.byte	W01
	.byte		        74*song015_mvl/mxv
	.byte	W02
	.byte		        74*song015_mvl/mxv
	.byte	W01
	.byte		        73*song015_mvl/mxv
	.byte	W01
	.byte		        72*song015_mvl/mxv
	.byte	W01
	.byte		        71*song015_mvl/mxv
	.byte	W01
	.byte		        70*song015_mvl/mxv
	.byte	W01
	.byte		        69*song015_mvl/mxv
	.byte	W01
	.byte		        67*song015_mvl/mxv
	.byte	W02
	.byte		        67*song015_mvl/mxv
	.byte	W01
	.byte		        66*song015_mvl/mxv
	.byte	W01
	.byte		        65*song015_mvl/mxv
	.byte	W01
	.byte		        64*song015_mvl/mxv
	.byte	W01
	.byte		        63*song015_mvl/mxv
	.byte	W01
	.byte		        62*song015_mvl/mxv
	.byte	W02
	.byte		        61*song015_mvl/mxv
	.byte	W01
	.byte		        59*song015_mvl/mxv
	.byte	W01
	.byte		        59*song015_mvl/mxv
	.byte	W01
	.byte		        58*song015_mvl/mxv
	.byte	W01
	.byte		        57*song015_mvl/mxv
	.byte	W01
	.byte		        56*song015_mvl/mxv
	.byte	W01
	.byte		        55*song015_mvl/mxv
	.byte	W02
	.byte		        54*song015_mvl/mxv
	.byte	W01
	.byte		        52*song015_mvl/mxv
	.byte	W01
	.byte		        52*song015_mvl/mxv
	.byte	W01
	.byte		        51*song015_mvl/mxv
	.byte	W01
	.byte		        50*song015_mvl/mxv
	.byte	W01
	.byte		        49*song015_mvl/mxv
	.byte	W01
	.byte		        48*song015_mvl/mxv
	.byte	W02
	.byte		        46*song015_mvl/mxv
	.byte	W09
	.byte		        47*song015_mvl/mxv
	.byte	W05
	.byte		        48*song015_mvl/mxv
	.byte	W05
	.byte		        49*song015_mvl/mxv
	.byte	W05
	.byte		        50*song015_mvl/mxv
	.byte	W05
	.byte		        51*song015_mvl/mxv
	.byte	W04
	.byte		        52*song015_mvl/mxv
	.byte	W05
	.byte		        52*song015_mvl/mxv
	.byte	W05
	.byte		        54*song015_mvl/mxv
	.byte	W05
	.byte		        55*song015_mvl/mxv
	.byte	W05
	.byte		        56*song015_mvl/mxv
	.byte	W04
                                                
	.byte		        57*song015_mvl/mxv
	.byte		N96   , Cn3 
	.byte	W05
	.byte		VOL   , 58*song015_mvl/mxv
	.byte	W05
	.byte		        59*song015_mvl/mxv
	.byte	W05
	.byte		        59*song015_mvl/mxv
	.byte	W05
	.byte		        61*song015_mvl/mxv
	.byte	W04
	.byte		        62*song015_mvl/mxv
	.byte	W05
	.byte		        63*song015_mvl/mxv
	.byte	W05
	.byte		        64*song015_mvl/mxv
	.byte	W05
	.byte		        65*song015_mvl/mxv
	.byte	W05
	.byte		        66*song015_mvl/mxv
	.byte	W04
	.byte		        67*song015_mvl/mxv
	.byte	W05
	.byte		        67*song015_mvl/mxv
	.byte	W05
	.byte		        69*song015_mvl/mxv
	.byte	W05
	.byte		        70*song015_mvl/mxv
	.byte	W05
	.byte		        71*song015_mvl/mxv
	.byte	W04
	.byte		        72*song015_mvl/mxv
	.byte	W05
	.byte		        73*song015_mvl/mxv
	.byte	W05
	.byte		        74*song015_mvl/mxv
	.byte	W05
	.byte		        74*song015_mvl/mxv
	.byte	W05
	.byte		        76*song015_mvl/mxv
	.byte	W04
                                                
	.byte		        77*song015_mvl/mxv
	.byte		N32   , Bn2 , v127
	.byte	W05
	.byte		VOL   , 78*song015_mvl/mxv
	.byte	W05
	.byte		        79*song015_mvl/mxv
	.byte	W01
	.byte		        80*song015_mvl/mxv
	.byte	W36
	.byte	W01
	.byte		N15   
	.byte	W16
	.byte		N23   , Cs3 
	.byte	W24
	.byte		N56   , Ds3 
	.byte	W08
                                                
	.byte	W96
                                                
song015_8_046:
	.byte		VOL   , 80*song015_mvl/mxv
	.byte		N96   , As2 , v116
	.byte	W02
	.byte		VOL   , 79*song015_mvl/mxv
	.byte	W01
	.byte		        78*song015_mvl/mxv
	.byte	W01
	.byte		        77*song015_mvl/mxv
	.byte	W01
	.byte		        76*song015_mvl/mxv
	.byte	W01
	.byte		        74*song015_mvl/mxv
	.byte	W02
	.byte		        74*song015_mvl/mxv
	.byte	W01
	.byte		        73*song015_mvl/mxv
	.byte	W01
	.byte		        72*song015_mvl/mxv
	.byte	W01
	.byte		        71*song015_mvl/mxv
	.byte	W01
	.byte		        70*song015_mvl/mxv
	.byte	W01
	.byte		        69*song015_mvl/mxv
	.byte	W01
	.byte		        67*song015_mvl/mxv
	.byte	W02
	.byte		        67*song015_mvl/mxv
	.byte	W01
	.byte		        66*song015_mvl/mxv
	.byte	W01
	.byte		        65*song015_mvl/mxv
	.byte	W01
	.byte		        64*song015_mvl/mxv
	.byte	W01
	.byte		        63*song015_mvl/mxv
	.byte	W01
	.byte		        62*song015_mvl/mxv
	.byte	W02
	.byte		        61*song015_mvl/mxv
	.byte	W01
	.byte		        59*song015_mvl/mxv
	.byte	W01
	.byte		        59*song015_mvl/mxv
	.byte	W01
	.byte		        58*song015_mvl/mxv
	.byte	W01
	.byte		        57*song015_mvl/mxv
	.byte	W01
	.byte		        56*song015_mvl/mxv
	.byte	W01
	.byte		        55*song015_mvl/mxv
	.byte	W02
	.byte		        54*song015_mvl/mxv
	.byte	W01
	.byte		        52*song015_mvl/mxv
	.byte	W01
	.byte		        52*song015_mvl/mxv
	.byte	W01
	.byte		        51*song015_mvl/mxv
	.byte	W01
	.byte		        50*song015_mvl/mxv
	.byte	W01
	.byte		        49*song015_mvl/mxv
	.byte	W01
	.byte		        48*song015_mvl/mxv
	.byte	W02
	.byte		        46*song015_mvl/mxv
	.byte	W09
	.byte		        47*song015_mvl/mxv
	.byte	W05
	.byte		        48*song015_mvl/mxv
	.byte	W05
	.byte		        49*song015_mvl/mxv
	.byte	W05
	.byte		        50*song015_mvl/mxv
	.byte	W05
	.byte		        51*song015_mvl/mxv
	.byte	W04
	.byte		        52*song015_mvl/mxv
	.byte	W05
	.byte		        52*song015_mvl/mxv
	.byte	W05
	.byte		        54*song015_mvl/mxv
	.byte	W05
	.byte		        55*song015_mvl/mxv
	.byte	W05
	.byte		        56*song015_mvl/mxv
	.byte	W04
	.byte	PEND
                                                
song015_8_047:
	.byte		VOL   , 57*song015_mvl/mxv
	.byte		N96   , Gn3 , v116
	.byte	W05
	.byte		VOL   , 58*song015_mvl/mxv
	.byte	W05
	.byte		        59*song015_mvl/mxv
	.byte	W05
	.byte		        59*song015_mvl/mxv
	.byte	W05
	.byte		        61*song015_mvl/mxv
	.byte	W04
	.byte		        62*song015_mvl/mxv
	.byte	W05
	.byte		        63*song015_mvl/mxv
	.byte	W05
	.byte		        64*song015_mvl/mxv
	.byte	W05
	.byte		        65*song015_mvl/mxv
	.byte	W05
	.byte		        66*song015_mvl/mxv
	.byte	W04
	.byte		        67*song015_mvl/mxv
	.byte	W05
	.byte		        67*song015_mvl/mxv
	.byte	W05
	.byte		        69*song015_mvl/mxv
	.byte	W05
	.byte		        70*song015_mvl/mxv
	.byte	W05
	.byte		        71*song015_mvl/mxv
	.byte	W04
	.byte		        72*song015_mvl/mxv
	.byte	W05
	.byte		        73*song015_mvl/mxv
	.byte	W05
	.byte		        74*song015_mvl/mxv
	.byte	W05
	.byte		        74*song015_mvl/mxv
	.byte	W05
	.byte		        76*song015_mvl/mxv
	.byte	W04
	.byte	PEND
                                                
	.byte		        77*song015_mvl/mxv
	.byte		N32   , Fs3 , v127
	.byte	W05
	.byte		VOL   , 78*song015_mvl/mxv
	.byte	W05
	.byte		        79*song015_mvl/mxv
	.byte	W01
	.byte		        80*song015_mvl/mxv
	.byte	W36
	.byte	W01
	.byte		N15   
	.byte	W16
	.byte		N23   , Dn3 
	.byte	W24
	.byte		N48   , An2 
	.byte	W08
                                                
	.byte	W96
                                                
	.byte	PATT
	 mPtr	song015_8_046
                                                
	.byte	PATT
	 mPtr	song015_8_047
                                                
	.byte		VOL   , 77*song015_mvl/mxv
	.byte		N16   , Fs3 , v127
	.byte	W05
	.byte		VOL   , 78*song015_mvl/mxv
	.byte	W05
	.byte		        79*song015_mvl/mxv
	.byte	W01
	.byte		        80*song015_mvl/mxv
	.byte	W36
	.byte	W01
	.byte		N15   
	.byte	W16
	.byte		        Gn3 
	.byte	W24
	.byte		N54   , Gs3 
	.byte	W08
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W96
	.byte	GOTO
	 mPtr	song015_8_B1
song015_8_B2:
                                                
	.byte	FINE

                                                        
	mAlignWord

C_DECL(song015):
	.byte	8	         
	.byte	0	         
	.byte	song015_pri	          
	.byte	song015_rev	        

mAlignWord
	mPtr	song015_grp

	mPtr	song015_1
	mPtr	song015_2
	mPtr	song015_3
	mPtr	song015_4
	mPtr	song015_5
	mPtr	song015_6
	mPtr	song015_7
	mPtr	song015_8

	.end
