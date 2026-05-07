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
# 2 "/home/awaszczak/git/sa2/sa1/sound/sa1/songs/midi/song053.s"
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
# 3 "/home/awaszczak/git/sa2/sa1/sound/sa1/songs/midi/song053.s"
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
# 4 "/home/awaszczak/git/sa2/sa1/sound/sa1/songs/midi/song053.s"

	.equ	song053_grp, voicegroup000
	.equ	song053_pri, 0
	.equ	song053_rev, reverb_set+0
	.equ	song053_mvl, 105
	.equ	song053_key, 0
	.equ	song053_tbs, 1
	.equ	song053_exg, 0
	.equ	song053_cmp, 1

	mSectionRodata
	.global	C_DECL(song053)
	mAlignWord

                                                        

song053_1:
	.byte	KEYSH , song053_key+0
song053_1_B1:
                                                
	.byte	TEMPO , 190*song053_tbs/2
	.byte		VOICE , 123
	.byte		VOL   , 127*song053_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte	W96
                                                
	.byte	W92
	.byte	W03
	.byte		N08   , Fn3 , v127
	.byte	W01
                                                
	.byte	W08
	.byte		N14   , En3 
	.byte	W15
	.byte		N23   , Cn3 
	.byte	W24
	.byte		N08   , An2 , v120
	.byte	W09
	.byte		N14   , Fn2 
	.byte	W15
	.byte		N48   , Ds2 , v127
	.byte	W24
	.byte	W01
                                                
	.byte	W32
	.byte		N20   
	.byte	W24
	.byte		N14   
	.byte	W15
	.byte		N40   , Fn2 
	.byte	W24
	.byte	W01
                                                
	.byte	W23
	.byte		N32   
	.byte	W32
	.byte	W01
	.byte		N22   , Cn2 
	.byte	W24
	.byte		N18   , Ds2 
	.byte	W16
                                                
	.byte	W08
	.byte		N20   , Ds2 , v120
	.byte	W24
	.byte		N17   , Ds2 , v127
	.byte	W24
	.byte		N14   , Ds2 , v112
	.byte	W15
	.byte		N08   , Cn2 , v096
	.byte	W09
	.byte		N17   , Fn2 , v120
	.byte	W16
                                                
	.byte	W08
	.byte		N15   , Fn2 , v124
	.byte	W24
	.byte		        Fn2 , v116
	.byte	W24
	.byte		N14   , Fn2 , v112
	.byte	W15
	.byte		N08   , Cn2 , v104
	.byte	W09
	.byte		N18   , Gn2 , v124
	.byte	W16
                                                
	.byte	W08
	.byte		N16   , Gn2 , v127
	.byte	W24
	.byte		N15   , Gn2 , v124
	.byte	W24
	.byte		N14   , Gn2 , v120
	.byte	W15
	.byte		N08   , Dn2 , v104
	.byte	W09
	.byte		N16   , An2 , v120
	.byte	W16
                                                
	.byte	W08
	.byte		N17   , An2 , v116
	.byte	W24
	.byte		N14   , An2 , v120
	.byte	W24
	.byte		        An2 , v127
	.byte	W15
	.byte		N19   , Dn2 
	.byte	W24
	.byte	W01
                                                
	.byte	W96
                                                
	.byte	W92
	.byte	W03
	.byte		N08   , Dn3 
	.byte	W01
                                                
	.byte	W08
	.byte		N14   , Cn3 
	.byte	W15
	.byte		N23   , An2 , v124
	.byte	W24
	.byte		N08   , Fs2 , v127
	.byte	W09
	.byte		N14   , Dn2 , v116
	.byte	W15
	.byte		N32   , Cn2 , v124
	.byte	W24
	.byte	W01
                                                
	.byte	W08
	.byte		N20   , Cn2 , v116
	.byte	W24
	.byte		        Cn2 , v127
	.byte	W24
	.byte		N14   
	.byte	W15
	.byte		N22   , As1 
	.byte	W24
	.byte	W01
                                                
	.byte	W08
	.byte		N20   
	.byte	W24
	.byte		N20   
	.byte	W24
	.byte		N20   
	.byte	W24
	.byte		N18   , Cn2 
	.byte	W16
                                                
	.byte	W08
	.byte		N18   
	.byte	W24
	.byte		N19   , Cn2 , v124
	.byte	W24
	.byte		        Cn2 , v127
	.byte	W24
	.byte		N18   , Dn2 
	.byte	W16
                                                
	.byte	W08
	.byte		N17   
	.byte	W24
	.byte		        Dn2 , v124
	.byte	W24
	.byte		N14   
	.byte	W15
	.byte		N08   , An1 , v112
	.byte	W09
	.byte		N18   , Dn2 , v120
	.byte	W16
                                                
	.byte	W08
	.byte		        Dn2 , v124
	.byte	W24
	.byte		N14   
	.byte	W15
	.byte		N08   , An2 , v127
	.byte	W09
	.byte		N14   , Dn2 
	.byte	W15
	.byte		N24   , Ds2 
	.byte	W24
	.byte	W01
                                                
	.byte	W08
	.byte		N20   
	.byte	W24
	.byte		N14   
	.byte	W15
	.byte		N08   , As2 , v112
	.byte	W09
	.byte		N21   , Ds2 , v108
	.byte	W24
	.byte		N19   , Ds2 , v127
	.byte	W16
                                                
	.byte	W08
	.byte		N18   , Ds2 , v116
	.byte	W24
	.byte		N14   , Ds2 , v120
	.byte	W15
	.byte		N08   , As2 , v112
	.byte	W09
	.byte		N21   , Ds2 , v127
	.byte	W24
	.byte		N16   , Fn2 , v120
	.byte	W16
                                                
	.byte	W08
	.byte		N18   
	.byte	W24
	.byte		N14   
	.byte	W15
	.byte		N08   , Cn3 , v127
	.byte	W09
	.byte		N19   , Fn2 , v120
	.byte	W24
	.byte		N17   , Fn2 , v124
	.byte	W16
                                                
	.byte	W08
	.byte		N15   , Fn2 , v120
	.byte	W24
	.byte		N14   
	.byte	W15
	.byte		N08   , Cn3 , v112
	.byte	W09
	.byte		N14   , Fn2 , v116
	.byte	W15
	.byte		N24   , Ds2 , v127
	.byte	W24
	.byte	W01
                                                
	.byte	W08
	.byte		N19   
	.byte	W24
	.byte		N17   
	.byte	W24
	.byte		N14   , Ds2 , v116
	.byte	W15
	.byte		N08   , As2 
	.byte	W09
	.byte		N20   , Ds2 , v108
	.byte	W16
                                                
	.byte	W08
	.byte		N19   , Ds2 , v127
	.byte	W24
	.byte		N16   , Ds2 , v100
	.byte	W24
	.byte		N21   , Ds2 , v112
	.byte	W24
	.byte		N17   , Fn2 , v124
	.byte	W16
                                                
	.byte	W08
	.byte		N18   , Fn2 , v120
	.byte	W24
	.byte		N14   
	.byte	W15
	.byte		N08   , Cn3 
	.byte	W09
	.byte		N14   , Fn2 , v127
	.byte	W15
	.byte		N22   , Gn2 
	.byte	W24
	.byte	W01
                                                
	.byte	W08
	.byte		N18   
	.byte	W24
	.byte		N14   
	.byte	W15
	.byte		N08   , Dn3 , v120
	.byte	W09
	.byte		N14   , Gn2 , v127
	.byte	W15
	.byte		N22   , An2 
	.byte	W24
	.byte	W01
                                                
	.byte	W08
	.byte		N20   
	.byte	W24
	.byte		N17   
	.byte	W24
	.byte		N14   
	.byte	W15
	.byte		N08   , En2 , v116
	.byte	W09
	.byte		N18   , An2 , v127
	.byte	W16
                                                
	.byte	W08
	.byte		N16   
	.byte	W24
	.byte		N14   
	.byte	W15
	.byte		N07   , Gn2 
	.byte	W09
	.byte		N14   , Fs2 
	.byte	W15
	.byte		N16   , Fn2 
	.byte	W24
	.byte	W01
	.byte	GOTO
	 mPtr	song053_1_B1
