??       ?     ?   ?  l      0   ~  1  p  ?   ?  !   F  ?   I       a   0  ?     ?     ?     ?   ,  ?     %   %  C   ,  i   -  ?      ?   &  ?          ,   L  L   J  ?   -  ?   5     (  H   L  q     ?   D  ?   ?     B  ]   D  ?     ?   I     =  O   J  ?   =  ?   8     9  O   C  ?   F  ?   (     @  =   B  ~   M  ?   K     8  [   ,  ?   J  ?   9     /  F   0  v   K  ?   $  ?   G     )  `  V  ?   9  ?        G  :   A  ?   <  ?   .     C  0   ,  t   ?  ?   <  ?   E      B   d   %   ?   5   ?   F  !   .  !J   >  !y   >  !?   A  !?   8  "9   3  "r   #  "?   /  "?   G  "?   /  #B   4  #r   ?  #?     $?   !  $?     $?   !  $?     %   I  %-   &  %w     %?     %?   I  %?   1  &   &  &Q     &x     &?     &?     &?   $  &?     '     '     '2     'C     'L     'f     '?   #  '?     '?   '  '?   ?  '?   =  (?   '  (?     )   ?  )     *   %  *     *?     *T     *f     *x     *?   "  *?   4  *?     *?   .  +   S  +;     +?     +?   1  +?   "  +?   (  ,   *  ,=     ,h   )  ,{   !  ,?   '  ,?   )  ,?     -     -0      -@      -a     -?   	  -?  A  -?     .?     .?     /      /   1  /'   2  /Y   0  /?     /?   #  /?     /?   )  0   1  0B   -  0t     0?     0?     0?     0?     0?   "  1   %  1.     1T     1b     1n     1?   	  1?     1?     1?     1?     1?     1?   &  1?   !  2     2;     2W   
  2k     2v  G  2?   q  3?  ?  4=   ?  5?   J  6?   L  6?   !  7!   2  7C     7v     7?     7?   .  7?     7?   .  8   .  8?   1  8n   $  8?   &  8?     8?     9   Q  9"   H  9t   #  9?   @  9?   (  :"   T  :K     :?   G  :?   O  ;   J  ;Q   N  ;?   #  ;?   G  <   M  <W   R  <?   K  <?   B  =D   >  =?   I  =?   M  >   *  >^   M  >?   F  >?   K  ?   a  ?j   9  ??   9  @   F  @@   J  @?   :  @?   /  A   L  A=   )  A?   J  A?   &  A?  ?  B&   E  C?     C?   J  D   ?  Db   9  D?   1  D?   O  E   4  E^   ?  E?   >  E?   C  F   D  FV   &  F?   6  F?   >  F?   5  G8   A  Gn   I  G?   =  G?   :  H8   =  Hs   !  H?   5  H?   K  I	   3  IU   A  I?   ?  I?   %  J?   #  J?      K   %  K$   "  KJ   ]  Km   )  K?     K?      L   Q  L5   @  L?   .  L?     L?     M     M,     MH   %  Ma     M?     M?     M?     M?   "  M?   "  M?     N   (  N-     NV   <  Np   ?  N?   I  OP   5  O?     O?   ?  O?     P?   &  P?     P?     Q     Q!     Q4   
  QG      QR   6  Qs     Q?   .  Q?   Q  Q?     RH     R`   0  Rx   (  R?   -  R?     S      S   )  S/   '  SY   ,  S?   -  S?     S?     S?   )  T      T0     TQ     To  E  Tw     U?     U?     U?     U?   -  V   /  V/   *  V_     V?   %  V?     V?   -  V?   5  W   0  WM     W~     W?     W?     W?     W?   #  W?   *  X     X<     XH     X\     Xo     X~     X?     X?     X?     X?     X?   '  X?   #  X?     Y!     Y=     Y\     Yh      r   w   ?       +          l            ~   9   _   }       ?   S           |   q   ?   h   ?      {       N   Y   ?   ?      .   M   v   =   a   ?   ?       ?       ?   ?      ?      <   #   @   ?   ?       5   [       U                  p   n   ]   ?   C   F   ?      (   ?       4       x   6      &   E       !   ?       ?                   ?   *       V   ?   ?   ?   ?   ?   ?               ?   W   ?       A   1       L   /   H   7       \   g       D   u   c   R   G       ?       >   ?          ?   ?   d                  Z   O               ?   ?               ?   X   T   3   K   ?   `   ?   o   I   ?   ?          m          ?      $   J       k       ?      ,   e      
   ?   y       ?      ?   z               ^       ?   ?   ?   ?   "       -                 s       0   b   i   P      Q      %   f                :   ?           2   )   ?   	   8   '   ?   ?   ?   t          ?   ;      j              B   ?       Either GFMT or LFMT may contain:
    %%  %
    %c'C'  the single character C
    %c'\OOO'  the character with octal code OOO   GFMT may contain:
    %<  lines from FILE1
    %>  lines from FILE2
    %=  lines common to FILE1 and FILE2
    %[-][WIDTH][.[PREC]]{doxX}LETTER  printf-style spec for LETTER
      LETTERs are as follows for new group, lower case for old group:
        F  first line number
        L  last line number
        N  number of lines = L-F+1
        E  F-1
        M  L+1   LFMT may contain:
    %L  contents of line
    %l  contents of line, excluding any trailing newline
    %[-][WIDTH][.[PREC]]{doxX}n  printf-style spec for input line number   LTYPE is `old', `new', or `unchanged'.  GTYPE is LTYPE or `changed'.   Skip the first SKIP1 bytes of FILE1 and the first SKIP2 bytes of FILE2. %s %s differ: byte %s, line %s
 %s %s differ: byte %s, line %s is %3o %s %3o %s
 %s: diff failed:  %s: illegal option -- %c
 %s: invalid option -- %c
 %s: option `%c%s' doesn't allow an argument
 %s: option `%s' is ambiguous
 %s: option `%s' requires an argument
 %s: option `--%s' doesn't allow an argument
 %s: option `-W %s' doesn't allow an argument
 %s: option `-W %s' is ambiguous
 %s: option requires an argument -- %c
 %s: unrecognized option `%c%s'
 %s: unrecognized option `--%s'
 --GTYPE-group-format=GFMT  Similar, but format GTYPE input groups with GFMT. --LTYPE-line-format=LFMT  Similar, but format LTYPE input lines with LFMT. --binary  Read and write data in binary mode. --diff-program=PROGRAM  Use PROGRAM to compare files. --from-file and --to-file both specified --from-file=FILE1  Compare FILE1 to all operands.  FILE1 can be a directory. --help  Output this help. --horizon-lines=NUM  Keep NUM lines of the common prefix and suffix. --ignore-file-name-case  Ignore case when comparing file names. --line-format=LFMT  Similar, but format all input lines with LFMT. --no-ignore-file-name-case  Consider case when comparing file names. --normal  Output a normal diff. --speed-large-files  Assume large files and many scattered small changes. --strip-trailing-cr  Strip trailing carriage return on input. --to-file=FILE2  Compare all operands to FILE2.  FILE2 can be a directory. --unidirectional-new-file  Treat absent first files as empty. -3  --easy-only  Output unmerged nonoverlapping changes. -A  --show-all  Output all changes, bracketing conflicts. -B  --ignore-blank-lines  Ignore changes whose lines are all blank. -D NAME  --ifdef=NAME  Output merged file to show `#ifdef NAME' diffs. -D option not supported with directories -E  --ignore-tab-expansion  Ignore changes due to tab expansion. -E  --show-overlap  Output unmerged changes, bracketing conflicts. -H  --speed-large-files  Assume large files and many scattered small changes. -I RE  --ignore-matching-lines=RE  Ignore changes whose lines all match RE. -L LABEL  --label=LABEL  Use LABEL instead of file name. -N  --new-file  Treat absent files as empty. -S FILE  --starting-file=FILE  Start with FILE when comparing directories. -T  --initial-tab  Make tabs line up by prepending a tab. -W  --ignore-all-space  Ignore all white space. -X  Output overlapping changes, bracketing them. -X FILE  --exclude-from=FILE  Exclude files that match any pattern in FILE. -a  --text  Treat all files as text. -b  --ignore-space-change  Ignore changes in the amount of white space. -b  --print-bytes  Print differing bytes. -c  -C NUM  --context[=NUM]  Output NUM (default 3) lines of copied context.
-u  -U NUM  --unified[=NUM]  Output NUM (default 3) lines of unified context.
  --label LABEL  Use LABEL instead of file name.
  -p  --show-c-function  Show which C function each change is in.
  -F RE  --show-function-line=RE  Show the most recent line matching RE. -d  --minimal  Try hard to find a smaller set of changes. -e  --ed  Output an ed script. -e  --ed  Output unmerged changes from OLDFILE to YOURFILE into MYFILE. -i  --ignore-case  Consider upper- and lower-case to be the same. -i  --ignore-case  Ignore case differences in file contents. -i  Append `w' and `q' commands to ed scripts. -i SKIP  --ignore-initial=SKIP  Skip the first SKIP bytes of input. -i SKIP1:SKIP2  --ignore-initial=SKIP1:SKIP2 -l  --left-column  Output only the left column of common lines. -l  --paginate  Pass the output through `pr' to paginate it. -l  --verbose  Output byte numbers and values of all differing bytes. -m  --merge  Output merged file instead of ed script (default -A). -n  --rcs  Output an RCS format diff. -n LIMIT  --bytes=LIMIT  Compare at most LIMIT bytes. -o FILE  --output=FILE  Operate interactively, sending output to FILE. -q  --brief  Output only whether files differ. -r  --recursive  Recursively compare any subdirectories found. -s  --quiet  --silent  Output nothing; yield exit status only. -s  --report-identical-files  Report when two files are the same. -s  --suppress-common-lines  Do not output common lines. -t  --expand-tabs  Expand tabs to spaces in output. -v  --version  Output version info. -w  --ignore-all-space  Ignore all white space. -w NUM  --width=NUM  Output at most NUM (default 130) columns per line. -x  --overlap-only  Output overlapping changes. -x PAT  --exclude=PAT  Exclude files that match PAT. -y  --side-by-side  Output in two columns.
  -W NUM  --width=NUM  Output at most NUM (default 130) print columns.
  --left-column  Output only the left column of common lines.
  --suppress-common-lines  Do not output common lines. Binary files %s and %s differ
 Common subdirectories: %s and %s
 Compare files line by line. Compare three files line by line. Compare two files byte by byte. FILES are `FILE1 FILE2' or `DIR1 DIR2' or `DIR FILE...' or `FILE... DIR'. File %s is a %s while file %s is a %s
 Files %s and %s are identical
 Files %s and %s differ
 If --from-file or --to-file is given, there are no restrictions on FILES. If a FILE is `-' or missing, read standard input. If a FILE is `-', read standard input. Invalid back reference Invalid character class name Invalid collation character Invalid content of \{\} Invalid preceding regular expression Invalid range end Invalid regular expression Memory exhausted No match No newline at end of file No previous regular expression Only in %s: %s
 Premature end of regular expression Regular expression too big Report bugs to <bug-gnu-utils@gnu.org>. SKIP values may be followed by the following multiplicative suffixes:
kB 1000, K 1024, MB 1,000,000, M 1,048,576,
GB 1,000,000,000, G 1,073,741,824, and so on for T, P, E, Z, Y. SKIP1 and SKIP2 are the number of bytes to skip in each file. Side-by-side merge of file differences. Success This program comes with NO WARRANTY, to the extent permitted by law.
You may redistribute copies of this program
under the terms of the GNU General Public License.
For more information about these matters, see the file named COPYING. Trailing backslash Try `%s --help' for more information. Unknown system error Unmatched ( or \( Unmatched ) or \) Unmatched [ or [^ Unmatched \{ Usage: %s [OPTION]... FILE1 FILE2
 Usage: %s [OPTION]... FILE1 [FILE2 [SKIP1 [SKIP2]]]
 Usage: %s [OPTION]... FILES
 Usage: %s [OPTION]... MYFILE OLDFILE YOURFILE
 Written by Paul Eggert, Mike Haertel, David Hayes,
Richard Stallman, and Len Tower. Written by Randy Smith. Written by Thomas Lord. Written by Torbjorn Granlund and David MacKenzie. `-%ld' option is obsolete; omit it `-%ld' option is obsolete; use `-%c %ld' `-' specified for more than one input file block special file both files to be compared are directories cannot compare `-' to a directory cannot compare file names `%s' and `%s' cannot interactively merge standard input character special file cmp: EOF on %s
 conflicting %s option value `%s' conflicting output style options conflicting width options directory ed:	Edit then use both versions, each decorated with a header.
eb:	Edit then use both versions.
el:	Edit then use the left version.
er:	Edit then use the right version.
e:	Edit a new version.
l:	Use the left version.
r:	Use the right version.
s:	Silently include common lines.
v:	Verbosely include common lines.
q:	Quit.
 extra operand `%s' fifo incompatible options input file shrank internal error: invalid diff type in process_diff internal error: invalid diff type passed to output internal error: screwup in format of diff blocks invalid --bytes value `%s' invalid --ignore-initial value `%s' invalid context length `%s' invalid diff format; incomplete last line invalid diff format; incorrect leading line chars invalid diff format; invalid change separator invalid horizon length `%s' invalid width `%s' memory exhausted message queue missing operand after `%s' options -l and -s are incompatible pagination not supported on this host program error read failed regular empty file regular file semaphore shared memory object socket stack overflow standard output subsidiary program `%s' failed subsidiary program `%s' not executable subsidiary program `%s' not found too many file label options typed memory object weird file write failed Project-Id-Version: diffutils 2.7.10
POT-Creation-Date: 2002-04-05 14:10-0800
PO-Revision-Date: 2002-03-12 14:51GMT
Last-Translator: Claus Hindsgaul <claus_h@image.dk>
Language-Team: Danish <dansk@klid.dk>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8bit
X-Generator: KBabel 0.9.5
   Enten kan GFMT eller LFMT indeholde:
    %% %
    %c'T'  tegnet T alene
    %c'\000'  tegnet med oktal kode 000   GFMT m? indeholde:
    %<  linjer fra FIL1
    %>  linjer fra FIL2
    %=  linjer, der er f?lles mellem FIL1 og FIL2
    %[-][BREDDE][.[PR?C]]{doxX}BOGSTAV  printf-type specifikation for BOGSTAV
      BOGSAV er som nedenfor for en ny gruppe, sm? bogstaver for gammel gruppe:
        F  f?rste linjenummer
        L  sidste linjenummer
        N  antal linjer = L-F+1
        E  F-1
        M  L+1   LFMT m? indeholde:
    %L  indhold af linje
    %l  indhold af linje, undtagen eventuel f?lgende linjeskift
    %[-][BREDDE][.[PR?C]]{doxX}n  printf-stil angivelse af inddata linjenummer   LTYPE er 'gammel', 'ny' eller 'u?ndret'.  GTYPE er LTYPE eller '?ndret'.   Overspring de f?rste SPRING1 byte i FIL1 og de f?rste SPRING2 byte i FIL2. %s %s afviger: byte %s, linje %s
 %s %s afviger: tegn %s, linje %s er %3o %s %3o %s
 %s: diff fejlede:  %s: ugyldigt tilvalg -- %c
 %s: ugyldigt tilvalg -- %c
 %s: tilvalg '%c%s' tillader ikke et parameter
 %s: tilvalg '%s' er flertydigt
 %s: tilvalg '--%s' tillader ikke et parameter
 %s: tilvalg '--%s' tillader ikke et parameter
 %s: tilvalget '-W %s' tillader ikke et parameter
 %s: tilvalget '-W %s' er flertydigt
 %s: tilvalg kr?ver et parameter -- %c
 %s: ukendt tilvalg '%c%s'
 %s: ukendt tilvalg '--%s'
 --GTYPE-group-format=GFMT  Det samme, men format?r GTYPE inddata grupper med GFMT --LTYPE-line-format=LFMT  Det samme, men format?r LTYPE inddata med LFMT --binary  L?s og skriv data bin?rt. --diff-program=PROGRAM  Brug PROGRAM til at sammenligne filerne. b?de --from-file og --to-file er angivet --from-file=FIL1  Sammenlign FIL1 med alle operanter.  FIL1 m? godt v?re et katalog. --help  Vis denne hj?lp. --horizon-lines=ANTAL  Behold ANTAL linjer af f?lles pr?fix og suffiks. --ignore-file-name-case  Ignor?r versalforskelle ved sammenligning af filnavne. --line-format=LFMT  Det samme, men format?r alle indl?ste linjer med LFMT. --no-ignore-file-name-case  Bem?rk versalforskelle, n?r filnavne sammenlignes. --normal  Udl?s en almindelig diff. --speed-large-files  Antag store filer og mange spredte, sm? ?ndringer. --strip-trailing-cr  Fjern afsluttende vognretur (carriage return) i inddata. --to-file=FIL1  Sammenlign alle operanter med FIL2.  FIL2 m? godt v?re et katalog. --unidirectional-new-file  Behandl f?rste manglende filer som var de tomme. -3  --easy-only  Udl?s ikke-flettede, ikke-overlappende ?ndringer. -A  --show-all  Udl?s alle ?ndringer, konflikter i paranteser. -B  --ignore-blank-lines  Ignor?r ?ndringer med udelukkende tomme linjer. -D NAVN  --ifdef=NAVN  Udl?s flettet fil for at vise '#ifdef NAVN' ?ndringer. -D tilvalg underst?ttes ikke for kataloger -E  --ignore-tab-expansion  Ignore ?ndringer, der skyldes tabulatoroms?tning. -E  --show-overlap  Udl?s uflettede ?ndringer, konflikter i paranteser -H  --speed-large-files  Antag store filer og mange spredte, sm? ?ndringer. -I M?NSTER  --ignore-matching-lines=M?NSTER  Ignor?r ?ndringer, hvis linjer alle matcher M?NSTER. -L M?RKE  --label=M?RKE  Brug M?RKE i stedet for filnavn. -N  --new-file  Behandl manglende filer som var de tomme. -S FIL  --starting-file=FIL  Star med FIL, n?r kataloger sammenlignes. -T --initial-tab  F? tabulatorer p? linje ved at forudstille en tabulator. -W  --ignore-all-space  Ignorer alle mellemrumskarakterer. -X  Udl?s overlappende ?ndringer, i paranteser. -X FIL  --exclude-from=FIL  Udelad filer, der matcher ethvert m?nster i FIL. -a  --text  Behandl alle filer som tekst. -b  --ignore-space-change  Ignor?r ?ndringer i antallet af mellemrumstegn. -b  --print-byte   Vis afvigende byte. -c  -C ANTAL  --context[=ANTAL]  Udl?s ANTAL (standard 3) linjer af kopieret kontekst.
-u  -U ANTAL  --unified[=ANTAL]  Udl?s ANTAL (standard 3) linjer af unified kontekst.
  -L M?RKE  --label M?RKE  Brug M?RKE i stedet for filnavn.
  -p --show-c-function  Vis hvilken C funktion hver ?ndring er i.
  -F M?NSTER  --show-function-line=M?NSTER  Vis den sidste foreg?ende linje, der matcher M?NSTER. -d  --minimal  Grundigt fors?g p? at finde et mindre antal ?ndringer. -e  --ed  Udl?s et ed skript. -e  --ed  Udl?s uflettede ?ndringer mellem GAMMELFIL og DINFIL til MINFIL. -e  --ignore-case  Anse store og sm? bogstaver for at v?re ens. -i  --ignore-case  Ignor?r versalforskelle i filindholdet -i  Tilf?j 'w' og 'q'-kommandoer til ed skripter. -i SPRING --ignore-initial=SPRING   Overspring de f?rste SPRING byte i inddata. -i SPRING1:SPRING2  --ignore-initial=SPRING1:SPRING2 -l  --left-column  Vis kun venstre kolonne af identiske linjer. -l  --paginate  Led uddata gennem 'pr' for at sideinddele det. -l  --verbose  Vis antal byte og v?rdierne for alle afvigende byte. -m  --merge  Udl?s flettet fil i stedet for ed skript (standard -A). -n  --rcs  Udl?s en diff i RCS-format. -n GR?NSE --bytes=GR?NSE Sammenlign h?jst GR?NSE byte. -o FIL  --output=FIL  Arbejd interaktivt, send uddata til FIL. -q  --brief  Unders?g kun om filerne er ens eller ej. -r  --recursive  Sammenlign alle fundne underkataloger rekursivt. -s  --quiet  --silent  Ingen udl?sning; s?t kun en afslutnings-slut-kode. -s  --report-identical-files  Rapport?r hvis to filer er ens. -s  --suppress-common-lines  Udl?s ingen identiske linjer. -t  --expand-tabs  Lav tabulatorer om til mellemrum i output. -v  --version  Vis versions-info. -w  --ignore-all-space  Ignor?r alle mellemrums-tegn. -w ANTAL  --width=ANTAL  Udl?s h?jst ANTAL (standard 130) s?jler per linje. -x  --overlap-only  Vis kun overlappende ?ndringer. -x M?NSTER  --exclude=M?NSTER  Udelad filer, det matcher M?NSTER. -y  --side-by-side  Udl?s i to kolonner.
  -W ANTAL  --width=ANTAL  Udl?s h?jst ANTAL (standard 130) skrifts?jler.
  --left-column  Vis kun venstre kolonne af identiske linjer.
  --suppress-common-lines  Udl?s ikke sammenfaldende linjer. Bin?re filer %s og %s er forskellige
 Identiske underkataloger: %s og %s
 Sammenlign filer linje for linje Sammenlign tre filer linje for linje. Sammenlign to filer byte for byte. FILER er 'FIL1 FIL2' eller 'KATALOG1 KATALOG2' eller 'KATALOG FIL...' eller 'FIL... KATALOG'. Filen %s er en %s mens filen %s er en %s
 Filerne %s og %s er identiske
 Filerne %s og %s er forskellige
 hvis --from-file eller --to-file er angivet, er der ingen restriktioner p? FILER. S?fremt en FIL er '_' eller mangler, l?ses fra standard inddata. S?fremt en FIL er '-', l?ses fra standard-ind. Ugyldig bagud-reference Ugyldigt navn p? tegn-klasse Ugyldig sammenlignings-tegn Ugyldigt indhold af \{\} Ugyldigt foranstillet regul?rt udtryk Ugyldig omr?de-afslutning Ugyldigt regul?rt udtryk Hukommelse opbrugt Ingen match Intet linjeskift ved filafslutning Intet foranstillet regul?rt udtryk Kun i %s: %s
 For tidlig afslutning p? regul?rt udtryk For stort regul?rt udtryk Raport?r programfejl p? engelsk til <bug-gnu-utils@gnu.org>. SPRING-v?rdier kan efterf?lges af f?lgende enheder:
kB 1000, K 1024, MB 1,000,000, M 1,048,576,
GB 1,000,000,000, G 1,073,741,824, og s? videre for T, P, E, Z, Y. SPRING1 og SPRING2 er antallet af byte, der skal overspringes i hver fil. Ved-siden-af-hinanden-sammenfletning af filforskelle. Succes Dette program kommer HELT UDEN GARANTI i den udstr?kning, loven tillader det.
Du m? videredistribuere kopier af dette program
under betingelserne i GNU General Public License (GPL).
Se filen COPYING for flere oplysninger om dette. Efterstillet backslash Pr?v '%s --help' for mere information. Ukendt systemfejl Uparret ( eller \( Uparret ) eller \) Uparret [ eller [^ Uparret \{ Brug: %s [TILVALG]... FIL1 FIL2
 Brug: %s [TILVALG]... FIL1 [FIL2 [SPRING1 [SPRING2]]]
 Brug: %s [TILVALG]... FILER
 Brug: %s [TILVALG]... MINFIL GAMMELFIL DINFIL
 Skrevet af Paul Eggert, Mike Haertel, David Hayes,
Richard Stallman og Len Tower. Skrevet af Randy Smith. Skrevet af Thomas Lord. Skrevet af Torbjorn Granlund og David MacKenzie. Tilvalget '-%ld' er for?ldet; udelad det Tilvalget '-%ld' er for?ldet; benyt '-%c %ld' '-' angiver mere en ?n ind-fil blok-specialfil begge filer der sammenlignes er kataloger kan ikke sammenligne '-' med et katalog kan ikke sammenligne filnavnene '%s' og '%s' kan ikke indflette standard input interaktivt tegn-specialfil cmp: filafslutning p? %s
 modstridende v?rdi for %s-tilvalget: '%s' modstridende valg af uddata-stil modstridende breddeangivelser katalog ed:	Redig?r og brug s? begge udgaver, hver udstyret med et hoved.
eb:	Redig?r og brug s? begge udgaver.
el:	Redig?r og brug s? venstre udgave.
er:	Redig?r og brug s? h?jre udgave.
e:	Redig?r en ny udgave.
l:	Brug venstre udgave.
r:	Brug h?jre udgave.
s:	Medtag tavst f?lles linjer.
v:	Medtag og vis f?lles linjer.
q:	Afslut.
 ekstra operant '%s' fifo inkompatible tilvalg ind-fil formindskedes intern fejl: ugyldig diff type i process_diff intern fejl: ugyldig diff type sendt til uddata intern fejl: rod i formatet p? diff blokke ugyldig '--bytes'-v?rdi `%s' ugyldig '--ignore-initial'-v?rdi `%s' ugyldig indholdsl?ngde '%s' ugyldigt diff format; uafsluttet sidste linje ugyldigt diff format; forkerte linje-begyndelses-tegn ugyldigt diff format; ugyldig ?ndrings-separator ugyldig horisont-l?ngde '%s' ugyldig bredde '%s' hukommelse opbrugt meddelelsesk? manglende operant efter '%s' tilvalgene -l og -s er inkompatible paginering underst?ttes ikke af denne v?rt programfejl l?sning mislykkedes almindelig tom fil almindelig fil signal delt hukommelses-objekt stik stakoverl?b standard-ud hj?lpeprogram '%s' fejlede hj?lpeprogram '%s' er ikke eksekverbart hj?lpeprogram '%s' blev ikke fundet for mange fil-m?rke tilvalg typeangivet hukommelses-objekt mystisk fil skrivning mislykkedes 