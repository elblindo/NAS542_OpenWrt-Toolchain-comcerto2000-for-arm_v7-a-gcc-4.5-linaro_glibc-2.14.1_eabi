??    ?      ?  ?   ?	      ?  ?  ?  h   ?  ?   
  i  ?  ?   e     ?       %   !  5   G     }     ?     ?  !   ?     ?     ?     ?                6     W     r  	   ?     ?  6   ?  '   ?  '   	  "   1  4   T  *   ?  .   ?     ?  
   ?     ?               .     @     ]     u     ?     ?     ?     ?     ?     ?               4     I     b     u     }     ?     ?     ?     ?     ?          *  %   J  &   p  #   ?  #   ?  #   ?  !     (   %  <   N  %   ?     ?      ?     ?  #        3     S  #   k  %   ?  ?   ?  	   ?     ?  %        9     I     Y     k     ?     ?     ?     ?     ?     ?     ?                   4   8     m          ?     ?     ?     ?     ?     ?          %     .     C     L     ]  '   b     ?  &   ?  	   ?     ?     ?     ?     ?     ?            "   /     R     _     l     u  *   ~  $   ?  +   ?  #   ?  7     %   V  "   |  4   ?  (   ?  (   ?     &      6      I      ]      n            ?      ?      ?   
   ?   &   ?   '   ?   ,   !     E!     Z!     ^!      z!  ?  ?!  ?  ]#  y   @&  %  ?&  ?  ?'  ?   ?)     A*     V*  .   h*  <   ?*     ?*  	   ?*     ?*  #   +     &+  $   6+  $   [+     ?+     ?+  ,   ?+      ?+      ,     ),     :,  8   V,  5   ?,  3   ?,  *   ?,  8   $-  /   ]-  .   ?-     ?-     ?-     ?-     ?-     ?-     .     4.     R.     i.     .     ?.     ?.     ?.     ?.     ?.     /     /     2/     H/  !   g/     ?/     ?/     ?/  !   ?/     ?/     ?/  !   0      90  $   Z0  *   0  .   ?0  $   ?0  "   ?0  +   !1  $   M1  5   r1  B   ?1  *   ?1  #   2  )   :2  *   d2  +   ?2  $   ?2     ?2  '   ?2  .    3  D   O3     ?3     ?3  .   ?3     ?3     4     4  #   -4     Q4     g4     ?4     ?4     ?4     ?4     ?4     ?4     5     !5  :   @5     {5     ?5     ?5  &   ?5     ?5     ?5     6     /6     M6     h6     t6     ?6     ?6     ?6  1   ?6     ?6  8    7     97     I7     [7     m7  
   p7     {7     ?7  +   ?7  .   ?7     ?7     8  	   8     8  +   %8  "   Q8  >   t8  !   ?8  4   ?8  (   
9  "   39  >   V9     ?9  *   ?9     ?9     ?9     :     :     8:     U:     q:     v:     ?:     ?:  &   ?:  '   ?:  ,   
;     7;     L;     P;      l;                 $                  y   M   C   E                 ?           :   ~   6   |   9      ?   ?      m                      K       W   }   k   ^   ?      ?   "   X       =   p   -   I   t      ?   2   V       F   ?   \   ?   	   ?           #       b   J          /   e   i   ?   H   c       1   _         5   g             T   ?                    @   l   {              +   <   ?       '   A   
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
 Project-Id-Version: avahi
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2011-04-02 03:23+0200
PO-Revision-Date: 2009-03-16 11:15-0300
Last-Translator: Taylon <taylonsilva@gmail.com>
Language-Team: Brazilian Portuguese <fedora-trans-pt_br@redhat.com>
Language: pt_BR
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n > 1);
X-Poedit-Language: Portuguese
X-Poedit-Country: BRAZIL
     -h --help            Mostra essa ajuda
    -V --version        Mostra a versão
    -D --browse-domains  Procura por domínios de navegação no lugar de serviços
    -a --all             Mostra todos os serviços, independente do tipo
    -d --domain=DOMAIN   Nome do domínio em que será procurado
    -v --verbose         Habilita o modo detalhado
    -t --terminate       Terminar após compilar a lista de more/less
    -c --cache           Terminar após compilar todas as entradas do cache
    -l --ignore-local    Ignorar serviços locais
    -r --resolve         Resolver serviços encontrados
    -f --no-fail         Não falhar se o daemon não estiver disponível
    -p --parsable        Saída em formato analisável
     -k --no-db-lookup    Ignorar tipos de serviços
    -b --dump-db         Compilar base de dados de tipos de serviço
 %s [opções]

    -h --help            Mostra essa ajuda
    -s --ssh             Procura por servidores SSH
    -v --vnc             Procura por servidores VNC
    -S --shell           Procura por servidores SSH e VNC
    -d --domain=DOMAIN   O domínio no qual se deseja que seja procurado
 %s [opções] %s <nome de máquina ...>