song053_1_B2:
                                                
	.byte	FINE

                                                        

song053_2:
	.byte	KEYSH , song053_key+0
song053_2_B1:
                                                
	.byte		VOICE , 127
	.byte		VOL   , 127*song053_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte	W96
                                                
	.byte	W80
	.byte		N12   , Cs1 , v127
	.byte	W16
                                                
song053_2_002:
	.byte		N07   , Cn1 , v127
	.byte	W08
	.byte		N12   , Cs1 
	.byte	W16
	.byte		        Cn1 
	.byte		N24   , Ds1 , v072
	.byte	W24
	.byte		N07   , Cs1 , v127
	.byte	W08
	.byte		N12   , Cn1 
	.byte	W16
	.byte		N12   
	.byte		N24   , Ds1 , v068
	.byte	W24
	.byte	PEND
                                                
song053_2_003:
	.byte	W24
	.byte		N07   , Cn1 , v127
	.byte	W08
	.byte		N12   , Cs1 
	.byte	W16
	.byte		N07   , Cn1 
	.byte	W08
	.byte		N12   , Cs1 
	.byte	W16
	.byte		        Cn1 
	.byte		N24   , Ds1 , v060
	.byte	W24
	.byte	PEND
                                                
	.byte	W08
	.byte		N12   , Cn1 , v127
	.byte		N24   , Ds1 , v060
	.byte	W48
	.byte		N12   , Cn1 , v127
	.byte		N11   , Ds1 , v060
	.byte	W16
	.byte		N12   , Cn1 , v127
	.byte		N24   , Ds1 , v060
	.byte	W24
                                                
