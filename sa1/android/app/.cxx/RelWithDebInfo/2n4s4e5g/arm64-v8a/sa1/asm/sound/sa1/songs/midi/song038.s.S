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
# 2 "/home/awaszczak/git/sa2/sa1/sound/sa1/songs/midi/song038.s"
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
# 3 "/home/awaszczak/git/sa2/sa1/sound/sa1/songs/midi/song038.s"
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
# 4 "/home/awaszczak/git/sa2/sa1/sound/sa1/songs/midi/song038.s"

	.equ	song038_grp, voicegroup000
	.equ	song038_pri, 0
	.equ	song038_rev, reverb_set+0
	.equ	song038_mvl, 120
	.equ	song038_key, 0
	.equ	song038_tbs, 1
	.equ	song038_exg, 0
	.equ	song038_cmp, 1

	mSectionRodata
	.global	C_DECL(song038)
	mAlignWord

                                                        

song038_1:
	.byte	KEYSH , song038_key+0
                                                
	.byte	TEMPO , 112*song038_tbs/2
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W66
	.byte	W01
	.byte	TEMPO , 122*song038_tbs/2
	.byte		VOICE , 127
	.byte		VOL   , 127*song038_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 56
	.byte		LFODL , 0
	.byte		MOD   , 0
	.byte		MODT  , 2
	.byte		N06   , Cn1 , v127
	.byte		N18   , En1 , v060
	.byte	W18
	.byte		N06   , Cs1 , v080
	.byte	W06
	.byte		        Cs1 , v127
	.byte	W05
                                                
	.byte	W01
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds1 , v060
	.byte	W06
	.byte		        Cn1 , v127
	.byte		N18   , En1 , v060
	.byte	W18
	.byte		N06   , Dn1 
	.byte	W06
	.byte		        Cs1 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Dn1 , v060
	.byte		N06   , Gn1 , v127
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Cn1 
	.byte		N18   , En1 , v060
	.byte	W18
	.byte		N06   , Gs1 , v080
	.byte	W06
	.byte		        Cs1 , v127
	.byte	W05
                                                
	.byte	W01
	.byte		N06   
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds1 , v060
	.byte	W06
	.byte		        Cn1 , v127
	.byte		N18   , En1 , v060
	.byte	W12
	.byte		N06   , Cs1 , v127
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Cs1 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Cs1 , v127
	.byte	W06
	.byte		        Cn1 
	.byte		N96   , Cs2 
	.byte	W06
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v127
	.byte		N06   , Dn1 , v048
	.byte	W06
	.byte		        Cs1 , v127
	.byte	W05
                                                
	.byte	W01
	.byte		        Cn1 
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
	.byte		        Cn1 , v127
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		N06   
	.byte		N06   , En1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 , v127
	.byte		N06   , Dn1 , v048
	.byte	W06
	.byte		        Cs1 , v127
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		        Cs1 , v127
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Cn1 , v127
	.byte		N06   , Ds1 , v048
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v127
	.byte		N06   , Dn1 , v048
	.byte	W06
	.byte		        Cs1 , v127
	.byte	W05
                                                
song038_1_008:
	.byte	W01
	.byte		N06   , Cn1 , v127
	.byte		N06   , Dn1 , v048
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Cn1 , v127
	.byte		N06   , Dn1 , v048
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 , v127
	.byte		N06   , Dn1 , v048
	.byte	W06
	.byte		        Cs1 , v127
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs1 , v127
	.byte		N06   , Dn1 , v048
	.byte	W06
	.byte		        Cn1 , v127
	.byte		N06   , Ds1 , v048
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v127
	.byte		N06   , Dn1 , v048
	.byte	W06
	.byte		        Cs1 , v127
	.byte	W05
	.byte	PEND
                                                
	.byte	PATT
	 mPtr	song038_1_008
                                                
	.byte	PATT
	 mPtr	song038_1_008
                                                
	.byte	PATT
	 mPtr	song038_1_008
                                                
	.byte	PATT
	 mPtr	song038_1_008
                                                
	.byte	W01
	.byte		N06   , Cn1 , v127
	.byte		N06   , Dn1 , v048
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v127
	.byte		N06   , En1 , v056
	.byte	W24
	.byte		        Cs1 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds1 , v048
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		N12   , En1 , v056
	.byte	W06
	.byte		N06   , Cn1 , v127
	.byte	W06
	.byte		        Cs1 
	.byte	W05
                                                
song038_1_014:
	.byte	W01
	.byte		N06   , Cn1 , v127
	.byte		N06   , Dn1 , v048
	.byte	W06
	.byte		N12   , En1 , v056
	.byte	W12
	.byte		N06   , Cn1 , v127
	.byte		N06   , Dn1 , v048
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , En1 , v056
	.byte	W06
	.byte		N06   , Cn1 , v127
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		N12   , En1 , v056
	.byte	W06
	.byte		N06   , Cs1 , v127
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds1 , v048
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		N12   , En1 , v056
	.byte	W06
	.byte		N06   , Cn1 , v127
	.byte	W06
	.byte		        Cs1 
	.byte	W05
	.byte	PEND
                                                
	.byte	PATT
	 mPtr	song038_1_014
                                                
	.byte	W01
	.byte		N06   , Cn1 , v127
	.byte		N06   , Dn1 , v048
	.byte	W06
	.byte		N12   , En1 , v056
	.byte	W12
	.byte		N06   , Cn1 , v127
	.byte		N06   , Dn1 , v048
	.byte	W06
	.byte		N02   , Cs1 , v127
	.byte		N06   , Dn1 , v048
	.byte	W03
	.byte		N02   , Cs1 , v127
	.byte	W03
	.byte		N06   
	.byte		N12   , En1 , v056
	.byte	W06
	.byte		N06   , Cs1 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Dn1 , v048
	.byte		N06   , Gs1 , v127
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , En1 , v068
	.byte	W24
	.byte		        Cn1 , v127
	.byte		N06   , Fs1 
	.byte	W05
                                                
	.byte	W01
	.byte	FINE

                                                        

song038_2:
	.byte	KEYSH , song038_key+0
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W66
	.byte	W01
	.byte		VOICE , 45
	.byte		VOL   , 127*song038_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		N20   , An1 , v124
	.byte	W24
	.byte		N07   , An2 , v116
	.byte	W05
                                                
	.byte	W13
	.byte		N24   , An1 
	.byte	W30
	.byte		N04   , An2 , v096
	.byte	W06
	.byte		N05   , An2 , v108
	.byte	W06
	.byte		N11   , En2 , v100
	.byte	W12
	.byte		N15   , An1 , v127
	.byte	W24
	.byte		N06   , An2 , v120
	.byte	W05
                                                
	.byte	W13
	.byte		N22   , An1 
	.byte	W24
	.byte		N05   , An1 , v104
	.byte	W06
	.byte		N04   , An2 , v108
	.byte	W06
	.byte		N05   , En2 , v084
	.byte	W06
	.byte		N11   , An1 , v116
	.byte	W12
	.byte		N13   , Dn2 , v112
	.byte	W18
	.byte		N12   , Dn2 , v116
	.byte	W11
                                                
	.byte	W07
	.byte		N28   , Dn2 , v108
	.byte	W30
	.byte		N04   , Dn2 , v088
	.byte	W06
	.byte		        An1 , v108
	.byte	W06
	.byte		N05   , An1 , v124
	.byte	W06
	.byte		N11   , Bn1 , v096
	.byte	W12
	.byte		N13   , Dn2 , v108
	.byte	W18
	.byte		N09   , Dn2 , v088
	.byte	W11
                                                
	.byte	W07
	.byte		N48   , Dn2 , v104
	.byte	W60
	.byte		N14   , Dn2 , v120
	.byte	W18
	.byte		N12   , Dn2 , v104
	.byte	W11
                                                
	.byte	W07
	.byte		N28   , Dn2 , v108
	.byte	W30
	.byte		N05   , Dn2 , v100
	.byte	W06
	.byte		        An1 , v116
	.byte	W06
	.byte		        An1 , v124
	.byte	W06
	.byte		N11   , Dn2 , v116
	.byte	W12
	.byte		N14   , Cn2 , v108
	.byte	W18
	.byte		N10   , Cn2 , v080
	.byte	W11
                                                
	.byte	W07
	.byte		N36   , Cn2 , v108
	.byte	W48
	.byte		N08   , Cn2 , v100
	.byte	W12
	.byte		N11   , Bn1 , v116
	.byte	W18
	.byte		        Bn1 , v104
	.byte	W11
                                                
	.byte	W07
	.byte		N28   , Bn1 , v108
	.byte	W30
	.byte		N05   , Bn1 , v088
	.byte	W06
	.byte		        Fs1 , v108
	.byte	W06
	.byte		        Bn1 , v100
	.byte	W06
	.byte		N10   , Fs1 , v120
	.byte	W12
	.byte		N14   , En1 , v116
	.byte	W18
	.byte		N08   , En1 , v108
	.byte	W11
                                                
	.byte	W07
	.byte		N28   , En1 , v116
	.byte	W30
	.byte		N05   , En1 , v120
	.byte	W06
	.byte		        Bn1 , v100
	.byte	W06
	.byte		        En2 , v096
	.byte	W06
	.byte		N11   , En1 , v116
	.byte	W12
	.byte		N10   , An1 , v124
	.byte	W18
	.byte		N06   , An1 , v127
	.byte	W11
                                                
	.byte	W07
	.byte		N32   
	.byte	W36
	.byte		N11   , En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N10   , As2 , v124
	.byte	W18
	.byte		N06   , As2 , v127
	.byte	W11
                                                
	.byte	W07
	.byte		N32   
	.byte	W48
	.byte		N11   
	.byte	W12
	.byte		N10   , Cn3 , v124
	.byte	W18
	.byte		N06   , Cn3 , v127
	.byte	W11
                                                
	.byte	W07
	.byte		N32   
	.byte	W48
	.byte		N11   
	.byte	W12
	.byte		N10   , Dn3 , v124
	.byte	W18
	.byte		N06   , Dn3 , v127
	.byte	W11
                                                
	.byte	W07
	.byte		N32   
	.byte	W48
	.byte		N11   , An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W24
	.byte		        Dn2 
	.byte	W05
                                                
	.byte	W06
	.byte	FINE

                                                        

