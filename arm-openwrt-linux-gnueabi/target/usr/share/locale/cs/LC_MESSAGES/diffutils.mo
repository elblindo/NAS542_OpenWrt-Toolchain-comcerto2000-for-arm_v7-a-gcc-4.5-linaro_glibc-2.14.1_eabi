??       ?     ?   ?  <      ?   ~  ?  p  x   ?  ?   F  ?   I  ?     )   0  I     z     ?     ?   ,  ?     ?   %     ,  1   -  ^      ?   &  ?     ?     ?   L     J  a   -  ?   5  ?   L       ]   D  w   ?  ?   B  ?   D  ?     ?   I  ?   =  ?   J  ,   =  w   8  ?   9  ?   C  (   F  l   (  ?   @  ?   B     M  `   K  ?   8  ?   ,  3   J  `   9  ?   /  ?   0     K  F   $  ?   G  ?   )  ?  V  )   9  ?     ?   G  ?   A  !   <  c   .  ?   C  ?   ,     ?  @   <  ?   E  ?   B      %   F   5   l   F   ?   .   ?   >  !   >  !W   A  !?   8  !?   3  "   #  "E   /  "i   G  "?   /  "?   4  #   ?  #F     $-   !  $L     $n   !  $?     $?   I  $?   &  %     %=     %\   I  %t   1  %?   &  %?     &     &.     &K     &g   $  &     &?     &?     &?     &?     &?     '     '$   #  '4     'X   '  's   ?  '?   =  (M     (?   ?  (?     )}   %  )?     )?     )?     )?     )?     *   "  *   4  *1     *f   .  *?   S  *?     +     +   1  +6   "  +h   (  +?   *  +?     +?   )  +?   !  ,   '  ,>   )  ,f     ,?     ,?      ,?      ,?   	  ,?  A  -     .E     .X     .]     .r   1  .?   2  .?   0  .?     /   #  /5     /Y   )  /u   1  /?   -  /?     /?     0     0.     0?     0M   "  0h   %  0?     0?     0?     0?     0?   	  0?     0?     1
     1     1      10   &  1O   !  1v     1?     1?   
  1?     1?  Q  1?   t  32  ?  3?   ?  5(   I  5?   O  6   !  6n   2  6?     6?     6?     6?   1  7   #  7?   $  7c   1  7?   2  7?   &  7?   %  8     8:     8W   n  8t   P  8?   0  94   ;  9e   f  9?     :   G  :&   D  :n   L  :?   K  ;    /  ;L   g  ;|   ;  ;?   d  <    ?  <?   ;  =   >  =K   C  =?   I  =?   (  >   B  >A   C  >?   o  >?   x  ?8   ;  ??   9  ??   u  @'   7  @?   0  @?   7  A   ?  A>   ,  A?   8  A?   )  B)  ?  BS   3  D5      Di   I  D?   4  D?   =  E	   .  EG   =  Ev      E?   >  E?   ;  F   >  FP   D  F?   +  F?   7  G    H  G8   3  G?   C  G?   8  G?   9  H2   5  Hl   ;  H?   !  H?   0  I    J  I1   1  I|   <  I?   ?  I?   #  J?     J?   !  K   %  K<   $  Kb   j  K?   &  K?     L     L9   O  LU   H  L?   2  L?     M!     M7     MR     Mj   "  M~     M?     M?     M?     M?   '  M?   $  N     N:   "  NJ      Nm   ?  N?   ?  O   E  O?     P   ?  P     P?   ,  Q     Q1     QG     QZ     Qm     Q?   *  Q?   <  Q?   "  Q?   :  R   M  RR     R?     R?   ,  R?   $  R?   /  S   ,  SJ     Sw   %  S?     S?   )  S?   +  S?     T+     TD   '  TS   %  T{     T?  C  T?     U?     V     V     V'   1  VA   -  Vs   *  V?   '  V?   %  V?     W   8  W7   =  Wp   6  W?     W?     X      X     X%     X2   %  XO   1  Xu     X?     X?     X?     X?     X?     X?     Y
     Y     Y$     Y6   %  YR   "  Yx   %  Y?     Y?     Y?     Y?      N              ?   b   U   ?      -          ?   ?          Q   ?   ~   9       n   !   >   ?   D   p                     ?   ?   ?   0      E   /           ?       x   M   {   ?   X   e   '       j   2   ?   ?   f           F   J   .   8      [   _   W   q   ?   ?       6   #   Y   :   }   h   A              L   ,   ?               ?   \   ?   c          +       z   o       a      4           ?       5   *          `   @                 
   ?                   ?   T       R       ?   s      ?   |              r   ?               %   ?   B              Z   H       ?   g   ?   ?   ;   ?   I   u   S       "   i                ?      ?   7       ?   	   ?       ?       ?             K          ?   ?          G   C   ?   ?   ?   ^   m   ?      <       ?   ]   $   &       ?   )   V       t   (       ?      d   P       ?   v              ?       1       w   ?   ?   O   3       y   ?   l   ?   k   =   ?       ?      Either GFMT or LFMT may contain:
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
 --GTYPE-group-format=GFMT  Similar, but format GTYPE input groups with GFMT. --LTYPE-line-format=LFMT  Similar, but format LTYPE input lines with LFMT. --binary  Read and write data in binary mode. --diff-program=PROGRAM  Use PROGRAM to compare files. --from-file=FILE1  Compare FILE1 to all operands.  FILE1 can be a directory. --help  Output this help. --horizon-lines=NUM  Keep NUM lines of the common prefix and suffix. --ignore-file-name-case  Ignore case when comparing file names. --line-format=LFMT  Similar, but format all input lines with LFMT. --no-ignore-file-name-case  Consider case when comparing file names. --normal  Output a normal diff. --speed-large-files  Assume large files and many scattered small changes. --strip-trailing-cr  Strip trailing carriage return on input. --to-file=FILE2  Compare all operands to FILE2.  FILE2 can be a directory. --unidirectional-new-file  Treat absent first files as empty. -3  --easy-only  Output unmerged nonoverlapping changes. -A  --show-all  Output all changes, bracketing conflicts. -B  --ignore-blank-lines  Ignore changes whose lines are all blank. -D NAME  --ifdef=NAME  Output merged file to show `#ifdef NAME' diffs. -D option not supported with directories -E  --ignore-tab-expansion  Ignore changes due to tab expansion. -E  --show-overlap  Output unmerged changes, bracketing conflicts. -H  --speed-large-files  Assume large files and many scattered small changes. -I RE  --ignore-matching-lines=RE  Ignore changes whose lines all match RE. -L LABEL  --label=LABEL  Use LABEL instead of file name. -N  --new-file  Treat absent files as empty. -S FILE  --starting-file=FILE  Start with FILE when comparing directories. -T  --initial-tab  Make tabs line up by prepending a tab. -W  --ignore-all-space  Ignore all white space. -X  Output overlapping changes, bracketing them. -X FILE  --exclude-from=FILE  Exclude files that match any pattern in FILE. -a  --text  Treat all files as text. -b  --ignore-space-change  Ignore changes in the amount of white space. -b  --print-bytes  Print differing bytes. -c  -C NUM  --context[=NUM]  Output NUM (default 3) lines of copied context.
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
GB 1,000,000,000, G 1,073,741,824, and so on for T, P, E, Z, Y. SKIP1 and SKIP2 are the number of bytes to skip in each file. Success This program comes with NO WARRANTY, to the extent permitted by law.
You may redistribute copies of this program
under the terms of the GNU General Public License.
For more information about these matters, see the file named COPYING. Trailing backslash Try `%s --help' for more information. Unknown system error Unmatched ( or \( Unmatched ) or \) Unmatched [ or [^ Unmatched \{ Usage: %s [OPTION]... FILE1 FILE2
 Usage: %s [OPTION]... FILE1 [FILE2 [SKIP1 [SKIP2]]]
 Usage: %s [OPTION]... FILES
 Usage: %s [OPTION]... MYFILE OLDFILE YOURFILE
 Written by Paul Eggert, Mike Haertel, David Hayes,
Richard Stallman, and Len Tower. Written by Randy Smith. Written by Thomas Lord. Written by Torbjorn Granlund and David MacKenzie. `-%ld' option is obsolete; omit it `-%ld' option is obsolete; use `-%c %ld' `-' specified for more than one input file block special file both files to be compared are directories cannot compare `-' to a directory cannot compare file names `%s' and `%s' cannot interactively merge standard input character special file cmp: EOF on %s
 conflicting %s option value `%s' conflicting output style options directory ed:	Edit then use both versions, each decorated with a header.
eb:	Edit then use both versions.
el:	Edit then use the left version.
er:	Edit then use the right version.
e:	Edit a new version.
l:	Use the left version.
r:	Use the right version.
s:	Silently include common lines.
v:	Verbosely include common lines.
q:	Quit.
 extra operand `%s' fifo incompatible options input file shrank internal error: invalid diff type in process_diff internal error: invalid diff type passed to output internal error: screwup in format of diff blocks invalid --bytes value `%s' invalid --ignore-initial value `%s' invalid context length `%s' invalid diff format; incomplete last line invalid diff format; incorrect leading line chars invalid diff format; invalid change separator invalid horizon length `%s' invalid width `%s' memory exhausted message queue missing operand after `%s' options -l and -s are incompatible pagination not supported on this host program error read failed regular empty file regular file semaphore shared memory object socket stack overflow standard output subsidiary program `%s' failed subsidiary program `%s' not executable subsidiary program `%s' not found too many file label options typed memory object weird file write failed Project-Id-Version: GNU diffutils 2.7.10
POT-Creation-Date: 2002-04-05 14:10-0800
PO-Revision-Date: 2002-03-19 18:44+0100
Last-Translator: Petr Ko?vara <petr.kocvara@nemfm.cz>
Language-Team: Czech <translation-team-cs@lists.sourceforge.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-2
Content-Transfer-Encoding: 8-bit
   Jeden z GFMT nebo LFMT m??e obsahovat:
    %%  %
    %c'C'  jeden znak C
    %c'\000'  znak s osmi?kov?m k?dem 000   GFMT m??e obsahovat:
    %<  ??dky ze SOUBOR1
    %>  ??dky ze SOUBOR2
    %=  ??dky spole?n? pro SOUBOR1 i SOUBOR2
    %[-][DELKA][.[PRES]]{doxX}ZNAK  form?t stylu printf pro ZNAK
      ZNAKy d?le jsou pro novou skupinu, mal?mi p?smeny pro starou skupinu:
        F  ??slo prvn?ho ??dku
        L  ??slo posledn?ho ??dku
        N  po?et ??dk? = L-F+1
        E  F-1
        M  L+1   LFMT m??e obsahovat:
    %L  obsah ??dku
    %l  obsah ??dku, s vyj?mkou znaku konce ??dku
    %[-][???KA][.[P?ES]]{doxX}c  form?t stylu printf pro ??slo vstupn?ho ??dku   LTYPE je `star?', `nov?' nebo `nezm?n?n'. GTYPE je LTYPE nebo `zm?n?n'.   P?esko?? prvn?ch N1 bajt? souboru SOUBOR1 a prvn?ch N2 bajt? souboru SOUBOR2. %s %s se li??: bajt %s, ??dek %s
 %s %s se li??: bajt %s, ??dek %s je %3o %s %3o %s
 %s: diff selhal:  %s: nezn?m? p?ep?na? -- %c
 %s: nezn?m? p?ep?na? -- %c
 %s: p?ep?na? `%c%s' mus? b?t zad?n bez argumentu
 %s: p?ep?na? `%s' nen? jednozna?n?
 %s: p?ep?na? `%s' vy?aduje argument
 %s: p?ep?na? `--%s' mus? b?t zad?n bez argumentu
 %s: p?ep?na? `-W %s' mus? b?t zad?n bez argumentu
 %s: p?ep?na? `-W %s' nen? jednozna?n?
 %s: p?ep?na? vy?aduje argument -- %c
 %s: nezn?m? p?ep?na? `%c%s'
 %s: nezn?m? p?ep?na? `--%s'
 --GTYPE-group-format=FMTS  Podobn?, ale form?tuje vstupn? skupiny GTYPE
                           podle FMTS. --LTYPE-line-format=FMTR  Podobn?, ale form?tuje vstupn? ??dky LTYPE podle FMTR. --binary  ?te a zapisuje data v bin?rn?m re?imu. --diff-program=PROGRAM  Pou?ij PROGRAM k porovn?n? soubor?. --from-file=SOUBOR1  Porovn? SOUBOR1 se v?emi operandy. SOUBOR1 m??e b?t
                     adres??. --help  Vyp??e tuto n?pov?du. --horizon-lines=PO?ET  Ponech? PO?ET shodn?ch ??dk? p?edpony a p??pony. --ignore-file-name-case  Ignoruje velikost p?smen v n?zvech soubor?. --line-format=FMTR  Podobn?, ale form?tuje v?echny vstupn? ??dky podle FMTR. --no-ignore-file-name-case  Bere v potaz velikost p?smen v n?zvech soubor?. --normal  V?stup bude v norm?ln?m diff form?tu. --speed-large-files  P?edpokl?d? velk? soubory a mnoho rozpt?len?ch
                     drobn?ch zm?n. --strip-trailing-cr  Odstran? ukon?ovac? znak CR na vstupu. --to-file=SOUBOR2  Porovn? v?echny operandy se SOUBOR2. SOUBOR2 m??e b?t
                   adres??. --unidirectional-new-file  P?i porovn?v?n? adres??? pova?uje neexistuj?c?
                           soubory v prv?m adres??i za pr?zdn?. -3  --easy-only  Vyp??e neslou?en? nep?ekr?vaj?c? se zm?ny. -A  --show-all  Vyp??e v?echny rozd?ly, konflikty v z?vork?ch. -B  --ignore-blank-lines  Ignoruje zm?ny v p??pad? pr?zdn?ch ??dk?. -D JMENO  --ifdef=JMENO  Vyp??e slou?en? soubor s rozd?ly `#ifdef JMENO'. -D p?ep?na? nepodporuje pr?ci s adres??i -E  --ignore-tab-expansion  Ignoruje zm?ny v odsazen? tabel?torem. -E  --show-overlap  Vyp??e neslou?en? zm?ny, konflikty v z?vork?ch. -H  --speed-large-files  P?edpokl?d? velk? soubory a mnoho rozpt?len?ch
                         drobn?ch zm?n. -I RV  --ignore-matching-lines=RV  Ignoruje zm?ny na v?ech ??dc?ch
                                   odpov?daj?c?ch RV. -L POPIS  --label=POPIS  Pou?ije POPIS m?sto jm?na souboru. -N  --new-file  Neexistuj?c? soubory pova?uje za pr?zdn?. -S SOUBOR  --starting-file=SOUBOR  P?i porovn?v?n? adres??? za?ne souborem
                                   SOUBOR. -T  --initial-tab  Na za??tek ??dk? se vlo?? tabul?tor. -W  --ignore-all-space  Ignoruje v?echny mezery. -X  Vyp??e p?ekr?vaj?c? se zm?ny, uzav?en? v z?vork?ch. -X SOUBOR  --exclude-from=SOUBOR  Vynech? soubory, kter? odpov?daj?
                                  libovoln?mu vzorku ze SOUBORu. -a  --text  Pokl?d? v?echny soubory za text. -b  --ignore-space-change  Ignoruje zm?ny v po?tu mezer. -b  --print-bytes  Vyp??e rozd?ln? bajty. -c  -C PO?  --context[=PO?]  Vyp??e PO? (implicitn? 3) ??dky kop?rovan?ho
                             kontextu.
-u  -U PO?  --unified[=PO?]  Vyp??e PO? (implicitn? 3) ??dky sjednocen?ho
                             kontextu.
  -L POPIS  --label POPIS  Pou?ije POPIS m?sto jm?na souboru.
  -p  --show-c-function  U ka?d? zm?ny vyp??e jm?no C funkce, ve kter? se
                         tato zm?na nach?z?.
  -F RV  --show-function-line=RV  Vyp??e nejnov?j?? ??dky odpov?daj?c? RV. -d  --minimal  Pokus? se nal?zt nejmen?? sadu zm?n. -e  --ed  Vytvo?? skript pro ed. -e  --ed  Vyp??e nespojen? zm?ny ze STARYSOUBOR k VASSOUBOR do MUJSOUBOR. -i  --ignore-case  Nerozli?uje velk? a mal? p?smena. -i  --ignore-case  Ignoruje velikost p?smen v obsahu souboru. -i  P?id? p??kazy `w' a `q' do skript? pro ed. -i N  --ignore-initial=N  Ignoruje prvn?ch N bajt? na vstupu. -i N1:N2  --ignore-initial=N1:N2 -l  --left-column  Vyp??e pouze lev? sloupec spole?n?ch ??dk?. -l  --paginate  V?stup projde p?es `pr' pro p?estr?nkov?n?. -l  --verbose  Vyp??e pozice a hodnoty v?ech rozd?ln?ch bajt?. -m  --merge  Vyp??e spojen? soubor m?sto ed skriptu (implicitn? -A). -n  --rcs  V?stup bude ve form?tu RCS diff. -n LIMIT  --bytes=LIMIT  Porovn? maxim?ln? LIMIT bajt?. -o SOUBOR  --output=SOUBOR  Interaktivn? pr?ce, v?stup p?jde do SOUBORu. -q  --brief  V?stup pouze p?i rozd?ln?ch souborech. -r  --recursive  Rekurz?vn? porovn?n? v?ech nalezen?ch podadres???. -s  --quiet  --silent  ??dn? v?stup; vr?t? pouze status. -s  --report-identical-files  Uvede pouze shodn? soubory. -s  --suppress-common-lines  Nevypisuje shodn? ??dky. -t  --expand-tabs  Ve v?stupu p?evede tabul?tory na mezery. -v  --version  Informace o verzi. -w  --ignore-all-space  Ignoruje v?echny mezery. -w PO?  --width=PO?  Vyp??e maxim?ln? PO? (implicitn? 130) znak? na ??dek. -x  --overlap-only  Vyp??e p?ekr?vaj?c? se zm?ny. -x VZOR  --exclude=VZOR  Vynech? soubory odpov?daj?c? VZORu. -y  --side-by-side  V?stup ve dvou sloupc?ch.
  -W PO?  --width=PO?  Vyp??e maxim?ln? PO? (implicitn? 130) znak? na ??dek.
  --left-column  Vyp??e pouze lev? sloupec spole?n?ch ??dk?.
  --suppress-common-lines  Nevyp??e spole?n? ??dky. Bin?rn? soubory %s a %s jsou r?zn?
 Spole?n? podadres??e: %s a %s
 Porovn?n? soubor? ??dek po ??dku. Porovn?n? t?? soubor? ??dek po ??dku. Porovn?n? dvou sobor? bajt po bajtu. SOUBORY jsou `SOUBOR1 SOUBOR2' nebo `ADRESAR1 ADRESAR2' nebo
`ADRESAR SOUBOR...' nebo `SOUBOR... ADRESAR'. Soubor %s je %s pokud soubor %s je %s
 Soubory %s a %s jsou identick?
 Soubory %s a %s jsou r?zn?
 Pokud je uveden --from-file nebo --to-file, pak nejsou u SOUBOR? ??dn? omezen?. Pokud SOUBOR bude `-' nebo nebude existovat, bude ?ten standardn? vstup. Pokud SOUBOR bude `-', bude ?ten standardn? vstup. Neplatn? zp?tn? odkaz Neplatn? jm?no t??dy znak? Neplatn? znak porovn?n? Neplatn? obsah \{\} Neplatn? p?edchoz? regul?rn? v?raz Neplatn? konec rozsahu Neplatn? regul?rn? v?raz Pam?? vy?erp?na ??dn? shoda Chyb? znak konce ??dku na konci souboru P?edchoz? regul?rn? v?raz neexistuje Pouze v %s: %s
 P?ed?asn? konec regul?rn?ho v?razu Regul?rn? v?raz je p??li? dlouh? Chyby v programu oznamujte na adrese <bug-gnu-utils@gnu.org> (pouze anglicky),
p?ipom?nky k p?ekladu zas?lejte na adresu <cs@li.org> (?esky). Hodnoty SKIP mohou b?t dopln?ny n?sleduj?c?mi p??ponami:
kB 1000, K 1024, MB 1,000,000, M 1,048,576,
GB 1,000,000,000, G 1,073,741,824, a stejn? tak i pro T, P, E, Z, Y. N1 a N2 ud?vaj? po?et bajt?, kter? budou ignorov?ny v ka?d?m souboru. Hotovo Tento program je zcela BEZ Z?RUKY, v rozsahu povolen?m z?kony.
Toto programov? vybaven? m??ete d?le ???it podle podm?nek Obecn? ve?ejn?
licence GNU. Dal?? informace o licen?n?ch podm?nk?ch naleznete v souboru
COPYING. Koncov? zp?tn? lom?tko V?ce informac? z?sk?te p??kazem `%s --help'. Nezn?m? chyba syst?mu Nep?rov? ( nebo \( Nep?rov? ) nebo \) Nep?rov? [ nebo ]^ Nep?rov? \{ Pou?it?: %s [P?EP?NA?]... SOUBOR1 SOUBOR2
 Pou?it?: %s [P?EP?NA?]... SOUBOR1 [SOUBOR2 [SKIP1 [SKIP2]]]
 Pou?it?: %s [P?EP?NA?]... SOUBORY
 Pou?it?: %s [P?EP?NA?]... MUJSOUBOR STARYSOUBOR VASSOUBOR
 Auto?i: Paul Eggert, Mike Haertel, David Hayes,
Richard Stallman a Len Tower. Autor: Randy Smith. Autor: Thomas Lord. Auto?i: Torbjorn Granlund a David MacKenzie. p?ep?na? `-%ld' je obsolete; omit it p?ep?na? `-%ld' je obsolete; pou?ijte `-%c %ld' `-' zad?no pro v?ce ne? jeden vstupn? soubor speci?ln? blokov? soubor oba soubory k porovn?n? jsou adres??i `-' s adres??em nelze porovnat nemohu porovnat jm?na soubor? `%s' a `%s' interaktivn? nelze standardn? vstup slou?it speci?ln? znakov? soubor cmp: EOF v %s
 pro p?ep?na? %s konfliktn? hodnota `%s' konfliktn? p?ep?na?e pro styl v?stupu adres?? ed:	Editace - pou?ije ob? verze, ka?dou obda?? hlavi?kou.
eb:	Editace - pou?ije ob? verze.
el:	Editace - pou?ije levou verzi.
er:	Editace - pou?ije pravou verzi.
e:	Editace nov? verze.
l:	Pou?ije levou verzi.
r:	Pou?ije pravou verzi.
s:	Vtichosti vlo?? spole?n? ??dky.
v:	Upozorn? na vlo?en? spole?n?ch ??dk?.
q:	Ukon?en?.
 operand `%s' je nadbyte?n? roura nekompatibiln? p?ep?na?e vstupn? soubor se zmen?il vnit?n? chyba: nespr?vn? typ diffu v process_diff vnit?n? chyba: nespr?vn? typ diffu pro v?stup vnit?n? chyba: chyba ve form?tu diff blok? neplatn? hodnota p?ep?na?e --bytes `%s' neplatn? hodnota --ignore-inital `%s' neplatn? d?lka kontextu `%s' neplatn? form?t diff souboru; nekompletn? posledn? ??dek neplatn? form?t diff souboru; nespr?vn? ?vodn? znaky na ??dku neplatn? form?t diff souboru; neplatn? odd?lova? zm?ny neplatn? d?lka obzoru `%s' nespr?vn? d?lka `%s' pam?? vy?erp?na fronta zpr?v po `%s' je nespr?vn? operand p?ep?na?e -l a -s nejsou kompatibiln? p?estr?nkov?n? nen? na tomto po??ta?i podporov?no chyba programu ?ten? selhalo oby?ejn? pr?zdn? soubor oby?ejn? soubor semafor objekt sd?len? pam?ti soket p?ete?en? z?sobn?ku standardn? v?stup pomocn? program `%s' selhal pomocn? program `%s' nen? spustiteln? pomocn? program `%s' nebyl nalezen p??li? mnoho p?ep?na?? popisu souboru typov? pam??ov? objekt soubor nezn?m?ho typu z?pis selhal 