??       ?     ?   ?  l      0   ~  1  p  ?   ?  !   F  ?   I       a   0  ?     ?     ?     ?   ,  ?     %   %  C   ,  i   -  ?      ?   &  ?          ,   L  L   J  ?   -  ?   5     (  H   L  q     ?   D  ?   ?     B  ]   D  ?     ?   I     =  O   J  ?   =  ?   8     9  O   C  ?   F  ?   (     @  =   B  ~   M  ?   K     8  [   ,  ?   J  ?   9     /  F   0  v   K  ?   $  ?   G     )  `  V  ?   9  ?        G  :   A  ?   <  ?   .     C  0   ,  t   ?  ?   <  ?   E      B   d   %   ?   5   ?   F  !   .  !J   >  !y   >  !?   A  !?   8  "9   3  "r   #  "?   /  "?   G  "?   /  #B   4  #r   ?  #?     $?   !  $?     $?   !  $?     %   I  %-   &  %w     %?     %?   I  %?   1  &   &  &Q     &x     &?     &?     &?   $  &?     '     '     '2     'C     'L     'f     '?   #  '?     '?   '  '?   ?  '?   =  (?   '  (?     )   ?  )     *   %  *     *?     *T     *f     *x     *?   "  *?   4  *?     *?   .  +   S  +;     +?     +?   1  +?   "  +?   (  ,   *  ,=     ,h   )  ,{   !  ,?   '  ,?   )  ,?     -     -0      -@      -a     -?   	  -?  A  -?     .?     .?     /      /   1  /'   2  /Y   0  /?     /?   #  /?     /?   )  0   1  0B   -  0t     0?     0?     0?     0?     0?   "  1   %  1.     1T     1b     1n     1?   	  1?     1?     1?     1?     1?     1?   &  1?   !  2     2;     2W   
  2k     2v  V  2?   ?  3?  ?  4]   ?  6!   ?  7   H  7?   "  7?   1  7?     8+      8G     8h   .  8?     8?   0  8?   0  9   1  95      9g   /  9?   !  9?   !  9?   }  9?   s  :z   -  :?   Q  ;   -  ;n   o  ;?     <   G  <,   W  <t   V  <?   T  =#   &  =x     =?   E  >   m  >e   F  >?   O  ?   r  ?j   O  ??   x  @-   )  @?   Q  @?   ?  A"   ?  A?   ?  B0   C  B?   5  C   S  C9   l  C?   7  C?   V  D2   ?  D?   8  E   K  ED   1  E?  ?  E?   B  G?   %  G?   r  H   ?  H?   Q  H?   :  I$   A  I_   ,  I?   H  I?   @  J   S  JX   R  J?   +  J?   H  K+   u  Kt   I  K?   S  L4   Z  L?   {  L?   :  M_   ?  M?   +  M?   6  N   z  N=   ?  N?   G  N?  /  O@   .  Pp     P?   ,  P?   /  P?   +  Q   m  QF   0  Q?   %  Q?   (  R   Z  R4   6  R?   /  R?     R?     S     S0     SO      Sh     S?     S?     S?     S?     S?     S?     T   %  T%     TK   ?  Tg   ?  T?   @  U?   0  U?     V	    V     W   6  W1     Wh     W?     W?     W?     W?   *  W?   <  X   %  XC   @  Xi   c  X?   (  Y   (  Y7   A  Y`   4  Y?   ;  Y?   2  Z     ZF   -  ZZ   '  Z?   5  Z?   .  Z?     [     [-   '  [I   &  [q   "  [?     [?  ?  [?     ]J     ]^     ]c     ]w   <  ]?   5  ]?   5  ^     ^;   +  ^Z      ^?   2  ^?   <  ^?   .  _     _F     _d     _}     _?     _?   +  _?   ,  _?     `     `$     `<     `N     `[     `c     `x     `~     `?   $  `?   %  `?     `?   "  a     a0     aK     aW      r   w   ?       +          l            ~   9   _   }       ?   S           |   q   ?   h   ?      {       N   Y   ?   ?      .   M   v   =   a   ?   ?       ?       ?   ?      ?      <   #   @   ?   ?       5   [       U                  p   n   ]   ?   C   F   ?      (   ?       4       x   6      &   E       !   ?       ?                   ?   *       V   ?   ?   ?   ?   ?   ?               ?   W   ?       A   1       L   /   H   7       \   g       D   u   c   R   G       ?       >   ?          ?   ?   d                  Z   O               ?   ?               ?   X   T   3   K   ?   `   ?   o   I   ?   ?          m          ?      $   J       k       ?      ,   e      
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
 extra operand `%s' fifo incompatible options input file shrank internal error: invalid diff type in process_diff internal error: invalid diff type passed to output internal error: screwup in format of diff blocks invalid --bytes value `%s' invalid --ignore-initial value `%s' invalid context length `%s' invalid diff format; incomplete last line invalid diff format; incorrect leading line chars invalid diff format; invalid change separator invalid horizon length `%s' invalid width `%s' memory exhausted message queue missing operand after `%s' options -l and -s are incompatible pagination not supported on this host program error read failed regular empty file regular file semaphore shared memory object socket stack overflow standard output subsidiary program `%s' failed subsidiary program `%s' not executable subsidiary program `%s' not found too many file label options typed memory object weird file write failed Project-Id-Version: diffutils 2.8
POT-Creation-Date: 2002-04-05 14:10-0800
PO-Revision-Date: 2002-04-03 07:35EET
Last-Translator: Deniz Akkus Kanca <deniz@arayan.com>
Language-Team: Turkish <gnu-tr-u12a@lists.sourceforge.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: KBabel 0.9.5
   GBÇ veya LBÇ aşağıdakileri içerebilir:
    %%  %
    %c'C'  tekli karakter C
    %c'\OOO'  Sekizlik kodu OOO olan karakter   GBÇ aşağıdakileri içerebilir:
    %<  DOSYA1'den satırlar
    %>  DOSYA2'den satırlar
    %=  DOSYA1 ve DOSYA2'de ortak olan satırlar
    %[-][GENİŞLİK][.[KESİNLİK]]{doxX}HARF  HARF için printf tarzı biçem
      HARF'ler yeni grup için aşağıdaki gibi, eski grup için ise
      küçük harf olurlar:
        F  ilk satır numarası
        L  son satır numarası
        N  satır sayısı = L-F+1
        E  F-1
        M  L+1   LBÇ aşağıdakileri içerebilir:
    %L  satırın içeriği
    %l  sonlayan yenisatır karakteri hariç, satırın içeriği
    %[-][GENİŞLİK][.[KESİNLİK]]{doxX}n  girdi satır sayısı için printf
     tarzı biçem   LTÜR, `old' (eski), `new' (yeni) veya `unchanged' (değişmemiş) olabilir. 
  GTÜR, LTÜR veya `changed' (değişmiş) olabilir.   DOSYA1'in ilk ATLA1 baytını ve DOSYA2'nin ilk ATLA2 baytını atlar. %s %s farklı: bayt %s, satır %s
 %s %s farklı: bayt %s, satır %s: %3o %s %3o %s
 %s: diff başarısız oldu: %s: kuraldışı seçenek -- %c
 %s: geçersiz seçenek -- %c
 %s: seçenek `%c%s' argümansız kullanılır
 %s: `%s' seçeneği belirsiz
 %s: `%s' seçeneği bir argümanla kullanılır
 %s: `--%s' seçeneği argümansız kullanılır
 %s: `-W %s' seçeneği argümansız kullanılır
 %s: `-W %s' seçeneği belirsiz
 %s: seçenek bir argümanla kullanılır -- %c
 %s: `%c%s' seçeneği bilinmiyor
 %s: `--%s' seçeneği bilinmiyor
 --GTÜR-group-format=GBÇ  Benzer, fakat GTÜR biçeminde girdi grupları
                         GBÇ ile biçemlendirilir. --LTÜR-line-format=LBÇ  Benzer, fakat LTÜR girdi satırları 
                        LBÇ ile biçemlendirilir. --binary  Datayı ikilik kipte yazar ve okur. --diff-program=YAZILIM  Dosyaları karşılaştırmak için YAZILIM'ı kullanır. hem --from-file hem de --to-file belirtilmiş --from-file=DOSYA1 DOSYA1'i bütün işlenenlerle karşılaştırır. DOSYA1 dizin
                   olabilir. --help  Bu yardımı gösterir. --horizon-lines=SAYI  ortak ilkek ve soneklerin SAYI satırını tutar. --ignore-file-name-case  Dosya isimlerinde büyük/küçük harf farklarını yoksayar. --line-format=LBÇ  Benzer, fakat bütün girdi satırları LBÇ ile biçemlendirilir. --no-ignore-file-name-case  Dosya isimlerinde büyük/küçük harf farkı gözetir. --normal  Normal bir diff çıktılar. --speed-large-files  Büyük dosyalar ve çok sayıda dağınık küçük 
                         farklar olduğunu farzeder. --strip-trailing-cr  Girdiden en sonda sarkan satır başını soyar. --to-file=DOSYA2  Bütün işlenenleri DOSYA2 ile karşılaştırı. DOSYA2 dizin
                  olabilir. --unidirectional-new-file  Var olmayan birinci dosyayı boş varsayar. -3  --easy-only  Harmanlanmamış, tekrarlanmayan değişiklikleri çıktılar. -A  --show-all  Bütün değişiklikleri çıktılar, ihtilafları köşeli parantez
                içine alır. -B  --ignore-blank-lines  Satırları boş olan değişiklikleri dikkate almaz. -D İSİM  --ifdef=İSİM  #ifdef İSİM farklarını gösteren harmanlanmış
                       dosya çıktılar. -D seçenek dizinler için kullanılamaz. -E  --ignore-tab-expansion  Sekmelerin açılmasından doğan farkları yoksayar. -E  --show-overlap  Harmanlanmamış değişiklikleri çıktılar, ihtilafları 
                    köşeli parantez içinde gösterir. -H  --speed-large-files  Büyük dosyalar ve çok sayıda dağınık küçük 
                         farklar olduğunu farzeder. -I DÜZİF  --ignore-matching-lines=DÜZİF  Satırları DÜZİF kalıbına uyan
                                         farkları yok sayar. -L ETİKET  --label=ETİKET  Dosya adı yerine ETİKET'i kullanır. -N  --new-file  Var olmayan dosyaları boş varsayar. -S DOSYA  --starting-file=DOSYA  Dizinleri karşılaştırırken DOSYA'dan başlar. -T  --initial-tab  Başlarına bir sekme ilave ederek sekmelerin hizalanmasını
                   sağlar. -W  --ignore-all-space  Bütün boşlukları yok sayar. -X  Birbiriyle örtüşen farkları köşeli parantez içinde göstererek çıktılar. -X DOSYA  --exclude-from=DOSYA  DOSYA'da bulunan kalıplara uyan dosyaları
                                işlem dışı tutar. -a  --text  Bütün dosyaları metin imişcesine işler. -b  --ignore-space-change  Boşluk miktarındaki değişiklikleri yoksayar. -b  --print-bytes  Bayt farklarını çıktılar. -c  -C SAYI  --context[=SAYI]  SAYI kadar bağlam satırı kopyalar (öntanımlı 3)
-u  -U SAYI  --unified[=SAYI]  SAYI kadar birleşmiş bağlam satırı kopyalar
                               (öntanımlı 3)
  --label ETİKET  Dosya adı yerine ETİKET'i kullanır.
  -p  --show-c-function  Her farkın hangi C işlevi içinde olduğunu gösterir.
  -F DÜZİF  --show-function-line=DÜZİF  DÜZİF düzenli ifade kalıbına uygun olan
                               en son satırı gösterir. -d  --minimal  Daha küçük bir fark kümesi bulmaya çalışır. -e  --ed  Bir ed betiği çıktılar. -e  --ed  ESKİDOSYA ile SİZİNDOSYA arasındaki harmanlanmamış farkları
          BENİMDOSYA'ya çıktılar. -i  --ignore-case  Büyük harf/küçük harf farkı gözetmez. -i --ignore-case  Dosya içeriğinde büyük/küçük harf farklarını yoksayar. -i  Ed betiklerinin sonuna `w' ve `q' komutlarını ekler. -i ATLA --ignore-initial=ATLA  Girdinin ilk ATLA baytını atlar. -i ATLA1:ATLA2  --ignore-initial=ATLA1:ATLA2 -l  --left-column  Ortak satırları yalnızca sol sütunda çıktılar. -l  --paginate  Çıktıyı `pr' komutundan geçirerek sayfalar. -l  --verbose  Bütün farklı baytların numaralarını ve değerlerini gösterir. -m  --merge  Ed betiği yerine harmanlanmış dosya çıktılar. (öntanımlı -A) -n  --rcs  RCS biçeminde diff çıktılar. -n LİMİT  --bytes=LİMİT  En fazla LİMİT baytı karşılaştırır. -o DOSYA  --output=DOSYA  Interaktif olarak çalışır, çıktıyı DOSYA'ya
                          yönlendirir. -q  --brief  Yalnızca dosyaların farklı olup olmadığını gösterir. -r  --recursive  Çevrimli olarak bulunan bütün alt dizinleri karşılaştırır. -s  --quiet  --silent  Hiç bir şey çıktılamaz, yalnızca çıkış durumunu bildirir. -s  --report-identical-files  iki dosyanın birbirinin aynısı olup olmadığını
                              bildirir. -s  --suppress-common-lines  Ortak satırları göstermez. -t  --expand-tabs  Çıktıda sekmeleri boşluk haline getirir. -v  --version  Sürüm bilgisini gösterir. -w  --ignore-all-space  Bütün boşlukları yoksayar. -w SAYI  --width=SAYI  Satır başına en fazla SAYI kadar karakter çıktılar
                       (öntanımlı 130). -x  --overlap-only  Birbiri ile örtüşen farkları gösterir. -x KALIP  --exclude=KALIP  KALIP'a uyan dosyaları işleme dahil etmez. -y  --side-by-side  İki sütun halinde çıktı verir.
  -w SAYI  --width=SAYI  Satır başına en fazla SAYI kadar karakter çıktılar
                    (öntanımlı 130).
  --left-column     Ortak satırlarda yalnız sol sütunu gösterir.
  --suppress-common-lines  Ortak satırları göstermez. İkilik dosyalar %s ve %s birbirinden farklı
 Ortak alt dizinler: %s ve %s
 Dosyaları satır satır karşılaştırır. Üç dosyayı satır satır karşılaştırır. İki dosyayı bayt bayt karşılaştırır. DOSYAlar: `DOSYA1 DOSYA2' veya `DİZİN1 DİZİN2' veya `DİZİN DOSYA...' 
          veya `DOSYA...DİZİN'; %s dosyası, bir %s, halbuki %s dosyası bir %s
 %s ve %s dosyaları birbirinin aynı
 %s ve %s dosyaları birbirinden farklı
 eğer --from-file veya --to-file kullanılmışsa, DOSYAlar üzerinde 
kısıtlama yoktur. Eğer DOSYA `-' ise veya yoksa, standart girdi okunur. Eğer bir DOSYA `-' ise, standart girdi okunur. Geriye başvuru geçersiz Karakter sınıf ismi geçersiz Harmanlama karakteri geçersiz \{\} içeriği geçersiz Önceki düzenli ifade geçersiz Kapsam sonu geçersiz Düzenli ifade geçersiz Bellek tükendi Eşleme yok Dosya sonunda yenisatır yok. Daha önce düzenli ifade yok Yalnızca %s'da: %s
 Düzenli ifadenin sonu eksik kalmış Düzenli ifade çok büyük Yazılım hatalarını <bug-gnu-utils@gnu.org> adresine, 
çeviri hatalarını <gnu-tr-u12a@lists.sourceforge.net> adresine bildirin. ATLA değerleri aşağıdaki çarpanlarla sonlanabilir:
kB 1000, K 1024, MB 1,000,000, M 1,048,576,
GB 1,000,000,000, G 1,073,741,824, ve T, P, E, Z, Y için devam eder. ATLA1 ve ATLA2 her dosyada atlanacak bayt sayısını gösterir. Dosya farklarının yanyana katıştırılması. Başarılı Bu yazılım, kanunun izin verdiği ölçüde, HİÇ BİR GARANTİ içermez.
Bu yazılımın kopyalarını GNU Genel Kamu Lisansı'nın koşulları altında
dağıtabilirsiniz. Bu konular ile ilgili daha fazla bilgi için lütfen COPYING
adındaki dosyaya bakın. İzleyen ters kesme Daha fazla bilgi için `%s --help' komutunu kullanın. Bilinmeyen sistem hatası ( ya da \( eşleşmiyor ) ya da  \) eşleşmiyor [ ya da [^ eşleşmiyor \{ eşleşmiyor Kullanım: %s [SEÇENEK]... DOSYA1 DOSYA2
 Kullanım: %s [SEÇENEK]... DOSYA1 [DOSYA2 [ATLA1 [ATLA2]]]
 Kullanım: %s [SEÇENEK]... DOSYAlar
 Kullanım: %s [SEÇENEK]... BENİMDOSYA ESKİDOSYA SİZİNDOSYA
 Paul Eggert, Mike Haertel, David Hayes, Richard Stallman, ve Len Tower
tarafından yazılmıştır. Randy Smith tarafından yazılmıştır. Thomas Lord tarafından yazılmıştır. Torbjorn Granlund ve David MacKenzie tarafından yazılmıştır. `-%ld' seçeneği kullanımdan kalktı; kullanmayın `-%ld' seçeneği kullanımdan kalktı; `-%c %ld' kullanın `-' birden fazla girdi dosyası için belirtilmiş blok özel dosyası karşılaştırılacak her iki dosya da dizin `-', bir dizinle karşılaştırılamaz dosya isimleri `%s' ve `%s' karşılaştırılamıyor interaktif olarak standart girdi harmanlanamaz karakter özel dosyası cmp: %s'da EOF (dosyasonu)
 çelişkili %s seçeneği değeri: `%s' çelişkili çıktı tarz seçenekleri çelişkili genişlik seçenekleri dizin ed:	Düzenler, sonra iki tarafı da kullanır, bir başlıkla süsler.
eb:	Düzenler, sonra iki tarafı da kullanır.
el:	Düzenler, sonra sol tarafı kullanır.
er:	Düzenler, sonra sağ tarafı kullanır.
e:	Yeni bir sürüm düzenler.
l:	Sol tarafı kullanır.
r:	Sağ tarafı kullanır.
s:	Ortak satırları sessizce dahil eder.
v:	Ortak satırları bilgi vererek dahil eder.
q:	Çıkar.
 fazla işlenen `%s' fifo uyumsuz seçenekler girdi dosyası küçüldü iç hata: process_diff işlevi içinde geçersiz diff türü iç hata: çıktıya geçersiz diff türü geçirildi iç hata: diff blokları biçemlemesinde hata oluştu geçersiz --bytes değeri `%s' geçersiz -- ilk değer `%s' yoksayılmış `%s' içerik uzunluğu geçersiz geçersiz diff biçemi; tamamlanmamış son satır geçersiz diff biçemi; geçersiz satır başı karakterleri geçersiz diff biçemi; geçersiz fark ayracı geçersiz ufuk uzunluğu `%s' geçersiz genişlik `%s' bellek tükendi ileti kuyruğu `%s'den sonra işlenen eksik -l ve -s seçenekleri beraber kullanılamaz sayfalama bu makina üzerinde desteklenmiyor yazılım hatası okuma başarısız oldu normal boş dosya normal dosya semafor ortak bellek nesnesi soket yığıt taşması standart çıktı alt yazılım `%s' başarısız oldu alt yazılım `%s' çalışır değil alt yazılım `%s' bulunamadı çok fazla dosya etiket seçeneği türlenmiş bellek nesnesi dosya garip yazma başarısız oldu 