song038_3:
	.byte	KEYSH , song038_key+0
                                                
	.byte		VOICE , 13
	.byte		MOD   , 0
	.byte		VOL   , 30*song038_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 12
	.byte		BEND  , c_v+63
	.byte		N96   , Gs3 , v127
	.byte	W16
	.byte		BEND  , c_v+63
	.byte	W01
	.byte		        c_v+60
	.byte	W01
	.byte		        c_v+57
	.byte	W01
	.byte		        c_v+50
	.byte	W01
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+43
	.byte	W01
	.byte		        c_v+36
	.byte	W01
	.byte		        c_v+32
	.byte	W01
	.byte		        c_v+29
	.byte	W01
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+18
	.byte	W01
	.byte		        c_v+15
	.byte	W01
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+0
	.byte	W23
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+9
	.byte	W01
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+15
	.byte	W01
	.byte		        c_v+21
	.byte	W01
	.byte		        c_v+24
	.byte	W01
	.byte		        c_v+27
	.byte	W01
	.byte		        c_v+34
	.byte	W01
	.byte		        c_v+37
	.byte	W01
	.byte		        c_v+40
	.byte	W01
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+52
	.byte	W01
	.byte		        c_v+59
	.byte	W01
	.byte		        c_v+63
	.byte	W28
                                                
	.byte		N96   , An3 
	.byte	W21
	.byte		BEND  , c_v+63
	.byte	W01
	.byte		        c_v+60
	.byte	W01
	.byte		        c_v+53
	.byte	W01
	.byte		        c_v+50
	.byte	W01
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+39
	.byte	W01
	.byte		        c_v+36
	.byte	W01
	.byte		        c_v+32
	.byte	W01
	.byte		        c_v+25
	.byte	W01
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+18
	.byte	W01
	.byte		        c_v+11
	.byte	W01
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+0
	.byte	W24
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+5
	.byte	W02
	.byte		        c_v+11
	.byte	W01
	.byte		        c_v+17
	.byte	W02
	.byte		        c_v+23
	.byte	W01
	.byte		        c_v+29
	.byte	W02
	.byte		        c_v+35
	.byte	W01
	.byte		        c_v+41
	.byte	W02
	.byte		        c_v+47
	.byte	W01
	.byte		        c_v+53
	.byte	W02
	.byte		        c_v+59
	.byte	W01
	.byte		        c_v+63
	.byte	W20
                                                
	.byte		N84   , As3 
	.byte	W12
	.byte		VOL   , 30*song038_mvl/mxv
	.byte	W01
	.byte		        28*song038_mvl/mxv
	.byte	W01
	.byte		        27*song038_mvl/mxv
	.byte	W01
	.byte		        25*song038_mvl/mxv
	.byte	W01
	.byte		        23*song038_mvl/mxv
	.byte	W01
	.byte		        22*song038_mvl/mxv
	.byte	W01
	.byte		        20*song038_mvl/mxv
	.byte	W01
	.byte		        18*song038_mvl/mxv
	.byte	W01
	.byte		        17*song038_mvl/mxv
	.byte	W01
	.byte		        15*song038_mvl/mxv
	.byte	W01
	.byte		        13*song038_mvl/mxv
	.byte	W02
	.byte		MOD   , 7
	.byte	W03
	.byte		VOL   , 14*song038_mvl/mxv
	.byte	W02
	.byte		        15*song038_mvl/mxv
	.byte	W02
	.byte		        16*song038_mvl/mxv
	.byte	W02
	.byte		        17*song038_mvl/mxv
	.byte	W03
	.byte		        18*song038_mvl/mxv
	.byte	W02
	.byte		        18*song038_mvl/mxv
	.byte	W02
	.byte		        20*song038_mvl/mxv
	.byte	W02
	.byte		        21*song038_mvl/mxv
	.byte	W02
	.byte		        22*song038_mvl/mxv
	.byte	W03
	.byte		        23*song038_mvl/mxv
	.byte	W02
	.byte		        24*song038_mvl/mxv
	.byte	W02
	.byte		        25*song038_mvl/mxv
	.byte	W02
	.byte		        26*song038_mvl/mxv
	.byte	W02
	.byte		        27*song038_mvl/mxv
	.byte	W03
	.byte		        28*song038_mvl/mxv
	.byte	W02
	.byte		        30*song038_mvl/mxv
	.byte	W36
                                                
	.byte	W96
                                                
	.byte	W66
	.byte	W01
	.byte		        70*song038_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N03   , An1 , v088
	.byte	W03
	.byte		        Bn1 
	.byte	W01
	.byte		MOD   , 2
	.byte	W02
	.byte		N03   , Cs2 , v092
	.byte	W03
	.byte		        En2 , v096
	.byte	W03
	.byte		        An2 , v100
	.byte	W03
	.byte		        Bn2 
	.byte	W03
	.byte		        Cs3 , v104
	.byte	W03
	.byte		        En3 , v108
	.byte	W03
	.byte		        An3 , v112
	.byte	W03
	.byte		        Bn3 
	.byte	W02
                                                
	.byte	W01
	.byte		        Cs4 , v116
	.byte	W03
	.byte		        En4 , v120
	.byte	W03
	.byte		        An4 , v124
	.byte	W03
	.byte		        Bn4 
	.byte	W03
	.byte		        Cs5 , v127
	.byte	W03
	.byte		        En5 
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		        Bn4 
	.byte	W03
	.byte		        An4 , v124
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        Dn4 , v120
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        Gn3 , v116
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        Bn2 , v112
	.byte	W03
	.byte		        An2 
	.byte	W03
	.byte		        Gn2 , v108
	.byte	W03
	.byte		        Dn2 
	.byte	W03
	.byte		        Bn1 
	.byte	W03
	.byte		        An1 , v104
	.byte	W03
	.byte		        Gn1 
	.byte	W03
	.byte		        Fs1 , v092
	.byte	W03
	.byte		        An1 
	.byte	W03
	.byte		        Dn2 , v096
	.byte	W03
	.byte		        En2 
	.byte	W03
	.byte		        Fs2 , v100
	.byte	W03
	.byte		        An2 , v104
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        En3 , v108
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        An3 , v112
	.byte	W02
                                                
	.byte	W01
	.byte		        Dn4 , v116
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Fs4 , v120
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        Dn5 , v124
	.byte	W03
	.byte		        Fs5 
	.byte	W03
	.byte		        En5 , v127
	.byte	W03
	.byte		        Cs5 
	.byte	W03
	.byte		        Bn4 , v124
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        En4 , v120
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        An3 , v116
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Cs3 , v112
	.byte	W03
	.byte		        Bn2 
	.byte	W03
	.byte		        An2 , v108
	.byte	W03
	.byte		        En2 
	.byte	W03
	.byte		        Cs2 , v104
	.byte	W03
	.byte		        Bn1 
	.byte	W03
	.byte		        An1 
	.byte	W32
                                                
	.byte	W66
	.byte	W01
	.byte		VOL   , 60*song038_mvl/mxv
	.byte	W28
	.byte	W01
                                                
	.byte	W19
	.byte		N05   , Gn3 , v116
	.byte	W06
	.byte		        Fs3 
	.byte	W12
	.byte		N04   , Dn3 , v108
	.byte	W12
	.byte		        Bn2 , v068
	.byte	W12
	.byte		N80   , An2 , v076
	.byte	W32
	.byte	W03
                                                
	.byte	W96
                                                
	.byte	W07
	.byte		N06   , Gn3 , v124
	.byte	W06
	.byte		        Cn4 , v112
	.byte	W06
	.byte		        Cn4 , v116
	.byte	W06
	.byte		        Dn4 
	.byte	W12
	.byte		N24   , En4 , v124
	.byte	W56
	.byte	W03
                                                
	.byte	W96
                                                
	.byte	W66
	.byte	W01
	.byte		VOL   , 100*song038_mvl/mxv
	.byte	W28
	.byte	W01
                                                
	.byte	W30
	.byte	W01
	.byte		N04   , An1 , v092
	.byte	W06
	.byte		N06   , Bn1 , v108
	.byte	W12
	.byte		N05   , Dn2 , v116
	.byte	W12
	.byte		N04   , En2 , v108
	.byte	W06
	.byte		N88   , As2 , v100
	.byte	W28
	.byte	W01
                                                
	.byte	W66
	.byte	W01
	.byte		N76   , Cn3 
	.byte	W28
	.byte	W01
                                                
	.byte	W54
	.byte	W01
	.byte		N11   
	.byte	W12
	.byte		N76   , Dn3 
	.byte	W28
	.byte	W01
                                                
	.byte	W66
	.byte	W01
	.byte		N10   
	.byte	W24
	.byte		        Dn2 
	.byte	W05
                                                
	.byte	W06
	.byte	FINE

                                                        

