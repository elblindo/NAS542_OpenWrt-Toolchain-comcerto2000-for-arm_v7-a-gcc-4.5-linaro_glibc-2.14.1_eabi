??       ?     ?   ?  l      0   ~  1  p  ?   ?  !   F  ?   I       a   0  ?     ?     ?     ?   ,  ?     %   %  C   ,  i   -  ?      ?   &  ?          ,   L  L   J  ?   -  ?   5     (  H   L  q     ?   D  ?   ?     B  ]   D  ?     ?   I     =  O   J  ?   =  ?   8     9  O   C  ?   F  ?   (     @  =   B  ~   M  ?   K     8  [   ,  ?   J  ?   9     /  F   0  v   K  ?   $  ?   G     )  `  V  ?   9  ?        G  :   A  ?   <  ?   .     C  0   ,  t   ?  ?   <  ?   E      B   d   %   ?   5   ?   F  !   .  !J   >  !y   >  !?   A  !?   8  "9   3  "r   #  "?   /  "?   G  "?   /  #B   4  #r   ?  #?     $?   !  $?     $?   !  $?     %   I  %-   &  %w     %?     %?   I  %?   1  &   &  &Q     &x     &?     &?     &?   $  &?     '     '     '2     'C     'L     'f     '?   #  '?     '?   '  '?   ?  '?   =  (?   '  (?     )   ?  )     *   %  *     *?     *T     *f     *x     *?   "  *?   4  *?     *?   .  +   S  +;     +?     +?   1  +?   "  +?   (  ,   *  ,=     ,h   )  ,{   !  ,?   '  ,?   )  ,?     -     -0      -@      -a     -?   	  -?  A  -?     .?     .?     /      /   1  /'   2  /Y   0  /?     /?   #  /?     /?   )  0   1  0B   -  0t     0?     0?     0?     0?     0?   "  1   %  1.     1T     1b     1n     1?   	  1?     1?     1?     1?     1?     1?   &  1?   !  2     2;     2W   
  2k     2v  J  2?   j  3?  ?  49   ?  5?   o  6x   I  6?   '  72   7  7Z     7?     7?     7?   ,  7?     8   (  8+   ,  8T   -  8?     8?   )  8?   !  8?   !  9   s  9=   p  9?   /  :"   H  :R   6  :?   M  :?     ;    A  ;;   K  ;}   M  ;?   ?  <   "  <?   J  <?   N  =   N  =Z   J  =?   ?  =?   G  >4   N  >|   J  >?   .  ?   M  ?E   N  ??   N  ??   }  @1   D  @?   ;  @?   K  A0     A|   ;  A?   @  B8   {  By   /  B?   G  C%   .  Cm  ?  C?   B  E'   #  Ej   J  E?   H  E?   H  F"   4  Fk   G  F?      F?   D  G	   5  GN   A  G?   H  G?   +  H   <  H;   N  Hx   F  H?   I  I   C  IX   H  I?   9  I?   ?  J   2  J_   ;  J?   C  J?   8  K   D  KK   ?  K?   -  L?     L?   "  L?   $  L?   $  M!   L  MF   8  M?   #  M?   $  M?   J  N   @  N`   /  N?   "  N?   &  N?      O     O<   '  OW     O     O?     O?     O?   '  O?   '  P     P+   "  P9      P\   q  P}   ?  P?   8  Q?   <  Q?     R   ?  R      S   0  S     SK     Sg     S{     S?     S?      S?   ,  S?     T    .  T   Q  TN     T?     T?   0  T?   "  U   .  U&   3  UU     U?   7  U?   '  U?   .  V   8  V5     Vn     V?   '  V?   '  V?     V?   
  W  ?  W%     X?     X?     X?     X?   5  Y   4  YK   /  Y?      Y?   )  Y?   %  Y?   6  Z!   F  ZX   ;  Z?   &  Z?     [     [     [)   !  [:   $  [\   -  [?     [?     [?     [?     [?     [?     \     \      \'     \=   "  \L   ,  \o   )  \?   +  \?     \?     ]     ]      r   w   ?       +          l            ~   9   _   }       ?   S           |   q   ?   h   ?      {       N   Y   ?   ?      .   M   v   =   a   ?   ?       ?       ?   ?      ?      <   #   @   ?   ?       5   [       U                  p   n   ]   ?   C   F   ?      (   ?       4       x   6      &   E       !   ?       ?                   ?   *       V   ?   ?   ?   ?   ?   ?               ?   W   ?       A   1       L   /   H   7       \   g       D   u   c   R   G       ?       >   ?          ?   ?   d                  Z   O               ?   ?               ?   X   T   3   K   ?   `   ?   o   I   ?   ?          m          ?      $   J       k       ?      ,   e      
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
PO-Revision-Date: 2002-03-12 15:52+0100
Last-Translator: Jacobo Tarr?o Barreiro <jtarrio@iname.com>
Language-Team: Galician <gpul-traduccion@ceu.fi.udc.es>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8-bit
   GFMT e LFMT poden conter:
    %%  %
    %c'C'  o car?cter C
    %c'\OOO'  o car?cter de c?digo octal OOO   GFMT pode conter:
    %<  li?as do FICH1
    %>  li?as do FICH2
    %=  li?as com?ns a FICH1 e FICH2
    %[-][ANCHO][.[PREC]]{doxX}LETRA  especificaci?n estilo printf para a LETRA
      As LETRAs son como segue para o novo grupo, en min?sculas para o vello:
        F  n?mero da primeira li?a
        L  n?mero da derradeira li?a
        N  n?mero de li?as = L-F+1
        E  F-1
        M  L+1   LFMT pode conter:
    %L  contido da li?a
    %l  contido da li?a, exclu?ndo os saltos de li?a finais
    %[-][ANCHO][.[PREC]]{doxX}n  especif. estilo printf do n?mero da li?a   LTYPE ? `old' (vello), `new' (novo) ou `unchanged' (sen cambios).
  GTYPE ? LTYPE ou `changed' (con cambios).   Omiti-los primeiros N1 bytes de FICH1 e os primeiros N2 bytes de FICH2. %s %s son diferentes: byte %s, li?a %s
 %s %s son diferentes: byte %s, li?a %s ? %3o %s %3o %s
 %s: diff fallou:  %s: opci?n non permitida -- %c
 %s: opci?n incorrecta -- %c
 %s: a opci?n `%c%s' non admite un par?metro
 %s: a opci?n `%s' ? ambigua
 %s: a opci?n `%s' precisa dun par?metro
 %s: a opci?n `--%s' non admite un par?metro
 %s: a opci?n `-W %s' non admite un par?metro
 %s: a opci?n `-W %s' ? ambigua
 %s: a opci?n precisa dun par?metro -- %c
 %s: opci?n non reco?ecida `%c%s'
 %s: opci?n non reco?ecida `--%s'
 --GTYPE-group-format=GFMT  Similar, pero formata-los grupos de entrada GTYPE
                             con GFMT. --LTYPE-line-format=LFMT  Similar, pero formata-las li?as de entrada LTYPE
                            con LFMT. --binary  Ler e escribir datos en modo binario. --diff-program=PROGRAMA  Emprega-lo PROGRAMA para compara-los ficheiros. Especific?ronse --from-file e --to-file ao mesmo tempo --from-file=FICH1  Comparar FICH1 con t?dolos operandos. Pode ser directorio. --help  Amosar esta axuda. --horizon-lines=NUM  Manter NUM li?as do prefixo e sufixo com?ns. --ignore-file-name-case  Ignorar mai?sculas/min?sculas no nome do ficheiro. --line-format=LFMT  Similar, pero formatar t?dalas li?as de entrada con LFMT. --no-ignore-file-name-case  Ter en conta as mai?sculas/min?sculas
                                ao compara-los nomes dos ficheiros. --normal  Producir un diff normal. --speed-large-files  Asumir ficheiros longos e pequenos cambios dispersos. --strip-trailing-cr  Elimina-los retornos de carro ? fin das li?as de entrada. --to-file=FICH2  Comparar t?dolos operandos con FICH2. Pode ser un directorio. --unidirectional-new-file  Tratar ficheiros vellos ausentes coma baleiros. -3  --easy-only  Amosar cambios non solapados e non mesturados. -a  --show-all  Amosar t?dolos cambios, cos conflictos entre corchetes. -B  --ignore-blank-lines  Ignora-los cambios que te?an t?dalas li?as en branco -D NOME  -ifdef=NOME  Amosa-lo ficheiro mesturado con diffs `#ifdef NOME'. A opci?n -D non est? soportada con directorios -E  --ignore-tab-expansion  Ignora-los cambios pola expansi?n de tabulaci?ns. -E  --show-overlap  Amosar cambios sen mesturar cos conflictos entre corchetes -H  --speed-large-files  Asumir ficheiros longos e pequenos cambios dispersos. -I RE  --ignore-matching-lines=RE  Ignora-los cambios nos que t?dalas li?as
                                     conte?an RE. -L ETIQ  --label=ETIQ  Usa-la ETIQueta no canto do nome do ficheiro. -N  --new-file  Trata-los ficheiros ausentes coma baleiros. -S FICH  --starting-file=FICH  Comezar no FICHeiro ao comparar directorios. -T  --initial-tab  Facer que as tabulaci?ns queden ali?adas po?endo outra
                     tabulaci?n ao principio da li?a. -W  --ignore-all-space  Ignorar t?dolos espacios en branco. -X  Amosa-los cambios que se solapen, po??ndoos entre corchetes. -X FICH  --exclude-from=FICH  Excluir ficheiros que coinciden con alg?n
                                patr?n do FICHeiro. -a  --text  Tratar t?dolos ficheiros coma texto -b  --ignore-space-change  Ignora-los cambios na cantidade de espacios. -b  --print-bytes  Amosa-los bytes diferentes. -c  -C N?M  --context[=N?M]  Amosar N?M [3] li?as de contexto copiado.
-u  -U N?M  --unified[=N?M]  Amosar N?M [3] li?as de contexto unificado.
  --label ETIQUETA  Usa-la ETIQUETA no canto do nome do ficheiro.
  -p  --show-c-function  Amosar en que funci?n C est? cada cambio.
  -F RE  --show-function-line=RE  Amosa-la li?a m?is recente que coincide
                                    con RE. -d  --minimal  Procurar atopa-lo conxunto de cambios m?is pequeno. -e  --ed  Producir un script de ed. -e  --ed  Producir cambios sen mesturar de FICHVELLO a TEUFICH en MEUFICH. -i  --ignore-case  Ignora-las diferencias entre mai?sculas e min?sculas. -i  --ignore-case  Ignorar mai?sculas/min?sculas no contido do ficheiro. -i  Engadi-los comandos `w' e `q' aos scripts en ed. -i N     --ignore-initial=N     Omiti-los primeiros N bytes de entrada. -i N1:N2  --ignore-initial=N1:N2 -l  --left-column  Amosar s? a columna da esquerda nas li?as com?ns. -l  --paginate  Pasa-la sa?da por `pr' para paxinala. -l  --verbose  Amosa-los n?meros e valores dos bytes que difiran. -m  --merge  Amosa-lo ficheiro mesturado no canto dun script en ed [-A]. -n  --rcs  Producir un diff en formato RCS. -n L?MITE  --bytes=L?MITE  Comparar como moito L?MITE bytes. -o FICH  --output=FICH  Operar interactivamente, mandando a sa?da ao FICHeiro. -q  --brief  Producir unha sa?da s? se os ficheiros te?en diferencias. -r  --recursive  Comparar recursivamente os subdirectorios que se atopen. -s  --quiet  --silent  Non producir nada; s? da-lo estado de sa?da. -s  --report-identical-files  Informar cando dous ficheiros son o mesmo. -s  --suppress-common-llines  Non amosa-las li?as com?ns. -t  --expand-tabs  Expandi-las tabulaci?ns a espacios na sa?da. -v  --version  Amosar informaci?n sobre a versi?n. -w  --ignore-all-space  Ignorar t?dolos espacios en branco. -w N?M  --width=N?M  Amosar como moito N?M [130] columnas por li?a. -x  --overlap-only  Amosa-los cambios que se superpo?en. -x PAT  --exclude=PAT  Exclui-los ficheiros que coinciden co PATr?n. -y  --side-by-side  Produci-la sa?da en d?as columnas.
  -w N?M  --width=N?M  Amosar como moito N?M [130] columnas de impresi?n.
  --left-column  Amosar s? a columna da esquerda nas li?as com?ns.
  --suppress-common-lines  Non amosa-las li?as com?ns. Os ficheiros binarios %s e %s son diferentes
 Subdirectorios com?ns: %s e %s
 Compara-los ficheiros li?a a li?a. Comparar tres ficheiros li?a a li?a. Comparar dous ficheiros byte a byte. Os FICHEIROS son `FICH1 FICH2', `DIR1 DIR2', `DIR FICH...' ou `FICH... DIR'. O ficheiro %s ? un %s mentres que o ficheiro %s ? un %s
 Os ficheiros %s e %s son id?nticos
 Os ficheiros %s e %s son diferentes
 Se se indica --from-file ou --to-file, non hai restricci?ns nos FICHEIROS. Se un FICHEIRO ? `-' ou non se indica, lese da entrada est?ndar. Se un FICHEIRO ? `-', lese da entrada est?ndar. Referencia cara a atr?s incorrecta Nome de clase de caracteres incorrecto Car?cter de ordeaci?n incorrecto Contido de \{\} incorrecto Expresi?n regular precedente incorrecta Fin de rango incorrecto Expresi?n regular incorrecta Memoria esgotada Non hai coincidencias Non hai un salto de li?a na fin da li?a Non hai unha expresi?n regular anterior S? en %s: %s
 Fin de expresi?n regular prematura Expresi?n regular grande de m?is Informe dos erros no programa a <bug-gnu-utils@gnu.org>.
Informe dos erros na traducci?n a <proxecto@trasno.net>. Os valores N poden estar seguidos polos seguintes sufixos multiplicativos:
kB 1000, K 1024, MB 1.000.000, M 1.048.576,
GB 1.000.000.000, G 1.073.741.824, e as? para T, P, E, Z e Y. N1 e N2 son o n?mero de bytes a omitir en cada ficheiro. Mestura en d?as columnas das diferencias entre os ficheiros. ?xito Este programa ven SEN GARANT?A, ata o permitido pola lei.
Pode redistribu?r copias deste programa baixo os termos
da Licencia P?blica Xeral de GNU.
Para m?is informaci?n sobre estas materias, vexa o ficheiro chamado COPYING. Barra invertida ao final Escriba `%s --help' para obter m?is informaci?n. Erro do sistema desco?ecido ( ou \( sen parella ) ou \) sen parella [ ou [^ sen parella \{ sen parella Uso: %s [OPCI?N]... FICH1 FICH2
 Uso: %s [OPCI?N]... FICH1 [FICH2 [N1 [N2]]]
 Uso: %s [OPCI?N]... FICHEIROS
 Uso: %s [OPCI?N]... MEUFICH VELLOFICH TEUFICH
 Escrito por Paul Eggert, Mike Haertel, David Hayes,
Richard Stallman e Len Tower. Escrito por Randy Smith. Escrito por Thomas Lord. Escrito por Torbjorn Granlund e David MacKenzie. A opci?n `-%ld' ? obsoleta; om?taa A opci?n `-%ld' ? obsoleta; empregue `-%c %ld' Especificouse `-' para m?is dun ficheiro de entrada ficheiro especial de bloques ?mbolos dous ficheiros a ser comparados son directorios non se pode comparar `-' cun directorio non se poden compara-los ficheiros `%s' e `%s' non se pode mestura-la entrada est?ndar interactivamente ficheiro especial de caracteres cmp: Fin de Ficheiro en %s
 valor `%1$s' da opci?n %2$s conflictivo opci?ns de estilo da sa?da conflictivas opci?ns de anchura conflictivas directorio ed:	Editar e usar ?mbalas d?as versi?ns, cada unha cunha cabeceira.
eb:	Editar e usar ?mbalas d?as versi?ns.
el:	Editar e logo usa-la versi?n da esquerda.
er:	Editar e logo usa-la versi?n da dereita.
e:	Editar unha nova versi?n.
l:	usa-la versi?n da esquerda.
r:	usa-la versi?n da dereita.
e:	Editar unha nova versi?n.
s:	Inclui-las li?as com?ns silenciosamente.
v:	Inclui-las li?as com?ns faladoramente.
q:	Sair.
 operando `%s' sobrante fifo opci?ns incompatibles o ficheiro de entrada encolleu erro interno: tipo de diff non v?lido en process_diff erro interno_ tipo de diff non v?lido pasado ? sa?da erro interno: fallo no formato dos bloques diff valor de --bytes `%s' non v?lido valor de --ignore-initial `%s' non v?lido lonxitude do contexto `%s' non v?lida formato de diff non v?lido: derradeira li?a incompleta formato de diff non v?lido: caracteres a principio de li?a incorrectos formato de diff non v?lido; separador de cambios non v?lido lonxitude do horizonte `%s' non v?lida ancho `%s' non v?lido memoria esgotada cola de mensaxes falta un operando despois de `%s' as opci?ns -l e -s son incompatibles a paxinaci?n non est? soportada nesta m?quina erro do programa fallou a lectura ficheiro normal baleiro ficheiro normal sem?foro obxecto de memoria compartida socket desbordamento da pila sa?da est?ndar fallou o programa subsidiario `%s' o programa subsidiario `%s' non ? executable non se atopou o programa subsidiario `%s' demasiadas opci?ns de etiquetas de ficheiro obxecto de memoria con tipo ficheiro raro fallou a escritura 