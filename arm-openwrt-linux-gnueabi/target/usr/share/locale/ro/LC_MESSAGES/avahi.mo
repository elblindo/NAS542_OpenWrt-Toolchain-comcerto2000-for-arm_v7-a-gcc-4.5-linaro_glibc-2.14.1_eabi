??    ?      ?  ?   ?	      ?  ?  ?  h   ?  ?   
  i  ?  ?   e     ?       %   !  5   G     }     ?     ?  !   ?     ?     ?     ?                6     W     r  	   ?     ?  6   ?  '   ?  '   	  "   1  4   T  *   ?  .   ?     ?  
   ?     ?               .     @     ]     u     ?     ?     ?     ?     ?     ?               4     I     b     u     }     ?     ?     ?     ?     ?          *  %   J  &   p  #   ?  #   ?  #   ?  !     (   %  <   N  %   ?     ?      ?     ?  #        3     S  #   k  %   ?  ?   ?  	   ?     ?  %        9     I     Y     k     ?     ?     ?     ?     ?     ?     ?                   4   8     m          ?     ?     ?     ?     ?     ?          %     .     C     L     ]  '   b     ?  &   ?  	   ?     ?     ?     ?     ?     ?            "   /     R     _     l     u  *   ~  $   ?  +   ?  #   ?  7     %   V  "   |  4   ?  (   ?  (   ?     &      6      I      ]      n            ?      ?      ?   
   ?   &   ?   '   ?   ,   !     E!     Z!     ^!      z!  ?  ?!  ?  C#  f   ?%  ?   @&  ?  :'  ?   ?(     })     ?)  (   ?)  A   ?)     *     *     $*     4*     N*     `*     *     ?*     ?*  &   ?*     ?*     +     2+     B+  G   [+  /   ?+  0   ?+  $   ,  B   ),  (   l,  ,   ?,     ?,     ?,     ?,     ?,     -     -     .-     N-     n-     ?-     ?-     ?-     ?-     ?-     ?-     ?-     .     #.     7.     R.     n.      v.     ?.     ?.     ?.     ?.     ?.      /  '   1/  )   Y/  /   ?/  '   ?/  '   ?/  %   0  !   )0  ,   K0  H   x0  #   ?0  %   ?0  $   1  $   01  &   U1  /   |1     ?1  (   ?1  7   ?1  U   )2     2     ?2  &   ?2     ?2     ?2     ?2     3     3     ,3     B3     P3     b3     s3     ?3     ?3     ?3     ?3  @   ?3      4     44     C4     W4     s4     ?4     ?4     ?4     ?4     ?4     ?4     
5     5     %5  /   *5     Z5  -   y5     ?5     ?5     ?5     ?5  	   ?5     ?5     ?5  (   ?5  %   (6     N6     \6     i6     r6  ,   {6  !   ?6  3   ?6     ?6  G   7  '   b7     ?7  ;   ?7     ?7  +    8     ,8     98     R8     i8     ~8     ?8     ?8     ?8  !   ?8     ?8  (   ?8  )   9  .   B9     q9     ?9     ?9  "   ?9                 $                  y   M   C   E                 ?           :   ~   6   |   9      ?   ?      m                      K       W   }   k   ^   ?      ?   "   X       =   p   -   I   t      ?   2   V       F   ?   \   ?   	   ?           #       b   J          /   e   i   ?   H   c       1   _         5   g             T   ?                    @   l   {              +   <   ?       '   A   
   *   q       [   a               ?   .   ?   f   L   U       0          n   G   v   ?   ?   (                 ?       w   )           4       o       7       B   !   ?          ;   &   Y               ?   u       S           ?   8      %   s   ?   R   d   Q   N       >   j           ?   x   ,   z          ?       ]      ?   O      D      ?   Z   r   `   P               ?   ?   h              3              -h --help            Show this help
    -V --version         Show version
    -D --browse-domains  Browse for browsing domains instead of services
    -a --all             Show all services, regardless of the type
    -d --domain=DOMAIN   The domain to browse in
    -v --verbose         Enable verbose mode
    -t --terminate       Terminate after dumping a more or less complete list
    -c --cache           Terminate after dumping all entries from the cache
    -l --ignore-local    Ignore local services
    -r --resolve         Resolve services found
    -f --no-fail         Don't fail if the daemon is not available
    -p --parsable        Output in parsable format
     -k --no-db-lookup    Don't lookup service types
    -b --dump-db         Dump service type database
 %s [options]

    -h --help            Show this help
    -s --ssh             Browse SSH servers
    -v --vnc             Browse VNC servers
    -S --shell           Browse both SSH and VNC
    -d --domain=DOMAIN   The domain to browse in
 %s [options] %s <host name ...>