song038_4:
	.byte	KEYSH , song038_key+0
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W66
	.byte	W01
	.byte		VOICE , 74
	.byte		VOL   , 40*song038_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 31
	.byte		LFODL , 22
	.byte		MOD   , 0
	.byte		MODT  , 0
	.byte		N40   , Cs3 , v124
	.byte		N40   , En3 
	.byte		N40   , An3 
	.byte	W07
	.byte		VOL   , 100*song038_mvl/mxv
	.byte	W01
	.byte		        90*song038_mvl/mxv
	.byte	W01
	.byte		        81*song038_mvl/mxv
	.byte	W01
	.byte		        74*song038_mvl/mxv
	.byte	W01
	.byte		        65*song038_mvl/mxv
	.byte	W02
	.byte		        67*song038_mvl/mxv
	.byte	W01
	.byte		        69*song038_mvl/mxv
	.byte	W01
	.byte		        70*song038_mvl/mxv
	.byte	W01
	.byte		        72*song038_mvl/mxv
	.byte	W01
	.byte		        72*song038_mvl/mxv
	.byte	W01
	.byte		        75*song038_mvl/mxv
	.byte	W01
	.byte		        76*song038_mvl/mxv
	.byte	W01
	.byte		        78*song038_mvl/mxv
	.byte	W01
	.byte		        79*song038_mvl/mxv
	.byte	W01
	.byte		        81*song038_mvl/mxv
	.byte	W01
	.byte		        82*song038_mvl/mxv
	.byte	W01
	.byte		        84*song038_mvl/mxv
	.byte	W01
	.byte		        85*song038_mvl/mxv
	.byte	W01
	.byte		        87*song038_mvl/mxv
	.byte	W01
	.byte		        89*song038_mvl/mxv
	.byte	W01
	.byte		        90*song038_mvl/mxv
	.byte	W01
                                                
	.byte		        90*song038_mvl/mxv
	.byte	W01
	.byte		        92*song038_mvl/mxv
	.byte	W01
	.byte		        94*song038_mvl/mxv
	.byte	W01
	.byte		        95*song038_mvl/mxv
	.byte	W01
	.byte		        97*song038_mvl/mxv
	.byte	W01
	.byte		        98*song038_mvl/mxv
	.byte	W01
	.byte		        100*song038_mvl/mxv
	.byte	W07
	.byte		N52   , Bn2 
	.byte		N52   , Dn3 
	.byte		N52   , Gn3 
	.byte	W05
	.byte		VOL   , 100*song038_mvl/mxv
	.byte	W01
	.byte		        96*song038_mvl/mxv
	.byte	W01
	.byte		        92*song038_mvl/mxv
	.byte	W01
	.byte		        90*song038_mvl/mxv
	.byte	W01
	.byte		        86*song038_mvl/mxv
	.byte	W01
	.byte		        82*song038_mvl/mxv
	.byte	W01
	.byte		        79*song038_mvl/mxv
	.byte	W01
	.byte		        75*song038_mvl/mxv
	.byte	W01
	.byte		        71*song038_mvl/mxv
	.byte	W01
	.byte		        67*song038_mvl/mxv
	.byte	W02
	.byte		        68*song038_mvl/mxv
	.byte	W01
	.byte		        69*song038_mvl/mxv
	.byte	W02
	.byte		        70*song038_mvl/mxv
	.byte	W01
	.byte		        71*song038_mvl/mxv
	.byte	W01
	.byte		        72*song038_mvl/mxv
	.byte	W01
	.byte		        72*song038_mvl/mxv
	.byte	W01
	.byte		        74*song038_mvl/mxv
	.byte	W01
	.byte		        75*song038_mvl/mxv
	.byte	W01
	.byte		        76*song038_mvl/mxv
	.byte	W01
	.byte		        77*song038_mvl/mxv
	.byte	W01
	.byte		        78*song038_mvl/mxv
	.byte	W01
	.byte		        79*song038_mvl/mxv
	.byte	W01
	.byte		        80*song038_mvl/mxv
	.byte	W01
	.byte		        81*song038_mvl/mxv
	.byte	W01
	.byte		        82*song038_mvl/mxv
	.byte	W01
	.byte		        83*song038_mvl/mxv
	.byte	W01
	.byte		        84*song038_mvl/mxv
	.byte	W01
	.byte		        85*song038_mvl/mxv
	.byte	W01
	.byte		        86*song038_mvl/mxv
	.byte	W01
	.byte		        87*song038_mvl/mxv
	.byte	W01
	.byte		        88*song038_mvl/mxv
	.byte	W01
	.byte		        89*song038_mvl/mxv
	.byte	W01
	.byte		        90*song038_mvl/mxv
	.byte	W01
	.byte		        90*song038_mvl/mxv
	.byte	W01
	.byte		        92*song038_mvl/mxv
	.byte	W01
	.byte		        93*song038_mvl/mxv
	.byte	W01
	.byte		        94*song038_mvl/mxv
	.byte	W01
	.byte		        95*song038_mvl/mxv
	.byte	W01
	.byte		        96*song038_mvl/mxv
	.byte	W01
	.byte		        97*song038_mvl/mxv
	.byte	W01
	.byte		        98*song038_mvl/mxv
	.byte	W01
	.byte		        100*song038_mvl/mxv
	.byte	W06
	.byte		N40   , An2 
	.byte		N40   , Dn3 
	.byte		N40   , Fs3 
	.byte	W07
	.byte		VOL   , 99*song038_mvl/mxv
	.byte	W01
	.byte		        94*song038_mvl/mxv
	.byte	W01
	.byte		        89*song038_mvl/mxv
	.byte	W01
	.byte		        86*song038_mvl/mxv
	.byte	W01
	.byte		        81*song038_mvl/mxv
	.byte	W01
	.byte		        77*song038_mvl/mxv
	.byte	W01
	.byte		        72*song038_mvl/mxv
	.byte	W01
	.byte		        69*song038_mvl/mxv
	.byte	W01
	.byte		        67*song038_mvl/mxv
	.byte	W01
	.byte		        68*song038_mvl/mxv
	.byte	W01
	.byte		        70*song038_mvl/mxv
	.byte	W01
	.byte		        72*song038_mvl/mxv
	.byte	W01
	.byte		        72*song038_mvl/mxv
	.byte	W01
	.byte		        75*song038_mvl/mxv
	.byte	W01
	.byte		        77*song038_mvl/mxv
	.byte	W01
	.byte		        78*song038_mvl/mxv
	.byte	W01
	.byte		        80*song038_mvl/mxv
	.byte	W01
	.byte		        82*song038_mvl/mxv
	.byte	W01
	.byte		        83*song038_mvl/mxv
	.byte	W01
	.byte		        85*song038_mvl/mxv
	.byte	W01
	.byte		        87*song038_mvl/mxv
	.byte	W01
	.byte		        88*song038_mvl/mxv
	.byte	W01
                                                
	.byte		        90*song038_mvl/mxv
	.byte	W01
	.byte		        92*song038_mvl/mxv
	.byte	W01
	.byte		        93*song038_mvl/mxv
	.byte	W01
	.byte		        95*song038_mvl/mxv
	.byte	W01
	.byte		        97*song038_mvl/mxv
	.byte	W01
	.byte		        98*song038_mvl/mxv
	.byte	W01
	.byte		        100*song038_mvl/mxv
	.byte	W07
	.byte		N48   , An2 , v108
	.byte		N48   , Cs3 
	.byte		N48   , En3 
	.byte	W08
	.byte		VOL   , 99*song038_mvl/mxv
	.byte	W01
	.byte		        97*song038_mvl/mxv
	.byte	W01
	.byte		        94*song038_mvl/mxv
	.byte	W01
	.byte		        90*song038_mvl/mxv
	.byte	W01
	.byte		        88*song038_mvl/mxv
	.byte	W01
	.byte		        84*song038_mvl/mxv
	.byte	W01
	.byte		        81*song038_mvl/mxv
	.byte	W01
	.byte		        79*song038_mvl/mxv
	.byte	W01
	.byte		        75*song038_mvl/mxv
	.byte	W01
	.byte		        72*song038_mvl/mxv
	.byte	W01
	.byte		        70*song038_mvl/mxv
	.byte	W01
	.byte		        67*song038_mvl/mxv
	.byte	W02
	.byte		        68*song038_mvl/mxv
	.byte	W01
	.byte		        69*song038_mvl/mxv
	.byte	W01
	.byte		        70*song038_mvl/mxv
	.byte	W02
	.byte		        71*song038_mvl/mxv
	.byte	W01
	.byte		        72*song038_mvl/mxv
	.byte	W01
	.byte		        72*song038_mvl/mxv
	.byte	W01
	.byte		        74*song038_mvl/mxv
	.byte	W01
	.byte		        75*song038_mvl/mxv
	.byte	W01
	.byte		        76*song038_mvl/mxv
	.byte	W01
	.byte		        77*song038_mvl/mxv
	.byte	W02
	.byte		        78*song038_mvl/mxv
	.byte	W01
	.byte		        79*song038_mvl/mxv
	.byte	W01
	.byte		        80*song038_mvl/mxv
	.byte	W01
	.byte		        81*song038_mvl/mxv
	.byte	W01
	.byte		        82*song038_mvl/mxv
	.byte	W01
	.byte		        83*song038_mvl/mxv
	.byte	W02
	.byte		        84*song038_mvl/mxv
	.byte	W01
	.byte		        85*song038_mvl/mxv
	.byte	W01
	.byte		        86*song038_mvl/mxv
	.byte	W01
	.byte		        87*song038_mvl/mxv
	.byte	W01
	.byte		        88*song038_mvl/mxv
	.byte	W01
	.byte		        89*song038_mvl/mxv
	.byte	W01
	.byte		        90*song038_mvl/mxv
	.byte	W02
	.byte		        90*song038_mvl/mxv
	.byte	W01
	.byte		        92*song038_mvl/mxv
	.byte	W01
	.byte		        93*song038_mvl/mxv
	.byte	W01
	.byte		        94*song038_mvl/mxv
	.byte	W01
	.byte		        95*song038_mvl/mxv
	.byte	W01
	.byte		        96*song038_mvl/mxv
	.byte	W01
	.byte		        97*song038_mvl/mxv
	.byte	W02
	.byte		        98*song038_mvl/mxv
	.byte	W01
	.byte		        100*song038_mvl/mxv
	.byte	W24
	.byte	W02
                                                
song038_4_007:
	.byte	W66
	.byte	W01
	.byte		VOL   , 100*song038_mvl/mxv
	.byte	W28
	.byte	W01
	.byte	PEND
                                                
	.byte	W19
	.byte		N05   , Gn3 , v116
	.byte	W06
	.byte		        Fs3 
	.byte	W12
	.byte		N04   , Dn3 , v108
	.byte	W12
	.byte		        Bn2 , v068
	.byte	W12
	.byte		N80   , An2 , v076
	.byte	W32
	.byte	W03
                                                
	.byte	W96
                                                
	.byte	W07
	.byte		N06   , Gn2 , v124
	.byte	W06
	.byte		        Cn3 , v112
	.byte	W06
	.byte		        En3 , v116
	.byte	W06
	.byte		        Fs3 
	.byte	W12
	.byte		N24   , Gn3 , v124
	.byte	W56
	.byte	W03
                                                
	.byte	W96
                                                
	.byte	PATT
	 mPtr	song038_4_007
                                                
	.byte	W30
	.byte	W01
	.byte		N04   , An2 , v092
	.byte	W06
	.byte		N06   , Bn2 , v108
	.byte	W12
	.byte		N05   , Dn3 , v116
	.byte	W12
	.byte		N04   , En3 , v108
	.byte	W06
	.byte		N88   , Dn3 , v100
	.byte		N88   , Fn3 
	.byte	W28
	.byte	W01
                                                
	.byte	W66
	.byte	W01
	.byte		N76   , En3 
	.byte		N76   , Gn3 
	.byte	W28
	.byte	W01
                                                
	.byte	W54
	.byte	W01
	.byte		N11   , En3 
	.byte		N11   , Gn3 
	.byte	W12
	.byte		N76   , Fs3 
	.byte		N76   , An3 
	.byte	W28
	.byte	W01
                                                
	.byte	W66
	.byte	W01
	.byte		N10   , Fs3 
	.byte		N10   , An3 
	.byte	W24
	.byte		        Dn1 
	.byte		N10   , Dn2 
	.byte	W05
                                                
	.byte	W06
	.byte	FINE

                                                        