song053_2_005:
	.byte	W08
	.byte		N12   , Cs1 , v127
	.byte		N11   , Dn1 , v056
	.byte	W16
	.byte		N07   
	.byte	W08
	.byte		N12   , Cn1 , v127
	.byte		N24   , Ds1 , v060
	.byte	W24
	.byte		N12   , Cs1 , v127
	.byte		N11   , Dn1 , v056
	.byte	W16
	.byte		N07   
	.byte	W08
	.byte		N12   , Cn1 , v127
	.byte		N24   , Ds1 , v060
	.byte	W16
	.byte	PEND
                                                
	.byte	PATT
	 mPtr	song053_2_005
                                                
	.byte	PATT
	 mPtr	song053_2_005
                                                
song053_2_008:
	.byte	W08
	.byte		N12   , Cs1 , v127
	.byte		N11   , Dn1 , v056
	.byte	W16
	.byte		N07   
	.byte	W08
	.byte		N12   , Cn1 , v127
	.byte		N24   , Ds1 , v060
	.byte	W24
	.byte		N12   , Cs1 , v127
	.byte		N11   , Dn1 , v056
	.byte	W16
	.byte		N12   , Cn1 , v127
	.byte		N23   , Ds1 , v080
	.byte	W24
	.byte	PEND
                                                
	.byte	W96
                                                
	.byte	W80
	.byte		N12   , Cs1 , v127
	.byte	W16
                                                
	.byte	PATT
	 mPtr	song053_2_002
                                                
	.byte	PATT
	 mPtr	song053_2_003
                                                
	.byte	PATT
	 mPtr	song053_2_005
                                                
	.byte	PATT
	 mPtr	song053_2_005
                                                
	.byte	PATT
	 mPtr	song053_2_005
                                                
song053_2_016:
	.byte	W08
	.byte		N12   , Cs1 , v127
	.byte		N11   , Dn1 , v056
	.byte	W16
	.byte		N07   
	.byte	W08
	.byte		N12   , Cn1 , v127
	.byte		N24   , Ds1 , v060
	.byte	W16
	.byte		N07   , Cs1 , v127
	.byte	W08
	.byte		N12   
	.byte		N11   , Dn1 , v056
	.byte	W16
	.byte		N12   , Cn1 , v127
	.byte		N24   , Ds1 , v060
	.byte	W24
	.byte	PEND
                                                
	.byte	PATT
	 mPtr	song053_2_005
                                                
	.byte	PATT
	 mPtr	song053_2_005
                                                
	.byte	PATT
	 mPtr	song053_2_005
                                                
	.byte	PATT
	 mPtr	song053_2_016
                                                
	.byte	PATT
	 mPtr	song053_2_005
                                                
	.byte	PATT
	 mPtr	song053_2_005
                                                
	.byte	PATT
	 mPtr	song053_2_016
                                                
	.byte	W08
	.byte		N12   , Cs1 , v127
	.byte		N11   , Dn1 , v056
	.byte	W16
	.byte		N07   
	.byte	W08
	.byte		N12   , Cn1 , v127
	.byte		N24   , Ds1 , v060
	.byte	W16
	.byte		N07   , Cs1 , v127
	.byte	W08
	.byte		N12   , Cn1 
	.byte		N11   , Dn1 , v056
	.byte	W16
	.byte		N12   , Cn1 , v127
	.byte		N24   , Ds1 , v060
	.byte	W24
                                                
	.byte	PATT
	 mPtr	song053_2_005
                                                
	.byte	PATT
	 mPtr	song053_2_008
	.byte	GOTO
	 mPtr	song053_2_B1
song053_2_B2:
                                                
	.byte	FINE

                                                        

song053_3:
	.byte	KEYSH , song053_key+0
