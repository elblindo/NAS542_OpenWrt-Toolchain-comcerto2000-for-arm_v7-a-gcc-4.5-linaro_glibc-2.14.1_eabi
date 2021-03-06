??    5      ?  G   l      ?  ?  ?  ?   U    F  )   a     ?     ?     ?  ,   ?     ?  %     ,   =  -   j      ?  &   ?     ?                 5  )   F     p  C   ?     ?     ?  _  ?  ?   Q  &   ?               )     6  )   J  (   t  -   ?     ?     ?     ?          0     A     S  
   n  	   y  	   ?  	   ?     ?     ?     ?     ?     ?     
     %  )   4  8  ^  .  ?  ?   ?  (  ?  1   ?          ,     I  &   f     ?  #   ?  &   ?  '   ?  "      $   C     h     ?     ?     ?     ?      ?  C        U     i  ?  ~  ?    !  +   ?!  
   ?!  
   ?!  
   ?!     ?!  1   ?!  0   ("  5   Y"     ?"  %   ?"     ?"     ?"     ?"     	#  "   #  
   A#  	   L#  	   V#  	   `#     j#     ?#     ?#      ?#     ?#     ?#     $  *   $        4                /      '      2   )      +   (       &      0             $                   *                      
   "          	   ,      3              !             5           .   #                            -       %         1             
Context control:
  -B, --before-context=NUM  print NUM lines of leading context
  -A, --after-context=NUM   print NUM lines of trailing context
  -C, --context[=NUM]       print NUM (default 2) lines of output context
                            unless overriden by -A or -B
  -NUM                      same as --context=NUM
  -U, --binary              do not strip CR characters at EOL (MSDOS)
  -u, --unix-byte-offsets   report offsets as if CRs were not there (MSDOS)

If no -[GEF], then `egrep' assumes -E, `fgrep' -F, else -G.
With no FILE, or when FILE is -, read standard input. If less than
two FILEs given, assume -h. Exit with 0 if matches, with 1 if none.
Exit with 2 if syntax errors or system errors.
 
Miscellaneous:
  -s, --no-messages         suppress error messages
  -v, --revert-match        select non-matching lines
  -V, --version             print version information and exit
      --help                display this help and exit
 
Output control:
  -b, --byte-offset         print the byte offset with output lines
  -n, --line-number         print line number with output lines
  -H, --with-filename       print the filename for each match
  -h, --no-filename         suppress the prefixing filename on output
  -q, --quiet, --silent     suppress all normal output
  -a, --text                do not suppress binary output
  -d, --directories=ACTION  how to handle directories
                            ACTION is 'read', 'recurse', or 'skip'.
  -r, --recursive           equivalent to --directories=recurse.
  -L, --files-without-match only print FILE names containing no match
  -l, --files-with-matches  only print FILE names containing matches
  -c, --count               only print a count of matching lines per FILE
 
Report bugs to <bug-gnu-utils@gnu.org>.
  with arg %s %s: illegal option -- %c
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
 %s: warning: %s: %s
 (standard input) ?? getopt returned character code 0%o ??
 Binary file %s matches
 Copyright (C) 1988, 1992-1997, 1998 Free Software Foundation, Inc.
 Memory exhausted No syntax specified Search for PATTERN in each FILE or standard input.

Regexp selection and interpretation:
  -E, --extended-regexp     PATTERN is an extended regular expression
  -F, --fixed-regexp        PATTERN is a fixed string separated by newlines
  -G, --basic-regexp        PATTERN is a basic regular expression
  -e, --regexp=PATTERN      use PATTERN as a regular expression
  -f, --file=FILE           obtain PATTERN from FILE
  -i, --ignore-case         ignore case distinctions
  -w, --word-regexp         force PATTERN to match only whole words
  -x, --line-regexp         force PATTERN to match only whole lines
 This is free software; see the source for copying conditions. There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 Try `%s --help' for more information.
 Unbalanced ( Unbalanced ) Unbalanced [ Unfinished \ escape Usage: %s [OPTION]... PATTERN [FILE] ...
 Usage: %s [OPTION]... PATTERN [FILE]...
 digits occur in two different argv-elements.
 grep (GNU grep) %s
 invalid context length argument malformed repeat count matcher already specified memory exhausted memory exhausted
 non-option ARGV-elements:  option %c
 option %s option a
 option b
 option c with value `%s'
 option d with value `%s'
 out of memory recursive directory loop unfinished repeat count unknown directories method writing output you may specify only one of -E, -F, or -G Project-Id-Version: grep 2.2f
POT-Creation-Date: 1999-02-03 13:09-0500
PO-Revision-Date: 1999-07-15 12:34+0200
Last-Translator: Matej Vela <mvela@public.srce.hr>
Language-Team: Croatian <hr-translation@bagan.srce.hr>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-2
Content-Transfer-Encoding: 8bit
 
Kontrola konteksta:
  -B, --before-context=BR   ispisuj BR redova prethode?eg konteksta
  -A, --after-context=BR    ispisuj BR redova sljede?eg konteksta
  -C, --context[=BR]        ispisuj BR (podrazumijevano 2) redova konteksta
                            osim ako je druk?ije odre?eno pomo?u -A ili -B
  -BR                       isto ?to i --context=BR
  -U, --binary              ne uklanjaj CR znakove na kraju reda (MSDOS)
  -u, --unix-byte-offsets   prikazuj polo?aje kao da CR-ova nema (MSDOS)

Ako nije zadano -[GEF], onda `egrep' podrazumijeva -E, `fgrep' -F, a ina?e
-G. Ako DATOTEKA nije zadana, ili ako je DATOTEKA -, ?itaj standardni ulaz.
Ako su zadane manje od dvije DATOTEKE, pretpostavi -h. Zavr?i uz 0 ako ima
podudaranja, uz 1 ako nema. Zavr?i uz 2 ako bude gre?aka u sintaksi ili u
sustavu.
 
Sporedno:
  -s, --no-messages         izostavi poruke o gre?kama
  -v, --revert-match        odabiri redove koji ne odgovaraju
  -V, --version             ispi?i informacije o verziji i zavr?i
      --help                prika?i ovu pomo? i zavr?i
 
Kontrola izlaza:
  -b, --byte-offset         uz ispisane redove ispisuj polo?aj bajta
  -n, --line-number         uz ispisane redove ispisuj broj reda
  -H, --with-filename       za svako podudaranje ispi?i ime datoteke
  -h, --no-filename         u ispisu izostavi imena datoteka
  -q, --quiet, --silent     izostavi sav normalni ispis
  -a, --text                ne izostavljaj binarni ispis
  -d, --directories=RADNJA  kako se nositi s direktorijima:
                            RADNJA je 'read', 'recurse', or 'skip'.
  -r, --recursive           isto ?to i --directories=recurse.
  -L, --files-without-match ispisuj samo imena DATOTEKA bez podudaranja
  -l, --files-with-matches  ispisuj samo imena DATOTEKA s podudaranjima
  -c, --count               ispisuj samo broj podudaraju?ih redova po datoteci
 
Bugove prijavljujte na <bug-gnu-utils@gnu.org>.
  s argumentom %s %s: neispravna opcija -- %c
 %s: neispravna opcija -- %c
 %s: opcija `%c%s' ne dopu?ta argument
 %s: opcija `%s' je dvosmislena
 %s: opcija `%s' zahtijeva argument
 %s: opcija `--%s' ne dopu?ta argument
 %s: opcija `-W %s' ne dopu?ta argument
 %s: opcija `-W %s' je dvosmislena
 %s: opcija zahtijeva argument -- %c
 %s: opcija `%c%s' neprepoznata
 %s: opcija `--%s' neprepoznata
 %s: upozorenje: %s: %s
 (standardni ulaz) ?? getopt vratio znak 0%o ??
 Binarna datoteka %s se podudara
 Copyright (C) 1988, 1992-1997, 1998 Free Software Foundation, Inc.
 Memorija iscrpljena Nije zadana sintaksa Tra?i UZORAK u svakoj DATOTECI ili standardnom ulazu.

Odabir i tuma?enje regularnih izraza:
  -E, --extended-regexp     UZORAK je pro?ireni regularni izraz
  -F, --fixed-regexp        UZORAK je fiksni string razdvojen novim redovima
  -G, --basic-regexp        UZORAK je jednostavni regularni izraz
  -e, --regexp=UZORAK       koristi UZORAK kao regularni izraz
  -f, --file=DATOTEKA       UZORAK pribavi iz DATOTEKE
  -i, --ignore-case         zanemaruj razlike izme?u velikih i malih slova
  -w, --word-regexp         UZORAK mo?e odgovarati samo potpunim rije?ima
  -x, --line-regexp         UZORAK mo?e odgovarati samo potpunim redovima
 Ovo je slobodan program; za uvjete kopiranja pogledajte izvorni kod. NEMA
jamstva; ?ak ni za TRGOVINSKU PRIKLADNOST ili ODGOVARANJE ODRE?ENOJ SVRSI.
 Za vi?e informacija pokrenite `%s --help'.
 ( bez para ) bez para [ bez para \ escape nedovr?en Kori?tenje: %s [OPCIJA]... UZORAK [DATOTEKA] ...
 Kori?tenje: %s [OPCIJA]... UZORAK [DATOTEKA]...
 znamenke se pojavljuju u dva razli?ita elementa argv
 grep (GNU grep) %s
 neispravan argument duljine konteksta broj ponavljanja neispravan izraz ve? zadan memorija iscrpljena memorija iscrpljena
 elementi ARGV-a koji nisu opcije:  opcija %c
 opcija %s opcija a
 opcija b
 opcija c s vrijedno??u `%s'
 opcija d s vrijedno??u `%s'
 ponestalo memorije petlja u rekurziji direktorijima broj ponavljanja nedovr?en nepoznata metoda za direktorije pi?em izlaz mo?ete navesti samo jedno od -E, -F ili -G 