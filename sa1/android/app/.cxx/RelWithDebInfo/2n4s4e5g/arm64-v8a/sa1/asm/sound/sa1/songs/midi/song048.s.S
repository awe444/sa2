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
# 2 "/home/awaszczak/git/sa2/sa1/sound/sa1/songs/midi/song048.s"
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
# 3 "/home/awaszczak/git/sa2/sa1/sound/sa1/songs/midi/song048.s"
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
# 4 "/home/awaszczak/git/sa2/sa1/sound/sa1/songs/midi/song048.s"

	.equ	song048_grp, voicegroup006
	.equ	song048_pri, 0
	.equ	song048_rev, reverb_set+0
	.equ	song048_mvl, 103
	.equ	song048_key, 0
	.equ	song048_tbs, 1
	.equ	song048_exg, 0
	.equ	song048_cmp, 1

	mSectionRodata
	.global	C_DECL(song048)
	mAlignWord

                                                        

song048_1:
	.byte	KEYSH , song048_key+0
                                                
	.byte	TEMPO , 132*song048_tbs/2
	.byte		VOICE , 75
	.byte		PAN   , c_v+0
	.byte		VOL   , 108*song048_mvl/mxv
	.byte	W24
	.byte		N23   , Gn2 , v100
	.byte	W24
	.byte		        An2 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
song048_1_B1:
                                                
song048_1_001:
	.byte		N80   , En3 , v100
	.byte	W84
	.byte		N05   
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte	PEND
                                                
song048_1_002:
	.byte		N17   , Gn3 , v100
	.byte	W18
	.byte		        An3 
	.byte	W18
	.byte		N11   , As3 
	.byte	W12
	.byte		N23   , An3 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte	PEND
                                                
song048_1_003:
	.byte		N56   , Fn3 , v100
	.byte	W60
	.byte		N11   
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N56   , Fn3 
	.byte	W12
	.byte	PEND
                                                
song048_1_004:
	.byte	W48
	.byte		N23   , Dn3 , v100
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte	PEND
                                                
song048_1_005:
	.byte		N80   , Fn3 , v100
	.byte	W84
	.byte		N05   , Dn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte	PEND
                                                
song048_1_006:
	.byte		N17   , Fn3 , v100
	.byte	W18
	.byte		        Gn3 
	.byte	W18
	.byte		N11   , Gs3 
	.byte	W12
	.byte		N23   , Gn3 
	.byte	W24
	.byte		        Fn3 
	.byte	W24
	.byte	PEND
                                                
	.byte		N56   , En3 
	.byte	W60
	.byte		N11   , Fn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N32   , Dn3 
	.byte	W12
                                                
song048_1_008:
	.byte	W24
	.byte		N23   , Gn2 , v100
	.byte	W24
	.byte		        An2 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte	PEND
                                                
	.byte	PATT
	 mPtr	song048_1_001
                                                
	.byte	PATT
	 mPtr	song048_1_002
                                                
	.byte	PATT
	 mPtr	song048_1_003
                                                
	.byte	PATT
	 mPtr	song048_1_004
                                                
	.byte	PATT
	 mPtr	song048_1_005
                                                
	.byte	PATT
	 mPtr	song048_1_006
                                                
	.byte		N44   , En3 , v100
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	PATT
	 mPtr	song048_1_008
	.byte	GOTO
	 mPtr	song048_1_B1
song048_1_B2:
                                                
	.byte	FINE

                                                        

song048_2:
	.byte	KEYSH , song048_key+0
                                                
	.byte		VOICE , 42
	.byte		VOL   , 116*song048_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
song048_2_B1:
                                                
song048_2_001:
	.byte		N11   , Cn2 , v100
	.byte	W18
	.byte		N05   
	.byte	W18
	.byte		N44   
	.byte	W48
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
                                                
	.byte		N11   , As1 
	.byte	W18
	.byte		N05   
	.byte	W18
	.byte		N32   , An1 
	.byte	W48
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
                                                
song048_2_003:
	.byte		N11   , Dn2 , v100
	.byte	W18
	.byte		N11   
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Cs2 
	.byte	W18
	.byte		N11   
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
                                                
song048_2_004:
	.byte		N11   , Cn2 , v100
	.byte	W18
	.byte		N11   
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W18
	.byte		N11   
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
                                                
