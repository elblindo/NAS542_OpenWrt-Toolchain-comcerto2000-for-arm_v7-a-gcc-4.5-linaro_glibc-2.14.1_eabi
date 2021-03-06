??    4      ?  G   \      x  
  y  0  ?  t  ?  )   *    T  v  h     ?     ?       ,   %     R  %   p  ,   ?  -   ?      ?  &        9     Y     y     {     ?  E   ?     ?     ?  ?     (   ?     ?  ?   ?  &   s     ?     ?     ?     ?     ?  )   ?  (        =     ?     ^     z     ?     ?     ?     ?     ?     ?          -     D     _     p  .    ?  ?  J  p  ?  ?  -   ?&  N  ?&  *  
(     5*     G*     `*  0   {*     ?*  )   ?*  0   ?*  1   &+  !   X+  *   z+      ?+      ?+     ?+     ?+  &   ?+  E   #,     i,  &   y,  ?   ?,  *   *-     U-  ?   s-  )   .     G.     W.     g.  "   w.     ?.  4   ?.  3   ?.     !/  ,   #/  *   P/     {/     ?/     ?/     ?/     ?/     ?/  #   0     30  "   Q0  !   t0     ?0     ?0     $                    /      ,      0      "           4   -      *   3          )                                                  &             2          '   %          !                 1                     
       .   (   +   	   #                 
Context control:
  -B, --before-context=NUM  print NUM lines of leading context
  -A, --after-context=NUM   print NUM lines of trailing context
  -C, --context=NUM         print NUM lines of output context
  -NUM                      same as --context=NUM
      --color[=WHEN],
      --colour[=WHEN]       use markers to distinguish the matching string
                            WHEN may be `always', `never' or `auto'.
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
      --label=LABEL         print LABEL as filename for standard input
  -o, --only-matching       show only the part of a line matching PATTERN
  -q, --quiet, --silent     suppress all normal output
      --binary-files=TYPE   assume that binary files are TYPE
                            TYPE is 'binary', 'text', or 'without-match'
  -a, --text                equivalent to --binary-files=text
  -I                        equivalent to --binary-files=without-match
  -d, --directories=ACTION  how to handle directories
                            ACTION is 'read', 'recurse', or 'skip'
  -D, --devices=ACTION      how to handle devices, FIFOs and sockets
                            ACTION is 'read' or 'skip'
  -R, -r, --recursive       equivalent to --directories=recurse
      --include=PATTERN     files that match PATTERN will be examined
      --exclude=PATTERN     files that match PATTERN will be skipped.
      --exclude-from=FILE   files that match PATTERN in FILE will be skipped.
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
 ` conflicting matchers specified input is too large to count invalid context length argument invalid max count malformed repeat count memory exhausted out of memory recursive directory loop unfinished repeat count unknown binary-files type unknown devices method unknown directories method warning: %s: %s
 writing output Project-Id-Version: GNU grep 2.5g
POT-Creation-Date: 2002-01-22 14:39+0100
PO-Revision-Date: 2002-03-10 13:49+0100
Last-Translator: Santiago Vila Doncel <sanvila@unex.es>
Language-Team: Spanish <es@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8-bit
 
Control del contexto:
  -B, --before-context=N?M  muestra N?M l?neas de contexto anterior
  -A, --after-context=N?M   muestra N?M l?neas de contexto posterior
  -C, --context=N?M         muestra N?M l?neas de contexto
  -N?M                      lo mismo que --context=N?M
      --color[=CU?NDO],
      --colour[=CU?NDO]     distingue con marcadores la cadena que encaja
                            CU?NDO puede ser `always', `never' o `auto'.
  -U, --binary              no elimina los caracteres de retorno de carro
                            finales de l?nea (MSDOS)
  -u, --unix-byte-offsets   cuenta los desplazamientos como si no hubiera
                            retornos de carro (MSDOS)

`egrep' significa `grep -E'.  `fgrep' significa `grep -F'.
Si no se especifica ning?n FICHERO, o cuando es -, lee la entrada est?ndar.
Si se dan menos de dos FICHEROs, se supone -h. La salida es 0 si hay
coincidencias, 1 si no las hay, y 2 en caso de problema
 
Variadas:
  -s, --no-messages         suprime los mensajes de error
  -v, --invert-match        selecciona las l?neas que no coinciden
  -V, --version             muestra la versi?n y finaliza
      --help                muestra esta ayuda y finaliza
      --mmap                utiliza entrada asignada en memoria si es posible
 
Control del resultado:
  -m, --max-count=N?M       se detiene despu?s de N?M coincidencias
  -b, --byte-offset         muestra el desplazamiento en bytes junto
                            con las l?neas de salida
  -n, --line-number         muestra el n?mero de l?nea junto con
                            las l?neas de salida
      --line-buffered       descarga el resultado para cada l?nea
  -H, --with-filename       muestra el nombre del fichero para cada
                            coincidencia
  -h, --no-filename         suprime los nombres de los ficheros en
                            el resultado
      --label=ETIQUETA      muestra ETIQUETA como nombre de fichero para la
                            entrada est?ndar
  -o, --only-matching       muestra solamente la parte de una l?nea que
                            encaja con PATR?N
  -q, --quiet, --silent     suprime todo el resultado normal
      --binary-files=TIPO   supone que los ficheros binarios son TIPO
                            TIPO es `binary', `text', o `without-match'
  -a, --text                equivalente a --binary-files=text
  -I                        equivalente a --binary-files=without-match
  -d, --directories=ACCI?N  especifica c?mo manejar los directorios
                            ACCI?N es 'read', 'recurse', o 'skip'
  -D, --devices=ACCI?N      especifica c?mo manejar dispositivos, FIFOs y
                            `sockets', puede ser 'read' o 'skip'
  -R, -r, --recursive       equivalente a --directories=recurse
      --include=PATR?N      examina los ficheros que encajan con PATR?N
      --exclude=PATR?N      se salta los ficheros que encajan con PATR?N
      --exclude-from=FICHERO se salta los ficheros que encajan con los patrones
                             de FICHERO
  -L, --files-without-match muestra solamente los nombres de FICHEROs
                            que no contienen ninguna coincidencia
  -l, --files-with-matches  muestra solamente los nombres de FICHEROs
                            que contienen alguna coincidencia
  -c, --count               muestra solamente el total de l?neas que coinciden
                            por cada FICHERO
  -Z, --null                imprime un byte 0 despu?s del nombre del FICHERO
 
Comunicar bichos a <bug-gnu-utils@gnu.org>.
   -E, --extended-regexp     PATR?N es una expresi?n regular extendida
  -F, --fixed-strings       PATR?N es un conjunto de cadenas separadas por
                            caracteres de nueva l?nea
  -G, --basic-regexp        PATR?N es una expresi?n regular b?sica
  -P, --perl-regexp         PATR?N es una expresi?n regular en Perl
   -e, --regexp=PATR?N       utiliza PATR?N como expresi?n regular
  -f, --file=FICHERO        obtiene PATR?N de FICHERO
  -i, --ignore-case         considera iguales may?sculas y min?sculas
  -w, --word-regexp         obliga a que PATR?N coincida solamente
                            con palabras completas
  -x, --line-regexp         obliga a que PATR?N coincida solamente
                            con l?neas completas
  -z, --null-data           una l?nea de datos termina en un byte 0, no
                            en un car?cter de nueva l?nea
 %s (GNU grep) %s
 %s: opci?n ilegal -- %c
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
 ' (entrada est?ndar) Coincidencia en el fichero binario %s
 Copyright 1988, 1992-1999, 2000, 2001 Free Software Foundation, Inc.
 Memoria agotada No se ha especificado ninguna sintaxis Busca PATR?N en cada FICHERO o en la entrada est?ndar.
Ejemplo: %s -i 'hello world' menu.h main.c

Selecci?n e interpretaci?n de Expreg:
 Las opciones -P y -z no se pueden combinar La opci?n -P no est? admitida Esto es software libre; vea el c?digo fuente para las condiciones de copia.
No hay NINGUNA garant?a; ni siquiera de COMERCIABILIDAD o IDONEIDAD PARA UN
FIN DETERMINADO.
 Pruebe `%s --help' para m?s informaci?n.
 ( desemparejado ) desemparejado [ desemparejado Secuencia de escape \ sin terminar Error del sistema desconocido Modo de empleo: %s [OPCI?N]... PATR?N [FICHERO] ...
 Modo de empleo: %s [OPCI?N]... PATR?N [FICHERO]...
 ` se han especificado expresiones conflictivas la entrada es demasiado grande para contar longitud de contexto inv?lida contador m?ximo inv?lido contador de repetici?n err?neo memoria agotada memoria agotada bucle de directorio recursivo contador de repetici?n sin terminar tipo binary-files desconocido m?todo de dispositivos desconocido m?todo de directorios desconocido atenci?n: %s: %s
 escribiendo el resultado 