??    3      ?  G   L      h  ?  i  0    `  J  )   ?    ?  v  ?     `     r     ?  ,   ?     ?  %   ?  ,     -   D      r  &   ?     ?     ?     ?     ?       E   %     k     |  ?   ?  (        >  ?   ]  &   ?          (     5     B     V  )   k  (   ?     ?     ?     ?     ?          -     D     U     c     |     ?     ?     ?     ?  2  ?  ?    ;  ?  ?  3  4   ?     	!  ?  "     ?#     ?#     ?#  (   ?#     $$  "   D$  (   g$  )   ?$  "   ?$  #   ?$     %     %     7%     9%     I%  E   e%     ?%     ?%  ?   ?%  %   ]&     ?&  ?   ?&  &   3'  	   Z'  	   d'  	   n'     x'     ?'  +   ?'  *   ?'     ?'  &   ?'  #   (  &   C(     j(     ?(     ?(     ?(     ?(     ?(      ?(     )     ')     7)     $                    /      ,      0       "       -   3         *   2          )                                                   &             1          '   %          !                                       
          (   +   	   #   .             
Context control:
  -B, --before-context=NUM  print NUM lines of leading context
  -A, --after-context=NUM   print NUM lines of trailing context
  -C, --context=NUM         print NUM lines of output context
  -NUM                      same as --context=NUM
      --color, --colour     use markers to distinguish the matching string
  -U, --binary              do not strip CR characters at EOL (MSDOS)
  -u, --unix-byte-offsets   report offsets as if CRs were not there (MSDOS)

`egrep' means `grep -E'.  `fgrep' means `grep -F'.
With no FILE, or when FILE is -, read standard input.  If less than
two FILEs given, assume -h.  Exit status is 0 if match, 1 if no match,
and 2 if trouble.
 
Miscellaneous:
  -s, --no-messages         suppress error messages
  -v, --invert-match        select non-matching lines
  -V, --version             print version information and exit
      --help                display this help and exit
      --mmap                use memory-mapped input if possible
 
Output control:
  -m, --max-count=NUM       stop after NUM matches
  -b, --byte-offset         print the byte offset with output lines
  -n, --line-number         print line number with output lines
      --line-buffered       flush output on every line
  -H, --with-filename       print the filename for each match
  -h, --no-filename         suppress the prefixing filename on output
  -q, --quiet, --silent     suppress all normal output
      --binary-files=TYPE   assume that binary files are TYPE
                            TYPE is 'binary', 'text', or 'without-match'
  -a, --text                equivalent to --binary-files=text
  -I                        equivalent to --binary-files=without-match
  -d, --directories=ACTION  how to handle directories
                            ACTION is 'read', 'recurse', or 'skip'
  -R, -r, --recursive       equivalent to --directories=recurse
      --include=PATTERN     files that match PATTERN will be examine
      --exclude=PATTERN     files that match PATTERN will be skip.
      --exclude-from=FILE   files that match PATTERN in FILE will be skip.
  -L, --files-without-match only print FILE names containing no match
  -l, --files-with-matches  only print FILE names containing matches
  -c, --count               only print a count of matching lines per FILE
  -Z, --null                print 0 byte after FILE name
 
Report bugs to <bug-gnu-utils@gnu.org>.
   -E, --extended-regexp     PATTERN is an extended regular expression
  -F, --fixed-strings       PATTERN is a set of newline-separated strings
  -G, --basic-regexp        PATTERN is a basic regular expression
  -P, --perl-regexp         PATTERN is a Perl regular expression
   -e, --regexp=PATTERN      use PATTERN as a regular expression
  -f, --file=FILE           obtain PATTERN from FILE
  -i, --ignore-case         ignore case distinctions
  -w, --word-regexp         force PATTERN to match only whole words
  -x, --line-regexp         force PATTERN to match only whole lines
  -z, --null-data           a data line ends in 0 byte, not newline
 %s (GNU grep) %s
 %s: illegal option -- %c
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
 ' (standard input) Binary file %s matches
 Copyright 1988, 1992-1999, 2000, 2001 Free Software Foundation, Inc.
 Memory exhausted No syntax specified Search for PATTERN in each FILE or standard input.
Example: %s -i 'hello world' menu.h main.c

Regexp selection and interpretation:
 The -P and -z options cannot be combined The -P option is not supported This is free software; see the source for copying conditions. There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 Try `%s --help' for more information.
 Unbalanced ( Unbalanced ) Unbalanced [ Unfinished \ escape Unknown system error Usage: %s [OPTION]... PATTERN [FILE] ...
 Usage: %s [OPTION]... PATTERN [FILE]...
 ` conflicting matchers specified input is too large to count invalid context length argument invalid max count malformed repeat count memory exhausted out of memory recursive directory loop unfinished repeat count unknown binary-files type unknown directories method warning: %s: %s
 writing output Project-Id-Version: GNU grep 2.5e
POT-Creation-Date: 2001-03-07 00:02-0500
PO-Revision-Date: 2001-05-13 14:30+01:00
Last-Translator: Edmund GRIMLEY EVANS <edmundo@rano.org>
Language-Team: Esperanto <eo@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-3
Content-Transfer-Encoding: 8-bit
 
Regado de la kunteksto:
  -B, --before-context=NOM  presi NOM liniojn da anta?a kunteksto
  -A, --after-context=NOM   presi NOM liniojn da posta kunteksto
  -C, --context=NOM         presi NOM liniojn da kunteksto
  -NOM                      same kiel --context=NOM
      --color, --colour     uzi markilojn por distingi la kongruan ?enon
  -U, --binary              ne forigi \r-signojn ?e linifino (MSDOS)
  -u, --unix-byte-offsets   doni bitoknumerojn, kvaza? \r-signoj mankus (MSDOS)

'egrep' signifas 'grep -E'. 'fgrep' signifas 'grep -F'.
Kiam DOSIERO mankas, a? DOSIERO estas -, legi la normalan enigon. Se malpli
ol du DOSIEROj estas donitaj, supozi -h. Finvaloro estas 0, se estis trafo,
1, se ne estis, kaj 2 ?e eraro.
 
Miscellaneous:\n"
  -s, --no-messages         subpremi eraromesa?ojn
  -v, --invert-match        elekti la nekongruajn liniojn
  -V, --version             eltajpi versio-informojn kaj fini
      --help                montri ?i tiun helpon kaj fini
      --mmap                uzi memoromapon por la enigo, se eble
 
Regado de la eligo:
  -m, --max-count==NOMBRO   halti post NOMBRO da trafoj
  -b, --byte-offset         presi la bitoknumeron kun eligataj linioj
  -n, --line-number         presi la lininumeron kun eligataj linioj
      --line-buffered       peli la eligon post ?iu linio
  -H, --with-filename       presi la dosiernomon por ?iu trafo
  -h, --no-filename         subpremi la prefiksan dosiernomon ?e eligo
  -q, --quiet, --silent     subpremi ?ian normalan eligadon
      --binary-files=SPECO  supozi, ke binaraj dosieroj estas de SPECO
                            SPECO estas 'binary', 'text', a? 'without-match'
  -a, --text                same kiel --binary-files=text
  -I                        same kiel --binary-files=without-match
  -d, --directories=AGO     kiel trakti dosierujojn; AGO estas 'read' (legi),
                            'recurse' (rekurse), a? 'skip' (ignori).
  -R, -r, --recursive       same kiel --directories=recurse.
      --include=?ABLONO     ekzameni dosierojn, kiuj kongruas kun ?ABLONO
      --exclude=?ABLONO     ignori dosierojn, kiuj kongruas kun ?ABLONO
      --exclude-from=DOS    ignori dosierojn, kiuj kongruas kun ?ablono en DOS
  -L, --files-without-match presi nur dosiernomojn sen trafo
  -l, --files-with-matches  presi nur dosiernomojn kun trafoj
  -c, --count               presi nur nombron de kongruaj linioj en ?iu dosiero
  -Z, --null                presi la bitokon 0 post dosiernomo
 
Raportu cimojn al <bug-gnu-utils@prep.ai.mit.edu>.
   -E, --extended-regexp     ?ABLONO estas etendita regula esprimo
  -F, --fixed-strings       ?ABLONO estas aro da ?enoj apartigitaj de linifinoj
  -G, --basic-regexp        ?ABLONO estas simpla regula esprimo
  -P, --perl-regexp         ?ABLONO estas regula esprimo de Perl
   -e, --regexp=?ABLONO      uzi ?ABLONOn kiel regulan esprimon
  -f, --file=DOSIERO        akiri la ?ablonon el DOSIERO
  -i, --ignore-case         ignori diferencojn de uskleco
  -w, --word-regexp         devigi al ?ABLONO kongrui nur al tutaj vortoj
  -x, --line-regexp         devigi al ?ABLONO kongrui nur al tutaj linioj
  -z, --null-data           datenlinio fini?as per bitoko 0, ne per linifino
 %s (GNU grep) %s
 %s: malpermesata opcio -- %c
 %s: nevalida opcio -- %c
 %s: opcio `%c%s' ne akceptas argumenton
 %s: opcio `%s' estas plursenca
 %s: opcio `%s' bezonas argumenton
 %s: opcio `--%s' ne akceptas argumenton
 %s: opcio `-W %s' ne akceptas argumenton
 %s: opcio `-W %s' estas plursenca
 %s: opcio bezonas argumenton -- %c
 %s: nekonata opcio `%c%s'
 %s: nekonata opcio `--%s'
 ' (normala enigo) Binara dosiero %s kongruas
 Kopirajto 1988, 1992-1999, 2000, 2001 Free Software Foundation, Inc.
 Memoro el?erpita Mankas sintakso Ser?i pri ?ABLONO en ?iu DOSIERO a? la normala enigo.
Ekzemplo: %s -i 'saluton mondo' menu.h main.c

Elekto kaj interpreto de regulaj esprimoj:
 Ne eblas kombini la opciojn -P kaj -z La opcio -P ne estas disponata ?i tiu estas libera programo; vidu la fonton por kopikondi?oj. Estas
NENIA GARANTIO, e? ne pri KOMERCA KVALITO a? ADEKVATECO POR DIFINITA CELO.
 Provu `%s --help' por pliaj informoj.
 Senpara ( Senpara ) Senpara [ Nefinita \-eskapo Nekonata sistemeraro Uzado: %s [OPCIO]... ?ABLONO [DOSIERO] ...
 Uzado: %s [OPCIO]... ?ABLONO [DOSIERO]...
 ' malkongruaj kompariloj estas indikitaj enigo estas tro granda por nombrado nevalida argumento por kunteksto-longo nevalida maksimuma nombro misformita ripetonombro memoro el?erpita memoro el?erpita rekursa dosieruja ciklo nefinita ripetonombro nekonata speco de binara dosiero nekonata dosieruja metodo averto: %s: %s
 skribas eligon 