song048_2_005:
	.byte		N11   , Gn1 , v100
	.byte	W18
	.byte		N05   
	.byte	W18
	.byte		N44   
	.byte	W48
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
                                                
	.byte		N11   , As1 
	.byte	W18
	.byte		N05   
	.byte	W18
	.byte		N32   
	.byte	W48
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
                                                
	.byte		N11   , Cn2 
	.byte	W18
	.byte		N05   
	.byte	W18
	.byte		N32   
	.byte	W48
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
                                                
	.byte		N11   , Dn2 
	.byte	W18
	.byte		N05   
	.byte	W18
	.byte		N11   , Gn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
                                                
	.byte	PATT
	 mPtr	song048_2_001
                                                
	.byte		N11   , As1 , v100
	.byte	W18
	.byte		N05   
	.byte	W18
	.byte		N44   , An1 
	.byte	W48
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
                                                
	.byte	PATT
	 mPtr	song048_2_003
                                                
	.byte	PATT
	 mPtr	song048_2_004
                                                
	.byte	PATT
	 mPtr	song048_2_005
                                                
	.byte		N11   , As1 , v100
	.byte	W18
	.byte		N05   
	.byte	W18
	.byte		N44   
	.byte	W48
	.byte		N05   , Dn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
                                                
song048_2_015:
	.byte		N11   , Cn2 , v100
	.byte	W18
	.byte		N05   
	.byte	W18
	.byte		N32   
	.byte	W48
	.byte		N05   , Gn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte	PEND
                                                
song048_2_016:
	.byte		N11   , Dn2 , v100
	.byte	W18
	.byte		N05   
	.byte	W18
	.byte		N32   
	.byte	W48
	.byte		N05   , An1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte	PEND
                                                
	.byte		N11   , En2 
	.byte	W18
	.byte		N05   
	.byte	W18
	.byte		N32   
	.byte	W48
	.byte		N05   , Bn1 
	.byte	W06
	.byte		        En2 
	.byte	W06
                                                
	.byte		N11   , Fn2 
	.byte	W18
	.byte		N05   
	.byte	W18
	.byte		N32   
	.byte	W48
	.byte		N05   , Gn2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
                                                
	.byte	PATT
	 mPtr	song048_2_015
                                                
	.byte	PATT
	 mPtr	song048_2_016
                                                
	.byte		N11   , En2 , v100
	.byte	W18
	.byte		N05   
	.byte	W18
	.byte		N32   
	.byte	W48
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
                                                
	.byte		N11   , Gn2 
	.byte	W24
	.byte		N68   , Gn1 
	.byte	W72
	.byte	GOTO
	 mPtr	song048_2_B1
song048_2_B2:
                                                
	.byte	FINE

                                                        

song048_3:
	.byte	KEYSH , song048_key+0
                                                
	.byte		VOICE , 62
	.byte		VOL   , 84*song048_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
song048_3_B1:
                                                
song048_3_001:
	.byte		N03   , En3 , v108
	.byte		N04   , Gn3 , v104
	.byte	W18
	.byte		N03   , En3 , v092
	.byte		N04   , Gn3 , v096
	.byte	W16
	.byte		N40   , En3 , v108
	.byte		N42   , Gn3 , v116
	.byte	W60
	.byte	W02
	.byte	PEND
                                                
song048_3_002:
	.byte		N03   , Dn3 , v108
	.byte		N04   , Fn3 , v104
	.byte	W18
	.byte		N03   , Dn3 , v092
	.byte		N04   , Fn3 , v096
	.byte	W16
	.byte		N40   , Cs3 , v108
	.byte		N42   , En3 , v116
	.byte	W60
	.byte	W02
	.byte	PEND
                                                
song048_3_003:
	.byte		N17   , Fn3 , v127
	.byte		N17   , An3 
	.byte	W18
	.byte		        En3 , v104
	.byte		N17   , Gn3 
	.byte	W18
	.byte		N11   , Dn3 , v092
	.byte		N11   , Fn3 
	.byte	W12
	.byte		N17   , Fn3 , v120
	.byte		N17   , An3 
	.byte	W18
	.byte		        En3 , v100
	.byte		N17   , Gn3 
	.byte	W18
	.byte		N11   , Dn3 
	.byte		N11   , Fn3 
	.byte	W12
	.byte	PEND
                                                
song048_3_004:
	.byte		N17   , Fn3 , v108
	.byte		N17   , An3 
	.byte	W18
	.byte		        En3 , v104
	.byte		N17   , Gn3 
	.byte	W18
	.byte		N36   , Dn3 , v092
	.byte		N36   , Fn3 
	.byte	W60
	.byte	PEND
                                                
