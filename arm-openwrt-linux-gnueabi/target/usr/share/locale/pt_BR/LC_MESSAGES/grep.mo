??    ,      |  ;   ?      ?  ?  ?  0  t  &  ?  )   ?  ?   ?  v  ?     @     R     l  ,   ?     ?  %   ?  ,   ?  -   $      R  &   s     ?     ?     ?     ?        ?        X     i  ?   }  ?     &   ?     ?     ?     ?     ?  )   ?  (   %     N     m     ?     ?     ?     ?     ?     ?          )  Z  8  D  ?  E  ?  ?    1   ?  ?   .  ?       ?      ?      ?   )   ?      ?   #   !  )   7!  *   a!     ?!  $   ?!  !   ?!  !   ?!     "     %"  %   6"  ?   \"     ?"     ?"  ?   ?"  ?   W#  )   ?#     %$     5$     E$     U$  '   f$  '   ?$  *   ?$  &   ?$     %     '%     8%     I%     e%  $   ?%  !   ?%     ?%     	                                   &            '               )       !       *           
   ,         "      +              $           (                             #                  %              
Context control:
  -B, --before-context=NUM  print NUM lines of leading context
  -A, --after-context=NUM   print NUM lines of trailing context
  -C, --context[=NUM]       print NUM (default 2) lines of output context
                            unless overridden by -A or -B
  -NUM                      same as --context=NUM
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
  -b, --byte-offset         print the byte offset with output lines
  -n, --line-number         print line number with output lines
  -H, --with-filename       print the filename for each match
  -h, --no-filename         suppress the prefixing filename on output
  -q, --quiet, --silent     suppress all normal output
      --binary-files=TYPE   assume that binary files are TYPE
                            TYPE is 'binary', 'text', or 'without-match'.
  -a, --text                equivalent to --binary-files=text
  -I                        equivalent to --binary-files=without-match
  -d, --directories=ACTION  how to handle directories
                            ACTION is 'read', 'recurse', or 'skip'.
  -r, --recursive           equivalent to --directories=recurse.
  -L, --files-without-match only print FILE names containing no match
  -l, --files-with-matches  only print FILE names containing matches
  -c, --count               only print a count of matching lines per FILE
  -Z, --null                print 0 byte after FILE name
 
Report bugs to <bug-gnu-utils@gnu.org>.
   -E, --extended-regexp     PATTERN is an extended regular expression
  -F, --fixed-strings       PATTERN is a set of newline-separated strings
  -G, --basic-regexp        PATTERN is a basic regular expression
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
 %s: warning: %s: %s
 (standard input) Binary file %s matches
 Copyright 1988, 1992-1999, 2000 Free Software Foundation, Inc.
 Memory exhausted No syntax specified Search for PATTERN in each FILE or standard input.
Example: %s -i 'hello world' menu.h main.c

Regexp selection and interpretation:
 This is free software; see the source for copying conditions. There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 Try `%s --help' for more information.
 Unbalanced ( Unbalanced ) Unbalanced [ Unfinished \ escape Usage: %s [OPTION]... PATTERN [FILE] ...
 Usage: %s [OPTION]... PATTERN [FILE]...
 conflicting matchers specified invalid context length argument malformed repeat count memory exhausted out of memory recursive directory loop unfinished repeat count unknown binary-files type unknown directories method writing output Project-Id-Version: GNU grep 2.4f
POT-Creation-Date: 2000-02-02 01:04-0500
PO-Revision-Date: 2000-10-27 16:55-02:00
Last-Translator: Rodrigo Stulzer Lopes <rodrigo@conectiva.com.br>
Language-Team: Brazilian Portuguese <ldp-br@bazar.conectiva.com.br>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8-bit
 
Controle de contexto:
  -B, --before-context=NUM  exibe NUM linhas at? o padr?o
  -A, --after-context=NUM   exibe NUM linhas ap?s o padr?o
  -C, --context=[NUM]       exibe NUM (default 2) linhas do padr?o
                            a menos que anulada por -A ou -B
  -NUM                      o mesmo que --context=NUM
  -U, --binary              n?o elimina caracteres CR em final de linha
                            (MSDOS)
  -u, --unix-byte-offsets   relata deslocamentos como se n?o existissem
                            CRs (MSDOS)

`egrep' ? o mesmo que `grep -E', `fgrep' ? `grep -F'.
Se n?o informado o ARQUIVO, ou se ARQUIVO ? -, l? da entrada padr?o.
Se menos que dois arquivos forem especificados, assume-se -h.
Retorna 0 se encontra o padr?o, 1 se n?o encontra.
Retorna 2 se houver erro de sintaxe ou erros do sistema.
 
