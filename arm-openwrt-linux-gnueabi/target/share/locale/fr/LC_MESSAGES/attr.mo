??          ?   %   ?      `  ?  a  ?  4  !   ?  !   ?  /     =   6  2   t  $   ?     ?  %   ?  *     +   6  .   b     ?     ?     ?     ?  "   ?     	     3	  3   A	    u	     ?
     ?
     ?
     ?
  Z  ?
  Y  H  ?  ?  '   B  +   j  @   ?  P   ?  6   (  .   _     ?  ?   ?  6   ?  :   %  A   `  $   ?  %   ?  "   ?       4   !     V     l  B   ?  _  ?      $     E  %   c  "   ?                                                                                                   	               
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
 getting attribute %s of %s listing attributes of %s setting attribute %s for %s setting attributes for %s Project-Id-Version: attr
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2005-09-30 19:05+0200
PO-Revision-Date: 2005-10-05 20:02+0200
Last-Translator: Guilhelm Panaget <guilhelm.panaget@free.fr>
Language-Team: French <debian-l10n-french@lists.debian.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Transfer-Encoding: 8bit
  -n, --name=nom         donner la valeur de l'attribut ?tendu nom
 -d, --dump             donner la valeur de tous les attributs ?tendus
 -e, --encoding=...     typer les valeurs (??text??, ??hex?? ou ??base64??)
     --match=motif      ne prendre en compte que les attributs correspondant
                        au motif
     --only-values      n'afficher que les valeurs
 -h, --no-dereference   ne pas d?r?f?rencer les liens symboliques
     --absolute-names   ne pas supprimer les ??/?? en t?te des chemins
                        absolus
 -R, --recursive        parcourir r?cursivement les sous-r?pertoires
 -L, --logical          chemin logique, suivre les liens symboliques
 -P  --physical         chemin physique, ne pas suivre les liens symboliques
     --version          afficher la version et quitter
     --help             afficher cette aide
   -n, --name=nom          affecter la valeur ? l'attribut ?tendu nom
  -x, --remove=nom        supprimer l'attribut ?tendu nom
  -v, --value=val         donner ? l'attribut la valeur val
  -h, --no-dereference    ne pas d?r?f?rencer les liens symboliques
      --restore=file      r?tablir les attributs ?tendus
      --version           afficher la version et quitter
      --help              afficher cette aide
 %s %s -- obtenir les attributs ?tendus
 %s %s -- positionner les attributs ?tendus
 %s?: %s?: la ligne %d ne contient aucun nom de fichier, abandon
 %s?: la ligne %d de l'entr?e standard ne contient aucun nom de fichier, abandon
 %s: Suppression des ??/?? en t?te des chemins absolus
 %s: expression rationnelle non valable ??%s??
 -V n'est compatible qu'avec -s
 Le nom du fichier auquel s'applique la commande est n?cessaire
 Au moins un des commutateurs -s, -g ou -r est requis.
 L'attribut ??%s?? avait une valeur de %d octets pour %s?:
 L'attribut ??%s?? positionn? ? une valeur de %d octets pour %s?:
 Impossible d'obtenir ??%s?? pour %s
 Impossible de supprimer ??%s?? de %s
 Impossible d'affecter ??%s?? ? %s
 Attribut inconnu Un seul des commutateurs -s, -g ou -r est autoris?.
 Option inconnue?: %c
 Utilisation?: %s %s
 Utilisation?: %s %s
Taper ??%s --help?? pour plus d'informations.
 Utilisation?:
       %s [-LRSq] -s nom_attr [-V val_attr] chemin   # affecter la valeur.
       %s [-LRSq] -g nom_attr chemin                 # obtenir la valeur.
       %s [-LRSq] -r nom_attr chemin                 # supprimer l'attribut.
       -s lire la valeur ? affecter sur l'entr?e standard.
       -g envoyer la valeur sur la sortie standard.
 obtention de l'attribut %s de %s affichage des attributs de %s positionnement de l'attribut %s de %s positionnement des attributs de %s 