song053_3_B1:
                                                
	.byte		VOICE , 87
	.byte		VOL   , 75*song053_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 56
	.byte		LFODL , 0
	.byte		MOD   , 34
	.byte		MODT  , 2
	.byte		N07   , An3 , v108
	.byte	W08
	.byte		N11   , Gn3 
	.byte	W24
	.byte		N13   , An3 , v116
	.byte	W24
	.byte		N12   , Fn3 , v108
	.byte	W24
	.byte		N10   , An3 
	.byte	W16
                                                
	.byte		N07   , An3 , v092
	.byte	W08
	.byte		N10   , Fn3 , v104
	.byte	W24
	.byte		N15   , Fn3 , v096
	.byte	W16
	.byte		N08   , Fn3 , v108
	.byte	W24
	.byte		N36   , Fn3 , v112
	.byte	W24
                                                
	.byte	W24
	.byte		N44   , Cn3 , v104
	.byte	W44
	.byte	W03
	.byte		        Ds3 , v116
	.byte		N48   , Gn3 , v112
	.byte	W24
	.byte	W01
                                                
	.byte	W32
	.byte		N14   , Ds3 , v108
	.byte		N14   , Gn3 , v104
	.byte	W15
	.byte		N05   , Cn3 , v056
	.byte	W09
	.byte		N13   , Ds3 , v104
	.byte		N13   , Gn3 , v084
	.byte	W15
	.byte		N30   , Fn3 , v100
	.byte		N30   , An3 , v096
	.byte	W24
	.byte	W01
                                                
	.byte	W08
	.byte		N40   , Fn3 , v120
	.byte		N40   , An3 , v112
	.byte	W48
	.byte		N14   , Fn3 , v120
	.byte		N14   , An3 , v124
	.byte	W15
	.byte		N32   , Ds3 
	.byte		N32   , Gn3 , v108
	.byte	W24
	.byte	W01
                                                
	.byte	W08
	.byte		N19   , Ds3 , v096
	.byte		N01   , Gn3 , v088
	.byte	W24
	.byte		N17   , Ds3 , v104
	.byte		N16   , Gn3 , v116
	.byte	W24
	.byte		N14   , Ds3 , v080
	.byte		N14   , Gn3 , v096
	.byte	W15
	.byte		N03   , As2 , v084
	.byte	W09
	.byte		N18   , Fn3 
	.byte		N20   , An3 , v088
	.byte	W16
                                                
	.byte	W08
	.byte		N18   , Fn3 , v076
	.byte		N17   , An3 , v096
	.byte	W24
	.byte		N16   , Fn3 , v088
	.byte		N14   , An3 , v112
	.byte	W24
	.byte		        Fn3 , v076
	.byte		N14   , An3 , v084
	.byte	W15
	.byte		N08   , Cn3 , v072
	.byte	W09
	.byte		N15   , Gn3 , v056
	.byte		N20   , Bn3 , v076
	.byte	W16
                                                
	.byte	W08
	.byte		N18   , Gn3 , v096
	.byte		N20   , Bn3 
	.byte	W24
	.byte		N18   , Gn3 
	.byte		N16   , Bn3 , v100
	.byte	W24
	.byte		N15   , Gn3 , v096
	.byte		N17   , Bn3 , v088
	.byte	W15
	.byte		N09   , Dn3 , v080
	.byte	W09
	.byte		N17   , An3 , v100
	.byte		N19   , Cs4 , v108
	.byte	W16
                                                
	.byte	W08
	.byte		        An3 , v096
	.byte		N19   , Cs4 , v116
	.byte	W24
	.byte		N15   , An3 , v100
	.byte		N16   , Cs4 , v108
	.byte	W24
	.byte		N14   , En3 , v104
	.byte		N14   , Cs4 , v116
	.byte	W15
	.byte		N18   , Fs3 , v108
	.byte		N18   , Dn4 , v112
	.byte	W24
	.byte	W01
                                                
	.byte		N07   , Fs3 , v108
	.byte	W08
	.byte		N11   , En3 
	.byte	W24
	.byte		N13   , Fs3 , v116
	.byte	W24
	.byte		N12   , Dn3 , v108
	.byte	W24
	.byte		N10   , Fs3 
	.byte	W16
                                                
	.byte		N07   , Fs3 , v092
	.byte	W08
	.byte		N10   , Dn3 , v104
	.byte	W24
	.byte		N15   , Dn3 , v096
	.byte	W16
	.byte		N08   , Dn3 , v108
	.byte	W24
	.byte		N36   , Dn3 , v112
	.byte	W24
                                                
	.byte	W24
	.byte		N44   , An2 , v104
	.byte	W44
	.byte	W03
	.byte		        En3 , v116
	.byte		N44   , Gn3 
	.byte	W24
	.byte	W01
                                                
	.byte	W32
	.byte		N17   , En3 , v100
	.byte		N18   , Gn3 , v108
	.byte	W24
	.byte		N14   , En3 , v076
	.byte		N14   , Gn3 , v100
	.byte	W15
	.byte		N48   , Dn3 , v104
	.byte		N52   , Fn3 , v100
	.byte	W24
	.byte	W01
                                                
	.byte	W32
	.byte		N04   , Cs3 , v112
	.byte		N21   , Fn3 , v108
	.byte	W05
	.byte		N15   , Dn3 , v060
	.byte	W19
	.byte		N10   , Dn3 , v096
	.byte		N11   , Fn3 
	.byte	W15
	.byte		N52   , En3 , v100
	.byte		N52   , Gn3 , v092
	.byte	W24
	.byte	W01
                                                
	.byte	W32
	.byte		N12   , En3 , v084
	.byte		N15   , Gn3 , v108
	.byte	W15
	.byte		N07   , Cn3 , v076
	.byte	W09
	.byte		N09   , En3 , v092
	.byte		N11   , Gn3 , v080
	.byte	W15
	.byte		N54   , Fs3 , v096
	.byte		N54   , An3 
	.byte	W24
	.byte	W01
                                                
	.byte	W32
	.byte		N03   , Fs3 , v068
	.byte		N16   , An3 , v084
	.byte	W15
	.byte		N23   , Fs3 , v092
	.byte	W09
	.byte		N19   , An3 , v108
	.byte	W24
	.byte		N30   , Fs3 
	.byte		N30   , Dn4 , v116
	.byte	W16
                                                
	.byte	W23
	.byte		N07   , Fs3 , v096
	.byte		N08   , Dn4 , v104
	.byte	W24
	.byte		        Fs3 , v100
	.byte		N10   , Dn4 , v104
	.byte	W24
	.byte		N96   , Gn3 , v100
	.byte		TIE   , As3 , v108
	.byte	W24
	.byte	W01
                                                
	.byte	W72
	.byte		EOT   
	.byte	W08
	.byte		N14   , Fs3 , v112
	.byte		N24   , As3 , v100
	.byte	W15
	.byte		N07   , Gn3 , v096
	.byte	W01
                                                
	.byte	W23
	.byte		N03   
	.byte		N08   , As3 , v112
	.byte	W24
	.byte		N23   , Gn3 , v096
	.byte		N23   , As3 , v100
	.byte	W24
	.byte		N96   , An3 , v096
	.byte		N96   , Cn4 
	.byte	W24
	.byte	W01
                                                
	.byte	W80
	.byte		N05   , Gs3 , v112
	.byte		N22   , Cn4 , v096
	.byte	W06
	.byte		N18   , An3 , v100
	.byte	W10
                                                
	.byte	W08
	.byte		N16   , Fn3 
	.byte		N15   , Cn4 , v068
	.byte	W24
	.byte		N13   , Fn3 , v096
	.byte		N15   , Cn4 
	.byte	W15
	.byte		N06   , Cn3 , v068
	.byte	W09
	.byte		N11   , Fn3 , v108
	.byte		N14   , Cn4 , v088
	.byte	W15
	.byte		N60   , Gn3 , v112
	.byte		N60   , As3 
	.byte	W24
	.byte	W01
                                                
	.byte	W44
	.byte	W03
	.byte		N05   , Gn3 , v096
	.byte		N07   , As3 , v127
	.byte	W32
	.byte	W01
	.byte		N28   , Gn3 , v092
	.byte		N32   , As3 , v116
	.byte	W16
                                                
	.byte	W23
	.byte		N08   , Ds3 , v112
	.byte		N06   , Gn3 , v092
	.byte	W24
	.byte		N24   , Ds3 , v112
	.byte		N24   , Gn3 , v104
	.byte	W24
	.byte	W01
	.byte		N40   , Fn3 , v112
	.byte		N40   , An3 
	.byte	W24
                                                
	.byte	W32
	.byte		N15   
	.byte		N17   , Cn4 
	.byte	W15
	.byte		N08   , Fn3 , v080
	.byte	W09
	.byte		N13   , An3 , v096
	.byte		N12   , Cn4 , v084
	.byte	W15
	.byte		N48   , Bn3 , v096
	.byte		N48   , Dn4 , v088
	.byte	W24
	.byte	W01
                                                
	.byte	W32
	.byte		N21   , Gn3 , v104
	.byte		N22   , Bn3 , v116
	.byte	W24
	.byte		N09   , Gn3 , v104
	.byte		N14   , Bn3 , v112
	.byte	W15
	.byte		N64   , An3 , v104
	.byte		N66   , Cs4 , v112
	.byte	W24
	.byte	W01
                                                
	.byte	W44
	.byte	W03
	.byte		N08   , Cs3 , v092
	.byte		N08   , En3 
	.byte	W09
	.byte		N13   , En3 , v112
	.byte		N13   , An3 
	.byte	W15
	.byte		N07   
	.byte		N07   , Cs4 
	.byte	W09
	.byte		N36   , An3 , v100
	.byte		N15   , Cs4 , v127
	.byte	W16
                                                
	.byte		N07   , Dn4 , v068
	.byte	W08
	.byte		N13   , Cs4 , v120
	.byte	W15
	.byte		N08   , En3 , v088
	.byte		N08   , An3 
	.byte	W09
	.byte		N14   , Cs3 , v100
	.byte		N14   , Gn3 
	.byte	W15
	.byte		N08   , Cn3 , v104
	.byte		N08   , Fs3 
	.byte	W09
	.byte		N14   , Cs3 , v096
	.byte		N14   , Gn3 
	.byte	W15
	.byte		N08   , Cn3 , v100
	.byte		N08   , Fn3 
	.byte	W24
	.byte	W01
	.byte	GOTO
	 mPtr	song053_3_B1