%s [options] %s <address ... >

    -h --help            Show this help
    -V --version         Show version
    -n --name            Resolve host name
    -a --address         Resolve address
    -v --verbose         Enable verbose mode
    -6                   Lookup IPv6 address
    -4                   Lookup IPv4 address
 %s [options] <new host name>

    -h --help            Show this help
    -V --version         Show version
    -v --verbose         Enable verbose mode
 : All for now
 : Cache exhausted
 <i>No service currently selected.</i> A NULL terminated list of service types to browse for Access denied Address Address family An unexpected D-Bus error occured Avahi Discovery Avahi SSH Server Browser Avahi VNC Server Browser Avahi Zeroconf Browser Avahi client failure: %s Avahi domain browser failure: %s Avahi resolver failure: %s Bad number of arguments
 Bad state Browse Service Types Browse for Zeroconf services available on your network Browse for Zeroconf-enabled SSH Servers Browse for Zeroconf-enabled VNC Servers Browse service type list is empty! Browsing for service type %s in domain %s failed: %s Browsing for services in domain <b>%s</b>: Browsing for services on <b>local network</b>: Browsing... Canceled.
 Change domain Choose SSH server Choose Shell Server Choose VNC server Client failure, exiting: %s
 Connecting to '%s' ...
 DNS failure: FORMERR DNS failure: NOTAUTH DNS failure: NOTIMP DNS failure: NOTZONE DNS failure: NXDOMAIN DNS failure: NXRRSET DNS failure: REFUSED DNS failure: SERVFAIL DNS failure: YXDOMAIN DNS failure: YXRRSET Daemon connection failed Daemon not running Desktop Disconnected, reconnecting ...
 Domain E Ifce Prot %-*s %-20s Domain
 E Ifce Prot Domain
 Established under name '%s'
 Failed to add address: %s
 Failed to add service: %s
 Failed to add subtype '%s': %s
 Failed to connect to Avahi server: %s Failed to create address resolver: %s
 Failed to create browser for %s: %s Failed to create client object: %s
 Failed to create domain browser: %s Failed to create entry group: %s
 Failed to create host name resolver: %s
 Failed to create resolver for %s of type %s in domain %s: %s Failed to create simple poll object.
 Failed to parse address '%s'
 Failed to parse port number: %s
 Failed to query host name: %s
 Failed to query version string: %s
 Failed to read Avahi domain: %s Failed to register: %s
 Failed to resolve address '%s': %s
 Failed to resolve host name '%s': %s
 Failed to resolve service '%s' of type '%s' in domain '%s': %s
 Host Name Host name conflict
 Host name successfully changed to %s
 Initializing... Invalid DNS TTL Invalid DNS class Invalid DNS return code Invalid DNS type Invalid Error Code Invalid RDATA Invalid address Invalid argument Invalid configuration Invalid domain name Invalid flags Invalid host name Invalid interface index Invalid number of arguments, expecting exactly one.
 Invalid operation Invalid packet Invalid port number Invalid protocol specification Invalid record Invalid record key Invalid service name Invalid service subtype Invalid service type Is empty Local name collision Location Memory exhausted Name Name collision, picking new name '%s'.
 No command specified.
 No suitable network protocol available Not found Not permitted Not supported OK OS Error Operation failed Port Resource record key is pattern Server version: %s; Host name: %s
 Service Name Service Type TXT Data Terminal The IP port number of the resolved service The TXT data of the resolved service The address family for host name resolution The address of the resolved service The domain to browse in, or NULL for the default domain The host name of the resolved service The object passed in was not valid The requested operation is invalid because redundant The service name of the selected service The service type of the selected service Timeout reached Too few arguments
 Too many arguments
 Too many clients Too many entries Too many objects Type Version mismatch Waiting for daemon ...
 _Domain... avahi_domain_browser_new() failed: %s
 avahi_service_browser_new() failed: %s
 avahi_service_type_browser_new() failed: %s
 execlp() failed: %s
 n/a service_browser failed: %s
 service_type_browser failed: %s
 Project-Id-Version: Fedora 10
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2011-04-02 03:23+0200
PO-Revision-Date: 2009-10-03 13:23+0200
Last-Translator: Adi Roiban <adi@roiban.ro>
Language-Team: Romanian <LL@li.org>
Language: ro
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=(n == 1 ? 0: (((n % 100 > 19) || ((n % 100 == 0) && (n != 0))) ? 2: 1));
     -h --help Afișează acest ajutor
    -V --version Afișează versiunia
    -D --browse-domains  Navigare domenii de navigare în loc de servicii
    -a --all Afișează toate serviciile, indiferent de tip
    -d --domain=DOMENIU Domeniul pentru navigare
    -v --verbose Activare modul detaliat
    -t --terminate Termină după afișarea unei liste mai mult sau mai puțin complete
    -c --cache Termină după afișarea tuturor întrărilor din cache
    -l --ignore-local Ignorare servicii locale
    -r --resolve Rezolvă serviciile găsite
    -f --no-fail Nu eșua dacă serviciul nu este disponibil
    -p --parsable Ieșire în format prelucrabil
     -k ---no-db-lookup Nu căuta tipuri de servicii
    -b --dump-db Arată baza de date tip serviciu
 %s [opțiuni]

    -h --help            Afișează acest ajutor
    -s --ssh             Navigare servere SSH
    -v --vnc             Navigare servere VNC
    -S --shell           Navigare  SSH și VNC
    -d --domain=DOMAIN   Domeniul de navigare
 %s [opțiuni] %s <nume gazdă ...>