song038_5:
	.byte	KEYSH , song038_key+0
                                                
	.byte		VOICE , 2
	.byte		VOL   , 0*song038_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 33
	.byte		LFOS  , 47
	.byte		LFODL , 0
	.byte		MOD   , 0
	.byte		MODT  , 0
	.byte		BEND  , c_v+63
	.byte		TIE   , Cn4 , v124
	.byte	W01
	.byte		VOL   , 0*song038_mvl/mxv
	.byte	W01
	.byte		        3*song038_mvl/mxv
	.byte	W01
	.byte		        4*song038_mvl/mxv
	.byte		BEND  , c_v+62
	.byte	W01
	.byte		VOL   , 6*song038_mvl/mxv
	.byte	W01
	.byte		        7*song038_mvl/mxv
	.byte	W01
	.byte		        9*song038_mvl/mxv
	.byte		BEND  , c_v+60
	.byte	W01
	.byte		VOL   , 10*song038_mvl/mxv
	.byte	W01
	.byte		        12*song038_mvl/mxv
	.byte	W01
	.byte		        13*song038_mvl/mxv
	.byte		BEND  , c_v+58
	.byte	W01
	.byte		VOL   , 15*song038_mvl/mxv
	.byte	W01
	.byte		        16*song038_mvl/mxv
	.byte	W01
	.byte		        18*song038_mvl/mxv
	.byte		BEND  , c_v+56
	.byte	W01
	.byte		VOL   , 18*song038_mvl/mxv
	.byte	W01
	.byte		        21*song038_mvl/mxv
	.byte	W01
	.byte		        22*song038_mvl/mxv
	.byte		BEND  , c_v+54
	.byte	W01
	.byte		VOL   , 24*song038_mvl/mxv
	.byte	W01
	.byte		        25*song038_mvl/mxv
	.byte	W01
	.byte		        27*song038_mvl/mxv
	.byte		BEND  , c_v+52
	.byte	W01
	.byte		VOL   , 28*song038_mvl/mxv
	.byte	W01
	.byte		        29*song038_mvl/mxv
	.byte	W01
	.byte		        30*song038_mvl/mxv
	.byte		BEND  , c_v+50
	.byte	W01
	.byte		VOL   , 32*song038_mvl/mxv
	.byte	W01
	.byte		        33*song038_mvl/mxv
	.byte	W01
	.byte		        35*song038_mvl/mxv
	.byte		BEND  , c_v+48
	.byte	W01
	.byte		VOL   , 36*song038_mvl/mxv
	.byte	W01
	.byte		        36*song038_mvl/mxv
	.byte	W01
	.byte		        39*song038_mvl/mxv
	.byte		BEND  , c_v+46
	.byte	W01
	.byte		VOL   , 40*song038_mvl/mxv
	.byte	W01
	.byte		        42*song038_mvl/mxv
	.byte	W01
	.byte		        43*song038_mvl/mxv
	.byte		BEND  , c_v+44
	.byte	W01
	.byte		VOL   , 45*song038_mvl/mxv
	.byte	W01
	.byte		        46*song038_mvl/mxv
	.byte	W01
	.byte		        48*song038_mvl/mxv
	.byte		BEND  , c_v+42
	.byte	W01
	.byte		VOL   , 49*song038_mvl/mxv
	.byte	W01
	.byte		        51*song038_mvl/mxv
	.byte	W01
	.byte		        52*song038_mvl/mxv
	.byte		BEND  , c_v+40
	.byte	W01
	.byte		VOL   , 54*song038_mvl/mxv
	.byte	W01
	.byte		        54*song038_mvl/mxv
	.byte	W01
	.byte		        57*song038_mvl/mxv
	.byte		BEND  , c_v+38
	.byte	W02
	.byte		VOL   , 59*song038_mvl/mxv
	.byte	W01
	.byte		        60*song038_mvl/mxv
	.byte		BEND  , c_v+36
	.byte	W01
	.byte		VOL   , 62*song038_mvl/mxv
	.byte	W01
	.byte		        63*song038_mvl/mxv
	.byte	W01
	.byte		        65*song038_mvl/mxv
	.byte		BEND  , c_v+34
	.byte	W01
	.byte		VOL   , 67*song038_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v+32
	.byte	W03
	.byte		        c_v+30
	.byte	W03
	.byte		        c_v+28
	.byte	W02
	.byte		VOL   , 66*song038_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v+26
	.byte	W03
	.byte		        c_v+24
	.byte	W01
	.byte		VOL   , 65*song038_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v+22
	.byte	W03
	.byte		VOL   , 64*song038_mvl/mxv
	.byte		BEND  , c_v+21
	.byte	W03
	.byte		        c_v+19
	.byte	W02
	.byte		VOL   , 63*song038_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v+17
	.byte	W03
	.byte		        c_v+15
	.byte	W01
	.byte		VOL   , 62*song038_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v+13
	.byte	W03
	.byte		VOL   , 61*song038_mvl/mxv
	.byte		BEND  , c_v+11
	.byte	W03
	.byte		        c_v+9
	.byte	W02
	.byte		VOL   , 60*song038_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v+7
	.byte	W03
	.byte		VOL   , 59*song038_mvl/mxv
	.byte		BEND  , c_v+5
	.byte	W03
	.byte		        c_v+3
	.byte	W02
	.byte		VOL   , 58*song038_mvl/mxv
	.byte	W01
                                                
	.byte		BEND  , c_v+1
	.byte	W03
	.byte		        c_v-1
	.byte	W01
	.byte		VOL   , 57*song038_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-3
	.byte	W03
	.byte		VOL   , 56*song038_mvl/mxv
	.byte		BEND  , c_v-5
	.byte	W03
	.byte		        c_v-7
	.byte	W02
	.byte		VOL   , 54*song038_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-9
	.byte	W03
	.byte		        c_v-11
	.byte	W01
	.byte		VOL   , 54*song038_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-13
	.byte	W03
	.byte		VOL   , 53*song038_mvl/mxv
	.byte		BEND  , c_v-15
	.byte	W03
	.byte		        c_v-17
	.byte	W02
	.byte		VOL   , 52*song038_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-19
	.byte	W03
	.byte		        c_v-21
	.byte	W01
	.byte		VOL   , 51*song038_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-22
	.byte	W03
	.byte		VOL   , 50*song038_mvl/mxv
	.byte		BEND  , c_v-24
	.byte	W03
	.byte		        c_v-26
	.byte	W01
	.byte		VOL   , 49*song038_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-28
	.byte	W03
	.byte		VOL   , 48*song038_mvl/mxv
	.byte		BEND  , c_v-30
	.byte	W03
	.byte		        c_v-32
	.byte	W02
	.byte		VOL   , 47*song038_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-34
	.byte	W03
	.byte		        c_v-36
	.byte	W01
	.byte		VOL   , 46*song038_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-38
	.byte	W03
	.byte		VOL   , 45*song038_mvl/mxv
	.byte		BEND  , c_v-40
	.byte	W03
	.byte		        c_v-42
	.byte	W02
	.byte		VOL   , 44*song038_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-44
	.byte	W03
	.byte		        c_v-46
	.byte	W01
	.byte		VOL   , 43*song038_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-48
	.byte	W03
	.byte		VOL   , 41*song038_mvl/mxv
	.byte		BEND  , c_v-50
	.byte	W02
	.byte		VOL   , 40*song038_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-52
	.byte	W01
	.byte		VOL   , 39*song038_mvl/mxv
	.byte	W01
	.byte		        38*song038_mvl/mxv
	.byte	W01
	.byte		        36*song038_mvl/mxv
	.byte		BEND  , c_v-54
	.byte	W01
	.byte		VOL   , 36*song038_mvl/mxv
	.byte	W01
	.byte		        35*song038_mvl/mxv
	.byte	W01
	.byte		        34*song038_mvl/mxv
	.byte		BEND  , c_v-56
	.byte	W01
	.byte		VOL   , 33*song038_mvl/mxv
	.byte	W02
	.byte		        32*song038_mvl/mxv
	.byte		BEND  , c_v-58
	.byte	W01
	.byte		VOL   , 31*song038_mvl/mxv
	.byte	W01
	.byte		        30*song038_mvl/mxv
	.byte	W01
	.byte		        29*song038_mvl/mxv
	.byte		BEND  , c_v-60
	.byte	W01
	.byte		VOL   , 28*song038_mvl/mxv
	.byte	W01
	.byte		        27*song038_mvl/mxv
	.byte	W01
                                                
	.byte		BEND  , c_v-62
	.byte	W01
	.byte		VOL   , 26*song038_mvl/mxv
	.byte	W01
	.byte		        25*song038_mvl/mxv
	.byte	W01
	.byte		        24*song038_mvl/mxv
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		VOL   , 23*song038_mvl/mxv
	.byte	W01
	.byte		        22*song038_mvl/mxv
	.byte	W01
	.byte		        21*song038_mvl/mxv
	.byte	W01
	.byte		        20*song038_mvl/mxv
	.byte	W02
	.byte		        18*song038_mvl/mxv
	.byte	W01
	.byte		        18*song038_mvl/mxv
	.byte	W01
	.byte		        17*song038_mvl/mxv
	.byte	W01
	.byte		        16*song038_mvl/mxv
	.byte	W01
	.byte		        15*song038_mvl/mxv
	.byte	W01
	.byte		        14*song038_mvl/mxv
	.byte	W01
	.byte		        13*song038_mvl/mxv
	.byte	W02
	.byte		        12*song038_mvl/mxv
	.byte	W01
	.byte		        11*song038_mvl/mxv
	.byte	W01
	.byte		        10*song038_mvl/mxv
	.byte	W01
	.byte		        9*song038_mvl/mxv
	.byte	W01
	.byte		        8*song038_mvl/mxv
	.byte	W01
	.byte		        7*song038_mvl/mxv
	.byte	W02
	.byte		EOT   
	.byte		VOL   , 6*song038_mvl/mxv
	.byte	W01
	.byte		        5*song038_mvl/mxv
	.byte	W01
	.byte		        4*song038_mvl/mxv
	.byte	W01
	.byte		        3*song038_mvl/mxv
	.byte	W01
	.byte		        2*song038_mvl/mxv
	.byte	W01
	.byte		        0*song038_mvl/mxv
	.byte	W01
	.byte		        0*song038_mvl/mxv
	.byte	W66
                                                
	.byte	W24
	.byte		        77*song038_mvl/mxv
	.byte		MOD   , 18
	.byte	W02
	.byte		BEND  , c_v+60
	.byte	W01
	.byte		        c_v+57
	.byte	W01
	.byte		        c_v+54
	.byte		N30   , Fs1 
	.byte	W01
	.byte		BEND  , c_v+48
	.byte	W01
	.byte		        c_v+45
	.byte	W01
	.byte		        c_v+42
	.byte	W01
	.byte		VOL   , 77*song038_mvl/mxv
	.byte		BEND  , c_v+36
	.byte	W01
	.byte		VOL   , 72*song038_mvl/mxv
	.byte		BEND  , c_v+33
	.byte	W01
	.byte		VOL   , 69*song038_mvl/mxv
	.byte		BEND  , c_v+30
	.byte	W01
	.byte		VOL   , 67*song038_mvl/mxv
	.byte		BEND  , c_v+24
	.byte	W01
	.byte		VOL   , 63*song038_mvl/mxv
	.byte		BEND  , c_v+21
	.byte	W01
	.byte		VOL   , 59*song038_mvl/mxv
	.byte		BEND  , c_v+18
	.byte	W01
	.byte		VOL   , 56*song038_mvl/mxv
	.byte		BEND  , c_v+12
	.byte	W01
	.byte		VOL   , 52*song038_mvl/mxv
	.byte		BEND  , c_v+9
	.byte	W01
	.byte		VOL   , 48*song038_mvl/mxv
	.byte		BEND  , c_v+6
	.byte	W01
	.byte		VOL   , 45*song038_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		VOL   , 41*song038_mvl/mxv
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		VOL   , 36*song038_mvl/mxv
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		VOL   , 35*song038_mvl/mxv
	.byte		BEND  , c_v-12
	.byte	W01
	.byte		VOL   , 31*song038_mvl/mxv
	.byte		BEND  , c_v-15
	.byte	W01
	.byte		VOL   , 27*song038_mvl/mxv
	.byte		BEND  , c_v-18
	.byte	W01
	.byte		VOL   , 24*song038_mvl/mxv
	.byte		BEND  , c_v-24
	.byte	W01
	.byte		VOL   , 20*song038_mvl/mxv
	.byte		BEND  , c_v-25
	.byte	W01
	.byte		VOL   , 16*song038_mvl/mxv
	.byte	W01
	.byte		        13*song038_mvl/mxv
	.byte	W01
	.byte		        9*song038_mvl/mxv
	.byte	W01
	.byte		        5*song038_mvl/mxv
	.byte	W01
	.byte		        3*song038_mvl/mxv
	.byte	W01
	.byte		        0*song038_mvl/mxv
	.byte	W42
                                                
	.byte	W66
	.byte	W01
	.byte		VOICE , 2
	.byte		VOL   , 40*song038_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 23
	.byte		LFODL , 22
	.byte		MOD   , 4
	.byte		MODT  , 0
	.byte	W28
	.byte	W01
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W66
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		N92   , Dn4 , v127
	.byte	W28
	.byte	W01
                                                
	.byte	W66
	.byte	W01
	.byte		N80   , En4 
	.byte	W28
	.byte	W01
                                                
	.byte	W66
	.byte	W01
	.byte		N22   , Gn3 
	.byte	W24
	.byte		N16   , Dn4 
	.byte	W05
                                                
	.byte	W13
	.byte		N14   , Cs4 
	.byte	W16
	.byte		N01   , Cn4 , v120
	.byte	W02
	.byte		        Bn3 , v108
	.byte	W02
	.byte		        As3 , v112
	.byte	W02
	.byte		        An3 , v096
	.byte	W02
	.byte		        Gs3 
	.byte	W02
	.byte		        Gn3 , v104
	.byte	W02
	.byte		        Fs3 , v056
	.byte	W24
	.byte	W02
	.byte		VOL   , 50*song038_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N03   , As1 , v127
	.byte	W03
	.byte		        Cn2 
	.byte	W03
	.byte		        Dn2 
	.byte	W03
	.byte		        Fn2 
	.byte	W03
	.byte		        As2 
	.byte	W03
	.byte		        Cn3 
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		        Cn4 
	.byte	W02
                                                
	.byte	W01
	.byte		        Dn4 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        As4 
	.byte	W03
	.byte		        Cn5 
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		        Fn5 
	.byte	W03
	.byte		        As5 
	.byte	W03
	.byte		        Fn5 
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		        Cn5 
	.byte	W03
	.byte		        As4 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        Cn3 
	.byte	W03
	.byte		        As2 
	.byte	W03
	.byte		        Fn2 
	.byte	W03
	.byte		        Dn2 
	.byte	W03
	.byte		        Cn2 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Dn2 
	.byte	W03
	.byte		        En2 
	.byte	W03
	.byte		        Gn2 
	.byte	W03
	.byte		        Cn3 
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Gn3 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		        Dn4 
	.byte	W02
                                                
	.byte	W01
	.byte		        En4 
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        Cn5 
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		        En5 
	.byte	W03
	.byte		        Gn5 
	.byte	W03
	.byte		        Cn6 
	.byte	W03
	.byte		        Gn5 
	.byte	W03
	.byte		        En5 
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		        Cn5 
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		        Gn3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        Cn3 
	.byte	W03
	.byte		        Gn2 
	.byte	W03
	.byte		        En2 
	.byte	W03
	.byte		        Cn2 
	.byte	W03
	.byte		        Dn2 
	.byte	W03
	.byte		        En2 
	.byte	W03
	.byte		        Fs2 
	.byte	W03
	.byte		        An2 
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        An2 
	.byte	W03
	.byte		        Dn3 
	.byte	W02
                                                
	.byte	W01
	.byte		        En3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		        En5 
	.byte	W03
	.byte		        Fs5 
	.byte	W03
	.byte		        An5 
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		        En5 
	.byte	W03
	.byte		        Fs5 
	.byte	W03
	.byte		        An5 
	.byte	W03
	.byte		        Dn6 
	.byte	W03
	.byte		        En6 
	.byte	W03
	.byte		        Fs6 
	.byte	W03
	.byte	FINE

                                                        