song053_3_B2:
                                                
	.byte	FINE

                                                        

song053_4:
	.byte	KEYSH , song053_key+0
song053_4_B1:
                                                
	.byte		VOICE , 82
	.byte		VOL   , 120*song053_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 21
	.byte		LFODL , 22
	.byte		MOD   , 4
	.byte		MODT  , 0
	.byte		N07   , Fn3 , v108
	.byte	W08
	.byte		N11   , En3 
	.byte	W24
	.byte		N13   , Fn3 , v116
	.byte	W24
	.byte		N12   , Cn3 , v108
	.byte	W24
	.byte		N10   , Ds3 
	.byte	W16
                                                
	.byte		N07   , Ds3 , v092
	.byte	W08
	.byte		N10   , Dn3 , v104
	.byte	W24
	.byte		N15   , Cn3 , v096
	.byte	W16
	.byte		N08   , Dn3 , v108
	.byte	W24
	.byte		N36   , Cn3 , v112
	.byte	W24
                                                
	.byte	W24
	.byte		N44   , An2 , v104
	.byte	W44
	.byte	W03
	.byte		N21   , As2 , v108
	.byte	W24
	.byte	W01
                                                
	.byte		N07   , As2 , v084
	.byte	W08
	.byte		N11   , An2 , v096
	.byte	W24
	.byte		N13   , Gn2 , v104
	.byte	W16
	.byte		N07   , An2 , v096
	.byte	W08
	.byte		N15   , As2 , v116
	.byte	W16
	.byte		N42   , An2 , v100
	.byte	W24
                                                
	.byte	W24
	.byte		N44   , Fn2 , v096
	.byte	W56
	.byte		N36   , Gn2 , v100
	.byte	W16
                                                
	.byte	W24
	.byte		N30   , An2 , v096
	.byte	W32
	.byte		N24   , As2 , v108
	.byte	W24
	.byte		N36   , An2 , v104
	.byte	W16
                                                
	.byte	W24
	.byte		N30   , As2 , v100
	.byte	W32
	.byte		N18   , Cn3 , v088
	.byte	W24
	.byte		N15   , Bn2 , v096
	.byte	W16
                                                
	.byte		N09   , Cn3 
	.byte	W24
	.byte		N48   , Dn3 , v100
	.byte	W56
	.byte		N15   , Cs3 , v108
	.byte	W16
                                                
	.byte		N10   , Dn3 , v104
	.byte	W24
	.byte		N56   , En3 , v108
	.byte	W72
                                                
	.byte		N07   , Dn3 , v112
	.byte	W08
	.byte		N09   , Cs3 , v104
	.byte	W24
	.byte		N11   , Dn3 
	.byte	W24
	.byte		N12   , An2 , v096
	.byte	W24
	.byte		N10   , Cn3 
	.byte	W16
                                                
	.byte		N07   
	.byte	W08
	.byte		N10   , Bn2 , v092
	.byte	W24
	.byte		N15   , An2 , v096
	.byte	W16
	.byte		N09   , Bn2 , v084
	.byte	W24
	.byte		N44   , An2 , v108
	.byte	W24
                                                
	.byte	W24
	.byte		        Fs2 , v104
	.byte	W48
	.byte		N14   , Gn2 , v096
	.byte	W24
                                                
	.byte		N07   , Gn2 , v092
	.byte	W08
	.byte		N15   , Fs2 , v104
	.byte	W24
	.byte		        En2 , v088
	.byte	W16
	.byte		N07   , Fs2 , v080
	.byte	W08
	.byte		N15   , Gn2 , v108
	.byte	W16
	.byte		N42   , Fn2 , v100
	.byte	W24
                                                
	.byte	W24
	.byte		N30   , Dn2 , v104
	.byte	W32
	.byte		N20   , Fn2 , v096
	.byte	W24
	.byte		N36   , Gn2 , v112
	.byte	W16
                                                
	.byte	W24
	.byte		N30   , En2 , v092
	.byte	W32
	.byte		N11   , Gn2 , v104
	.byte	W24
	.byte		N15   , Fs2 , v112
	.byte	W16
                                                
	.byte		N10   , Gn2 , v108
	.byte	W24
	.byte		N92   , An2 , v124
	.byte	W72
                                                
	.byte	W24
	.byte		N07   , An2 , v092
	.byte	W08
	.byte		N14   , Dn2 , v104
	.byte	W16
	.byte		N07   , Fs2 
	.byte	W08
	.byte		N15   , An2 , v112
	.byte	W16
	.byte		N44   , As2 , v124
	.byte	W24
                                                
	.byte	W24
	.byte		N48   , Gn2 , v108
	.byte	W56
	.byte		N10   , Ds3 
	.byte	W16
                                                
	.byte		N07   , Ds3 , v104
	.byte	W08
	.byte		N11   , Dn3 , v116
	.byte	W24
	.byte		N15   , Cn3 , v092
	.byte	W16
	.byte		N07   , Dn3 , v112
	.byte	W24
	.byte		N44   , Cn3 , v104
	.byte	W24
                                                
	.byte	W24
	.byte		N84   , An2 , v096
	.byte	W72
                                                
	.byte	W24
	.byte		N07   
	.byte	W08
	.byte		N14   , Fn2 
	.byte	W16
	.byte		N07   , Gn2 , v100
	.byte	W08
	.byte		N15   , An2 , v112
	.byte	W16
	.byte		N44   , As2 
	.byte	W24
                                                
	.byte	W24
	.byte		        Gn2 , v100
	.byte	W56
	.byte		N10   , Ds3 , v112
	.byte	W16
                                                
	.byte		N07   , Ds3 , v096
	.byte	W08
	.byte		N10   , Dn3 , v100
	.byte	W24
	.byte		N14   , Cn3 , v092
	.byte	W16
	.byte		N09   , Dn3 , v096
	.byte	W24
	.byte		N42   , Cn3 
	.byte	W24
                                                
	.byte	W24
	.byte		N23   , An2 , v084
	.byte	W24
	.byte		N07   , Bn2 , v096
	.byte	W08
	.byte		N15   , Cn3 
	.byte	W16
	.byte		N56   , Dn3 , v108
	.byte	W24
                                                
	.byte	W48
	.byte		N07   , Cs3 , v084
	.byte	W08
	.byte		N15   , Dn3 , v104
	.byte	W16
	.byte		TIE   , En3 , v108
	.byte	W24
                                                
	.byte	W96
                                                
	.byte	W28
	.byte		EOT   
	.byte	W68
	.byte	GOTO
	 mPtr	song053_4_B1