Miscel?nea:
  -s, --no-messages         suprime mensagens de erro
  -v, --revert-match        seleciona somente linhas n?o coincidentes
  -V, --version             mostra informa??es sobre vers?o e sai
      --help                exibe esta ajuda e sai
      --mmap                usa entrada de mem?ria mapeada se poss?vel
 
Controle de sa?da:
  -b, --byte-offset         exibe o deslocamento juntamente com a sa?da
  -n, --line-number         exibe o n?mero da linha juntamente com a sa?da
  -H, --with-filename       exibe o nome do arquivo para cada padr?o
                            encontrado
  -h, --no-filename         inibe o nome de arquivo na sa?da
  -q, --quiet, --silent     inibe todas as sa?das normais
  -a, --text                n?o suprima sa?da de arquivos bin?rios
      --binary-files=TIPO   assume que arquivos bin?rios s?o TIPO
                            TIPO ? 'binary'. 'text', ou 'without-match'.
  -d, --directories=A??O    como tratar diret?rios
                            A??O pode ser: 'read' (ler), 'recurse' (recursivo),
                            ou 'skip' (n?o considerar).
  -r, --recursive           equivalente a --directories=recurse.
  -L, --files-without-match exibe somente os nomes dos arquivos onde n?o foi
                            encontrado o padr?o
  -l, --files-with-matches  exibe somente os nomes dos arquivos onde foi
                            encontrado o padr?o
  -c, --count               exibe o n?mero de padr?es encontrados por arquivo
  -Z, --null                mostra 0 bytes depois do nome do ARQUIVO
 
Informe problemas para <bug-gnu-utils@gnu.org>.
   -E, --extended-regexp     PADR?O ? um express?o regular extendida
  -F, --fixed-strings       PADR?O ? uma cadeia fixa separada por nova linha
  -G, --basic-regexp        PADR?O ? um express?o regular b?sica
   -e, --regexp=PADR?O      use PADR?O como uma express?o regular
  -f, --file=ARQUIVO       obtain PADR?O from FILE
  -i, --ignore-case        ignora caixa do texto
  -w, --word-regexp        for?a PADR?O encontrar apenas palavras inteiras
  -x, --line-regexp        for?a PADR?O encontrar apenas linhas inteiras
  -z, --null-data          uma linha de dados acaba com 0 bytes, n?o nova linha
 %s (GNU grep) %s
 %s: op??o ilegal -- %c
 %s: op??o inv?lida -- %c
 %s: op??o `%c%s' n?o aceita um argumento
 %s: op??o `%s' ? amb?gua
 %s: op??o `%s' requer um argumento
 %s: op??o `--%s' n?o aceita um argumento
 %s: op??o `-W %s' n?o aceita um argumento
 %s: op??o `-W %s' ? amb?gua
 %s: op??o espera um argumento -- %c
 %s: op??o `%c%s' n?o reconhecida
 %s: op??o `--%s' n?o reconhecida
 %s: aviso: %s: %s
 (entrada padr?o) Arquivo bin?rio %s casa com o padr?o
 Copyright 1988, 1992-1999, 2000 Free Software Foundation, Inc.
 Mem?ria esgotada Sintaxe n?o especificada Procura por PADR?O em cada ARQUIVO ou entrada padr?o.
Exemplo: %s -i 'hello world' menu.h main.c

Sele??o de express?o regular e interpreta??o:
 Este ? um free software; olhe o fonte para as condi??es de c?pia. N?o 
existe garantia; nem mesmo para c?pias compradas ou adaptadas para um 
prop?sito particular
 Tente `%s --help' para mais informa??es.
 ( desbalanceado ) desbalanceado [ desbalanceado escape inacabado Uso: %s [op??o]... padr?o [arquivo]...
 Uso: %s [op??o]... padr?o [arquivo]...
 padr?es de procura especificados conflitam argumento tamanho do contexto inv?lido contador de repeti??o inv?lido mem?ria esgotada mem?ria esgotada loop de diret?rio recursivo contador de repeti??o inv?lido tipo de arquivo bin?rio desconhecido m?todo desconhecido de diret?rios escrevendo sa?da 