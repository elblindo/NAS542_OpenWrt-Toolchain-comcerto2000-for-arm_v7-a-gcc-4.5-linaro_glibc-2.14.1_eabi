??       ?     ?   ?  l      0   ~  1  p  ?   ?  !   F  ?   I       a   0  ?     ?     ?     ?   ,  ?     %   %  C   ,  i   -  ?      ?   &  ?          ,   L  L   J  ?   -  ?   5     (  H   L  q     ?   D  ?   ?     B  ]   D  ?     ?   I     =  O   J  ?   =  ?   8     9  O   C  ?   F  ?   (     @  =   B  ~   M  ?   K     8  [   ,  ?   J  ?   9     /  F   0  v   K  ?   $  ?   G     )  `  V  ?   9  ?        G  :   A  ?   <  ?   .     C  0   ,  t   ?  ?   <  ?   E      B   d   %   ?   5   ?   F  !   .  !J   >  !y   >  !?   A  !?   8  "9   3  "r   #  "?   /  "?   G  "?   /  #B   4  #r   ?  #?     $?   !  $?     $?   !  $?     %   I  %-   &  %w     %?     %?   I  %?   1  &   &  &Q     &x     &?     &?     &?   $  &?     '     '     '2     'C     'L     'f     '?   #  '?     '?   '  '?   ?  '?   =  (?   '  (?     )   ?  )     *   %  *     *?     *T     *f     *x     *?   "  *?   4  *?     *?   .  +   S  +;     +?     +?   1  +?   "  +?   (  ,   *  ,=     ,h   )  ,{   !  ,?   '  ,?   )  ,?     -     -0      -@      -a     -?   	  -?  A  -?     .?     .?     /      /   1  /'   2  /Y   0  /?     /?   #  /?     /?   )  0   1  0B   -  0t     0?     0?     0?     0?     0?   "  1   %  1.     1T     1b     1n     1?   	  1?     1?     1?     1?     1?     1?   &  1?   !  2     2;     2W   
  2k     2v  O  2?   m  3?  }  4A   ?  5?   C  6o   E  6?   $  6?   :  7     7Y     7r     7?   )  7?     7?      7?   )  8   *  88   '  8c   !  8?     8?     8?   ~  8?   ~  9l   1  9?   =  :   +  :[   l  :?     :?   N  ;   m  ;a   h  ;?   t  <8   *  <?   9  <?   >  =   i  =Q   ?  =?   ?  >B   B  >?   B  >?   s  ?   !  ?|   l  ??   I  @   =  @U   t  @?   B  A   ;  AK   L  A?   7  A?   >  B   -  BK   N  By   /  B?   D  B?   3  C=  p  Cq   >  D?   %  E!   \  EG   @  E?   H  E?   -  F.   E  F\   *  F?   E  F?   F  G   J  GZ   M  G?   (  G?   :  H   D  HW   9  H?   7  H?   H  I   G  IW   ;  I?   7  I?   -  J   4  JA   J  Jv   1  J?   @  J?   ?  K4   !  L.     LP   $  Ln   (  L?   !  L?   ]  L?   -  M<     Mj     M?   S  M?   A  M?   5  N7     Nm     N?     N?     N?   $  N?     N?     N?     O   
  O   %  O%   &  OK     Or   )  O?      O?   -  O?   ?  O?   ?  P?     P?   
  Q   ?  Q     Q?   .  Q?     R     R(     R?     RV     Rm   "  R~   4  R?     R?   4  R?   _  S(     S?     S?   5  S?   (  S?   .  T%   3  TT     T?   *  T?   #  T?   *  T?   3  U     UM     Ud      Uv     U?     U?     U?  c  U?     W;     WT     WY     Wi   /  W?   8  W?   .  W?     X   $  X:     X_   /  X}   9  X?   *  X?     Y     Y0     YF     YS     Yg     Y?   .  Y?     Y?     Y?     Y?     Y?     Z     Z     Z(     Z0     ZD   %  ZX   ,  Z~   )  Z?   "  Z?   #  Z?     [     [(      r   w   ?       +          l            ~   9   _   }       ?   S           |   q   ?   h   ?      {       N   Y   ?   ?      .   M   v   =   a   ?   ?       ?       ?   ?      ?      <   #   @   ?   ?       5   [       U                  p   n   ]   ?   C   F   ?      (   ?       4       x   6      &   E       !   ?       ?                   ?   *       V   ?   ?   ?   ?   ?   ?               ?   W   ?       A   1       L   /   H   7       \   g       D   u   c   R   G       ?       >   ?          ?   ?   d                  Z   O               ?   ?               ?   X   T   3   K   ?   `   ?   o   I   ?   ?          m          ?      $   J       k       ?      ,   e      
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
 extra operand `%s' fifo incompatible options input file shrank internal error: invalid diff type in process_diff internal error: invalid diff type passed to output internal error: screwup in format of diff blocks invalid --bytes value `%s' invalid --ignore-initial value `%s' invalid context length `%s' invalid diff format; incomplete last line invalid diff format; incorrect leading line chars invalid diff format; invalid change separator invalid horizon length `%s' invalid width `%s' memory exhausted message queue missing operand after `%s' options -l and -s are incompatible pagination not supported on this host program error read failed regular empty file regular file semaphore shared memory object socket stack overflow standard output subsidiary program `%s' failed subsidiary program `%s' not executable subsidiary program `%s' not found too many file label options typed memory object weird file write failed Project-Id-Version: GNU diffutils 2.7.10
POT-Creation-Date: 2002-04-05 14:10-0800
PO-Revision-Date: 2002-03-12 15:00+0100
Last-Translator: Rafa? Maszkowski <rzm@icm.edu.pl>
Language-Team: Polish <translation-team-pl@lists.sourceforge.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-2
Content-Transfer-Encoding: 8-bit
   GFMT i LFMT mog? zawiera?:
    %%  %
    %c'C'  pojedy?czy znak C
    %c'\OOO'  znak o kodzie ?semkowym OOO   GFMT mo?e zawiera?:
    %<  linie z PLIKU1
    %>  linie z PLIKU2
    %=  linie wsp?lne dla PLIKU1 i PLIKU2
    %[-][SZER][.[DOK?]]{doxX}LITERA  specyfikacja w stylu printf dla LITERY
      LITERY s? nast?puj?ce dla nowej grupy (ma?e dla starej grupy):
        F  numer pierwszej linii
        L  numer ostatniej linii
        N  ilo?? linii = L-F+1
        E  F-1
        M  L+1   LFMT mo?e zawiera?:
    %L  zawarto?? linii
    %l  zawarto?c linii, z wy??czeniem znaku nowej linii
    %[-][SZER][.[DOK?]]{doxX}n  specyfikacj? numeru linii w stylu printf TYPL to `old', `news' lub `unchanged'.  TYPG to TYPL lub `changed'.   Przeskoczenie pierwszych SKOK1 bajt?w PLIKU1 i SKOK2 bajt?w PLIKU2. %s %s r??ni? si?: bajt %s, linia %s
 %s %s r??ni? si?: bajt %s, linia %s zawiera %3o %s %3o %s
 %s: diff nie zadzia?a?:  %s: nielegalna opcja -- %c
 %s: b??dna opcja -- %c
 %s: opcja `%c%s' nie mo?e mie? argumentu
 %s: opcja `%s' is ambiguous
 %s: opcja `%s' wymaga argumentu
 %s: opcja `--%s' nie mo?e mie? argumentu
 %s: opcja `-W %s' nie mo?e mie? argumentu
 %s: opcja `-W %s' jest niejednoznaczna
 %s: opcja wymaga argumentu -- %c
 %s: unrecognized option `%c%s'
 %s: nierozpoznana opcja `--%s'
 --TYPG-group-format=GFMT   Podobnie, ale z u?yciem GFMT do sformatowania grup
                           wej?ciowych type TYPG --TYPL-group-format=LFMT   Podobnie, ale z u?yciem LFMT do sformatowania grup
                           wej?ciowych typu TYPL --binary  Czytanie i zapisywanie danych binarnie. --diff-program=PROGRAM  U?ycie PROGRAMU do por?wnania plik?w. r?wnocze?nie podane --from-file i --to-file --from-file=PLIK1  Por?wnanie PLIKU1 z wszystkimi argumentami.
                   PLIK1 mo?e by? katalogiem. --help  Wypisanie tego helpu. --horizon-lines=ILE  Zostawienie ILE linii wsp?lnego przedrostka i przyrostka. --ignore-space-change    Zignorowanie wielko?ci liter przy por?wnywaniu
                         nazw plik?w. --line-format=LFMT  Podobnie, ale z u?yciem LFMT do sformatowania linii
                    wej?ciowych. --no-ignore-file-name-case  Uwzgl?dnianie wielko?ci liter przy por?wnywaniu
                            nazw plik?w. --normal  Wynik w postaci zwyk?ego diff-a. --speed-large-files  Du?e pliki i rozrzucone ma?e zmiany. --strip-trailing-cr  Pomini?cie znak?w nowej linii na wej?ciu. --to-file=PLIK2  Por?wnanie wszystkich argument?w z PLIKIEM2.
                 PLIK2 mo?e by? katalogiem. --unidirectional-new-file  Traktowanie brakuj?cych pierwszych plik?w
                               w pierwszym zestawie jako pustych. -3  --easy-only  Wypisanie niez??czonych nienachodz?cych zmian. -A  --show-all  Wypisanie wszystkich zmian, konflikty w nawiasach. -B  --ignore-blank-lines  Zignorowanie zmian ilo?ci pustych linii. -D NAZWA  --ifdef=NAZWA  Wypisanie po??czonego pliu dla pokazania r??nic
                         w `#ifdef NAZWA'. -D opcja nie dzia?a dla katalog?w -E  --ignore-tab-expansion  Zignorowanie zmian spowodowanych rozwini?ciem
                            TAB?w. -E  --show-overlap  Wypisanie niez??czonych zmian, konflikty w nawiasach. -H  --speed-large-files  Du?e pliki i rozrzucone ma?e zmiany. -I RE  --ignore-matching-lines=RE  Zignorowanie zmian w liniach pasuj?cych
                                   do RE. -L ETYKIETA --label=ETYKIETA  U?ycie ETYKIETY zamiast nazwy pliku. -N  --new-file  Traktowanie brakuj?cych plik?w jak pustych. -S PLIK  --starting-file=PLIK  Zacznij od PLIKu przy por?wnywaniu katalog?w. -T  --initial-tab  Wyr?wnanie linii przez u?ycie TAB?w. -W  --ignore-all-space  Ignorowanie wszystkich znak?w odst?pu. -X  Wypisanie nachodz?cych zmian w nawiasach. -X PLIK  --exclude-from=PLIK  Pomini?cie plik?w pasuj?cych do wzorc?w w PLIKu. -a  --text  Traktowanie plik?w jako tekstowych. -b  --ignore-space-change  Zignorowanie zmian ilo?ci znak?w odst?pu. -b  --print-chars  Wypisanie r??ni?cych si? bajt?w. -c  -C ILE  --context[=ILE]  Skopiowanie ILE (domy?lnie 2) linii kontekstu.
-u  -U ILE  --unified[=ILE]  ILE (domy?lnie 2) linii zunifikowanego kontekstu.
  --label ETYKIETA           U?ycie ETYKIETY zamiast nazwy pilku.
  -p  --show-c-function      Wskazanie funkcji C, w kt?rych s? zmiany.
  -F RE  --show-function-line=RE  Pokazanie ostatniej linii pasuj?cej do RE. -d  --minimal  Usi?owanie znalezienia mniejszego zbioru zmian. -e  --ed  Wynik w postaci komend ed-a -e  --ed  Wypisanie niez??czonych zmian mi?dzy STARY_PLIK a NOWY_PLIK do
          M?J_PLIK. -i  --ignore-case  Traktowanie ma?ych i wielkich liter tak samo. -i  --ignore-case  Ignorowanie r??nic mi?dzy wielkimi i ma?ymi literami. -i  Dodanie komendy `w' i `q' do komend ed-a. -i OMI?  --ignore-initial=OMI?  PRzeskoczenie pierwszych OMI? bajt?w. -i SKOK1:SKOK2--ignore-initial=SKOK1:SKOK2 -I  --left-column  Wypisanie tylko lewej kolumny dla wsp?lnych linii. -I  --paginate  Przepuszczenie wyniku przez `pr' ?eby go stronnicowa?. -I  --verbose  Wypisanie po?o?e? i kod?w wszystkich r??ni?cych si? bajt?w. -m   -merge  Wypisanie po??czonych plik?w zamiast komend ed-a (domy?lnie -A). -n  --rcs  Wynik w postaci diff-a z RCS. -n LIMIT  --bytes=LIMIT  Por?wnanie najwy?ej LIMIT bajt?w. -o PLIK  --output=PLIK  Tryb interakcyjny, wyniki wysy?ane do PLIKu. -q  --brief  Wypisanie wyniku tylko gdy pliki si? r??ni?. -r  --recursive  Por?wnanie podkatalog?w rekurencyjnie. -s  --quiet  --silnet  Bez wypisania wynik?w; tylko przekazanie statusu. -s  --report-identical-files  Informowanie gdy dwa pliki s? takie same. -s  --suppress-common-lines  Bez wypisania wsp?lnych linii. -t  --expand-tabs  Rozwini?cie TAB?w w spacje w wyniku. -v  --version  Wypisanie informacji o wersji. -w  --ignore-all-space  Zignorowanie znak?w odst?pu. -w ILE  --width=ILE  Wypisanie najwy?ej ILE (domy?nie 130) znak?w w linii. -x  --overlap-only  Wypisanie nachodz?cych zmian. -x WZ?R  --exclude=WZ?R  Wykluczenie plik?w pasuj?cych do WZORu. -y  --side-by-side  Wynik w dw?ch kolumnach.
  -W ILE  --width=ILE  Wypisanie najwy?ej ILE (domy?nie 130) znak?w w linii.
  --left-column  Wypisanie tylko lewej kolumny dla wsp?lnych linii.
  --suppress-common-lines  Bez wypisywania wsp?lnych linii. Pliki binarne %s i %s si? r??ni?
 Wsp?lne podkatalogi: %s i %s
 Por?wnanie plik?w kolejnymi liniami. Por?wnanie trzech plik?w linia po linii. Por?wnanie plik?w bajt po bajcie. PLIKI to `PLIK1 PLIK2' albo `KATALOG1 KATALOG2' albo `KATALOG PLIK...' albo
PLIK... KATALOG'. Plik %s jest %s, podczas gdy plik %s jest %s
 Pliki %s i %s s? identyczne
 Pliki %s i %s r??ni? si?
 Je?eli u?yta jest opcja --from-file albo --to-file, nie ma ogranicze? co do
PLIK?W. Je?eli PLIK to `-' lub go brak, czytane jest standardowe wej?cie. Je?eli PLIK to `-', czytane jest standardowe wej?cie. Z?y odno?nik wstecz Z?a nazwa klasy znak?w Zly znak zbiorczy Z?a zawarto?? \{\} Z?e poprzedzj?ce wyra?enie regularne Z?y koniec zakresu Z?e wyra?enie regularne Brak pami?ci Nie pasuje Brak znaku nowej linii na ko?cu pliku Brak porzedniego wyra?enia regularnego Tylko w %s: %s
 Przedwczesny koniec wyra?enia regularnego Wyra?enia regularne jest za du?e Inofmracje o b??dach: bug-gnu-utils@gnu.org . Po warto?ci SKOKU mog? by? dodane nast?puj?ce przyrostki:
kB 1000, K 1024, MB 1,000,000, M 1,048,576,
GB 1,000,000,000, G 1,073,741,824, i tak dalej dla T, P, E, Z, Y. SKOK1 i SKOK2 to liczby bajt?w do pomini?cia w ka?dym z plik?w. Interaktywne po??czenie plik?w. Powodzenie Autorzy nie daj? ?ADNYCH gwarancji, do granic, na kt?re zezwala prawo.
Program mo?e by? rozpowszechniany na warunkach Og?lnej Licencji Publicznej
GNU; szczeg?ly s? opisane w pliku COPYING. Ko?cowy uko?nik odwrotny Napisz `%s --help' ?eby dowiedzie? si? wi?cej. Niezany b??d systemu Nie sparowany ( lub \( Nie sparowany ) lub \) Nie sparowany [ lub [^ Nie sparowany \{ U?ycie: %s [OPCJA]... PLIK1 PLIK2
 U?ycie: %s [OPCJA]... PLIK1 [PLIK2 [SKOK1 [SKOK2]]]
 U?ycie: %s [OPCJA]... PLIKI
 U?ycie: %s [OPCJA]... M?J_PLIK STARY_PLIK TW?J_PLIK
 Napisany przez Paula Eggerta, Mike'a Haertela, Davida Hayesa,
Richarda Stallmana i Lena Towera. Napisany przez Randiego Smitha. Napisany przez Thomasa Lorda. Napisany przez Torbjorna Gralunda i Davida MacKenzie. opcja `-%ld' jest przestarza?a, opu?? j? opcja `-%ld' jest przestarza?a, u?yj `-%c %ld' `-' podany dla wi?cej ni? jednego pliku wej?ciowego specjalny plik blokowy oba maj?ce by? por?wnane pliki to katalogi nie mo?na por?wna? `-' z katalogiem nie mo?na por?wna? nazw plik?w `%s' i `%s' nie mog? interakcyjnie ??czy? standardowego wej?cia specjalny plik znakowy cmp: EOF przy %s
 sprzeczna warto?? opcji %s: `%s' sprzeczne opcje stylu wyniku sprzeczne opcje szeroko?ci katalog ed:	Edycja i u?ycie obu wersji, ka?dej z nag??wkiem.
eb:	Edycja i u?ycie obu wersji.
el:	iU?ycie wersji po lewej.
er:	Edycja i u?ycie wersji po prawej.
e:	Edycja nowej wersji.
l:	U?ycie wersji po lewej.
r:	U?ycie wersji po prawej.
s:	Do??czenie wsp?lnych linii bez informoawania o tym.
v:	Do??czenie wsp?lnych linii z podaniem informacji.
q:	Zako?czenie.
 nadmiarowy argument `%s' fifo niezgodne opcje plik wej?ciowy si? zmiejszy? b??d wewn?trzny: b??dny typ diff w process_diff b??d wenw?trzny: b??dny typ diff-a przekazany na wyj?cie b?ad wewn?trzny: spieprzony format blok?w diff b??dna warto?? --bytes `%s' b??dna warto?? --ignore-initial `%s' b??dna d?ugo?? kontekstu `%s' b??dny format diff; niekompletna ostatnia linia b??dny format diff; nieprawid?owe znaki na pocz?tku linii b??dny format diff; b??dny separator zmian b??dna d?ugo?? horyzontu `%s' b??dna szeroko?? `%s' brak pami?ci kolejka komunikat?w brakuj?cy argument po `%s' sprzeczne opcje -l i -s stronicowanie nie jest mo?liwe na tej maszynie b??d programu nieudany odczyt zwyk?y pusty plik zwyk?y plik semafor obiekt w pami?ci dzielonej gniazdo przepe?nienie stosu standardowe wyj?cie nie zadzia?a? program pomocniczy `%s' program pomocniczy `%s' nie jest wykonywalny nie znaleziono programu pomocniczego `%s' za du?o opcji etykietowania plik?w obiekt w pami?ci z okre?leniem typu dziwny plik zapis nieudany 