song038_6:
	.byte	KEYSH , song038_key+0
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W66
	.byte	W01
	.byte		VOICE , 80
	.byte		VOL   , 110*song038_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 23
	.byte		LFODL , 22
	.byte		MOD   , 0
	.byte		MODT  , 0
	.byte		N23   , En3 , v127
	.byte	W24
	.byte	W02
	.byte		N06   
	.byte	W03
                                                
	.byte	W15
	.byte		N52   , Dn3 
	.byte	W54
	.byte		N23   , An2 
	.byte	W24
	.byte	W02
	.byte		N09   
	.byte	W01
                                                
	.byte	W15
	.byte		N52   , En2 
	.byte	W52
	.byte		N17   , An2 
	.byte	W18
	.byte		N08   
	.byte	W11
                                                
	.byte	W07
	.byte		N56   
	.byte	W60
	.byte		N17   , Dn3 
	.byte	W18
	.byte		N08   
	.byte	W11
                                                
	.byte	W07
	.byte		N56   
	.byte	W60
	.byte		N17   , An2 
	.byte	W18
	.byte		N08   
	.byte	W11
                                                
	.byte	W07
	.byte		N32   
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		N17   , Gn2 
	.byte	W18
	.byte		N08   
	.byte	W11
                                                
	.byte	W07
	.byte		N56   
	.byte	W60
	.byte		N17   , An2 
	.byte	W18
	.byte		N08   
	.byte	W11
                                                
	.byte	W07
	.byte		N44   
	.byte	W48
	.byte		N05   
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		N17   , Bn2 
	.byte	W18
	.byte		N08   
	.byte	W11
                                                
	.byte	W07
	.byte		N56   
	.byte	W60
	.byte		N17   , Dn3 
	.byte	W18
	.byte		N08   
	.byte	W11
                                                
	.byte	W07
	.byte		N56   , En3 
	.byte	W60
	.byte		N92   , Fn3 
	.byte	W28
	.byte	W01
                                                
	.byte	W66
	.byte	W01
	.byte		        Gn3 
	.byte	W28
	.byte	W01
                                                
	.byte	W66
	.byte	W01
	.byte		        An3 
	.byte	W28
	.byte	W01
                                                
	.byte	W66
	.byte	W01
	.byte		N09   
	.byte	W09
	.byte	FINE

                                                        

song038_7:
	.byte	KEYSH , song038_key+0
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W66
	.byte	W01
	.byte		VOICE , 82
	.byte		VOL   , 110*song038_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 23
	.byte		LFODL , 22
	.byte		MOD   , 3
	.byte		MODT  , 0
	.byte	W28
	.byte	W01
                                                
	.byte	W96
                                                
	.byte	W66
	.byte	W01
	.byte		VOL   , 110*song038_mvl/mxv
	.byte		N17   , An2 , v124
	.byte	W18
	.byte		N36   , Dn2 , v104
	.byte	W11
                                                
	.byte	W30
	.byte	W01
	.byte		N11   , En2 , v108
	.byte	W12
	.byte		N12   , Fs2 , v112
	.byte	W12
	.byte		N09   , An2 , v116
	.byte	W12
	.byte		N17   , Bn2 
	.byte	W18
	.byte		N66   , En2 , v100
	.byte	W11
                                                
	.byte	W66
	.byte	W01
	.byte		N16   , Cs3 , v124
	.byte	W18
	.byte		N28   , Fs2 , v104
	.byte	W11
                                                
	.byte	W19
	.byte		N11   , An2 , v108
	.byte	W12
	.byte		        Dn3 , v096
	.byte	W12
	.byte		N10   , Gn3 , v116
	.byte	W12
	.byte		N11   , Fs3 , v100
	.byte	W12
	.byte		N07   , En3 , v104
	.byte	W12
	.byte		N05   , Dn3 , v096
	.byte	W06
	.byte		N52   , En3 
	.byte	W11
                                                
	.byte	W42
	.byte	W01
	.byte		N11   , Dn3 , v116
	.byte	W12
	.byte		N10   , En3 , v108
	.byte	W12
	.byte		N17   , Fs3 , v096
	.byte	W18
	.byte		N36   , Bn2 
	.byte	W11
                                                
	.byte	W30
	.byte	W01
	.byte		N11   , En3 , v112
	.byte	W12
	.byte		N10   , Dn3 
	.byte	W11
	.byte		        As2 , v084
	.byte	W11
	.byte		N03   , Bn2 
	.byte	W04
	.byte		N04   , Cn3 , v096
	.byte	W04
	.byte		N09   , Cs3 
	.byte	W13
	.byte		N17   , Cs3 , v112
	.byte	W10
                                                
	.byte	W07
	.byte		N23   , Bn2 , v068
	.byte	W24
	.byte		N17   , Fs2 , v084
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		        Gn2 , v060
	.byte	W06
	.byte		        Gs2 , v076
	.byte	W06
	.byte		N06   , An2 , v120
	.byte	W06
	.byte		        Dn3 , v124
	.byte	W12
	.byte		        Gn3 , v127
	.byte	W11
                                                
	.byte	W01
	.byte		        Fs3 , v112
	.byte	W12
	.byte		        Dn3 , v127
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        As2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N90   , Dn3 
	.byte	W24
	.byte	W01
	.byte		VOL   , 110*song038_mvl/mxv
	.byte	W10
                                                
	.byte	W54
	.byte	W01
	.byte	FINE

                                                        