song053_4_B2:
                                                
	.byte	FINE

                                                        

song053_5:
	.byte	KEYSH , song053_key+0
song053_5_B1:
                                                
	.byte		VOICE , 12
	.byte		VOL   , 80*song053_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 13
	.byte		LFODL , 22
	.byte		MOD   , 4
	.byte		MODT  , 0
	.byte		N07   , Cn4 , v108
	.byte	W08
	.byte		N11   
	.byte	W24
	.byte		N13   , Cn4 , v116
	.byte	W24
	.byte		N12   , An3 , v108
	.byte	W24
	.byte		N10   , Cn4 
	.byte	W16
                                                
	.byte		N07   , Cn4 , v092
	.byte	W08
	.byte		N10   , As3 , v104
	.byte	W24
	.byte		N15   , An3 , v096
	.byte	W16
	.byte		N08   , As3 , v108
	.byte	W24
	.byte		N36   , An3 , v112
	.byte	W24
                                                
	.byte	W24
	.byte		N44   , Fn3 , v104
	.byte	W44
	.byte	W03
	.byte		N21   , Gn3 , v108
	.byte	W24
	.byte	W01
                                                
	.byte		N07   , Gn3 , v084
	.byte	W08
	.byte		N11   , Fn3 , v096
	.byte	W24
	.byte		N13   , Ds3 , v104
	.byte	W16
	.byte		N07   , Fn3 , v096
	.byte	W08
	.byte		N15   , Gn3 , v116
	.byte	W16
	.byte		N42   , Fn3 , v100
	.byte	W24
                                                
	.byte	W24
	.byte		N44   , Cn3 , v096
	.byte	W56
	.byte		N36   , Ds3 , v100
	.byte	W16
                                                
	.byte	W24
	.byte		N30   , Fn3 , v096
	.byte	W32
	.byte		N24   , Gn3 , v108
	.byte	W24
	.byte		N36   , Fn3 , v104
	.byte	W16
                                                
	.byte	W24
	.byte		N30   , Gn3 , v100
	.byte	W32
	.byte		N18   , An3 , v088
	.byte	W24
	.byte		N15   , Gn3 , v096
	.byte	W16
                                                
	.byte		N09   , An3 
	.byte	W24
	.byte		N48   , Bn3 , v100
	.byte	W56
	.byte		N15   , An3 , v108
	.byte	W16
                                                
	.byte		N10   , Bn3 , v104
	.byte	W24
	.byte		N56   , Cs4 , v108
	.byte	W72
                                                
	.byte		N07   , An3 
	.byte	W08
	.byte		N11   
	.byte	W24
	.byte		N13   , An3 , v116
	.byte	W24
	.byte		N12   , Fs3 , v108
	.byte	W24
	.byte		N10   , An3 
	.byte	W16
                                                
	.byte		N07   , An3 , v092
	.byte	W08
	.byte		N10   , Gn3 , v104
	.byte	W24
	.byte		N15   , Fs3 , v096
	.byte	W16
	.byte		N08   , Gn3 , v108
	.byte	W24
	.byte		N36   , Fs3 , v112
	.byte	W24
                                                
	.byte	W24
	.byte		N44   , Dn3 , v104
	.byte	W44
	.byte	W03
	.byte		N21   , En3 , v108
	.byte	W24
	.byte	W01
                                                
	.byte		N07   , En3 , v084
	.byte	W08
	.byte		N11   , Dn3 , v096
	.byte	W24
	.byte		N13   , Cn3 , v104
	.byte	W16
	.byte		N07   , Dn3 , v096
	.byte	W08
	.byte		N15   , En3 , v116
	.byte	W16
	.byte		N42   , Dn3 , v100
	.byte	W24
                                                
	.byte	W24
	.byte		N30   , As2 , v104
	.byte	W32
	.byte		N20   , Dn3 , v096
	.byte	W24
	.byte		N36   , En3 , v112
	.byte	W16
                                                
	.byte	W24
	.byte		N30   , Cn3 , v092
	.byte	W32
	.byte		N11   , En3 , v104
	.byte	W24
	.byte		N15   , Dn3 , v112
	.byte	W16
                                                
	.byte		N10   , En3 , v108
	.byte	W24
	.byte		N92   , Fs3 , v124
	.byte	W72
                                                
	.byte	W24
	.byte		N07   , Fs3 , v092
	.byte	W08
	.byte		N14   , An2 , v104
	.byte	W16
	.byte		N07   , Dn3 
	.byte	W08
	.byte		N15   , Fs3 , v112
	.byte	W16
	.byte		N44   , Gn3 , v124
	.byte	W24
                                                
	.byte	W24
	.byte		N48   , Ds3 , v108
	.byte	W56
	.byte		N10   , Gn3 
	.byte	W16
                                                
	.byte		N07   , Gn3 , v104
	.byte	W08
	.byte		N11   , Fn3 , v116
	.byte	W24
	.byte		N15   , Ds3 , v092
	.byte	W16
	.byte		N07   , Fn3 , v112
	.byte	W24
	.byte		N44   , An3 , v104
	.byte	W24
                                                
	.byte	W24
	.byte		N84   , Fn3 , v096
	.byte	W72
                                                
	.byte	W24
	.byte		N07   
	.byte	W08
	.byte		N14   , Cn3 
	.byte	W16
	.byte		N07   , En3 , v100
	.byte	W08
	.byte		N15   , Fn3 , v112
	.byte	W16
	.byte		N44   , Gn3 
	.byte	W24
                                                
	.byte	W24
	.byte		        Ds3 , v100
	.byte	W56
	.byte		N10   , Gn3 , v112
	.byte	W16
                                                
	.byte		N07   , Gn3 , v096
	.byte	W08
	.byte		N10   , Fn3 , v100
	.byte	W24
	.byte		N14   , Ds3 , v092
	.byte	W16
	.byte		N09   , Fn3 , v096
	.byte	W24
	.byte		N42   , An3 
	.byte	W24
                                                
	.byte	W24
	.byte		N23   , Fn3 , v084
	.byte	W24
	.byte		N07   , Gn3 , v096
	.byte	W08
	.byte		N15   , An3 
	.byte	W16
	.byte		N56   , Bn3 , v108
	.byte	W24
                                                
	.byte	W48
	.byte		N07   , An3 , v084
	.byte	W08
	.byte		N15   , Bn3 , v104
	.byte	W16
	.byte		TIE   , Cs4 , v108
	.byte	W24
                                                
	.byte	W96
                                                
	.byte	W28
	.byte		EOT   
	.byte	W68
	.byte	GOTO
	 mPtr	song053_5_B1
song053_5_B2:
                                                
	.byte	FINE

                                                        
	mAlignWord

C_DECL(song053):
	.byte	5	         
	.byte	0	         
	.byte	song053_pri	          
	.byte	song053_rev	        

mAlignWord
	mPtr	song053_grp

	mPtr	song053_1
	mPtr	song053_2
	mPtr	song053_3
	mPtr	song053_4
	mPtr	song053_5

	.end
