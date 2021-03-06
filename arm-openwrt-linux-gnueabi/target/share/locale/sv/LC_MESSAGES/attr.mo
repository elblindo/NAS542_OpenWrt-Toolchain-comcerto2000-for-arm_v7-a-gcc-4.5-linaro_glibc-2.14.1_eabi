??          ?   %   ?      `  ?  a  ?  4  !   ?  !   ?  /     =   6  2   t  $   ?     ?  %   ?  *     +   6  .   b     ?     ?     ?     ?  "   ?     	     3	  3   A	    u	     ?
     ?
     ?
     ?
  $  ?
  ?    ?  ?      v     ?  3   ?  =   ?  1   )  $   [     ?  !   ?  '   ?  +   ?  2        C     a     ?     ?  %   ?     ?     ?  >      &  ?     f     ?     ?     ?                                                                                                   	               
            -n, --name=name         get the named extended attribute value
  -d, --dump              get all extended attribute values
  -e, --encoding=...      encode values (as 'text', 'hex' or 'base64')
      --match=pattern     only get attributes with names matching pattern
      --only-values       print the bare values only
  -h, --no-dereference    do not dereference symbolic links
      --absolute-names    don't strip leading '/' in pathnames
  -R, --recursive         recurse into subdirectories
  -L, --logical           logical walk, follow symbolic links
  -P  --physical          physical walk, do not follow symbolic links
      --version           print version and exit
      --help              this help text
   -n, --name=name         set the value of the named extended attribute
  -x, --remove=name       remove the named extended attribute
  -v, --value=value       use value as the attribute value
  -h, --no-dereference    do not dereference symbolic links
      --restore=file      restore extended attributes
      --version           print version and exit
      --help              this help text
 %s %s -- get extended attributes
 %s %s -- set extended attributes
 %s: %s: No filename found in line %d, aborting
 %s: No filename found in line %d of standard input, aborting
 %s: Removing leading '/' from absolute path names
 %s: invalid regular expression "%s"
 -V only allowed with -s
 A filename to operate on is required
 At least one of -s, -g, or -r is required
 Attribute "%s" had a %d byte value for %s:
 Attribute "%s" set to a %d byte value for %s:
 Could not get "%s" for %s
 Could not remove "%s" for %s
 Could not set "%s" for %s
 No such attribute Only one of -s, -g, or -r allowed
 Unrecognized option: %c
 Usage: %s %s
 Usage: %s %s
Try `%s --help' for more information.
 Usage: %s [-LRSq] -s attrname [-V attrvalue] pathname  # set value
       %s [-LRSq] -g attrname pathname                 # get value
       %s [-LRSq] -r attrname pathname                 # remove attr
      -s reads a value from stdin and -g writes a value to stdout
 getting attribute %s of %s listing attributes of %s setting attribute %s for %s setting attributes for %s Project-Id-Version: attr 2.4.25-1
POT-Creation-Date: 
PO-Revision-Date: 2006-01-21 18:46+0100
Last-Translator: Daniel Nylander <po@danielnylander.se>
Language-Team: Swedish <tp-sv@listor.tp-sv.se>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8bit
   -n, --name=namn         h?mta angivet ut?kat attributv?rde
  -d, --dump              h?mta alla ut?kade attributv?rden
  -e, --encoding=...      koda v?rden (som "text", "hex" eller "base64")
      --match=m?nster     h?mta endast attribut med namn som matchar m?nster
      --only-values       skriv endast ut v?rden
  -h, --no-dereference    beh?ll referenser i symboliska l?nkar
      --absolute-names    ta inte bort inledande "/" i s?kv?gar
  -R, --recursive         rekursiv in i underkataloger
  -L, --logical           logisk g?ng, f?lj symboliska l?nkar
  -P  --physical          fysisk g?ng, f?lj inte symboliska l?nkar
      --version           skriv ut version och avsluta
      --help              den h?r hj?lptexten
   -n, --name=namn         s?tt v?rdet f?r angivet ut?kat attribut
  -x, --remove=namn       ta bort angivet ut?kat attribut
  -v, --value=v?rde       anv?nd v?rde som attributv?rde
  -h, --no-dereference    beh?ll referenser i symboliska l?nkar
      --restore=fil       restore extended attributes
      --version           print version and exit
      --help              this help text
 %s %s -- h?mta ut?kade attribut
 %s %s -- s?tt ut?kade attribut
 %s: %s: Inget filnamn hittades p? rad %d, avbryter
 %s: Inget filnamn hittades p? rad %d i standard in, avbryter
 %s: Ta bort inledande "/" fr?n absoluta s?kv?gar
 %s: ogiltigt regulj?rt uttryck "%s"
 -V till?ts endast med -s
 Ett filnamn att operera p? kr?vs
 ?tminstone en av -s, -g eller -r kr?vs
 Attribut "%s" har ett %d bytev?rde f?r %s:
 Attribut "%s" satt till ett %d bytev?rde  f?r %s:
 Kunde inte h?mta "%s" f?r %s
 Kunde inte ta bort "%s" f?r %s
 Kunde inte s?tta "%s" f?r %s
 Inget s?dant attribut Endast en av -s, -g eller -r till?ts
 Ok?nd flagga: %c
 Anv?ndning: %s %s
 Anv?ndning: %s %s
F?rs?k med "%s --help" f?r mer information.
 Anv?ndning: %s [-LRSq] -s attrnamn [-V attrv?rde] s?kv?g  # s?tt v?rde
       %s [-LRSq] -g attrnamn s?kv?g                   # h?mta v?rde
       %s [-LRSq] -r attrnamn s?kv?g                   # ta bort attr
      -s l?ser ett v?rde fr?n standard in och -g skriver ett v?rde till standard ut
 h?mtar attribut %s f?r %s listar attribut f?r %s s?tter attribut %s f?r %s s?tter attribut f?r %s 