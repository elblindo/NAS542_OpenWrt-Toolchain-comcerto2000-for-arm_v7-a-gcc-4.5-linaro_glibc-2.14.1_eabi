??    =        S   ?      8  ?   9     ?  >   ?     *  '   I  &   q     ?      ?     ?     ?  #         $  .   C  ?   r           <     ]     c  !   i  *   ?  '   ?     ?  (   ?     %	     ?	  .   P	  %   	     ?	     ?	     ?	     ?	     ?	  =   
  :   S
     ?
     ?
     ?
  B   ?
     
     #     9  T   P  =   ?  S   ?     7     F     V  /   d  f   ?  <   ?     8     J     ]     n  3   ?     ?  =   ?  =   
     H     T  B  n  ?   ?     \  O   v  .   ?  ?   ?  (   5     ^  %   v     ?     ?  (   ?  &      2   '  ?   Z  (     (   G     p     v  0   |  >   ?  ,   ?  $     3   >     r     ?  <   ?  3   ?          =     [     h     ?  E   ?  >   ?     (     F     T  Z   p     ?     ?  "     m   %  f   ?  W   ?  $   R  #   w     ?  <   ?  ?   ?  ;   }     ?     ?     ?     ?  K        Q  O   k  J   ?                     #   )   9   .           8          :       
                 6           $   "   /      0          -      7   %             3   <         ;            '       (   &         +      	       ,                        5                                          !       =   4   *      2   1           
As a special case, cp makes a backup of SOURCE when the force and backup
options are given and SOURCE and DEST are the same name for an existing,
regular file.
 %s: File exists %s: can make relative symbolic links only in current directory %s: cannot overwrite directory %s: hard link not allowed for directory Try `%s --help' for more information.
 Usage: %s [OPTION]
 Usage: %s [OPTION] DIRECTORY...
 Usage: %s [OPTION] NAME...
 Usage: %s [OPTION]...
 Usage: %s [OPTION]... DIRECTORY...
 Usage: %s [OPTION]... FILE...
 Usage: %s [OPTION]... NAME TYPE [MAJOR MINOR]
 Usage: %s [OPTION]... SOURCE DEST           (1st format)
  or:  %s [OPTION]... SOURCE... DIRECTORY   (2nd format)
  or:  %s -d [OPTION]... DIRECTORY...       (3rd format)
 Usage: %s [OPTION]... [FILE]
 Usage: %s [OPTION]... [FILE]...
 ^[nN] ^[yY] block special files not supported cannot both summarize and show all entries cannot change to `..' from directory %s cannot change to directory %s cannot make both hard and symbolic links cannot remove `.' or `..' cannot run strip cannot specify times from more than one source character special files not supported fifo files not supported file arguments missing group number group of %s retained as %s
 ignoring all arguments ignoring invalid tab size in environment variable TABSIZE: %s ignoring invalid width in environment variable COLUMNS: %s invalid line width: %s invalid mode invalid tab size: %s major and minor device numbers may not be specified for fifo files missing destination file missing file argument missing file arguments no FILE arguments may be used with the option to output
dircolors' internal database no SHELL environment variable, and no shell type option given only one conv in {ascii,ebcdic,ibm}, {lcase,ucase}, {block,unblock}, {unblock,sync} standard input standard output symbolic link symbolic links are not supported on this system the options to output dircolors' internal database and
to select a shell syntax are mutually exclusive the strip option may not be used when installing a directory too few arguments too many arguments truncated record truncated records unparsable value for LS_COLORS environment variable unrecognized prefix: %s when making multiple links, last argument must be a directory when moving multiple files, last argument must be a directory write error wrong number of arguments Project-Id-Version: fileutils 3.12k
POT-Creation-Date: 2002-07-20 08:53+0200
PO-Revision-Date: 1996-11-07 21:05 +0100
Last-Translator: Ant?nio Jo?o Serras Rendas <arendas@mail.telepac.pt>
Language-Team: Portuguese <pt@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8-bit
 
Como caso especial, o cp faz um backup da FONTE quando as op??es "force" e
"backup" s?o dadas e FONTE + DESTINO s?o iguais ao nome de um ficheiro 
regular j? existente.
 %s: Ficheiro j? existente %s: s? consigo fazer liga??es (links) simb?licas relativas na directoria
actual %s: n?o consigo escrever em cima da directoria %s: n?o ? permitido fazer liga??es (links) fixas de directorias Tenta `%s --help' para mais informa??o.
 Utiliza??o: %s [OP??O]
 Utiliza??o: %s [OP??O] DIRECTORIA...
 Utiliza??o: %s [OP??O] NOME...
 Utiliza??o: %s [OP??O]...
 Utiliza??o: %s [OP??O]... DIRECTORIA...
 Utiliza??o: %s [OP??O]... FICHEIRO...
 Utiliza??o: %s [OP??O]... NOME TIPO [MAJOR MINOR]
 Utiliza??o: %s [OP??O]... FONTE DESTINO             (1o formato)
        ou: %s [OP??O]... FONTE... DIRECTORIA       (2o formato)
        ou: %s -d [OP??O]... DIRECTORIA...          (3o formato)
 Utiliza??o: %s [OP??O]... [FICHEIRO]...
 Utiliza??o: %s [OP??O]... [FICHEIRO]...
 ^[nN] ^[yY] ficheiros especiais de tipo bloco n?o suportados n?o consigo resumir e mostrar todas as entradas ao mesmo tempo n?o consigo mudar para `..' da directoria %s n?o consigo mudar para directoria %s n?o posso fazer liga??es (links) simb?licas e fixas n?o consigo apagar `.' ou `..' n?o consigo correr o strip n?o consigo especificar tempos a partir de mais de uma fonte ficheiros especiais de tipo caracter n?o suportados ficheiros "fifo" n?o suportados faltam argumentos de ficheiro grupo n?mero grupo de %s mantido como %s
 a ignorar todos os argumentos a ignorar tamanho de tab inv?lido na vari?vel TABSIZE do ambiente: %s a ignorar largura inv?lida na vari?vel do ambiente COLUMNS: %s largura de linha inv?lida: %s modo inv?lido tamanho de tab inv?lido: %s ficheiros especiais de tipo "fifo" pode n?o ter os n?meros "major" e "minor"
do perif?rico ficheiro de destino ausente falta o argumento ficheiro faltam os argumentos dos ficheiros n?o se podem usar argumentos de tipo FICHEIRO com a op??o para mostrar a base
de dados interna do "dircolors" n?o existe nenhuma vari?vel de ambiente SHELL e n?o se especificou nenhum
tipo de shell como argumento s? uma convers?o em {ascii,ebcdic,ibm}, {lcase,ucase}, {block,unblock}, 
{unblock,sync} canal de entrada por omiss?o (stdin) canal de sa?da por omiss?o (stdout) liga??o (link) simb?lica liga??es (links) simb?licas n?o s?o suportadas neste sistema as op??es para mostrar a base de dados interna do "dircolors" e para escolher
uma sintaxe entendida por uma shell s?o mutuamente exclusivas a op??o strip n?o pode ser usada ao instalar uma directoria poucos argumentos demasiados argumentos registo truncado registos truncados a vari?vel do ambiente LS_COLORS tem um valor n?o conhecido (i.e. ileg?vel) prefixo desconhecido `%s' quando a fazer liga??es (links) m?ltiplas ?ltimo argumento deve ser 
directoria ao mover ficheiros m?ltiplos o ?ltimo argumento tem que ser uma directoria erro de escrita n?mero de argumentos errado 