song038_8:
	.byte	KEYSH , song038_key+0
                                                
	.byte		VOICE , 98
	.byte		VOL   , 100*song038_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 23
	.byte		LFODL , 22
	.byte		MOD   , 2
	.byte		MODT  , 0
	.byte		N04   , Fs3 , v120
	.byte		N04   , Cn4 
	.byte	W04
	.byte		        Fn3 , v108
	.byte		N04   , Bn3 
	.byte	W04
	.byte		        En3 , v112
	.byte		N04   , As3 
	.byte	W04
	.byte		        Ds3 , v116
	.byte		N04   , An3 
	.byte	W04
	.byte		        Dn3 , v120
	.byte		N04   , Gs3 
	.byte	W04
	.byte		        Ds3 , v116
	.byte		N04   , An3 
	.byte	W04
	.byte		        En3 , v108
	.byte		N04   , As3 
	.byte	W04
	.byte		        Fn3 , v120
	.byte		N04   , Bn3 
	.byte	W04
	.byte		        Fs3 
	.byte		N04   , Cn4 
	.byte	W04
	.byte		        Fn3 , v124
	.byte		N04   , Bn3 
	.byte	W04
	.byte		        En3 , v112
	.byte		N04   , As3 
	.byte	W04
	.byte		        Ds3 , v104
	.byte		N04   , An3 
	.byte	W04
	.byte		        Dn3 , v116
	.byte		N04   , Gs3 
	.byte	W04
	.byte		        Ds3 , v112
	.byte		N04   , An3 
	.byte	W04
	.byte		        En3 
	.byte		N04   , As3 
	.byte	W04
	.byte		        Fn3 , v127
	.byte		N04   , Bn3 
	.byte	W04
	.byte		        Fs3 , v112
	.byte		N04   , Cn4 
	.byte	W04
	.byte		        Fn3 , v116
	.byte		N04   , Bn3 
	.byte	W04
	.byte		        En3 , v112
	.byte		N04   , As3 
	.byte	W04
	.byte		        Ds3 , v108
	.byte		N04   , An3 
	.byte	W04
	.byte		        Dn3 , v112
	.byte		N04   , Gs3 
	.byte	W04
	.byte		        En3 , v100
	.byte		N04   , As3 
	.byte	W04
	.byte		        Fn3 , v112
	.byte		N04   , Bn3 
	.byte	W04
	.byte		        Fs3 , v116
	.byte		N04   , Cn4 
	.byte	W04
                                                
	.byte		        Gn3 , v120
	.byte		N04   , Cs4 
	.byte	W04
	.byte		        Fs3 , v108
	.byte		N04   , Cn4 
	.byte	W04
	.byte		        Fn3 , v112
	.byte		N04   , Bn3 
	.byte	W04
	.byte		        En3 , v116
	.byte		N04   , As3 
	.byte	W04
	.byte		        Ds3 , v120
	.byte		N04   , An3 
	.byte	W04
	.byte		        En3 , v116
	.byte		N04   , As3 
	.byte	W04
	.byte		        Fn3 , v108
	.byte		N04   , Bn3 
	.byte	W04
	.byte		        Fs3 , v120
	.byte		N04   , Cn4 
	.byte	W04
	.byte		        Gn3 
	.byte		N04   , Cs4 
	.byte	W04
	.byte		        Fs3 , v124
	.byte		N04   , Cn4 
	.byte	W04
	.byte		        Fn3 , v112
	.byte		N04   , Bn3 
	.byte	W04
	.byte		        En3 , v104
	.byte		N04   , As3 
	.byte	W04
	.byte		        Ds3 , v116
	.byte		N04   , An3 
	.byte	W04
	.byte		        En3 , v112
	.byte		N04   , As3 
	.byte	W04
	.byte		        Fn3 
	.byte		N04   , Bn3 
	.byte	W04
	.byte		        Fs3 , v127
	.byte		N04   , Cn4 
	.byte	W04
	.byte		        Gn3 , v112
	.byte		N04   , Cs4 
	.byte	W04
	.byte		        Fs3 , v116
	.byte		N04   , Cn4 
	.byte	W04
	.byte		        Fn3 , v112
	.byte		N04   , Bn3 
	.byte	W04
	.byte		        En3 , v108
	.byte		N04   , As3 
	.byte	W04
	.byte		        Ds3 
	.byte		N04   , An3 
	.byte	W04
	.byte		        Fn3 , v100
	.byte		N04   , Bn3 
	.byte	W04
	.byte		        Fs3 , v112
	.byte		N04   , Cn4 
	.byte	W04
	.byte		        Gn3 , v116
	.byte		N04   , Cs4 
	.byte	W04
                                                
	.byte		N80   , Gs3 
	.byte		N80   , Dn4 
	.byte	W08
	.byte		VOL   , 100*song038_mvl/mxv
	.byte	W01
	.byte		        97*song038_mvl/mxv
	.byte	W01
	.byte		        95*song038_mvl/mxv
	.byte	W01
	.byte		        90*song038_mvl/mxv
	.byte	W01
	.byte		        88*song038_mvl/mxv
	.byte	W01
	.byte		        86*song038_mvl/mxv
	.byte	W01
	.byte		        82*song038_mvl/mxv
	.byte	W01
	.byte		        79*song038_mvl/mxv
	.byte	W01
	.byte		        76*song038_mvl/mxv
	.byte	W01
	.byte		        72*song038_mvl/mxv
	.byte	W01
	.byte		        69*song038_mvl/mxv
	.byte	W01
	.byte		        67*song038_mvl/mxv
	.byte	W01
	.byte		        64*song038_mvl/mxv
	.byte	W01
	.byte		        60*song038_mvl/mxv
	.byte	W01
	.byte		        58*song038_mvl/mxv
	.byte	W01
	.byte		        54*song038_mvl/mxv
	.byte	W01
	.byte		        51*song038_mvl/mxv
	.byte	W02
	.byte		        52*song038_mvl/mxv
	.byte	W01
	.byte		        53*song038_mvl/mxv
	.byte	W01
	.byte		        54*song038_mvl/mxv
	.byte	W01
	.byte		        54*song038_mvl/mxv
	.byte	W01
	.byte		        57*song038_mvl/mxv
	.byte	W01
	.byte		        58*song038_mvl/mxv
	.byte	W01
	.byte		        59*song038_mvl/mxv
	.byte	W01
	.byte		        60*song038_mvl/mxv
	.byte	W01
	.byte		        61*song038_mvl/mxv
	.byte	W01
	.byte		        62*song038_mvl/mxv
	.byte	W01
	.byte		        63*song038_mvl/mxv
	.byte	W01
	.byte		        65*song038_mvl/mxv
	.byte	W01
	.byte		        66*song038_mvl/mxv
	.byte	W01
	.byte		        67*song038_mvl/mxv
	.byte	W01
	.byte		        68*song038_mvl/mxv
	.byte	W01
	.byte		        69*song038_mvl/mxv
	.byte	W01
	.byte		        70*song038_mvl/mxv
	.byte	W01
	.byte		        71*song038_mvl/mxv
	.byte	W01
	.byte		        72*song038_mvl/mxv
	.byte	W01
	.byte		        74*song038_mvl/mxv
	.byte	W01
	.byte		        75*song038_mvl/mxv
	.byte	W01
	.byte		        76*song038_mvl/mxv
	.byte	W01
	.byte		        77*song038_mvl/mxv
	.byte	W01
	.byte		        78*song038_mvl/mxv
	.byte	W01
	.byte		        79*song038_mvl/mxv
	.byte	W01
	.byte		        81*song038_mvl/mxv
	.byte	W01
	.byte		        82*song038_mvl/mxv
	.byte	W01
	.byte		        83*song038_mvl/mxv
	.byte	W01
	.byte		        84*song038_mvl/mxv
	.byte	W01
	.byte		        85*song038_mvl/mxv
	.byte	W01
	.byte		        86*song038_mvl/mxv
	.byte	W01
	.byte		        87*song038_mvl/mxv
	.byte	W01
	.byte		        89*song038_mvl/mxv
	.byte	W02
	.byte		        90*song038_mvl/mxv
	.byte	W01
	.byte		        90*song038_mvl/mxv
	.byte	W01
	.byte		        92*song038_mvl/mxv
	.byte	W01
	.byte		        93*song038_mvl/mxv
	.byte	W01
	.byte		        94*song038_mvl/mxv
	.byte	W01
	.byte		        96*song038_mvl/mxv
	.byte	W01
	.byte		        97*song038_mvl/mxv
	.byte	W01
	.byte		        98*song038_mvl/mxv
	.byte	W01
	.byte		        100*song038_mvl/mxv
	.byte	W28
                                                
	.byte	W96
                                                
	.byte	W66
	.byte	W01
	.byte		VOICE , 98
	.byte		VOL   , 100*song038_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 23
	.byte		LFODL , 22
	.byte		MOD   , 2
	.byte		MODT  , 0
	.byte	W28
	.byte	W01
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W54
	.byte	W01
	.byte		N03   , Ds3 , v127
	.byte	W03
	.byte		N04   , En3 
	.byte	W04
	.byte		        Fn3 
	.byte	W05
	.byte		N92   , Dn3 
	.byte		N92   , Fs3 
	.byte	W28
	.byte	W01
                                                
	.byte	W66
	.byte	W01
	.byte		N80   , En3 
	.byte		N80   , Gs3 
	.byte	W28
	.byte	W01
                                                
	.byte	W66
	.byte	W01
	.byte		N22   , Gn2 
	.byte		N22   , Bn2 
	.byte	W24
	.byte		N16   , Dn3 
	.byte		N16   , Bn3 
	.byte	W05
                                                
	.byte	W13
	.byte		N14   , Cs3 
	.byte		N14   , An3 
	.byte	W16
	.byte		N01   , Cn3 , v120
	.byte		N01   , Gs3 
	.byte	W02
	.byte		        Bn2 , v108
	.byte		N01   , Gn3 
	.byte	W02
	.byte		        As2 , v112
	.byte		N01   , Fs3 
	.byte	W02
	.byte		        An2 , v096
	.byte		N01   , Fn3 
	.byte	W02
	.byte		        Gs2 
	.byte		N01   , En3 
	.byte	W02
	.byte		        Gn2 , v104
	.byte		N01   , Ds3 
	.byte	W02
	.byte		        Fs2 , v056
	.byte		N01   , Dn3 
	.byte	W01
	.byte	FINE

                                                        