song048_3_005:
	.byte		N03   , Dn3 , v108
	.byte		N04   , Fn3 , v104
	.byte	W18
	.byte		N03   , Dn3 , v092
	.byte		N04   , Fn3 , v096
	.byte	W16
	.byte		N40   , Dn3 , v108
	.byte		N42   , Fn3 , v116
	.byte	W60
	.byte	W02
	.byte	PEND
                                                
song048_3_006:
	.byte		N03   , Fn3 , v108
	.byte		N04   , Gs3 , v104
	.byte	W18
	.byte		N03   , Fn3 , v092
	.byte		N04   , Gs3 , v096
	.byte	W17
	.byte		N42   , Gs3 , v116
	.byte	W01
	.byte		N40   , Fn3 , v108
	.byte	W60
	.byte	PEND
                                                
	.byte		N03   , En3 
	.byte		N04   , Gn3 , v104
	.byte	W18
	.byte		N03   , En3 , v092
	.byte		N04   , Gn3 , v096
	.byte	W17
	.byte		N42   , Gn3 , v116
	.byte	W01
	.byte		N40   , En3 , v108
	.byte	W48
	.byte		N18   , Gn3 , v127
	.byte		N18   , Bn3 
	.byte	W12
                                                
	.byte	W12
	.byte		N03   , Gn3 , v116
	.byte		N03   , Bn3 
	.byte	W11
	.byte		N23   , Fn3 , v127
	.byte		N23   , An3 
	.byte	W24
	.byte		N03   , En3 , v100
	.byte		N03   , Gn3 
	.byte	W12
	.byte		N32   , Dn3 , v116
	.byte		N32   , Fn3 
	.byte	W36
	.byte	W01
                                                
	.byte	PATT
	 mPtr	song048_3_001
                                                
	.byte	PATT
	 mPtr	song048_3_002
                                                
	.byte	PATT
	 mPtr	song048_3_003
                                                
	.byte	PATT
	 mPtr	song048_3_004
                                                
	.byte	PATT
	 mPtr	song048_3_005
                                                
	.byte	PATT
	 mPtr	song048_3_006
                                                
	.byte	W60
	.byte		N11   , En4 , v100
	.byte	W12
	.byte		TIE   , Cn4 
	.byte	W24
                                                
	.byte	W96
                                                
	.byte	W13
	.byte		EOT   
	.byte	W44
	.byte	W03
	.byte		N11   , En4 
	.byte	W12
	.byte		TIE   , Cn4 
	.byte	W24
                                                
	.byte	W96
                                                
	.byte	W11
	.byte		EOT   
	.byte	W48
	.byte	W01
	.byte		N11   , En4 
	.byte	W12
	.byte		TIE   , Cn4 
	.byte	W24
                                                
	.byte	W96
                                                
	.byte	W11
	.byte		EOT   
	.byte	W48
	.byte	W01
	.byte		N11   , En4 
	.byte	W12
	.byte		N23   , Cn4 
	.byte	W24
                                                
	.byte		N66   , Gn3 
	.byte	W96
	.byte	GOTO
	 mPtr	song048_3_B1
song048_3_B2:
                                                
	.byte	FINE

                                                        

song048_4:
	.byte	KEYSH , song048_key+0
                                                
	.byte		VOICE , 41
	.byte		VOL   , 70*song048_mvl/mxv
	.byte	W96
song048_4_B1:
                                                
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
                                                
	.byte	W60
	.byte		N11   , En4 , v100
	.byte	W12
	.byte		TIE   , Cn4 
	.byte	W24
                                                
	.byte	W96
                                                
	.byte	W13
	.byte		EOT   
	.byte	W44
	.byte	W03
	.byte		N11   , En4 
	.byte	W12
	.byte		TIE   , Cn4 
	.byte	W24
                                                
	.byte	W96
                                                
	.byte	W11
	.byte		EOT   
	.byte	W48
	.byte	W01
	.byte		N11   , En4 
	.byte	W12
	.byte		TIE   , Cn4 
	.byte	W24
                                                
	.byte	W96
                                                
	.byte	W11
	.byte		EOT   
	.byte	W48
	.byte	W01
	.byte		N11   , En4 
	.byte	W12
	.byte		N23   , Cn4 
	.byte	W24
                                                
	.byte		N66   , Gn3 
	.byte	W96
	.byte	GOTO
	 mPtr	song048_4_B1
song048_4_B2:
                                                
	.byte	FINE

                                                        

song048_5:
	.byte	KEYSH , song048_key+0
                                                
	.byte		VOICE , 43
	.byte		PAN   , c_v+0
	.byte		VOL   , 82*song048_mvl/mxv
	.byte	W24
	.byte		N23   , Gn2 , v100
	.byte	W24
	.byte		        An2 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
