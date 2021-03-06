??       ?     ?   ?  l      0   ~  1  p  ?   ?  !   F  ?   I       a   0  ?     ?     ?     ?   ,  ?     %   %  C   ,  i   -  ?      ?   &  ?          ,   L  L   J  ?   -  ?   5     (  H   L  q     ?   D  ?   ?     B  ]   D  ?     ?   I     =  O   J  ?   =  ?   8     9  O   C  ?   F  ?   (     @  =   B  ~   M  ?   K     8  [   ,  ?   J  ?   9     /  F   0  v   K  ?   $  ?   G     )  `  V  ?   9  ?        G  :   A  ?   <  ?   .     C  0   ,  t   ?  ?   <  ?   E      B   d   %   ?   5   ?   F  !   .  !J   >  !y   >  !?   A  !?   8  "9   3  "r   #  "?   /  "?   G  "?   /  #B   4  #r   ?  #?     $?   !  $?     $?   !  $?     %   I  %-   &  %w     %?     %?   I  %?   1  &   &  &Q     &x     &?     &?     &?   $  &?     '     '     '2     'C     'L     'f     '?   #  '?     '?   '  '?   ?  '?   =  (?   '  (?     )   ?  )     *   %  *     *?     *T     *f     *x     *?   "  *?   4  *?     *?   .  +   S  +;     +?     +?   1  +?   "  +?   (  ,   *  ,=     ,h   )  ,{   !  ,?   '  ,?   )  ,?     -     -0      -@      -a     -?   	  -?  A  -?     .?     .?     /      /   1  /'   2  /Y   0  /?     /?   #  /?     /?   )  0   1  0B   -  0t     0?     0?     0?     0?     0?   "  1   %  1.     1T     1b     1n     1?   	  1?     1?     1?     1?     1?     1?   &  1?   !  2     2;     2W   
  2k     2v  C  2?   ?  3?  8  4K  *  6?   n  7?   Z  8   *  8y   6  8?     8?   !  8?   !  9   0  97   !  9h   *  9?   0  9?   1  9?   $  :   )  :=   *  :g   *  :?   s  :?   p  ;1   /  ;?   I  ;?   3  <   ?  <P   ,  <?   N  =   U  =V   Q  =?   `  =?   /  >_   _  >?   A  >?   ?  ?1   G  ??   T  ??   >  @S   V  @?   ?  @?   *  An   V  A?   ;  A?   Z  B,   v  B?   G  B?   E  CF     C?   Q  D   7  D^   =  D?   ?  D?   7  Eh   D  E?   4  E?  ?  F   J  H   '  HW   ?  H   5  I%   Q  I[   9  I?   D  I?   2  J,   K  J_   =  J?   \  J?   R  KF   =  K?   E  K?   K  L   @  Li   E  L?   Y  L?   K  MJ   B  M?   D  M?   8  N   7  NW   N  N?   =  N?   S  O  5  Op   0  P?   /  P?   %  Q   '  Q-   &  QU   _  Q|   :  Q?   '  R   '  R?   V  Rg   D  R?   A  S   "  SE   0  Sh   *  S?      S?   /  S?   !  T   $  T7     T\     Tm   (  T?   -  T?     T?   )  T?   !  U   4  U;   ?  Up   O  V8   /  V?     V?   ?  V?     W?   0  W?     W?     W?     X     X!     X5   (  XD   :  Xm     X?   .  X?   P  X?     YH     Y_   /  Yv   )  Y?   3  Y?   ,  Z     Z1   2  ZG   )  Zz   5  Z?   5  Z?     [   !  [+   *  [M   )  [x     [?   
  [?  ?  [?     ]b     ]?     ]?     ]?   ;  ]?   9  ]?   9  ^5     ^o   '  ^?   $  ^?   6  ^?   I  _   >  _\   "  _?     _?     _?     _?     _?   #  `   7  `<     `t     `?     `?     `?   	  `?     `?   
  `?     `?     a   $  a   0  a;   &  al   2  a?     a?     a?     a?      r   w   ?       +          l            ~   9   _   }       ?   S           |   q   ?   h   ?      {       N   Y   ?   ?      .   M   v   =   a   ?   ?       ?       ?   ?      ?      <   #   @   ?   ?       5   [       U                  p   n   ]   ?   C   F   ?      (   ?       4       x   6      &   E       !   ?       ?                   ?   *       V   ?   ?   ?   ?   ?   ?               ?   W   ?       A   1       L   /   H   7       \   g       D   u   c   R   G       ?       >   ?          ?   ?   d                  Z   O               ?   ?               ?   X   T   3   K   ?   `   ?   o   I   ?   ?          m          ?      $   J       k       ?      ,   e      
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
PO-Revision-Date: 2002-03-17 20:00-0500
Last-Translator: Michel Robitaille <robitail@IRO.UMontreal.CA>
Language-Team: French <traduc@traduc.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8-bit
 GFMT ou LFMT peuvent contenir:
  %%  %
  %c? C ?     le caract?re ? C ? lui-m?me
  %c'\OOO? le caract?re dont le code octal est OOO GFMT peut contenir:
  %<  pour marquer les lignes du FICHIER1
  %>  pour marquer les lignes du FICHIER2
  %=  pour marquer les lignes identiques entre FICHIER1 et FICHIER2
  %[-][LARGEUR][.[PREC]]{doxX}LETTRE, les sp?cifications de LETTRE
    sont identiques ? la notation que l'on retrouve dans ? printf() ?
    dont les codes possibles de LETTRE sont
    en majuscule pour le nouveau groupe, 
    en minuscules pour l'ancien groupe:
      F  num?ro de la premi?re ligne
      L  num?ro de la derni?re ligne
      N  nombre de lignes = L-F+1
      E  F-1
      M  L+1 LFMT peut contenir:
  %L                             pour le contenu de la ligne
  %l                             pour le contenu de la ligne sans fin de ligne
  %[-][LARGEUR][.[PREC]]{doxX}n  la sp?cification du num?ro de ligne
                                 d'entr?e selon le format de printf() LTYPE peut ?tre soit ? old ?, ? new ?, ou ? unchanged ?.  GTYPE prend une des valeurs de LTYPE ou ? changed ?.   escamoter les SAUT1 premiers octets du FICHIER1 et les SAUT2 premiers octets du FICHIER2 %s %s sont diff?rents: octet %s, ligne %s
 %s %s diff?rent: octet %s, ligne %s est %3o %s %3o %s
 %s: ?chec de ? diff ?:  %s: l'option -- %c est ill?gale.
 %s: l'option -- %c est invalide.
 %s: l'option ? %c%s ? ne permet aucun argument.
 %s: l'option ? %s ? est ambigu?.
 %s: l'option ? %s ? requiert un argument.
 %s: l'option ? --%s ? ne permet aucun argument.
 %s: l'option ? -W %s ? ne permet aucun argument.
 %s: l'option ? -W %s ? est ambigu?.
 %s: l'option -- %c requiert un argument.
 %s: l'option ? %c%s ? n'est pas reconnue.
 %s: l'option ? --%s ? n'est pas reconnue.
 --GTYPE-group-format=GFMT  similaire, mais formater les groupes
                           d'entr?e GTYPE avec GFMT --LTYPE-line-format=LFMT  similaire, mais formater les lignes
                          d'entr?e LTYPE avec LFMT --binary  lire et ?crire les donn?es en binaire --diff-program=PROG     utiliser le PROGramme pour comparer les fichiers. --from-file et --to-file ont ?t? sp?cifi?s ensemble --from-file=FICHIER1
                   comparer le FICHIER1 ? toutes les op?randes.
                   FICHIER1 peut ?tre un r?pertoire. --help               afficher l'aide-m?moire --horizon-lines=N   retenir N lignes ayant des pr?fixes et suffixes identiques --ignore-file-name-case  ignorer la casse lors de la comparaison des noms de fichiers --line-format=LFMT  similaire, mais formater toutes les lignes d'entr?e avec LFMT --no-ignore-file-name-case  tenir compte de la casse lors de la comparaison des noms de fichiers --normal  produire un ? diff ? en format normal --speed-large-files  traiter de grands fichiers et ayant plusieurs petits changements dispers?s --strip-trailing-cr  ?liminer les retours de chariot de l'entr?e. --to-file=FICHIER2
                   comparer toutes les op?randes ? FICHIER2.
                   FICHIER2 peut ?tre un r?pertoire. --unidirectional-new-file      traiter les fichiers absents comme vides -3  --easy-only  afficher tous les changements non fusionn?s qui ne se recoupent pas -A  --show-all  afficher toutes les diff?rences entre crochets -B  --ignore-blank-lines  ignorer les changements dont toutes les lignes sont blanches -D NOM   --ifdef=NOM   afficher la fusion des fichiers en indiquant les diff?rences par des ? #ifdef NAME ? dans le ? diff ? produit L'option -D ne traite pas les r?pertoires. -E  --ignore-tab-expansion  ignorer les changements li?s ? l'expansion des tabulations -E  --show-overlap  afficher les diff?rences entre crochets -H  --speed-large-files  traiter de grands fichiers ayant plusieurs changements ?parpill?s -I EXPREG  --ignore-matching-lines=EXPREG  ignorer les diff?rences dont les lignes concordent ? l'EXPression R?Guli?re -L ?TIQ --label=?TIQ  utiliser l'?TIQuette plut?t que le nom du fichier -N  --new-file  traiter les fichiers absents comme des fichiers vides -S FICHIER  --starting-file=FICHIER  d?buter la comparaison des
                                     r?pertoires par le FICHIER -T  --initial-tab  aligner les tabulateurs par l'ajout d'un tabulateur de pr?fixe -W  --ignore-all-space  ignorer tout blanc d'espacement -X  afficher les diff?rences qui se recoupent entre crochets. -X FICHIER --exclude-from=FICHIER  exclure les fichiers dont les noms
                                   concordent ? ceux contenus dans le FICHIER -a  --text  traiter tous les fichiers comme des textes. -b  --ignore-space-change  ignorer les changements dans l'espacement -b  --print-bytes  afficher les octets qui diff?rent -c  -C N    --context[=N]     afficher N lignes de contexte (3 par d?faut)
-u  -U N    --unified[=N]     afficher N lignes du contexte unifi? (3 par d?faut)
  --label ?TIQ                utiliser l'?TIQuette comme nom de fichier.
  -p       --show-c-function  identifier la fonction contenant chaque diff?rence.
  -F EXPREG
           --show-function-line=EXPREG
                              afficher la ligne la plus r?cente qui concorde
                              avec l'EXPression R?Guli?re -d  --minimal  si possible afficher le plus petit ensemble de diff?rences. -e  --ed  g?n?rer un script pour ? ed ? -e  --ed  afficher les diff?rences non fusionn?s selon l'ordre suivant:
          entre le fichier ORIGINAL et le fichier MODIFI?
          vers le fichier de SORTIE -i  --ignore-case  banaliser majuscules et minuscules -i  --ignore-case  ignorer les diff?rences de casses dans le contenu des fichiers -i  ajouter les commandes ? w ? et ? q ? au script ? ed ? -i N  --ignore-initial=N  escamoter les N premiers octets ? l'entr?e -i SAUT1:SAUT2        --ignore-initial=SAUT1:SAUT2 -l  --left-column  afficher dans la colonne de gauche les lignes identiques -l  --paginate  relayer la sortie ? ? pr ? afin de la paginer -l  --verbose  afficher les num?ros d'octets et les valeurs de tous les octets qui diff?rent -m  --merge  afficher le fichier fusionn? plut?t qu'un script ? ed ? (implique -A) -n  --rcs  g?n?rer un fichier  de type ? diff ? en format RCS -n LIMITE --bytes=LIMITE comparer un nombre d'octets selon la LIMITE. -o FICHIER  --output=FICHIER  agir int?ractivement, avec sortie sur FICHIER -q  --brief  indiquer seulement si les fichiers diff?rent ou non -r  --recursive  comparer r?cursivement les sous-r?pertoires pr?sents -s  --quiet  --silent  ne rien afficher, produire seulement un constat de fin d'ex?cution -s  --report-identical-files  indiquer si les deux fichiers sont identiques -s  --suppress-common-lines  ne pas afficher les lignes identiques -t  --expand-tabs  ?taler les tabulateurs en espaces dans la sortie. -v  --version  afficher le nom et la version du logiciel -w  --ignore-all-space  ignorer tout blanc d'espacement -w N    --width=N    limiter la sortie ? N colonnes par ligne (130 par d?faut) -x  --overlap-only  afficher les diff?rences qui se recoupent -x PAT  --exclude=PAT  exclure les fichiers dont les noms concordent avec le PATron -y  --side-by-side         afficher la sortie sur deux colonnes
  -w N    --width=N        limiter la sortie ? N caract?res par ligne (130 par d?faut)
  --left-column            afficher seulement la colonne de gauche pour les lignes identiques
  --suppress-common-lines  ne pas afficher les lignes identiques Les fichiers binaires %s et %s sont diff?rents.
 Les sous-r?pertoires %s et %s sont identiques.
 Comparer les fichiers ligne par ligne Comparer trois fichiers ligne par ligne Comparer deux fichiers octet par octet FICHIERS sont ? FICHIER1 FICHIER2 ? ou ? R?P1 R?P2 ? ou ? R?P FICHIER... ? ou ?FICHIER... R?P'. Le fichier %s est un %s alors que le fichier %s est un %s
 Les fichiers %s et %s sont identiques.
 Les fichiers %s et %s sont diff?rents.
 Si --from-file ou --to-file est fournie, il n'y a pas de restriction sur les FICHIERS. Si FICHIER sp?cifi? est ? - ? ou manquant, lire de l'entr?e standard Si le FICHIER sp?cifi? est ? - ? alors lire de l'entr?e standard. La r?f?rence arri?re est invalide. Le nom d'un ensemble de caract?res est invalide. Le caract?re de regroupement est invalide. Le contenu de \{\} est invalide. L'expression r?guli?re pr?c?dente est invalide. La fin d'intervalle est invalide. L'expression r?guli?re est invalide. M?moire ?puis?e. Pas de concordance. Pas de fin de ligne ? la fin du fichier. N'est pas pr?c?d? d'une expression r?guli?re. Seulement dans %s: %s
 Fin pr?matur?e de l'expression r?guli?re. Expression r?guli?re trop grande. Rapporter toutes anomalies ? <bug-gnu-utils@gnu.org> valeurs de SAUT peuvent ?tre suivies par un des suffixes multiplicateurs suivants:
kB 1000, K 1024, MB 1,000,000, M 1,048,576,
GB 1,000,000,000, G 1,073,741,824, et ainsi de suite pour T, P, E, Z, Y. SAUT1 et SAUT2 correspondent au nombre d'octets ? escamoter dans chaque fichier Fusion c?te ? c?te des diff?rences des fichiers Succ?s Ce programme est fourni sans AUCUNE GARANTIE, tel que permis par la loi.
Vous pouvez le redistribuer selon les termes de ? GNU General Public License ?,
lire le texte du fichier COPYING pour plus de d?tails. Barre oblique inverse ? la fin. Pour en savoir davantage, faites: ? %s --help ?. Erreur syst?me inconnue  ( ou \( non rep?r?. ) or \) non rep?r?. [ or [^ non rep?r?. \{ non rep?r?. Usage: %s [OPTION]... FICHIER1 FICHIER2
 Usage: %s [OPTION]... FICHIER1 [FICHIER2 [SAUT1 [SAUT2]]]
 Usage: %s [OPTION]... FICHIERS
 Usage: %s [OPTION]... MYFILE OLDFILE YOURFILE
 ?crit par Paul Eggert, Mike Haertel, David Hayes,
Richard Stallman et Len Tower. ?crit par Randy Smith. ?crit par Thomas Lord. ?crit par Torbjorn Granlund et David MacKenzie. l'option ? -%ld ? est obsol?te; l'omettre l'option ? -%ld ? est obsol?te; utilise ? -%c %ld ? ? - ? fourni pour plus d'un fichier d'entr?e fichier sp?cial-blocs Les deux fichiers ? comparer sont des r?pertoires. Ne peut comparer ? - ? avec un r?pertoire ne peut comparer les noms de fichier ? %s ? et ? %s ? Ne peut fusionner l'entr?e standard, interactivement. fichier sp?cial-caract?res cmp: Fin-de-fichier (EOF) sur %s
 valeur ? %s ? conflictuelle de l'option %s options de style de sortie conflictuelles option de largeur conflictuelle r?pertoire ed:	?diter les deux versions, chacune chapeaut?e d'une en-t?te
eb:	?diter puis utiliser les deux versions
el:	?diter puis utiliser la version de gauche
er:	?diter puis utiliser la version de droite
e:	?diter une nouvelle version
l:	utiliser la version de gauche
r:	utiliser la version de droite
s:	inclure les lignes identiques silencieusement
v:	inclure les lignes identiques et le signaler
q:	quitter.
 op?rande suppl?mentaire ? %s ? ? fifo ? options incompatibles Le fichier d'entr?e a r?tr?ci. Erreur interne: type de ? diff ? invalide dans process_diff Erreur interne: type de ? diff ? invalide fourni ? output Erreur interne: m?lange dans le format des blocs ? diff ? valeur invalide --bytes ? %s ? valeur invalide --ignore-initial ? %s ? longueur du contexte invalide ? %s ? format de ? diff ? invalide; derni?re ligne incompl?te format de ? diff ? invalide; caract?res incorrects sur la ligne d'annonce format de ? diff ? invalide; s?parateur de changement invalide longueur d'horizon invalide ? %s ? largeur invalide ? %s ? m?moire ?puis?e queue de messages op?rande manquante apr?s ? %s ? options -l et -s sont incompatibles La pagination 'est pas support? sur cette machine h?te. erreur du programme lecture non-r?ussie fichier r?gulier vide fichier r?gulier s?maphore objet en m?moire partag?e ? socket ? d?bordement de pile sortie standard ?chec du programme de service ? %s ? programme de service ? %s ? n'est pas ex?cutable programme de service ? %s ? non rep?r? Trop d'options pr?sentes pour nommer les fichiers. objet m?moire typ? fichier bizarre ?chec d'?criture 