%s [opțiuni] %s <adresă ... >

    -h --help              Afișează acest ajutor
    -V --version         Afișează versiune
    -n --name            Rezolvare nume domeniu
    -a --address         Rezolvare adresă
    -v --verbose         Activare mod detaliat
    -6                   Căutare adresă IPv6
    -4                   Căutare adresă IPv4
 %s [opțiuni] <nou nume calculator>

    -h --help            Afișează acest ajutor
    -V --version         Afișează versiunea
    -v --verbose         Activează mod detaliat
 : Deocamdată atât
 : Cache epuizat
 <i>Nici un serviciu selectat curent.</i> O listă terminată în NULL de servicii care să fie descoperite Acces refuzat Adresă Familie adresă S-a produs o eroare D-Bus Descoperire Avahi Navigator de servere SSH Avahi Navigator Avahi de server VNC Navigator Avahi Zeroconf Clientul Avahi a eșuat: %s Navigatorul domeniu Avahi a eșuat: %s Eroare rezolvare Avahi: %s Număr incorect de parametri
 Stare greșită Navigare tipuri servicii Descoperă serviciile Zeroconf disponibile în rețeaua dumneavoastră. Navighează servere SSH având activat Zeroconf Navigheză serverele VNC având activat Zeroconf Lista tipului de servici este vidă! Căutarea pentru tipul serviciului %s în domeniul %s a eșuat: %s Navigare servicii în domeniu <b>%s</b>: Navigare servicii în <b>rețea locală</b>: Se descoperă... Anulat.
 Schimbă domeniu Alegeți server SSH Alegeți consolă server Alegeți server VNC Clientul a eșuat, ieșire: %s
 Se conectează la „%s” ...
 DNS eșuat: FORMERR DNS eșuat: NOTAUTH DNS eșuat: NOTIMP DNS eșuat: NOTZONE DNS eșuat: NXDOMAIN DNS eșuat: NXRRSET DNS eșuat: REFUSED DNS eșuat: SERVFAIL DNS eșuat: YXDMAIN DNS eșuat: YXRRSET Conxiune serviciu eșuată Serviciul nu funcționează Desktop Deconectat, se reconectează...
 Domeniu Domeniu E Ifce Prot %-*s %-20s
 Domeniu E Ifce Prot
 Sub nume stabilit „%s”
 Adăugare adresă eșuată: %s
 Adăugare serviciu eșuată: %s
 Adăugare subtip „%s” eșuată: %s
 Conectarea la serverul Avahi a eșuat: %s A eșuat crearea rezolvatorului de adresă: %s
 Creare navigator a eșuat pentru %s: %s Crearea obiectului client a eșuat: %s
 Creare navigator domeniu a eșuat: %s Creare intrare grup eșuată: %s
 A eșuat crearea rezolvatorului de nume: %s
 A eșuat crearea resolver-ului pentru %s de tipul %s în domeniul %s: %s Creare obiect interogare eșuată.
 Prelucrare adresă „%s” eșuată
 Prelucrare număr port eșuată: %s
 Interogare nume gazdă eșuată: %s
 Interogare șir versiune eșuată: %s
 Încercare de citire domeniu Avahi eșuată: %s Înregistrare eșuată: %s
 Rezolvare adresă „%s” eșuată: %s
 Rezolvare nume calculator gazdă „%s” a eșuat: %s
 A eșuat rezolvarea serviciului „%s” de tipul „%s” din domeniul „%s”: %s
 Nume gazdă Conflict nume gazdă
 Numele gazdei a fost modificat în %s
 Se inițializează... DNS TTL nevalid Clasă DNS nevalidă Cod returnat DNS nevalid Tip DNS nevalid Cod de eroare nevalid RDATA nevalid Adresă nevalidă Argument nevalid Configurație nevalidă Nume domeniu nevalid Marcaje nevalide Nume gazdă nevalid Index interfeță nevalid Numărul de parametri nu este valid. Se așteaptă unul singur.
 Operație nevalidă Pachet nevalid Număr port nevalid Protocol specificat nevalid Înregistrare nevalidă Cheie înregistrare nevalidă Nume serviciu nevalid Subtip serviciu nevalid Tip serviciu nevalid Este gol Coliziune nume local Locație Memorie epuizată Nume Coloziune de nume, se alege nume nou „%s”.
 Nici o comandă specificată.
 Nu este disponibil nici un protocol de rețea Nu a fost găsit Nu este permis Nu este suportat OK Eroare SO Operațiune eșuată Port Înregistrarea cheie resursă este model Versiune server: %s; Nume server: %s
 Nume serviciu Tip serviciu Date TXT Terminal Numărul portului IP al serviciului rezolvat Datele TXT a serviciului rezolvat Familia adresei pentru rezolvarea numelui de gazdă Adresa serviciului rezolvat Domeniu pentru care să se descopere, sau NULL pentru domeniul implicit Numele de gazdă a serviciului rezolvat Obiectul trimis nu este valid Operația cerută nu este validă deoarece este redundantă Numele serviciului selectat Tipul serviciului pentru serviciul selectat Timp expirat Prea puțini parametrii
 Prea mulţi parametri
 Prea mulți clienți Prea multe intrări Prea multe obiecte Tip Versiunea nu corespunde Se așteaptă pentru serviciu...
 _Domeniu... avahi_domain_browser_new() a eșuat: %s
 avahi_service_browser_new() a eșuat: %s
 avahi_service_type_browser_new() a eșuat: %s
 execlp() a eșuat: %s
 n/a service_browser a eșuat: %s
 service_type_browser a eșuat: %s
 