song048_5_B1:
                                                
song048_5_001:
	.byte		N80   , En3 , v100
	.byte	W84
	.byte		N05   
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte	PEND
                                                
song048_5_002:
	.byte		N17   , Gn3 , v100
	.byte	W18
	.byte		        An3 
	.byte	W18
	.byte		N11   , As3 
	.byte	W12
	.byte		N23   , An3 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte	PEND
                                                
song048_5_003:
	.byte		N56   , Fn3 , v100
	.byte	W60
	.byte		N11   
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N56   , Fn3 
	.byte	W12
	.byte	PEND
                                                
song048_5_004:
	.byte	W48
	.byte		N23   , Dn3 , v100
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte	PEND
                                                
song048_5_005:
	.byte		N80   , Fn3 , v100
	.byte	W84
	.byte		N05   , Dn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte	PEND
                                                
song048_5_006:
	.byte		N17   , Fn3 , v100
	.byte	W18
	.byte		        Gn3 
	.byte	W18
	.byte		N11   , Gs3 
	.byte	W12
	.byte		N23   , Gn3 
	.byte	W24
	.byte		        Fn3 
	.byte	W24
	.byte	PEND
                                                
	.byte		N56   , En3 
	.byte	W60
	.byte		N11   , Fn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N32   , Dn3 
	.byte	W12
                                                
	.byte	W24
	.byte		N23   , Gn2 
	.byte	W24
	.byte		        An2 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
                                                
	.byte	PATT
	 mPtr	song048_5_001
                                                
	.byte	PATT
	 mPtr	song048_5_002
                                                
	.byte	PATT
	 mPtr	song048_5_003
                                                
	.byte	PATT
	 mPtr	song048_5_004
                                                
	.byte	PATT
	 mPtr	song048_5_005
                                                
	.byte	PATT
	 mPtr	song048_5_006
                                                
	.byte		N44   , En3 , v100
	.byte	W96
                                                
song048_5_016:
	.byte	W12
	.byte		N11   , En3 , v096
	.byte	W24
	.byte		        Cn3 
	.byte	W24
	.byte		N05   , An2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Cn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte	PEND
                                                
	.byte	W96
                                                
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W24
	.byte		        Cn3 
	.byte	W12
                                                
	.byte	W96
                                                
	.byte	PATT
	 mPtr	song048_5_016
                                                
	.byte	W84
	.byte		N05   , En3 , v096
	.byte	W06
	.byte		        Fn3 
	.byte	W06
                                                
	.byte		N23   , Gn3 , v100
	.byte	W24
	.byte		        Gn2 
	.byte	W24
	.byte		        An2 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte	GOTO
	 mPtr	song048_5_B1
song048_5_B2:
                                                
	.byte	FINE

                                                        

song048_6:
	.byte	KEYSH , song048_key+0
                                                
	.byte		VOICE , 63
	.byte		PAN   , c_v+0
	.byte		VOL   , 108*song048_mvl/mxv
	.byte	W96
song048_6_B1:
                                                
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
                                                
song048_6_015:
	.byte	W12
	.byte		N05   , Gn2 , v096
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		N05   
	.byte	W12
	.byte		        An2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		N05   
	.byte	W42
	.byte	PEND
                                                
	.byte	W96
                                                
	.byte	PATT
	 mPtr	song048_6_015
                                                
	.byte	W96
                                                
	.byte	PATT
	 mPtr	song048_6_015
                                                
	.byte	W96
                                                
	.byte	W12
	.byte		N05   , Gn2 , v096
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		N05   
	.byte	W12
	.byte		        An2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		N05   
	.byte	W30
	.byte		        En3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
                                                
	.byte		        Gn3 , v100
	.byte	W96
	.byte	GOTO
	 mPtr	song048_6_B1
song048_6_B2:
                                                
	.byte	FINE

                                                        

song048_7:
	.byte	KEYSH , song048_key+0
                                                
	.byte		VOICE , 63
	.byte		VOL   , 70*song048_mvl/mxv
	.byte	W96
song048_7_B1:
                                                
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
                                                
song048_7_016:
	.byte	W12
	.byte		N11   , En4 , v096
	.byte	W24
	.byte		        Cn4 
	.byte	W24
	.byte		N05   , An3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Cn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte	PEND
                                                
	.byte	W96
                                                
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W24
	.byte		        Cn4 
	.byte	W12
                                                
	.byte	W96
                                                
	.byte	PATT
	 mPtr	song048_7_016
                                                
	.byte	W84
	.byte		N05   , En4 , v096
	.byte	W06
	.byte		        Fn4 
	.byte	W06
                                                
	.byte		N23   , Gn4 , v100
	.byte	W96
	.byte	GOTO
	 mPtr	song048_7_B1