song038_9:
	.byte	KEYSH , song038_key+0
                                                
	.byte		VOICE , 95
	.byte		VOL   , 100*song038_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 23
	.byte		LFODL , 22
	.byte		MOD   , 2
	.byte		MODT  , 0
	.byte		N96   , Dn3 , v096
	.byte		N96   , Gs3 
	.byte	W02
	.byte		VOL   , 56*song038_mvl/mxv
	.byte	W02
	.byte		        57*song038_mvl/mxv
	.byte	W01
	.byte		        58*song038_mvl/mxv
	.byte	W01
	.byte		        59*song038_mvl/mxv
	.byte	W02
	.byte		        60*song038_mvl/mxv
	.byte	W01
	.byte		        61*song038_mvl/mxv
	.byte	W01
	.byte		        62*song038_mvl/mxv
	.byte	W01
	.byte		        63*song038_mvl/mxv
	.byte	W01
	.byte		        64*song038_mvl/mxv
	.byte	W01
	.byte		        65*song038_mvl/mxv
	.byte	W01
	.byte		        66*song038_mvl/mxv
	.byte	W01
	.byte		        67*song038_mvl/mxv
	.byte	W02
	.byte		        68*song038_mvl/mxv
	.byte	W01
	.byte		        69*song038_mvl/mxv
	.byte	W01
	.byte		        70*song038_mvl/mxv
	.byte	W01
	.byte		        71*song038_mvl/mxv
	.byte	W01
	.byte		        72*song038_mvl/mxv
	.byte	W01
	.byte		        72*song038_mvl/mxv
	.byte	W01
	.byte		        74*song038_mvl/mxv
	.byte	W01
	.byte		        75*song038_mvl/mxv
	.byte	W02
	.byte		        76*song038_mvl/mxv
	.byte	W01
	.byte		        77*song038_mvl/mxv
	.byte	W01
	.byte		        78*song038_mvl/mxv
	.byte	W01
	.byte		        79*song038_mvl/mxv
	.byte	W01
	.byte		        80*song038_mvl/mxv
	.byte	W01
	.byte		        81*song038_mvl/mxv
	.byte	W01
	.byte		        82*song038_mvl/mxv
	.byte	W01
	.byte		        83*song038_mvl/mxv
	.byte	W02
	.byte		        84*song038_mvl/mxv
	.byte	W01
	.byte		        85*song038_mvl/mxv
	.byte	W01
	.byte		        86*song038_mvl/mxv
	.byte	W01
	.byte		        87*song038_mvl/mxv
	.byte	W01
	.byte		        88*song038_mvl/mxv
	.byte	W01
	.byte		        89*song038_mvl/mxv
	.byte	W01
	.byte		        90*song038_mvl/mxv
	.byte	W01
	.byte		        90*song038_mvl/mxv
	.byte	W02
	.byte		        92*song038_mvl/mxv
	.byte	W01
	.byte		        93*song038_mvl/mxv
	.byte	W01
	.byte		        95*song038_mvl/mxv
	.byte	W02
	.byte		        94*song038_mvl/mxv
	.byte	W02
	.byte		        93*song038_mvl/mxv
	.byte	W01
	.byte		        92*song038_mvl/mxv
	.byte	W01
	.byte		        90*song038_mvl/mxv
	.byte	W01
	.byte		        90*song038_mvl/mxv
	.byte	W02
	.byte		        89*song038_mvl/mxv
	.byte	W01
	.byte		        88*song038_mvl/mxv
	.byte	W01
	.byte		        87*song038_mvl/mxv
	.byte	W01
	.byte		        86*song038_mvl/mxv
	.byte	W02
	.byte		        85*song038_mvl/mxv
	.byte	W01
	.byte		        84*song038_mvl/mxv
	.byte	W01
	.byte		        83*song038_mvl/mxv
	.byte	W01
	.byte		        82*song038_mvl/mxv
	.byte	W02
	.byte		        81*song038_mvl/mxv
	.byte	W01
	.byte		        80*song038_mvl/mxv
	.byte	W01
	.byte		        79*song038_mvl/mxv
	.byte	W01
	.byte		        78*song038_mvl/mxv
	.byte	W02
	.byte		        77*song038_mvl/mxv
	.byte	W01
	.byte		        76*song038_mvl/mxv
	.byte	W01
	.byte		        75*song038_mvl/mxv
	.byte	W01
	.byte		        74*song038_mvl/mxv
	.byte	W02
	.byte		        72*song038_mvl/mxv
	.byte	W01
	.byte		        72*song038_mvl/mxv
	.byte	W01
	.byte		        71*song038_mvl/mxv
	.byte	W01
	.byte		        70*song038_mvl/mxv
	.byte	W02
	.byte		        69*song038_mvl/mxv
	.byte	W01
	.byte		        68*song038_mvl/mxv
	.byte	W01
	.byte		        67*song038_mvl/mxv
	.byte	W01
	.byte		        66*song038_mvl/mxv
	.byte	W02
	.byte		        65*song038_mvl/mxv
	.byte	W01
	.byte		        64*song038_mvl/mxv
	.byte	W01
	.byte		        63*song038_mvl/mxv
	.byte	W01
	.byte		        62*song038_mvl/mxv
	.byte	W02
	.byte		        61*song038_mvl/mxv
	.byte	W01
	.byte		        60*song038_mvl/mxv
	.byte	W01
	.byte		        59*song038_mvl/mxv
	.byte	W01
	.byte		        58*song038_mvl/mxv
	.byte	W02
	.byte		        57*song038_mvl/mxv
	.byte	W01
                                                
	.byte		        56*song038_mvl/mxv
	.byte		N96   , Ds3 
	.byte		N96   , An3 
	.byte	W02
	.byte		VOL   , 57*song038_mvl/mxv
	.byte	W01
	.byte		        58*song038_mvl/mxv
	.byte	W02
	.byte		        59*song038_mvl/mxv
	.byte	W01
	.byte		        60*song038_mvl/mxv
	.byte	W01
	.byte		        61*song038_mvl/mxv
	.byte	W01
	.byte		        62*song038_mvl/mxv
	.byte	W02
	.byte		        63*song038_mvl/mxv
	.byte	W01
	.byte		        64*song038_mvl/mxv
	.byte	W01
	.byte		        65*song038_mvl/mxv
	.byte	W02
	.byte		        66*song038_mvl/mxv
	.byte	W01
	.byte		        67*song038_mvl/mxv
	.byte	W01
	.byte		        68*song038_mvl/mxv
	.byte	W01
	.byte		        69*song038_mvl/mxv
	.byte	W02
	.byte		        70*song038_mvl/mxv
	.byte	W01
	.byte		        71*song038_mvl/mxv
	.byte	W01
	.byte		        72*song038_mvl/mxv
	.byte	W01
	.byte		        72*song038_mvl/mxv
	.byte	W02
	.byte		        74*song038_mvl/mxv
	.byte	W01
	.byte		        75*song038_mvl/mxv
	.byte	W01
	.byte		        76*song038_mvl/mxv
	.byte	W02
	.byte		        77*song038_mvl/mxv
	.byte	W01
	.byte		        78*song038_mvl/mxv
	.byte	W01
	.byte		        79*song038_mvl/mxv
	.byte	W01
	.byte		        80*song038_mvl/mxv
	.byte	W02
	.byte		        81*song038_mvl/mxv
	.byte	W01
	.byte		        82*song038_mvl/mxv
	.byte	W01
	.byte		        83*song038_mvl/mxv
	.byte	W01
	.byte		        84*song038_mvl/mxv
	.byte	W02
	.byte		        85*song038_mvl/mxv
	.byte	W01
	.byte		        86*song038_mvl/mxv
	.byte	W01
	.byte		        87*song038_mvl/mxv
	.byte	W02
	.byte		        88*song038_mvl/mxv
	.byte	W01
	.byte		        89*song038_mvl/mxv
	.byte	W01
	.byte		        90*song038_mvl/mxv
	.byte	W01
	.byte		        90*song038_mvl/mxv
	.byte	W02
	.byte		        92*song038_mvl/mxv
	.byte	W01
	.byte		        93*song038_mvl/mxv
	.byte	W01
	.byte		        94*song038_mvl/mxv
	.byte	W01
	.byte		        95*song038_mvl/mxv
	.byte	W01
	.byte		        94*song038_mvl/mxv
	.byte	W01
	.byte		        93*song038_mvl/mxv
	.byte	W01
	.byte		        92*song038_mvl/mxv
	.byte	W01
	.byte		        90*song038_mvl/mxv
	.byte	W01
	.byte		        90*song038_mvl/mxv
	.byte	W02
	.byte		        89*song038_mvl/mxv
	.byte	W01
	.byte		        88*song038_mvl/mxv
	.byte	W01
	.byte		        87*song038_mvl/mxv
	.byte	W01
	.byte		        86*song038_mvl/mxv
	.byte	W01
	.byte		        85*song038_mvl/mxv
	.byte	W01
	.byte		        84*song038_mvl/mxv
	.byte	W01
	.byte		        83*song038_mvl/mxv
	.byte	W01
	.byte		        82*song038_mvl/mxv
	.byte	W01
	.byte		        81*song038_mvl/mxv
	.byte	W01
	.byte		        80*song038_mvl/mxv
	.byte	W02
	.byte		        79*song038_mvl/mxv
	.byte	W01
	.byte		        78*song038_mvl/mxv
	.byte	W01
	.byte		        77*song038_mvl/mxv
	.byte	W01
	.byte		        76*song038_mvl/mxv
	.byte	W01
	.byte		        75*song038_mvl/mxv
	.byte	W01
	.byte		        74*song038_mvl/mxv
	.byte	W01
	.byte		        72*song038_mvl/mxv
	.byte	W01
	.byte		        72*song038_mvl/mxv
	.byte	W01
	.byte		        71*song038_mvl/mxv
	.byte	W01
	.byte		        70*song038_mvl/mxv
	.byte	W02
	.byte		        69*song038_mvl/mxv
	.byte	W01
	.byte		        68*song038_mvl/mxv
	.byte	W01
	.byte		        67*song038_mvl/mxv
	.byte	W01
	.byte		        66*song038_mvl/mxv
	.byte	W01
	.byte		        65*song038_mvl/mxv
	.byte	W01
	.byte		        64*song038_mvl/mxv
	.byte	W01
	.byte		        63*song038_mvl/mxv
	.byte	W01
	.byte		        62*song038_mvl/mxv
	.byte	W01
	.byte		        61*song038_mvl/mxv
	.byte	W01
	.byte		        60*song038_mvl/mxv
	.byte	W02
	.byte		        59*song038_mvl/mxv
	.byte	W01
	.byte		        58*song038_mvl/mxv
	.byte	W01
	.byte		        57*song038_mvl/mxv
	.byte	W01
	.byte		        56*song038_mvl/mxv
	.byte	W01
	.byte		        54*song038_mvl/mxv
	.byte	W02
                                                
	.byte		N84   , En3 
	.byte		N84   , As3 
	.byte	W02
	.byte		VOL   , 56*song038_mvl/mxv
	.byte	W01
	.byte		        57*song038_mvl/mxv
	.byte	W02
	.byte		        58*song038_mvl/mxv
	.byte	W02
	.byte		        59*song038_mvl/mxv
	.byte	W02
	.byte		        60*song038_mvl/mxv
	.byte	W02
	.byte		        61*song038_mvl/mxv
	.byte	W01
	.byte		        62*song038_mvl/mxv
	.byte	W02
	.byte		        63*song038_mvl/mxv
	.byte	W02
	.byte		        64*song038_mvl/mxv
	.byte	W02
	.byte		        65*song038_mvl/mxv
	.byte	W02
	.byte		        66*song038_mvl/mxv
	.byte	W01
	.byte		        67*song038_mvl/mxv
	.byte	W02
	.byte		        68*song038_mvl/mxv
	.byte	W02
	.byte		        69*song038_mvl/mxv
	.byte	W02
	.byte		        70*song038_mvl/mxv
	.byte	W02
	.byte		        71*song038_mvl/mxv
	.byte	W01
	.byte		        72*song038_mvl/mxv
	.byte	W02
	.byte		        72*song038_mvl/mxv
	.byte	W02
	.byte		        74*song038_mvl/mxv
	.byte	W02
	.byte		        75*song038_mvl/mxv
	.byte	W02
	.byte		        76*song038_mvl/mxv
	.byte	W01
	.byte		        77*song038_mvl/mxv
	.byte	W02
	.byte		        78*song038_mvl/mxv
	.byte	W02
	.byte		        79*song038_mvl/mxv
	.byte	W02
	.byte		        80*song038_mvl/mxv
	.byte	W02
	.byte		        81*song038_mvl/mxv
	.byte	W01
	.byte		        82*song038_mvl/mxv
	.byte	W02
	.byte		        83*song038_mvl/mxv
	.byte	W02
	.byte		        84*song038_mvl/mxv
	.byte	W02
	.byte		        85*song038_mvl/mxv
	.byte	W02
	.byte		        86*song038_mvl/mxv
	.byte	W01
	.byte		        87*song038_mvl/mxv
	.byte	W02
	.byte		        88*song038_mvl/mxv
	.byte	W02
	.byte		        89*song038_mvl/mxv
	.byte	W02
	.byte		        90*song038_mvl/mxv
	.byte	W02
	.byte		        90*song038_mvl/mxv
	.byte	W01
	.byte		        92*song038_mvl/mxv
	.byte	W02
	.byte		        93*song038_mvl/mxv
	.byte	W02
	.byte		        94*song038_mvl/mxv
	.byte	W01
	.byte		        95*song038_mvl/mxv
	.byte	W24
	.byte	W01
                                                
	.byte	W96
                                                
	.byte	W66
	.byte	W01
	.byte	FINE

                                                          

