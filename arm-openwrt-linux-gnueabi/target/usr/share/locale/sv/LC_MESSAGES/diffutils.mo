??       ?     ?   ?  l      0   ~  1  p  ?   ?  !   F  ?   I       a   0  ?     ?     ?     ?   ,  ?     %   %  C   ,  i   -  ?      ?   &  ?          ,   L  L   J  ?   -  ?   5     (  H   L  q     ?   D  ?   ?     B  ]   D  ?     ?   I     =  O   J  ?   =  ?   8     9  O   C  ?   F  ?   (     @  =   B  ~   M  ?   K     8  [   ,  ?   J  ?   9     /  F   0  v   K  ?   $  ?   G     )  `  V  ?   9  ?        G  :   A  ?   <  ?   .     C  0   ,  t   ?  ?   <  ?   E      B   d   %   ?   5   ?   F  !   .  !J   >  !y   >  !?   A  !?   8  "9   3  "r   #  "?   /  "?   G  "?   /  #B   4  #r   ?  #?     $?   !  $?     $?   !  $?     %   I  %-   &  %w     %?     %?   I  %?   1  &   &  &Q     &x     &?     &?     &?   $  &?     '     '     '2     'C     'L     'f     '?   #  '?     '?   '  '?   ?  '?   =  (?   '  (?     )   ?  )     *   %  *     *?     *T     *f     *x     *?   "  *?   4  *?     *?   .  +   S  +;     +?     +?   1  +?   "  +?   (  ,   *  ,=     ,h   )  ,{   !  ,?   '  ,?   )  ,?     -     -0      -@      -a     -?   	  -?  A  -?     .?     .?     /      /   1  /'   2  /Y   0  /?     /?   #  /?     /?   )  0   1  0B   -  0t     0?     0?     0?     0?     0?   "  1   %  1.     1T     1b     1n     1?   	  1?     1?     1?     1?     1?     1?   &  1?   !  2     2;     2W   
  2k     2v  0  2?   w  3?  o  4,   ?  5?   H  68   K  6?     6?   0  6?     7     76     7R   &  7l     7?   &  7?   &  7?   '  7?      8'   '  8H     8p     8?   F  8?   C  8?   $  9-   =  9R   %  9?   N  9?   #  :   M  :)   C  :w   >  :?   I  :?   "  ;D   A  ;g   >  ;?   K  ;?   B  <4   <  <w   F  <?   K  <?   S  =G   "  =?   N  =?   O  >   E  >]   L  >?   A  >?   1  ?2   A  ?d   N  ??   2  ??   *  @(   R  @S   )  @?   B  @?   -  A  ?  AA   F  B?   "  C   J  C6   9  C?   7  C?   5  C?   I  D)   ,  Ds   H  D?   8  D?   E  E"   L  Eh   ,  E?   1  E?   ;  F   8  FP   1  F?   <  F?   >  F?   <  G7   8  Gt   (  G?   2  G?   L  H	   4  HV   9  H?   ?  H?     I?     I?     I?     J     J5   M  JU   &  J?     J?     J?   Q  K    0  KR     K?     K?     K?     K?     K?   #  L	     L-     LD     L]     Li     Lu      L?     L?     L?     L?   r  L?   ?  Ml   ;  N   .  NP     N   ?  N?     Ob   +  O     O?     O?     O?     O?   	  O?   %  O?   7  P!   !  PY   3  P{   R  P?     Q     Q   1  Q2   ,  Qd   -  Q?     Q?     Q?   ,  Q?   #  R   &  R@   +  Rg     R?     R?     R?      R?     R?     S  ?  S     T?     T?     T?     T?   ,  T?   '  U   (  U0     UY   $  Uu     U?   ,  U?   2  U?   /  V     VG     Vb     Vu     V?     V?   "  V?   "  V?   
  V?     V?     W   
  W     W(     W0     WA   
  WP     W[     Wg     W?     W?     W?     W?     W?     W?      r   w   ?       +          l            ~   9   _   }       ?   S           |   q   ?   h   ?      {       N   Y   ?   ?      .   M   v   =   a   ?   ?       ?       ?   ?      ?      <   #   @   ?   ?       5   [       U                  p   n   ]   ?   C   F   ?      (   ?       4       x   6      &   E       !   ?       ?                   ?   *       V   ?   ?   ?   ?   ?   ?               ?   W   ?       A   1       L   /   H   7       \   g       D   u   c   R   G       ?       >   ?          ?   ?   d                  Z   O               ?   ?               ?   X   T   3   K   ?   `   ?   o   I   ?   ?          m          ?      $   J       k       ?      ,   e      
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
PO-Revision-Date: 2002-03-12 17:03+0100
Last-Translator: G?ran Uddeborg <goeran@uddeborg.pp.se>
Language-Team: Swedish <sv@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8bit
   B?de GFMT eller RFMT kan inneh?lla:
    %%  %
    %c'C'  det ensamma tecknet C
    %c'\OOO'  tecknet med oktalkod OOO   GFMT kan inneh?lla:
    %<  rader fr?n FIL1
    %>  rader fr?n FIL2
    %=  gemensamma rader i FIL1 och FIL2
    %[-][BREDD][.[PREC]]{doxX}BOKSTAV  printf-lik spec. f?r BOKSTAV
      BOKST?VER ?r enligt f?ljande f?r ny grupp, gemen f?r gammal grupp:
        F  f?rsta radnumret
        L  sista radnumret
        N  antal rader = L-F+1
        E  F-1
        M  L+1   RFMT kan inneh?lla:
    %L  radinneh?ll
    %l  radinneh?ll exklusive avslutande nyrad
    %[-][BREDD][.[PREC]]{doxX}n  printf-stil spec. f?r inradnummer   RTYP ?r "old", "new" eller "unchanged".  GTYP ?r RTYP eller "changed".   Hoppa ?ver de HOPP1 f?rsta byten i FIL1 och de HOPP2 f?rsta byten i FIL2. %s %s skiljer: byte %s, rad %s
 %s %s skiljer: byte %s, rad %s ?r %3o %s %3o %s
 %s: diff misslyckades:  %s: otill?ten flagga -- %c
 %s: ogiltig flagga -- %c
 %s: flaggan "%c%s" tar inget argument
 %s: flaggan "%s" ?r tvetydig
 %s: flaggan "%s" beh?ver ett argument
 %s: flaggan "--%s" tar inget argument
 %s: flaggan "-W %s" tar inget argument
 %s: flaggan "-W %s" ?r tvetydig
 %s: flaggan beh?ver ett argument -- %c
 %s: ok?nd flagga "%c%s"
 %s: ok?nd flagga "--%s"
 --GTYP-group-format=GFMT  Dito, men formatera GTYP ingrupper med GFMT. --RTYP-line-format=RFMT  Dito, men formatera RTYP inrader med RFMT. --binary  L?s och skriv data bin?rt. --diff-program=PROGRAM  Anv?nd PROGRAM f?r att j?mf?ra filer. b?de --from-file och --to-file angavs --from-file=FIL1   J?mf?r FIL1 medd alla operander.  FIL1 kan vara en katalog. --help  Visa detta hj?lpmeddelande. --horizon-lines=ANT  Spara ANT rader av det gemensamma prefixet och suffixet. --ignore-file-name-case  Bortse fr?n skiftl?ge n?r filnamn j?mf?rs. --line-format=RFMT  Dito, men formatera alla inrader med RFMT. --no-ignore-file-name-case  Ta h?nsyn till skiftl?ge n?r filnamn j?mf?rs. --normal  Skriv ut en normal diff. --speed-large-files  Antag stora filer och sm? spridda ?ndringar. --strip-trailing-cr  Tag bort avslutande vagnreturer i indata. --to-file=FIL2   J?mf?r alla operander med FIL2.  FIL2 kan vara en katalog. --unidirectional-new-file  Behandla saknade f?rstafiler som tomma. -3  --easy-only  Skriv ut ej ?verlappande ?ndringar separat. -A  --show-all  Skriv ut alla ?ndringar med markering runt konflikter. -B  --ignore-blank-lines  Ignorera ?ndringar i form av enbart blanka rader. -D NAMN  --ifdef=NAMN  Skriv ut sammanslagen fil med skillnader inom "#ifdef NAMN". -D flaggan st?djs ej f?r kataloger -E  --ignore-tab-expansion  Ignorera ?ndringar p? grund av tabulatorexpansion. -E  --show-overlap  Skriv ut ?ndringar separat med markeringar runt konflikter. -H  --speed-large-files  Antag stora filer och sm? spridda ?ndringar. -I RU  --ignore-matching-lines=RU  Ignorera ?ndringar vars rader matchar RU. -L ETIKETT  --label=ETIKETT  Anv?nd ETIKETT ist?llet f?r filnamn. -N  --new-file  Betrakta saknade filer som tomma. -S FIL  --starting-file=FIL  B?rja med FIL n?r kataloger j?mf?rs. -T  --initial-tab  Justera tabulatorer genom att skjuta in en tabulator f?rst. -W  --ignore-all-space  Ignorera alla blanktecken. -X  Skriv ut ?ndringar separat, markerade. -X FIL  --exclude-from=FIL  Ta inte med filer med namn som matchar m?nstren i FIL. -a  --text  Betrakta alla filer som text. -b  --ignore-space-change  Bortse fr?n ?ndringar i antalet blanka. -b  --print-bytes  Skriv ut byte som skiljer. -c  -C ANT  --context[=ANT]  Skriv ut ANT (normalt 3) rader kopierad omgivning.
-u  -U ANT  --unified[=ANT]  Skriv ut ANT (normalt 3) rader sammanslagen
                               omgivning.
  --label ETIKETT  Anv?nd ETIKETT ist?llet f?r filnamn.
  -p  --show-c-function  Visa vilken C-funktion varje ?ndring finns i.
  -F RU  --show-function-line=RU  Visa den senaste raden som matchar RU. -d  --minimal  Arbeta h?rt f?r att hitta en mindre m?ngd av ?ndringar. -e  --ed  Skriv ut ett ed-program. -e  --ed  Skriv ut separata ?ndringar fr?n GAMMALFIL till DINFIL i MINFIL. -i  --ignore-case  Betrakta versaler och gemena som lika. -i  --ignore-case  Bortse fr?n skiftl?ge i filinneh?ll. -i  L?gg till "w"- och "q"-kommandon till ed-program. -i HOPP  --ignore-initial=HOPP  Hoppa ?ver de HOPP f?rsta byten i indata. -i HOPP1:HOPP2  --ignore-initial=HOPP1:HOPP2 -l  --left-column  Skriv ut endast v?nstra kolumnen av gemensamma rader. -l  --paginate  Skicka utdata till  "pr" f?r paginering. -l  --verbose  Skriv ut bytenummer och v?rde f?r alla skiljande byte. -m  --merge  Skriv ut sammanslagen fil ist?llet f?r ed-program (normalt -A). -n  --rcs  Skriv ut skillnader i RCS-format. -n GR?NS  --bytes=GR?NS  J?mf?r h?gst GR?NS byte. -o FIL  --output=FIL  K?r interaktivt, med utdata till FIL. -q  --brief  Skriv ut endast huruvida filer skiljer sig. -r  --recursive  J?mf?r underkataloger rekursivt. -s  --quiet  --silent  Skriv inget; ge endast en slutstatus. -s  --report-identical-files  Rapportera om tv? filer ?r lika. -s  --suppress-common-lines  Skriv inte ut gemensamma rader. -t  --expand-tabs  Expandera tabulatorer till blanksteg. -v  --version  Visa versionsinformation. -w  --ignore-all-space  Ignorera alla blanktecken. -w ANT  --width=ANT  Skriv ut h?gst ANT (130 om inget anges) tecken per rad. -x  --overlap-only  Skriv ut ?verlappande ?ndringar. -x MNS  --exclude=MNS  Ta inte med filer som matchar MNS. -y  --side-by-side  Skriv ut i tv? kolumner.
  -W ANT  --width=ANT  Skriv ut h?gst ANT (130 om inget anges) kolumner.
  --left-column  Skriv ut endast v?nstra kolumnen av gemensamma rader.
  --suppress-common-lines  Skriv inte ut gemensamma rader. Bin?rfilerna %s och %s skiljer
 Lika underkataloger: %s och %s
 J?mf?r filer rad f?r rad. J?mf?r tre filer rad f?r rad. J?mf?r tv? filer byte f?r byte. FILER ?r "FIL1 FIL2" eller "KAT1 KAT2" eller "KAT FIL..." eller "FIL... KAT". Fil %s ?r en %s medan fil %s ?r en %s
 Filerna %s och %s ?r lika
 Filerna %s och %s skiljer
 Om --from-file eller --to-file ?r angivet, finns det inga begr?nsningar p?
FILER. Om FIL ?r "-" eller utel?mnats, l?s standard in. Om FIL ?r "-", l?s standard in. Ogiltig bak?treferens Ogiltigt namn p? teckenklass Ogiltigt sorteringstecken Ogiltigt inneh?ll i \{\} F?reg?ende regulj?ruttryck ogiltigt Ogiltigt intervallslut Ogiltigt regulj?ruttryck Minnet slut Ingen match Ingen nyrad vid filslut Inget f?reg?ende regulj?ruttryck Endast i %s: %s
 F?rtida slut p? regulj?ruttryck F?r stort regulj?ruttryck Rapportera fel till <bug-gnu-utils@gnu.org>.
Rapportera synpunkter p? den svenska ?vers?ttningen till <sv@li.org>. HOPP-v?rden kan f?ljas av f?ljande mutiplikativa suffix:
kB 1000, K 1024, MB 1 000 000, M 1 048 576
GB 1 000 000 000, G 1 073 741 824, och s? vidare f?r T, P, E, Z, Y. HOPP1 och HOPP2 ?r antalet byte att hoppa ?ver i varje fil. Sammanslagning sida-vid-sida av filskillnader. Lyckades Detta program kommer UTAN GARANTI, s? l?ngt lagen till?ter.  Du kan
distribuera kopior av detta program i enlighet med villkoren i GNU
General Public License.  F?r mer information om detta, se filen som
heter COPYING. Avslutande omv?nt snedstreck F?rs?k med "%s --help" f?r mer information. Ok?nt systemfel Oparad ( eller \( Oparad ) eller \) Oparad [ eller [^ Oparad \{ Anv?ndning: %s [FLAGGA]... FIL1 FIL2
 Anv?ndning: %s [FLAGGA]... FIL1 [FIL2 [HOPP1 [HOPP2]]]
 Anv?ndning: %s [FLAGGA]... FILER
 Anv?ndning: %s [FLAGGA]... MINFIL GAMMALFIL DINFIL
 Skrivet av Paul Eggert, Mike Haertel, DAvid Hayes,
Richard Stallman och Len Tower. Skrivet av Randy Smith. Skrivet av Thomas Lord. Skrivet av Torbj?rn Granlund och David MacKenzie. flaggan "-%ld" ?r f?r?ldrad; anv?nd den inte flaggan "-%ld" ?r f?r?ldrad; anv?nd "-%c %ld" "-" angivet f?r mer ?n en infil blockspecialfil b?da filerna som skall j?mf?ras ?r kataloger kan inte j?mf?ra "-" med en katalog kan inte j?mf?ra filnamn "%s" och "%s" kan inte sl? samman standard in interaktivt teckenspecialfil cmp: EOF i %s
 motstridigt %s-flaggsv?rde "%s" motstridig utmatningsstilsflagga konflikt mellan breddflaggor katalog ed:	Redigera och anv?nd sedan b?da versioner, dekorerade med huvuden.
eb:	Redigera och anv?nd sedan b?da versioner.
el:	Redigera och anv?nd sedan v?nstra versionen.
er:	Redigera och anv?nd sedan h?gra versionen.
e:	Redigera en ny version.
l:	Anv?nd v?nstra versionen.
r:	Anv?nd h?gra versionen.
s:	Inkludera tyst gemensamma rader.
v:	Inkludera och tillk?nnage gemensamma rader.
q:	Avsluta.
 extra operand "%s" fifo of?renliga flaggor infilen krympte internt fel: ogiltig diff-typ i process_diff internt fel: ogiltig diff-typ utskickad internt fel: trasigt format i diff-block ogiltigt --bytes-v?rde "%s" ogiltigt --ignore-initial-v?rde "%s" ogiltig omgivningsl?ngd "%s" ogiltigt diff-format; ofullst?ndig sista rad ogiltigt diff-format; felaktiga starttecken p? rad ogiltigt diff-format; ogiltig ?ndringsseparator ogiltig horisontl?ngd "%s" ogiltig bredd "%s" minnet slut meddelandek? saknad operand efter "%s" flaggorna -l och -s ?r motstridiga sidvisning st?djs ej p? denna v?rd programfel l?sning misslyckades tom normal fil normal fil semafor delatminneobjekt uttag (socket) stackspill standard ut underprogram "%s" misslyckades underprogram "%s" inte k?rbart underprogram "%s" hittades inte f?r m?nga etikettflaggor typat minnes-objekt konstig fil skrivning misslyckades 