??       ?     ?   ?  l      0   ~  1  p  ?   ?  !   F  ?   I       a   0  ?     ?     ?     ?   ,  ?     %   %  C   ,  i   -  ?      ?   &  ?          ,   L  L   J  ?   -  ?   5     (  H   L  q     ?   D  ?   ?     B  ]   D  ?     ?   I     =  O   J  ?   =  ?   8     9  O   C  ?   F  ?   (     @  =   B  ~   M  ?   K     8  [   ,  ?   J  ?   9     /  F   0  v   K  ?   $  ?   G     )  `  V  ?   9  ?        G  :   A  ?   <  ?   .     C  0   ,  t   ?  ?   <  ?   E      B   d   %   ?   5   ?   F  !   .  !J   >  !y   >  !?   A  !?   8  "9   3  "r   #  "?   /  "?   G  "?   /  #B   4  #r   ?  #?     $?   !  $?     $?   !  $?     %   I  %-   &  %w     %?     %?   I  %?   1  &   &  &Q     &x     &?     &?     &?   $  &?     '     '     '2     'C     'L     'f     '?   #  '?     '?   '  '?   ?  '?   =  (?   '  (?     )   ?  )     *   %  *     *?     *T     *f     *x     *?   "  *?   4  *?     *?   .  +   S  +;     +?     +?   1  +?   "  +?   (  ,   *  ,=     ,h   )  ,{   !  ,?   '  ,?   )  ,?     -     -0      -@      -a     -?   	  -?  A  -?     .?     .?     /      /   1  /'   2  /Y   0  /?     /?   #  /?     /?   )  0   1  0B   -  0t     0?     0?     0?     0?     0?   "  1   %  1.     1T     1b     1n     1?   	  1?     1?     1?     1?     1?     1?   &  1?   !  2     2;     2W   
  2k     2v  5  2?   y  3?  ?  43    5?   t  6?   \  7e   '  7?   A  7?     8,     8=     8V   0  8q     8?   )  8?   0  8?   1  9   !  9N   *  9p      9?      9?   r  9?   p  :P   2  :?   E  :?   3  ;:   w  ;n   &  ;?   G  <   ?  <U   d  <?   ?  =L   !  =?   ?  =?   I  >   s  >?   o  ?=   B  ??   g  ??   M  @X     @?   -  A&   K  AT   v  A?   ?  B   ?  B?   E  C0   >  Cv   ~  C?   H  D4   8  D}   7  D?   ?  D?   8  E?   v  E?   7  F2  ?  Fj   B  HH     H?   g  H?   =  I   }  IQ   3  I?   s  J   0  Jw   K  J?   ?  J?   f  K4   b  K?   *  K?   ;  L)     Le   =  L?   A  M#   D  Me   I  M?   ;  M?   C  N0   0  Nt   8  N?   j  N?   7  OI   B  O?  #  O?   ,  P?      Q   !  Q6   &  QX   #  Q   y  Q?   3  R   #  RQ   #  Ru   C  R?   A  R?   .  S     SN     Sh     S?   !  S?   %  S?     S?     S?     T     T)   :  TE   '  T?     T?   '  T?   (  T?   +  U	   ?  U5   E  V    =  VF   
  V?   ?  V?     W~   (  W?     W?     W?     W?     X     X   1  X/   E  Xa   (  X?   E  X?   R  Y     Yi     Y?   2  Y?   '  Y?   1  Y?   8  Z(     Za   5  Z}   *  Z?   8  Z?   <  [     [T   %  [s   ,  [?   :  [?     \   
  \   ?  \+     ]?     ]?     ]?   !  ]?   4  ^   7  ^D   6  ^|     ^?   $  ^?   "  ^?   0  _   H  _H   6  _?   $  _?     _?     `     `   !  `"   &  `D   !  `k     `?     `?     `?     `?     `?     `?     `?     a     a   "  a-   -  aP   +  a~   *  a?     a?     a?     a?      r   w   ?       +          l            ~   9   _   }       ?   S           |   q   ?   h   ?      {       N   Y   ?   ?      .   M   v   =   a   ?   ?       ?       ?   ?      ?      <   #   @   ?   ?       5   [       U                  p   n   ]   ?   C   F   ?      (   ?       4       x   6      &   E       !   ?       ?                   ?   *       V   ?   ?   ?   ?   ?   ?               ?   W   ?       A   1       L   /   H   7       \   g       D   u   c   R   G       ?       >   ?          ?   ?   d                  Z   O               ?   ?               ?   X   T   3   K   ?   `   ?   o   I   ?   ?          m          ?      $   J       k       ?      ,   e      
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
PO-Revision-Date: 2002-03-17 19:06+0100
Last-Translator: Santiago Vila Doncel <sanvila@unex.es>
Language-Team: Spanish <es@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8-bit
   Tanto GFMT como LFMT pueden contener:
    %%  %
    %c'C'  el car?cter C
    %c'\OOO'  el car?cter con c?digo octal OOO   GFMT puede contener:
    %<  l?neas del FICHERO1
    %>  l?neas del FICHERO2
    %=  l?neas comunes a FICHERO1 y FICHERO2
    %[-][ANCHO][.[PRECISI?N]]{doxX}LETRA  especificaci?n printf para LETRA
    Las LETRAs pueden ser como siguen para grupos nuevos (en min?sculas
    para grupos antiguos):
      F  n?mero de la primera l?nea
      L  n?mero de la ?ltima l?nea
      N  n?mero de l?neas = L-F+1
      E  F-1
      M  L+1   LFMT puede contener:
    %L  contenido de la l?nea
    %l  contenido de la l?nea, excluyendo caracteres de nueva l?nea finales
    %[-][ANCHO][.[PRECISI?N]]{doxX}n  especificaci?n en estilo printf para el
                                      n?mero de l?nea de entrada   LTYPE es `old' (antiguo), `new' (nuevo) o `unchanged' (sin cambios).
  GTYPE es como LTYPE o `changed' (cambiado).   Salta los primeros SALTO1 bytes del FICHERO1 y los primeros SALTO2 bytes
    del FICHERO2. %s %s son distintos: byte %s, l?nea %s
 %s %s son distintos: el byte %s, en la l?nea %s es %3o %s %3o %s
 %s: diff fall?:  %s: opci?n ilegal -- %c
 %s: opci?n inv?lida -- %c
 %s: la opci?n `%c%s' no admite ning?n argumento
 %s: la opci?n `%s' es ambigua
 %s: la opci?n `%s' requiere un argumento
 %s: la opci?n `--%s' no admite ning?n argumento
 %s: la opci?n `-W %s' no admite ning?n argumento
 %s: la opci?n `-W %s' es ambigua
 %s: la opci?n requiere un argumento -- %c
 %s: opci?n no reconocida `%c%s'
 %s: opci?n no reconocida `--%s'
 --GTYPE-group-format=GFMT  Similar, pero formatea los grupos de entrada GTYPE
                           con GFMT. --LTYPE-line-format=LFMT  Similar, pero formatea las l?neas de entrada LTYPE
                          con LFMT. --binary  Lee y escribe los datos en modo binario. --diff-program=PROGRAMA  Utiliza PROGRAMA para comparar los ficheros. se ha especificado tanto --from-file como --to-file --from-file=FICHERO1  Compara FICHERO1 con todos los operandos.
                      FICHERO1 puede ser un directorio. --help  Muestra esta ayuda y finaliza. --horizon-lines=N?M  Mantiene N?M l?neas de prefijos y sufijos comunes. --ignore-file-name-case  Descarta las diferencias entre may?sculas y
                         min?sculas al comparar los nombres de los ficheros. --line-format=LFMT  Similar, pero formatea todas las l?neas de entrada
                    con LFMT. --no-ignore-file-name-case  Considera distintas may?sculas y min?sculas
                            cuando compara los nombres de los ficheros. --normal  Produce un diff normal. --speed-large-files  Supone que los ficheros son grandes y los cambios son
                     numerosos, peque?os y dispersos. --strip-trailing-cr  Elimina los retornos de carro finales en la entrada. --to-file=FICHERO2  Compara todos los operandos con FICHERO2.
                    FICHERO2 puede ser un directorio. --unidirectional-new-file  Trata los ficheros originales que no existan
                           como vac?os. -3  --easy-only  Muestra los cambios no mezclados ni superpuestos. -A  --show-all  Muestra todos los cambios, encerrando los conflictos entre
                  corchetes. -B  --ignore-blank-lines  Descarta los cambios cuyas l?neas son todas vac?as. -D NOMBRE --ifdef=NOMBRE  Genera un fichero combinado que muestra las
                          diferencias con '#ifdef NOMBRE' la opci?n -D no se puede usar con directorios -E  --ignore-tab-expansion  Descarta cambios debidos a expansiones de tabs. -E  --show-overlap  Muestra los cambios no mezclados, encerrando los
                      conflictos entre corchetes. -H  --speed-large-files  Supone que los ficheros son grandes y los cambios son
                           numerosos, peque?os y dispersos. -I EXPR-REG --ignore-matching-lines=EXPR-REG  Descarta las l?neas que
                                                coincidan con EXPR-REG. -L NOMBRE  --label=NOMBRE  Usa NOMBRE en lugar del nombre de fichero. -N  --new-file  Trata los ficheros que no existan como vac?os. -S FICHERO  --starting-file=FICHERO  Comienza por FICHERO cuando se comparan
                                     directorios. -T  --initial-tab  Hace que los tabuladores se alineen anteponiendo uno. -W  --ignore-all-space  Descarta los espacios en blanco. -X  Muestra los cambios superpuestos (entre corchetes). -X FICHERO  --exclude-from=FICHERO  Excluye los ficheros que coincidan con
                                    alguna expresi?n regular de FICHERO. -a  --text  Trata todos los ficheros como de tipo texto. -b  --ignore-space-change  Descarta las diferencias en la cantidad de espacios
                             en blanco. -b  --print-bytes  Muestra los bytes que son distintos. -c  -C N?M  --context[=N?M]  Muestra N?M (3 por omisi?n) l?neas de contexto
-u  -U N?M  --unified[=N?M]  Muestra N?M (3 por omisi?n) l?neas de contexto
                             unificado.
  --label NOMBRE  Usa NOMBRE en lugar del nombre de fichero.
  -p  --show-c-function  Muestra en qu? funci?n C se encuentra cada cambio.
  -F EXPR-REG  --show-function-line=EXPR-REG  Muestra la l?nea m?s reciente
                                              que coincida con EXPR-REG. -d  --minimal  Se esfuerza en encontrar un grupo de cambios menor. -e  --ed  Produce un script ed. -e  --ed  Muestra los cambios sin mezclar entre FICHERO-ANTIGUO
            y TU-FICHERO en MI-FICHERO. -i  --ignore-case  Considera iguales may?sculas y min?sculas. -i  --ignore-case  Descarta las diferencias entre may?sculas y min?sculas
                   en el contenido de los ficheros. -i  A?ade las ?rdenes `w' y `q' a los `scripts' ed. -i SALTO  --ignore-initial=SALTO  Salta los primeros SALTO bytes de
                                    la entrada. -i SALTO1:SALTO2  --ignore-initial=SALTO1:SALTO2 -l  --left-column  Muestra s?lo en la columna izquierda las l?neas comunes. -l  --paginate  Pasa la salida a trav?s de `pr' para paginarla. -l  --verbose  Muestra los n?meros de byte y valores de todos los bytes que
                 difieran. -m  --merge  Produce un fichero mezclado en lugar de un
               script ed (por omisi?n -A). -n  --rcs  Produce un diff en formato RCS. -n L?MITE --bytes=L?MITE  Compara como m?ximo L?MITE bytes. -o FICHERO  --output=FICHERO  Opera interactivamente, enviando el resultado
                                al fichero FICHERO. -q  --brief  Indica s?lo si los ficheros son diferentes o no. -r  --recursive  Compara recursivamente todos los subdirectorios. -s  --quiet  --silent  No muestra nada, s?lo da un c?digo de salida. -s  --report-identical-files  Notifica cu?ndo dos ficheros son id?nticos. -s  --suppress-common-lines  No muestra las l?neas comunes. -t  --expand-tabs  Expande los tabuladores a espacios en la salida. -v  --version  Informa de la versi?n y finaliza. -w  --ignore-all-space  Descarta los espacios en blanco. -w N?M  --width=N?M  Muestra como mucho N?M caracteres por l?nea
                       (por omisi?n 130). -x  --overlap-only  Muestra los cambios que se solapen. -x PAT  --exclude=PAT  Excluye los ficheros que coincidan con PAT. -y  --side-by-side  Genera salida en dos columnas.
  -W N?M  --width=N?M  Genera como m?ximo N?M (130 por omisi?n) caracteres
                       por l?nea.
  --left-column  Muestra s?lo la columna izquierda en las l?neas comunes.
  --suppress-common-lines  No muestra las l?neas comunes. Los ficheros binarios %s y %s son distintos
 Subdirectorios comunes: %s y %s
 Compara ficheros l?nea por l?nea. Compara tres ficheros l?nea por l?nea. Compara dos ficheros byte por byte. FICHEROS puede ser `FICHERO1 FICHERO2' o `DIRECTORIO1 DIRECTORIO2'
  o `DIRECTORIO FICHERO...' o `FICHERO... DIRECTORIO'. El fichero %s es un %s mientras que el %s es un %s
 Los ficheros %s y %s con id?nticos
 Los ficheros %s y %s son distintos
 Si se da --from-file o --to-file, no hay restricciones en FICHEROS. Si un FICHERO es `-' o no se especifica, lee la entrada est?ndar. Si un FICHERO es `-', lee la entrada est?ndar. Retro-referencia inv?lida Car?cter de clase inv?lido Car?cter de uni?n inv?lido El contenido de \{\} no es v?lido Expresi?n regular precedente inv?lida Final de rango inv?lido Expresi?n regular inv?lida Memoria agotada No hay ninguna coincidencia No hay ning?n car?cter de nueva l?nea al final del fichero No hay ninguna expresi?n regular previa S?lo en %s: %s
 Final prematuro de la expresi?n regular La expresi?n regular es demasiado grande Comunicar bichos a <bug-gnu-utils@gnu.org>. Los valores SALTO pueden estar seguidos por los siguientes sufijos
multiplicadores:
kB 1.000, K 1.024, MB 1.000.000, M 1.048.576,
GB 1.000.000.000, G 1.073.741.824, y as? en adelante para T, P, E, Z, Y. SALTO1 y SALTO2 son el n?mero de bytes que se saltan en cada fichero. Combinaci?n a dos columnas de las diferencias entre ficheros. Conseguido Este programa viene sin NINGUNA GARANT?A, hasta donde permite la ley.
Se pueden redistribuir copias de este programa bajo los t?rminos de la
Licencia P?blica General de GNU.
Para m?s informaci?n sobre esto, vea el fichero llamado COPYING. Barra invertida al final Pruebe `%s --help' para m?s informaci?n. Error del sistema desconocido ( ? \( desemparejado ) ? \) desemparejado [ ? [^ desemparejados \{ desemparejado Modo de empleo: %s [OPCI?N]... FICHERO1 FICHERO2
 Modo de empleo: %s [OPCI?N]... FICHERO1 [FICHERO2 [SALTO1 [SALTO2]]]
 Modo de empleo: %s [OPCI?N]... FICHEROS
 Modo de empleo: %s [OPCI?N]... MI-FICHERO FICHERO-ANTIGUO TU-FICHERO
 Escrito por Paul Eggert, Mike Haertel, David Hayes,
Richard Stallman, y Len Tower. Escrito por Randy Smith. Escrito por Thomas Lord. Escrito por Torbjorn Granlund and David MacKenzie. la opci?n `-%ld' est? obsoleta; om?tala la opci?n `-%ld' est? obsoleta; utilice `-%c %ld' se ha especificado `-' para m?s de un fichero de entrada fichero especial de bloques los dos ficheros que hay que comparar son directorios no se puede comparar `-' con un directorio no se pueden comparar los nombres de fichero `%s' y `%s' no se puede mezclar interactivamente con la entrada est?ndar fichero especial de caracteres cmp: fin de fichero encontrado en %s
 la opci?n %s tiene el valor conflictivo `%s' las especificaciones del estilo de salida son conflictivas opciones de ancho conflictivas directorio ed:     Edita y usa ambas versiones, cada una decorada con una cabecera.
eb:     Edita y usa ambas versiones.
el:     Edita y usa la versi?n izquierda.
er:     Edita y usa la versi?n derecha.
e:      Edita una nueva versi?n.
l:      Usa la versi?n izquierda.
r:      Usa la versi?n derecha.
s:      Incluye l?neas comunes silenciosamente.
v:      Incluye l?neas comunes verbosamente.
q:      Salir.
 operando extra `%s' `fifo' opciones incompatibles el fichero de entrada ha menguado error interno: tipo de diff inv?lido en process_diff error interno: tipo de diff inv?lido pasado a la salida error interno: fallo en el formato de los bloques diff valor --bytes inv?lido `%s' valor --ignore-initial inv?lido `%s' longitud de contexto inv?lida `%s' formato de diff inv?lido; l?nea final incompleta formato de diff inv?lido; caracteres incorrectos al comienzo de la l?nea formato de diff inv?lido; separador de cambio inv?lido longitud del horizonte inv?lida `%s' ancho inv?lido `%s' memoria agotada cola de mensajes falta un operando despu?s de `%s' las opciones -l y -s son incompatibles este sistema no admite paginaci?n error del programa la lectura fall? fichero regular vac?o fichero regular sem?foro objeto de memoria compartido `socket' desbordamiento de pila salida est?ndar el programa subsidiario `%s' fall? el programa subsidiario `%s' no es ejecutable no se encontr? el programa subsidiario `%s' demasiadas opciones de etiqueta de fichero objeto de memoria `typed' fichero extra?o la escritura fall? 