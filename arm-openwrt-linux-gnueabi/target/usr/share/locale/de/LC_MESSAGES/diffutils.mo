??       ?     ?   ?  l      0   ~  1  p  ?   ?  !   F  ?   I       a   0  ?     ?     ?     ?   ,  ?     %   %  C   ,  i   -  ?      ?   &  ?          ,   L  L   J  ?   -  ?   5     (  H   L  q     ?   D  ?   ?     B  ]   D  ?     ?   I     =  O   J  ?   =  ?   8     9  O   C  ?   F  ?   (     @  =   B  ~   M  ?   K     8  [   ,  ?   J  ?   9     /  F   0  v   K  ?   $  ?   G     )  `  V  ?   9  ?        G  :   A  ?   <  ?   .     C  0   ,  t   ?  ?   <  ?   E      B   d   %   ?   5   ?   F  !   .  !J   >  !y   >  !?   A  !?   8  "9   3  "r   #  "?   /  "?   G  "?   /  #B   4  #r   ?  #?     $?   !  $?     $?   !  $?     %   I  %-   &  %w     %?     %?   I  %?   1  &   &  &Q     &x     &?     &?     &?   $  &?     '     '     '2     'C     'L     'f     '?   #  '?     '?   '  '?   ?  '?   =  (?   '  (?     )   ?  )     *   %  *     *?     *T     *f     *x     *?   "  *?   4  *?     *?   .  +   S  +;     +?     +?   1  +?   "  +?   (  ,   *  ,=     ,h   )  ,{   !  ,?   '  ,?   )  ,?     -     -0      -@      -a     -?   	  -?  A  -?     .?     .?     /      /   1  /'   2  /Y   0  /?     /?   #  /?     /?   )  0   1  0B   -  0t     0?     0?     0?     0?     0?   "  1   %  1.     1T     1b     1n     1?   	  1?     1?     1?     1?     1?     1?   &  1?   !  2     2;     2W   
  2k     2v  3  2?   ?  3?  ?  4J   ?  5?   P  6?   Y  6?   &  71   :  7X     7?     7?     7?   )  7?      8   '  84   *  8\   *  8?   #  8?   (  8?     8?     9   O  9=   M  9?   2  9?   H  :   /  :W   q  :?      :?   K  ;   r  ;f   L  ;?   w  <&   %  <?   K  <?   N  =   l  =_   L  =?   \  >   @  >v   M  >?   F  ?   .  ?L   O  ?{   J  ??   N  @   ?  @e   B  @?   4  A+   N  A`   I  A?   +  A?   0  B%   `  BV   ,  B?   <  B?   /  C!    CQ   I  Ep   !  E?   ]  E?   J  F:   g  F?   2  F?   O  G    ,  Gp   D  G?   <  G?   L  H   Q  Hl   *  H?   ;  H?   J  I%   :  Ip   >  I?   @  I?   E  J+   ?  Jq   F  J?   +  J?   ,  K$   E  KQ   5  K?   I  K?   ?  L   )  M   *  M<   (  Mg   )  M?   '  M?   Z  M?   1  N=   "  No   $  N?   ]  N?   =  O   2  OS     O?   "  O?     O?     O?   ,  O?     P%     P>     P]     Pr      P?   '  P?     P?   )  P?     Q   0  Q(   ?  QY   O  R   R  RX     R?   ?  R?     S?   *  S?     S?   $  S?   $  T    $  T%     TJ   %  Th   7  T?     T?   :  T?   W  U!     Uy     U?   6  U?   3  U?   8  V   -  VW   
  V?   3  V?   1  V?   <  V?   2  W3     Wf     W?   *  W?   0  W?      W?     X  ?  X     Y?     Y?     Y?     Y?   5  Y?   :  Z%   :  Z`     Z?   &  Z?     Z?   -  Z?   >  [+   4  [j     [?     [?     [?   %  [?     \   )  \(   6  \R     \?     \?     \?     \?   
  \?     \?     \?     \?     \?     ]   (  ]/   "  ]X     ]{     ]?     ]?     ]?      r   w   ?       +          l            ~   9   _   }       ?   S           |   q   ?   h   ?      {       N   Y   ?   ?      .   M   v   =   a   ?   ?       ?       ?   ?      ?      <   #   @   ?   ?       5   [       U                  p   n   ]   ?   C   F   ?      (   ?       4       x   6      &   E       !   ?       ?                   ?   *       V   ?   ?   ?   ?   ?   ?               ?   W   ?       A   1       L   /   H   7       \   g       D   u   c   R   G       ?       >   ?          ?   ?   d                  Z   O               ?   ?               ?   X   T   3   K   ?   `   ?   o   I   ?   ?          m          ?      $   J       k       ?      ,   e      
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
PO-Revision-Date: 2002-03-13 18:22+0100
Last-Translator: Martin von L?wis <martin@v.loewis.de>
Language-Team: German <de@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8-bit
   Sowohl GFMT als auch LFMT k?nnen folgendes enthalten:
    %% %
    %c'C'  das einzelne Zeichen C
    %c'\000'  das Zeichen mit dem Oktalcode 000   GFMT kann enthalten:
    %<  Zeilen von DATEI1.
    %>  Zeilen von DATEI2.
    %=  Zeilen, die sowohl zu DATEI1 als auc zu DATEI2 geh?ren.
    %[-][BREITE][.[PR?Z]]{doxX}BUCHST  Ausgabe nach printf-Regeln f?r BUCHST.
      Folgende BUCHTSTaben gelten f?r neue Gruppen, Kleinschreibung f?r alte:
        F  Erste Zeilennummer.
        L  Letzte Zeilennummer.
        N  Zahl der Zeilen = L-F+1.
        E  F-1.   LFMT kann enthalten:
    %L  Inhalt der Zeile.
    %l  Inhalt der Zeile, ohne Newline am Ende.
    %[-][BREITE][.[PR?Z]]{doxX}n  Zeilennummer im printf-Stil.   LTYPE kann ?old?, ?new? oder ?unchanged? sein. GTYPE ist LTYPE oder ?changed?.   Die ersten SKIP1 Bytes von DATEI1 und die ersten SKIP2 Bytes von DATEI2
  ?berspringen. %s %s differieren: Byte %s, Zeile %s.
 %s %s differieren: Zeichen %s, Zeile %s ist %3o %s %3o %s
 %s: ?diff? ist gescheitert:  %s: ung?ltige Option -- %c.
 %s: ung?ltige Option -- %c
 %s: Option ?%c%s? erlaubt kein Argument.
 %s: Option ?%s? ist mehrdeutig.
 %s: Option ?%s? verlangt ein Argument.
 %s: Option ?--%s? verlangt kein Argument.
 %s: Option ?-W %s? erlaubt kein Argument.
 %s: Option ?-W %s? ist mehrdeutig.
 %s: Option verlangt ein Argument -- %c.
 %s: Unbekannte Option ?%c%s?.
 %s: Unbekannte Option ?--%s?.
 --GTYPE-group-format=GFMT   ?hnlich, GTYPE-Eingabe jedoch mit GFMT formatieren. --LTYPE-line-format=LFMT  ?hnlich, LTYPE-Eingabe jedoch mit LFMT formatieren. --binary  Daten im Bin?rmodus lesen und schreiben. --diff-program=PROGRAMM  PROGRAMM zum Vergleichen von Dateien verwenden. --from-file und --to-file sind beide angegeben. --from-file=DATEI1  DATEI1 mit allen Operanden vergleichen.
                    DATEI1 kann ein Verzeichnis sein. --help   Nur diese Hilfe zeigen. --horizon-lines=ZAHL   Behalte ZAHL Zeilen mit gemeinsamen Pre- und Suffix. --ignore-file-name-case  Unterschiede der Gro?/Kleinschreibung von Dateinamen
                         ignorieren. --line-format=LFMT   ?hnlich, aber alle Eingabe-Zeilen mit LFMT formatieren. --no-ignore-file-name-case  Unterschiede der Gro?/Kleinschreibung von 
                            Dateinamen beachten. --normal  Ein normales Diff ausgeben. --speed-large-files  Es werden gro?e Dateien und viele ?nderungen vermutet. --strip-trailing-cr  Wagenr?cklauf (CR) am Zeilenende beim Einlesen entfernen. --to-file=DATEI2  Alle Operanden mit DATEI2 vergleichen.
                  DATEI2 kann ein Verzeichnis sein. --unidirectional-new-file  Die ersten fehlenden Dateien als leer betrachten. -3, --easy-only   Nicht-zusammengef?hrte (`unmerged') nicht?berlappende ?nderungen ausgeben. -A  --show-all  Alle ?nderungen ausgeben, Konflikte in Klammern. -B, --ignore-blank-lines   Die ?nderungen ?bergehen, wo die Zeilen leer sind. -D NAME  --ifdef=NAME  Datei mit ?#ifdef NAME? in die Ausgabe mischen. Option -D nicht unterst?tzt bei Verzeichnissen -E  --ignore-tab-expansion  ?nderungen aufgrund von Tabausdehnungen ignorieren. -E  --show-overlap  Ungemische ?nderungen anzeigen, Konflikte in Klammern. -H --speed-large-files  Es werden gro?e Dateien und viele ?nderungen vermutet. -I RE --ignore-matching-lines=RE  ?nderungen ignorieren, deren Zeilen 
                                  auf das Muster RE passen. -L LABEL  --label=LABEL  LABEL anstelle des Dateinamens verwenden. -N --new-file  Fehlende Dateien als leer betrachten. -S DATEI  --starting-file=DATEI  Beim Verzeichnisvergleich mit DATEI beginnen. -T --initial-tab  Einr?ckungen durch vorangestellte Tabulatoren erzeugen. -W  -ignore-all-space  Leerraum ignorieren. -X  ?berlappende ?nderungen geklammert ausgeben. -X  DATEI  --exclude-from=DATEI  Dateien ?berspringen, die auf eines der Muster in DATEI passen. -a  --text  Betrachte alle Dateien als Text. -b  --ignore-space-change  Ignoriere ?nderungen im Leerraum. -b  --print-bytes  Verschiedene Bytes ausgeben.   -c, -C ZAHL, --context[=ZAHL]    ZAHL Zeilen des kopierten Kontextes ausgeben
                                   (Vorgabe: 3).
  -u, -U ZAHL, --unified[=ZAHL]    ZAHL Zeilen des "unifizierten" Kontextes ausgeben
                                   (Vorgabe: 3).
  --label LABEL                    LABEL statt Dateiname verwenden.
  -p, --show-c-function            Anzeigen, in welcher C-Funktion die Ver?nderung
                                   vorkommt.
  -F RE, --show-function-line=RE   Die n?chste Zeile anzeigen, auf die RE zutrifft. -d  --minimal  Aufwendig nach einem kleineren Satz von ?nderungen suchen. -e  --ed  Ein ed-Skript ausgeben. -e  --ed  Nicht in DEINEDATEI ?bernommene ?nderungen aus ALTEDATEI in MEINEDATEI abspeichern. -i  --ignore-case  Nicht zwischen Gro?- und Kleinschreibung unterscheiden. -i  --ignore-case  Unterschiede der Gro?/Kleinschreibung im Dateiinhalt 
                   ignorieren. -i  An ed-Skripte ?w?- und ?q?-Kommandos anh?ngen. -i SKIP  --ignore-initial=SKIP  Die ersten SKIP Bytes der Eingabe ?berspringen. -i SKIP1:SKIP2  --ignore-initial=SKIP1:SKIP2 -l  --left-column  Nur linke Spalte der gemeinsamen Zeilen ausgeben. -l  --paginate  Ausgabe an ?pr? zum Seitenumbruch ?bergeben. -l  --verbose  Bytenummern und Werte aller unterschiedlichen Bytes ausgeben. -m  --merge  Zusammengef?hrte Datei anstelle von ed-Skript ausgeben (Vorgabe -A). -n  --rcs  Ausgabe im Diff-Format von RCS. -n LIMIT  --bytes=LIMIT  H?chstens LIMIT Bytes vergleichen. -o DATEI  --output=DATEI  Interaktiv arbeiten, Ausgabe in DATEI speichern. -q  --brief  Nur ausgeben ob die Dateien verschieden sind. -r  --recursive  Rekursiv alle Unterverzeichnisse vergleichen. -s  -quiet  --silent  Keine Ausgabe; nur den Exit-Status setzen. -s  --report-identical-files  Meldung, wenn zwei Dateien gleich sind. -s  --suppress-common-lines  Keine gemeinsamen Zeilen ausgeben. -t  -expand-tabs  Tabulatoren zu Leerzeichen in der Ausgabe ausdehnen. -v  -version  Versionsinformation ausgeben. -w  --ignore-all-space  Freiraum ignorieren. -w ZAHL  --width=ZAHL  Maximal ZAHL Zeichen pro Zeile (Vorgabe: 130). -x  --overlap-only  ?berlappende ?nderungen ausgeben. -x MUSTER --exclude=MUSTER  Dateien, die auf MUSTER passen, ausschlie?en. -y  -side-by-side  In zwei Spalten ausgeben.
  -W ZAHL  --width=ZAHL  Maximal ZAHL Zeichen pro Zeile ausgeben(Vorgabe: 130).
  --left-column  Nur linke Spalte gemeinsamer Zeilen ausgeben.
  ---suppress-common-lines  Keine gemeinsamen Zeilen ausgeben. Bin?rdateien %s and %s sind verschieden.
 Gemeinsame Unterverzeichnisse: %s und %s.
 Vergleichen Sie Dateien Zeile f?r Zeile. Drei Dateien Zeile f?r Zeile vergleichen. Zwei Dateien Byte f?r Byte vergleichen. DATEIEN sind 'DATEI1 DATEI2' oder 'VERZ1 VERZ2' oder "VERZ DATEI..." 
oder "DATEI... VERZ; Datei %s ist ein %s w?hrend Datei %s ein %s ist.
 Dateien %s und %s sind identisch.
 Dateien %s und %s sind verschieden.
 Wenn --from-file oder --to-file angegeben werden, gibt es keine 
Einschr?nkungen f?r DATEIEN. Wenn DATEI ?-? ist oder fehlt, von der Standardeingabe lesen. Wenn DATEI ?-? ist, von der Standardeingabe lesen. Ung?ltige R?ckreferenz. Ung?ltiger Name f?r Zeichenklasse. Ung?ltiges Sortierzeichen. Ung?ltiger Inhalt von \{\}. Ung?liger vorhergehender regul?rer Ausdruck. Ung?ltiges Bereichsende. Ung?ltiger regul?rer Ausdruck. Speicher verbraucht. Keine ?bereinstimmung. Kein Zeilenumbruch am Dateiende. Kein vorhergehender regul?rer Ausdruck. Nur in %s: %s.
 Vorzeitiges Ende des regul?ren Ausdrucks. Regul?rer Ausdruck zu gro?. Fehlerberichte bitte an <bug-gnu-utils@gnu.org>. SKIP-Werte d?rfen die folgenden multiplikativen Anh?nge haben:
kB 1000, K 1024, MB 1.000.000, M 1.048.576,
GB 1.000.000.000, G 1.073.741.824, und so weiter f?r T, P, E, Z, Y. SKIP1 und SKIP2 ist die Zahl der Bytes, die in jeder Datei ?bersprungen werden. Nebeneinanderstehenden Zusammenbringen (side-by-side merge) der Dateiunterschiede. Erfolg. Dieses Programm wird ohne Gew?hrleistung geliefert, soweit dies
gesetzlich zul?ssig ist. Sie k?nnen es unter den Bedingungen der GNU
General Public License weitergeben. 
Details dazu enth?lt die Datei COPYING. Extra Backslash. ?%s --help? gibt Ihnen mehr Informationen. Unbekannter Systemfehler. ?ffnende ( oder \( ohne schlie?ende. Schlie?ende ) oder \) ohne ?ffnende. ?ffnende [ oder [^ ohne schlie?ende. ?ffnende \{ ohne schlie?ende. Aufruf: %s [OPTION]... DATEI1 DATEI2
 Aufruf: %s [OPTION]... DATEI1 [DATEI2 [SKIP1 [SKIP2]]]
 Aufruf: %s [OPTION]... DATEIEN
 Benutzung: %s [OPTION]... MEINEDATEI ALTEDATEI DEINEDATEI
 Geschrieben von Paul Eggert, Mike Haertel, David Hayes,
Richard Stallman und Len Tower. Geschrieben von Randy Smith. Geschrieben von Thomas Lord. Geschrieben von Torbjorn Granlund und David MacKenzie. Die Option ?-%ld? ist veraltet; lassen Sie sie weg. Die Option ?-%ld? ist veraltet; verwenden Sie ?-%c %ld?. ?-? f?r mehr als eine Eingabedatei angegeben. Blockger?t Beide zu vergleichenden Dateien sind Verzeichnisse. ?-? kann nicht mit Verzeichnis verglichen werden. Die Dateinamen ?%s? und ?%s? k?nnen nicht verglichen werden. Kann nicht die Standardeingabe interaktiv mischen. Zeichenorientiertes Ger?t cmp: EOF auf %s.
 Widerspr?chlicher Optionswert %s f?r ?%s?. Widerspr?chliche Optionenen f?r den Ausgabestil. Widerspr?chliche Breitenoptionen Verzeichnis ed:\tEdieren, dann beide Versionen benutzen, jede mit einem Kopf dekoriert.
eb:\tEdieren, dann beide Versionen benutzen.
el:\tEdieren, dann linke Version benutzen.
er:\tEdieren, dann rechte Version benutzen.
e:\t Neue Version edieren.
l:\tLinke Version benutzen.
r:\tRechte Version benutzen.
s:\tSchweigend gemeinsame Zeilen ?bernehmen.
v:\tLauthals gemeinsame Zeilen ?bernehmen.
q:\tBeenden.
 extra Argument ?%s?. fifo Inkompatible Optionen. Eingabedatei schrumpfte. Interner Fehler: Ung?ltiger diff-Typ in process_diff. Interner Fehler: Ung?ltiger diff-Typ an Ausgabe ?bergeben. Interner Fehler: Format f?r diff-Bl?cke ist durcheinander. ung?ltiger --bytes-Wert ?%s?. ung?ltiger --ignore-initial-Wert ?%s?. Ung?ltige Kontextl?nge ?%s?. Ung?ltiges Diff-Format; felende letzte Zeile. Ung?ltiges Diff-Format; inkorrektes Zeichen in f?hrender Zeile Ung?ltiges Diff-Format; ung?ltiger ?nderungstrenner. ung?ltige Horizontl?nge '%s'. Ung?ltig mit ?%s?. Speicher verbraucht. Nachrichtenschlange (?message queue?) Fehlender Operand nach ?%s?. Die Optionen -l und -s sind inkompatibel. Seitenumbruch ist auf diesem System nicht unterst?tzt. Programmfehler Lesefehler. Normale leere Datei. Normale Datei. Semaphore. Shared-Memory-Objekt. Socket. Stack?berlauf Standardausgabe Unterprogramm ?%s? schlug fehl. Unterprogramm ?%s? ist nicht ausf?hrbar. Unterprogramm ?%s? nicht gefunden. Zu viele Datei-Label-Optionen. Typisiertes Speicherobjekt. Seltsame Datei. Schreibfehler. 