song048_7_B2:
                                                
	.byte	FINE

                                                        

song048_8:
	.byte	KEYSH , song048_key+0
                                                
	.byte		VOICE , 127
	.byte		VOL   , 127*song048_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 127
	.byte	W72
	.byte		N01   , Dn1 , v056
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N05   , Ds1 
	.byte	W12
song048_8_B1:
                                                
song048_8_001:
	.byte		N11   , Cn1 , v127
	.byte		N01   , Dn1 , v056
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N05   , Ds1 
	.byte	W12
	.byte		N11   , Cn1 , v127
	.byte		N01   , Dn1 , v056
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N05   , Ds1 
	.byte	W12
	.byte		N11   , Cn1 , v127
	.byte		N01   , Dn1 , v056
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N05   , Ds1 
	.byte	W12
	.byte		N11   , Cs1 , v127
	.byte		N01   , Dn1 , v056
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N05   , Ds1 
	.byte	W12
	.byte	PEND
                                                
	.byte	PATT
	 mPtr	song048_8_001
                                                
	.byte	PATT
	 mPtr	song048_8_001
                                                
	.byte	PATT
	 mPtr	song048_8_001
                                                
	.byte	PATT
	 mPtr	song048_8_001
                                                
	.byte	PATT
	 mPtr	song048_8_001
                                                
	.byte	PATT
	 mPtr	song048_8_001
                                                
	.byte		N11   , Cn1 , v127
	.byte		N01   , Dn1 , v056
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N05   , Ds1 
	.byte	W06
	.byte		N11   , Cs1 , v127
	.byte	W06
	.byte		N01   , Dn1 , v056
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N11   , Cs1 , v127
	.byte		N05   , Ds1 , v056
	.byte	W12
	.byte		N01   , Dn1 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N05   , Cn1 , v127
	.byte		N05   , Ds1 , v056
	.byte	W06
	.byte		        Cn1 , v127
	.byte	W06
	.byte		N11   , Cs1 
	.byte		N01   , Dn1 , v056
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N11   , Cs1 , v127
	.byte		N05   , Ds1 , v056
	.byte	W12
                                                
	.byte	PATT
	 mPtr	song048_8_001
                                                
	.byte	PATT
	 mPtr	song048_8_001
                                                
	.byte	PATT
	 mPtr	song048_8_001
                                                
	.byte	PATT
	 mPtr	song048_8_001
                                                
	.byte	PATT
	 mPtr	song048_8_001
                                                
	.byte	PATT
	 mPtr	song048_8_001
                                                
	.byte	PATT
	 mPtr	song048_8_001
                                                
	.byte	PATT
	 mPtr	song048_8_001
                                                
	.byte	PATT
	 mPtr	song048_8_001
                                                
	.byte	PATT
	 mPtr	song048_8_001
                                                
	.byte	PATT
	 mPtr	song048_8_001
                                                
	.byte	PATT
	 mPtr	song048_8_001
                                                
	.byte		N11   , Cn1 , v127
	.byte		N01   , Dn1 , v056
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N05   , Ds1 
	.byte	W12
	.byte		N11   , Cs1 , v127
	.byte		N01   , Dn1 , v056
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N05   , Ds1 
	.byte	W12
	.byte		N11   , Cn1 , v127
	.byte		N01   , Dn1 , v056
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N05   , Ds1 
	.byte	W12
	.byte		N11   , Cs1 , v127
	.byte		N01   , Dn1 , v056
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N05   , Cs1 , v127
	.byte		N05   , Ds1 , v056
	.byte	W06
	.byte		        Cs1 , v127
	.byte	W06
                                                
	.byte		N05   
	.byte		N11   , Ds1 , v056
	.byte	W24
	.byte		        Cn1 , v127
	.byte	W48
	.byte		N13   
	.byte		N01   , Dn1 , v056
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N07   , Ds1 
	.byte	W12
	.byte	GOTO
	 mPtr	song048_8_B1
song048_8_B2:
                                                
	.byte	FINE

                                                        
	mAlignWord

C_DECL(song048):
	.byte	8	         
	.byte	0	         
	.byte	song048_pri	          
	.byte	song048_rev	        

mAlignWord
	mPtr	song048_grp

	mPtr	song048_1
	mPtr	song048_2
	mPtr	song048_3
	mPtr	song048_4
	mPtr	song048_5
	mPtr	song048_6
	mPtr	song048_7
	mPtr	song048_8

	.end