song038_10:
	.byte	KEYSH , song038_key+0
                                                
	.byte		VOICE , 57
	.byte		VOL   , 127*song038_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 33
	.byte		LFOS  , 65
	.byte		LFODL , 0
	.byte		MOD   , 0
	.byte		MODT  , 0
	.byte	W96
                                                
	.byte	W96
                                                
	.byte	W80
	.byte	W01
	.byte		BEND  , c_v+63
	.byte	W01
	.byte		        c_v+59
	.byte	W02
	.byte		        c_v+54
	.byte		N28   , Gn2 , v052
	.byte	W01
	.byte		BEND  , c_v+50
	.byte	W02
	.byte		        c_v+45
	.byte	W01
	.byte		        c_v+40
	.byte	W02
	.byte		        c_v+36
	.byte	W01
	.byte		        c_v+31
	.byte	W02
	.byte		        c_v+26
	.byte	W01
	.byte		        c_v+22
	.byte	W02
                                                
	.byte		        c_v+17
	.byte	W01
	.byte		        c_v+12
	.byte	W02
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v+3
	.byte	W02
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-6
	.byte	W02
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-15
	.byte	W02
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-25
	.byte	W02
	.byte		        c_v-29
	.byte	W01
	.byte		        c_v-34
	.byte	W02
	.byte		        c_v-39
	.byte	W01
	.byte		        c_v-43
	.byte	W02
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-53
	.byte	W02
	.byte		        c_v-57
	.byte	W01
	.byte		        c_v-62
	.byte	W01
	.byte		        c_v-64
	.byte	W06
	.byte		        c_v-64
	.byte	W16
	.byte		MOD   , 59
	.byte		BEND  , c_v+0
	.byte	W03
	.byte		VOL   , 0*song038_mvl/mxv
	.byte	W32
	.byte		        0*song038_mvl/mxv
	.byte	W02
	.byte		        0*song038_mvl/mxv
	.byte	W01
	.byte		        2*song038_mvl/mxv
	.byte	W01
	.byte		        3*song038_mvl/mxv
	.byte	W01
	.byte		        4*song038_mvl/mxv
	.byte		TIE   , Bn2 , v112
	.byte	W02
	.byte		VOL   , 5*song038_mvl/mxv
	.byte	W01
	.byte		        6*song038_mvl/mxv
	.byte	W01
	.byte		        7*song038_mvl/mxv
	.byte	W01
	.byte		        8*song038_mvl/mxv
	.byte	W01
	.byte		        9*song038_mvl/mxv
	.byte	W01
	.byte		        10*song038_mvl/mxv
	.byte	W01
                                                
	.byte		        11*song038_mvl/mxv
	.byte	W01
	.byte		        12*song038_mvl/mxv
	.byte	W01
	.byte		        13*song038_mvl/mxv
	.byte	W01
	.byte		        14*song038_mvl/mxv
	.byte	W02
	.byte		        15*song038_mvl/mxv
	.byte	W01
	.byte		        16*song038_mvl/mxv
	.byte	W01
	.byte		        17*song038_mvl/mxv
	.byte	W01
	.byte		        18*song038_mvl/mxv
	.byte	W01
	.byte		        18*song038_mvl/mxv
	.byte	W01
	.byte		        20*song038_mvl/mxv
	.byte	W01
	.byte		        21*song038_mvl/mxv
	.byte	W01
	.byte		        22*song038_mvl/mxv
	.byte	W01
	.byte		        23*song038_mvl/mxv
	.byte	W01
	.byte		        24*song038_mvl/mxv
	.byte	W02
	.byte		        25*song038_mvl/mxv
	.byte	W01
	.byte		        26*song038_mvl/mxv
	.byte	W01
	.byte		        27*song038_mvl/mxv
	.byte	W01
	.byte		        28*song038_mvl/mxv
	.byte	W01
	.byte		        29*song038_mvl/mxv
	.byte	W01
	.byte		        30*song038_mvl/mxv
	.byte	W01
	.byte		        31*song038_mvl/mxv
	.byte	W01
	.byte		        32*song038_mvl/mxv
	.byte	W01
	.byte		        33*song038_mvl/mxv
	.byte	W01
	.byte		        34*song038_mvl/mxv
	.byte	W02
	.byte		        35*song038_mvl/mxv
	.byte	W01
	.byte		        36*song038_mvl/mxv
	.byte	W01
	.byte		        36*song038_mvl/mxv
	.byte	W01
	.byte		        38*song038_mvl/mxv
	.byte	W01
	.byte		        39*song038_mvl/mxv
	.byte	W01
	.byte		        40*song038_mvl/mxv
	.byte	W01
	.byte		        41*song038_mvl/mxv
	.byte	W01
	.byte		        42*song038_mvl/mxv
	.byte	W01
	.byte		        43*song038_mvl/mxv
	.byte	W01
	.byte		        44*song038_mvl/mxv
	.byte	W02
	.byte		        45*song038_mvl/mxv
	.byte	W01
	.byte		        46*song038_mvl/mxv
	.byte	W01
	.byte		        47*song038_mvl/mxv
	.byte	W01
	.byte		        48*song038_mvl/mxv
	.byte	W01
	.byte		        49*song038_mvl/mxv
	.byte	W01
	.byte		        50*song038_mvl/mxv
	.byte	W01
	.byte		        51*song038_mvl/mxv
	.byte	W01
	.byte		        52*song038_mvl/mxv
	.byte	W01
	.byte		        53*song038_mvl/mxv
	.byte	W01
	.byte		        54*song038_mvl/mxv
	.byte	W02
	.byte		        54*song038_mvl/mxv
	.byte	W01
	.byte		        56*song038_mvl/mxv
	.byte	W01
	.byte		        57*song038_mvl/mxv
	.byte	W01
	.byte		        58*song038_mvl/mxv
	.byte	W01
	.byte		        59*song038_mvl/mxv
	.byte	W01
	.byte		        60*song038_mvl/mxv
	.byte	W01
	.byte		        61*song038_mvl/mxv
	.byte	W01
	.byte		        62*song038_mvl/mxv
	.byte	W01
	.byte		        63*song038_mvl/mxv
	.byte	W01
	.byte		        64*song038_mvl/mxv
	.byte	W02
	.byte		        65*song038_mvl/mxv
	.byte	W01
	.byte		        66*song038_mvl/mxv
	.byte	W01
	.byte		        67*song038_mvl/mxv
	.byte	W01
	.byte		        68*song038_mvl/mxv
	.byte	W01
	.byte		        69*song038_mvl/mxv
	.byte	W01
	.byte		        70*song038_mvl/mxv
	.byte	W01
	.byte		        71*song038_mvl/mxv
	.byte	W01
	.byte		        72*song038_mvl/mxv
	.byte	W01
	.byte		        72*song038_mvl/mxv
	.byte	W01
	.byte		        74*song038_mvl/mxv
	.byte	W02
	.byte		        76*song038_mvl/mxv
	.byte	W24
	.byte	W01
                                                
	.byte	W22
	.byte		        76*song038_mvl/mxv
	.byte	W01
	.byte		        74*song038_mvl/mxv
	.byte	W01
	.byte		        72*song038_mvl/mxv
	.byte	W01
	.byte		        70*song038_mvl/mxv
	.byte	W01
	.byte		        68*song038_mvl/mxv
	.byte	W01
	.byte		        66*song038_mvl/mxv
	.byte	W01
	.byte		        65*song038_mvl/mxv
	.byte	W01
	.byte		        63*song038_mvl/mxv
	.byte	W01
	.byte		        61*song038_mvl/mxv
	.byte	W01
	.byte		        59*song038_mvl/mxv
	.byte	W01
	.byte		        57*song038_mvl/mxv
	.byte	W01
	.byte		        54*song038_mvl/mxv
	.byte	W01
	.byte		        53*song038_mvl/mxv
	.byte	W01
	.byte		        51*song038_mvl/mxv
	.byte	W01
	.byte		        50*song038_mvl/mxv
	.byte	W01
	.byte		        48*song038_mvl/mxv
	.byte	W01
	.byte		        47*song038_mvl/mxv
	.byte	W01
	.byte		        45*song038_mvl/mxv
	.byte	W01
	.byte		        43*song038_mvl/mxv
	.byte	W01
	.byte		        41*song038_mvl/mxv
	.byte	W01
	.byte		        39*song038_mvl/mxv
	.byte	W01
	.byte		        36*song038_mvl/mxv
	.byte	W01
	.byte		        35*song038_mvl/mxv
	.byte	W01
	.byte		        33*song038_mvl/mxv
	.byte	W01
	.byte		        31*song038_mvl/mxv
	.byte	W01
	.byte		        29*song038_mvl/mxv
	.byte	W01
	.byte		        27*song038_mvl/mxv
	.byte	W01
	.byte		        26*song038_mvl/mxv
	.byte	W01
	.byte		        24*song038_mvl/mxv
	.byte	W01
	.byte		        23*song038_mvl/mxv
	.byte	W01
	.byte		        21*song038_mvl/mxv
	.byte	W01
	.byte		        18*song038_mvl/mxv
	.byte	W01
	.byte		        17*song038_mvl/mxv
	.byte	W01
	.byte		        15*song038_mvl/mxv
	.byte	W01
	.byte		        13*song038_mvl/mxv
	.byte	W01
	.byte		        11*song038_mvl/mxv
	.byte	W01
	.byte		        9*song038_mvl/mxv
	.byte	W01
	.byte		        8*song038_mvl/mxv
	.byte	W01
	.byte		        6*song038_mvl/mxv
	.byte	W01
	.byte		        4*song038_mvl/mxv
	.byte	W01
	.byte		        2*song038_mvl/mxv
	.byte	W01
	.byte		        0*song038_mvl/mxv
	.byte	W13
	.byte		EOT   
	.byte	FINE

                                                        
	mAlignWord

C_DECL(song038):
	.byte	10	         
	.byte	0	         
	.byte	song038_pri	          
	.byte	song038_rev	        

mAlignWord
	mPtr	song038_grp

	mPtr	song038_1
	mPtr	song038_2
	mPtr	song038_3
	mPtr	song038_4
	mPtr	song038_5
	mPtr	song038_6
	mPtr	song038_7
	mPtr	song038_8
	mPtr	song038_9
	mPtr	song038_10

	.end