%s [opções] %s <endereço ... >

    -h --help            Mostra essa ajuda
    -V --version        Mostra a versão
    -n --name           Resolve o nome de máquina fornecido
    -a --address        Resolve o endereço fornecido
    -v --verbose        Habilita o modo detalhado
    -6                   Procura por endereços IPv6
    -4                   Procura por endereços IPv4
 %s [opções] <novo nome de máquina>

    -h --help              Mostra essa ajuda
    -V --version         Mostra a versão
    -v --verbose         Habilita o modo detalhado
 : Tudo por enquanto
 : Cache esgotado
 <i>Nenhum serviço selecionado atualmente.</i> Uma lista NÃO terminada dos tipos de serviços para navegar Acesso negado Endereço Família do endereço Ocorreu um erro inesperado do D-BUS Avahi Discovery Navegador de servidores SSH do Avahi Navegador de servidores VNC do Avahi Navegador Zeroconf do Avahi Falha no cliente do Avahi: %s Falha no navegador de domínios do Avahi: %s Falha no resolvedor do Avahi: %s Número de argumentos inválido
 Estado inválido Procurar tipos de serviços Procurar por serviços Zeroconf disponíveis em sua rede Procurar por Servidores SSH com o Zeroconf Habilitado Procurar por Servidores VNC com Zeroconf Habilitado A lista de tipos de serviços está vazia! A navegação pelo serviço %s no domínio %s falhou: %s Procurando por serviços no domínio <b>%s</b>: Procurando por serviços na <b>Rede local</b>: Procurando... Cancelado.
 Alterar domínio Escolha um servidor SSH Escolha um servidor de shell Escolha um servidor VNC Falha no cliente, saindo: %s
 Conectando a "%s" ...
 Falha de DNS: FORMERR Falha de DNS: NOTAUTH Falha de DNS: NO TIMP Falha de DNS: NOTZONE Falha de DNS: NXDOMAIN Falha de DNS: NXRRSET Falha de DNS: REFUSED Falha de DNS: SERVFAIL Falha de DNS: YXDOMAIN Falha de DNS: YXRRSET A conexão com o daemon falhou O daemon não está em execução Área de trabalho Desconectado, reconectando...
 Domínio E Inter Prot %-*s %-20s Domínio
 E Inter Prot Domínio
 Estabelecida no nome "%s"
 Falha ao adicionar endereço: %s
 Falha ao adicionar serviço: %s
 Falha ao adicionar subtipo "%s": %s
 Falha ao conectar no servidor do Avahi: %s Falha ao criar o resolvedor de endereços: %s
 Falha ao criar navegador para %s: %s Falha ao criar objeto cliente: %s
 Falha ao criar o navegador de domínios: %s Falha ao criar entrada de grupo: %s
 Falha ao criar o resolvedor de nomes de máquina: %s
 Falha ao criar um resolvedor para %s do tipo %s no domínio %s: %s Falha ao criar objeto de enquete simples.
 Falha ao analisar o endereço "%s"
 Falha ao analisar o número da porta: %s
 Falha ao consultar o nome de máquina: %s
 Falha ao consultar a string de versão: %s
 Falha ao ler o domínio do Avahi: %s Falha ao registrar: %s
 Falha ao resolver o endereço "%s": %s
 Falha ao resolver o nome da máquina "%s": %s
 Falha ao resolver o serviço "%s" do tipo "%s" no domínio "%s": %s
 Nome da máquina Conflito de nome de máquina
 Nome de máquina alterado para %s com sucesso
 Inicializando... DNS TTL Inválido Classe de DNS inválida Código de retorno de DNS inválido Tipo de DNS inválido Código de Erro Inválido RDATA inválido Endereço inválido Argumento inválido Configuração inválida Nome de domínio inválido Sinalizadores inválidos Nome de máquina inválido Índice de interface inválido Número de argumentos inválido, esperando exatamente um.
 Operação inválida Pacote inválido Número de porta inválido Especificação do protocolo inválida Registro inválido Chave de gravação inválida Nome de serviço inválido Subtipo de serviço inválido Tipo de serviço inválido Está vazio Conflito de nome local Localização Memória esgotada Nome Colisão de nomes, escolhendo um novo nome "%s".
 Nenhum comando especificado.
 Não há nenhum protocolo de rede apropriado disponível Não encontrado Não permitido(a) Não suportado(a) OK Erro do SO A operação falhou Porta Chave de gravação de recurso é a padrão Versão do servidor: %s; Nome de máquina: %s
 Nome do serviço Tipo do serviço Dados TXT Terminal O número IP da porta do serviço resolvido Os dados TXT do serviço resolvido A família do endereço para o resolução de nome da máquina O endereço do serviço resolvido O domínio a navegar ou ZERO para o domínio padrão O nome da máquina do serviço resolvido O objeto submetido não é válido A operação de requisição é inválida porque é redundante O nome do serviço selecionado O tipo de serviço do serviço selecionado Tempo limite esgotado Poucos argumentos
 Muitos argumentos
 Muitos clientes simultâneos Muitas entradas simultâneas Muitos objetos simultâneos Type Incompatibilidade de versões Esperando pelo daemon...
 _Domínio... avahi_domain_browser_new() falhou: %s
 avahi_service_browser_new() falhou: %s
 avahi_service_type_browser_new() falhou: %s
 execlp() falhou: %s
 n/a service_browser falhou: %s
 service_type_browser falhou: %s
 