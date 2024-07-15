#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 25/06/2024<br>
#Data de atualização: 14/07/2024<br>
#Versão: 0.06<br>

OBSERVAÇÃO IMPORTANTE: COMENTAR NO VÍDEO DO UFW SE VOCÊ CONSEGUIU IMPLEMENTAR COM 
A SEGUINTE FRASE: Implementação do Firewall UFW realizado com sucesso!!! #BoraParaPrática

COMPARTILHAR O SELO DA IMPLEMENTAÇÃO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM)
MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DA IMPLEMENTAÇÃO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/19-ufw.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver 
#ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiofirewall #desafioufw

Conteúdo estudado nessa implementação:<br>
#01_ Verificando qual o Sistema de Firewall padrão do Ubuntu Server<br>
#02_ Verificando a Versão e Status do Firewall UFW no Ubuntu Server<br>
#03_ Habilitando (ENABLED) o Firewall UFW no Ubuntu Server<br>
#04_ Verificando (STATUS) o Serviço do UFW no Ubuntu Server<br>
#05_ Localização dos Arquivos e Diretório de Configuração do UFW no Ubuntu Server<br>
#06_ Verificando as Políticas de Entrada (INCOMING) e Saída (OUTGOING) padrão (DEFAULT) do UFW no Ubuntu Server<br>
#07_ Configurando a Política de Bloqueio (DENY) padrão (DEFAULT) de Entrada (INCOMING) do UFW no Ubuntu Server<br>
#08_ Configurando a Política de Bloqueio (DENY) padrão (DEFAULT) de Saída (OUTGOING) do UFW no Ubuntu Server<br>
#09_ Configurando o Nível do Log (LOGGING) do UFW no Ubuntu Server<br>
#10_ Testando as conexões de Entrada (INCOMING) e Saída (OUTGOING) no Ubuntu Server<br>
#11_ Liberando (ALLOW) a Entrada (INCOMING) e Saída (OUTGOING) da Interface de Loopback do UFW no Ubuntu Server<br>
#12_ Liberando (ALLOW) as Saídas (OUTGOING) Básicas do UFW no Ubuntu Server<br>
#13_ Liberando (ALLOW) a Saída (OUTGOING) do Protocolo ICMP do UFW no Ubuntu Server<br>
#14_ Liberando (ALLOW) as Entradas (INCOMING) Básicas do UFW no Ubuntu Server<br>
#15_ Liberando (ALLOW) as Entradas (INCOMING) por Sub-rede ou Endereço IPv4 do UFW no Ubuntu Server<br>
#16_ Removendo (DELETE) regras do UFW no Ubuntu Server<br>
#17_ Reiniciando (RELOAD) as Regras de Firewall do UFW no Ubuntu Server<br>
#18_ Entendo o Log (LOGGING) do Firewall UFW no Ubuntu Server<br>
#19_ Criando regras baseadas em Aplicações (APP) do UFW no Ubuntu Server<br>
#20_ Liberando (ALLOW) um Faixa (Range) de Portas do UFW no Ubuntu Server<br>
#21_ Limitando (LIMIT) uma conexão de Entrada (INCOMING) do UFW no Ubuntu Server<br>
#22_ Desativando (DISABLE) e Ativando (ENABLE) o UFW no Ubuntu Server<br>
#23_ Resetando (RESET) das Regras de Firewall do UFW no Ubuntu Server<br>

Site Oficial Wiki do Ubuntu UFW: https://help.ubuntu.com/community/UFWbr<br>
Site Oficial do Descomplicando o Ubuntu UFW: https://wiki.ubuntu.com/UncomplicatedFirewall<br>
Site Oficial do Debian UFW: https://wiki.debian.org/Uncomplicated%20Firewall%20%28ufw%29<br>
Site Oficial do IPTables: http://git.netfilter.org/iptables/

Uncomplicated Firewall é uma firewall desenhada para ser de fácil utilização. Utiliza uma<br>
interface de linha de comandos, e usa iptables para configuração. 

O iptables é um programa escrito em C, utilizado como ferramenta que configura regras para<br>
o protocolo de internet IPv4 na tabela de filtragem de pacotes, utilizando os módulos e <br>
framework do kernel Linux (versão 2.3.15 ou posteiro).

O netfilter é um módulo que fornece ao sistema operacional Linux as funções de firewall, <br>
NAT e log dos dados que trafegam por rede de computadores. iptables é o nome da ferramenta <br>
do espaço do usuário que permite a criação de regras de firewall e NATs.

[![Firewall UFW](http://img.youtube.com/vi//0.jpg)]( "Firewall UFW")

Link da vídeo aula: 

#01_ Verificando qual o Sistema de Firewall padrão do Ubuntu Server<br>
```bash
#Verificando qual o sistema de Firewall padrão configurado no Ubuntu Server
sudo update-alternatives --config iptables 
```

#02_ Verificando a Versão e Status do Firewall UFW no Ubuntu Server<br>
```bash
#Verificando a versão do UFW
sudo ufw version

#Verificando o status do UFW
sudo ufw status
```

#03_ Habilitando (ENABLE) o Firewall UFW no Ubuntu Server<br>
```bash
#OBSERVAÇÃO IMPORTANTE: CUIDADO QUANDO VOCÊ HABILITAR O UFW UTILIZANDO UMA CONEXÃO REMOTA,
#APÓS DIGITAR O COMANDO: sudo ufw enable A SEGUINTE MENSAGEM É MOSTRADA: Command may disrupt 
#existing ssh connections (O comando pode interromper as conexões ssh existentes) APARECE NA
#TELA, EM ALGUNS CENÁRIOS PODE ACONTECER DA CONEXÃO SER INTERROMPIDA (DESCONECTADA).

#Iniciando o Firewall UFW
sudo ufw enable
	Command may disrupt existing ssh connections. Proceed with operation (y|n)? y <Enter>
	Firewall is active and enabled on system startup

#Verificando o status do UFW
sudo ufw status
```

#04_ Verificando o Serviço do UFW no Ubuntu Server<br>
```bash
#verificando o serviço do UFW
sudo systemctl status ufw
sudo systemctl restart ufw
sudo systemctl stop ufw
sudo systemctl start ufw

#analisando os Log's e mensagens de erro do UFW
#opção do comando journalctl: x (catalog), e (pager-end), u (unit)
sudo journalctl -xeu ufw
```

#05_ Localização dos Arquivos e Diretório de Configuração do UFW no Ubuntu Server<br>
```bash
/etc/default/ufw   <-- Arquivo de configuração padrão do UFW
/etc/ufw/*         <-- Diretório padrão das configurações de regras do UFW
/var/log/ufw.log   <-- Arquivo de Log padrão do UFW
/var/log/syslog    <-- Logs do UFW no sistema (usar o filtro: cat /var/log/syslog | grep -i ufw)
/var/log/kern.log  <-- Logs do UFW no Kernel (usar o filtro: cat /var/log/syslog | grep -i ufw)
```

#06_ Verificando as Políticas de Entrada (INCOMING) e Saída (OUTGOING) padrão do UFW no Ubuntu Server<br>
```bash
#Verificando as Políticas padrão do UFW
sudo ufw status verbose

#Entendo o Status das Políticas padrão do UFW 
Status: active  <-- FIREWALL HABILITADO
Logging: on (low)  <-- LOG HABILITADO E NÍVEL DE DETALHAMENTO BAIXO
Default: deny (incoming), allow (outgoing), disabled (routed)  <-- POLÍTICA PADRÃO DE ENTRADA, SAÍDA E ROTEAMENTO
New profiles: skip  <-- PERFIL PADRÃO
```

#07_ Configurando a Política de Bloqueio (DENY) padrão (DEFAULT) de Entrada (INCOMING) do UFW no Ubuntu Server<br>
```bash
#OBSERVAÇÃO IMPORTANTE: por padrão no UFW temos basicamente 05 (cinco) políticas padrão:
#allow (liberação), deny (negação), limit (limitação), reject (rejeição) e disable (desabilitado).

#Configurando a Política Padrão de Bloqueio de Entrada
sudo ufw default deny incoming
	Default incoming policy changed to 'deny'
	(be sure to update your rules accordingly)

#Verificando as Políticas padrão do UFW
sudo ufw status verbose
```

#08_ Configurando a Política de Bloqueio (DENY) padrão (DEFAULT) de Saída (OUTGOING) do UFW no Ubuntu Server<br>
```bash
#OBSERVAÇÃO IMPORTANTE: por padrão as políticas de Firewall geralmente Bloqueia (DENY)
#toda a Entrada (INCOMING) para o servidor e Permite (ALLOW) toda a Saída (OUTGOING),
#bloquear a Entrada e Saída deixar a Segurança mais Restritiva, precisando criar regras
#para cada serviço ou rede você precisa acessar.

#Configurando a Política Padrão de Bloqueio de Saída
sudo ufw default deny outgoing
	Default outgoing policy changed to 'deny'
	(be sure to update your rules accordingly)

#Verificando as Políticas padrão do UFW
sudo ufw status verbose
```

#09_ Configurando o Nível de Log (LOGGING) do UFW no Ubuntu Server<br>
```bash
#OBSERVAÇÃO IMPORTANTE: no UFW temos basicamente 05 (cinco) níveis de Log: off (desligado),
#low (baixo), medium (médio), high (alto) e full (completo/debug).

#Habilitando os Logs das Regras do UFW
sudo ufw logging on
	Logging enabled

#Configurando o Nível de Log de Baixo (LOW) para Médio (MEDIUM)
sudo ufw logging medium
	Logging enabled

#Verificando as Políticas padrão do UFW
sudo ufw status verbose
```

#10_ Testando as conexões de Entrada (INCOMING) e Saída (OUTGOING) no Ubuntu Server<br>
```bash
#OBSERVAÇÃO IMPORTANTE: por padrão o UFW permiti o protocolo ICMP (Internet Control Message
#Protocol) para o endereço IPv4 de Loopback e o endereço externo/remoto do Ubuntu Server.

#Pingando o endereço IPv4 da Loopback/Localhost
ping 127.0.0.1

#Pingando o nome do Localhost/Loopback
ping localhost

#Testando a resolução de Nomes da Loopback/Localhost
#opção do comando host: -v (verbose)
sudo host -v 127.0.0.1
sudo host -v localhost

#Pingando o endereço IPv4 do Google
ping 8.8.8.8

#Resolvendo o nome do Google
nslookup google.com

#Pingando o endereço IPv4 Remoto do Ubuntu Server
ping 172.16.1.20

#Testado o acesso remoto via SSH no Ubuntu Server
ssh vaamonde@172.16.1.20

#Verificando as Portas Abertas do Ubuntu Server
#OBSERVAÇÃO: esse processo demora um pouco, caso você não tenha o comando: nmap
#instalado no seu equipamento digite o comando: sudo apt install nmap
#opção do comando nmap: -p- (port ranges all) -sS (scan TCP SYN), -sU (scans UDP)
sudo nmap -p- 172.16.1.20 -sS -sU
```

#11_ Liberando (ALLOW) a Entrada (INCOMING) e Saída (OUTGOING) da Interface de Loopback do UFW no Ubuntu Server<br>
```bash
#OBSERVAÇÃO IMPORTANTE: por padrão, o UFW no Ubuntu Server adiciona automaticamente regras 
#de IPv6 para regras da Interface de Loopback.

#Liberando (ALLOW) a Entrada (IN) da Interface (ON) Loopback (LO)
sudo ufw allow in on lo

#Liberando (ALLOW) a Saída (OUT) da Interface (ON) Loopback (LO)
sudo ufw allow out on lo

#Verificando as Políticas padrão do UFW
sudo ufw status verbose

#Verificando as Políticas padrão do UFW em modo Numerado
sudo ufw status numbered
```

#12_ Liberando (ALLOW) as Saídas (OUTGOING) Básicas do UFW no Ubuntu Server<br>
```bash
#OBSERVAÇÃO IMPORTANTE: por padrão, o UFW no Ubuntu Server adiciona automaticamente regras 
#de IPv6 para regras criadas de forma simples ou básica.

#OBSERVAÇÃO IMPORTANTE: quando você utilizar a opção: comment (comentário) do UFW é
#recomendo não utilizar acentuação e sempre dentro de Aspas Simples (não crase).

#Regra de liberação (ALLOW) de Saída (OUT) da Consulta do Protocolo DNS (53/udp)
sudo ufw allow out 53/udp comment 'Liberando a saida para consulta do DNS'

#Regra de liberação (ALLOW) de Saída (OUT) da Navegação do Protocolo HTTP (80/tcp)
sudo ufw allow out 80/tcp comment 'Liberando a saida para navegação do HTTP'

#Regra de liberação (ALLOW) de Saída (OUT) da Navegação do Protocolo HTTPS (443/tcp)
sudo ufw allow out 443/tcp comment 'Liberando a saida para navegação do HTTPS'

#Verificando as Políticas padrão do UFW
sudo ufw status verbose

#Verificando as Políticas padrão do UFW em modo Numerado
sudo ufw status numbered

#Resolvendo o nome do Google
nslookup google.com

#Atualizando as Listas do Sources.List do Apt
sudo apt update
```

#13_ Liberando (ALLOW) a Saída (OUTGOING) do Protocolo ICMP do UFW no Ubuntu Server<br>
```bash
#OBSERVAÇÃO IMPORTANTE: por padrão a regra de ICMP (Internet Control Message Protocol) de
#Entrada (INCOMING) e Liberada (ACCEPT), caso queira Bloquear (DROP) e só alterar o opção
#de ACCEPT para DROP nas linhas correspondente a partir da linha: 33

#Pingando o endereço IPv4 e Nome do Google
ping 8.8.8.8
ping google.com

#editando o arquivo de configuração before.rules do UFW
sudo vim /etc/ufw/before.rules
ESC SHIFT :set number <Enter>
INSERT

	#inserir as informações na linha: 39
	#liberando a saída do protocolo ICMP (Permitindo o Ping - Echo Request)
	#opções do comando iptables usadas pelo UFW: -A (append), -p (protocol), -j (jump target)
	# ok icmp codes for OUTPUT
	-A ufw-before-output -p icmp --icmp-type destination-unreachable -j ACCEPT
	-A ufw-before-output -p icmp --icmp-type time-exceeded -j ACCEPT
	-A ufw-before-output -p icmp --icmp-type parameter-problem -j ACCEPT
	-A ufw-before-output -p icmp --icmp-type echo-request -j ACCEPT

#salvar e sair do arquivo
ESC SHIFT :x <Enter>

#reiniciar as regras de firewall do UFW
sudo ufw reload
	Firewall reloaded

#Pingando o endereço IPv4 do Google
ping 8.8.8.8

#Pingando o nome do Google
ping google.com
```

#14_ Liberando (ALLOW) as Entradas (INCOMING) Básicas do UFW no Ubuntu Server<br>
```bash
#OBSERVAÇÃO IMPORTANTE: por padrão, o UFW no Ubuntu Server adiciona automaticamente regras 
#de IPv6 para regras criadas de forma simples ou básica.

#OBSERVAÇÃO IMPORTANTE: quando você utilizar a opção: comment (comentário) do UFW é
#recomendo não utilizar acentuação e sempre dentro de Aspas Simples (não crase).

#Regra de liberação (ALLOW) de Entrada (IN) Logando Tudo (LOG-ALL) do Protocolo SSH (22/tcp)
sudo ufw allow in log-all 22/tcp log all comment 'Liberando a entrada do acesso remoto via SSH'

#Regra de liberação (ALLOW) de Entrada (IN) do Protocolo HTTP (80/tcp)
sudo ufw allow in 80/tcp comment 'Liberando a entrada do protocolo HTTP'

#Verificando as Políticas padrão do UFW
sudo ufw status verbose

#Verificando as Políticas padrão do UFW em modo Numerado
sudo ufw status numbered

#Testando as portas de conexões remotas do SSH e HTTP via Telnet, Netcat ou NC
#opção do comando netcat: -v (verbose)
#opção do comando nc: -v (verbose)
telnet 172.16.1.20 22
telnet 172.16.1.20 80
netcat -v 172.16.1.20 22
netcat -v 172.16.1.20 80
nc -v 172.16.1.20 22
nc -v 172.16.1.20 80

#Acessando remotamente o Ubuntu Server via SSH
ssh vaamonde@172.16.1.20

#Testando o acesso via Navegador do Protocolo HTTP
firefox ou google chrome: http://endereço_ipv4_ubuntuserver
```

#15_ Liberando (ALLOW) as Entradas (INCOMING) por Sub-rede ou Endereço IPv4 do UFW no Ubuntu Server<br>
```bash
#OBSERVAÇÃO IMPORTANTE: por padrão, o UFW no Ubuntu Server não adiciona automaticamente regras 
#de IPv6 para as regras criadas de forma avançada ou complexa

#OBSERVAÇÃO IMPORTANTE: quando você utilizar a opção: comment (comentário) do UFW é
#recomendo não utilizar acentuação e sempre dentro de Aspas Simples (não crase).

#OBSERVAÇÃO IMPORTANTE: nas opções FROM (ORIGEM/DE) e TO (DESTINO/PARA) você pode usar
#a opção ANY (QUALQUER) para configurar da regra de firewall menos restritiva.

#liberando (ALLOW) a Sub-rede 172.16.1.0/24 (FROM) acessar o servidor (TO) do Grafana Server na porta (PORT) 3000 via protocolo HTTP (proto tcp)
sudo ufw allow from 172.16.1.0/24 to 172.16.1.20 port 3000 proto tcp comment 'Liberando a sub-rede para acessar o Grafana Server'

#liberando (ALLOW) o IPv4 172.16.1.114 (FROM) acessar o servidor (TO) do Webmin na porta (PORT) 10000 via protocolo HTTPS (proto tcp)
sudo ufw allow from 172.16.1.114 to 172.16.1.20 port 10000 proto tcp comment 'Liberando o IP para acessar o Webmin'

#Verificando as Políticas padrão do UFW
sudo ufw status verbose

#Verificando as Políticas padrão do UFW em modo Numerado
sudo ufw status numbered

#Testando o acesso via Navegador dos protocolos HTTP e HTTPS
firefox ou google chrome: http://endereço_ipv4_ubuntuserver:3000
firefox ou google chrome: https://endereço_ipv4_ubuntuserver:10000
```

#16_ Removendo (DELETE) Regras (RULES) de firewall do UFW no Ubuntu Server<br>
```bash
#OBSERVAÇÃO IMPORTANTE: você pode remover as regras do UFW de duas formas, primeira é utilizar
#nome da regra criada exemplo: sudo ufw delete out 53/udp ou utilizar o número da regras que
#muitas vezes é mais simples.

#Verificando as Políticas padrão do UFW
sudo ufw status verbose

#Verificando as Políticas padrão do UFW em modo Numerado
sudo ufw status numbered

#Removendo (DELETE) a Regra de Acesso ao Webmin (9) do endereço IPv4 172.16.1.114
sudo ufw delete 9
	Deleting:
		allow from 172.16.1.114 to 172.16.1.20 port 10000 proto tcp comment 'Liberando o IP para acessar o Webmin'
	Proceed with operation (y|n)? y
	Rule deleted

#Verificando as Políticas padrão do UFW em modo Numerado
sudo ufw status numbered
```

#17_ Reiniciando (RELOAD) as Regras de Firewall do UFW no Ubuntu Server<br>
```bash
#Reiniciando as regras de firewall do UFW
sudo ufw reload
	Firewall reloaded

#Verificando as Políticas padrão do UFW
sudo ufw status verbose
```

#18_ Entendo o Log (LOGGING) do Firewall UFW no Ubuntu Server<br>
```bash
#listando o conteúdo do arquivo de Log do UFW
#opção do comando cat: -n (numeric)
#opção do redirecionador | (pipe): Conecta a saída padrão com a entrada padrão de outro comando
sudo cat -n /var/log/ufw.log | less

#Entendo as entradas e registros no Log do UFW
a) NUMBER........: número do log do UFW;
b) DATE..........: data e hora do registro do evento no log do UFW;
c) SRV...........: nome do servidor que está configurado o UFW;
d) KERNEL........: origem do evento no kernel do sistema operacional
e) [KERNEL BOOT].: tempo desde o boot do sistema em segundos e microssegundos;
f) [UFW BLOCK]...: tipo de registro de evento do log do UFW (AUDIT, ALLOW, DENY, INBOUND, LIMIT, OUTBOUND e REJECT);
g) IN=...........: entrada do tráfego e interface;
h) OUT=..........: saída do tráfego e interface;
i) MAC=..........: endereço MAC (Media Access Control) de origem e destino;
j) SRC=..........: endereço IPv4/IPv6 de origem do pacote;
k) DST=..........: endereço IPv4/IPv6 de destino do pacote;
l) LEN=..........: tamanho do pacote em bytes;
m) TOS=..........: qualidade serviços, variável obsoleta, sem utilização, definido sempre com 0x00 (zero);
n) PREC=.........: precisão, variável obsoleta, sem utilização, definido sempre com 0x00 (zero);
o) TTL=..........: tempo de vida de um pacote TTL (Time to Live) padrão 64;
p) ID=...........: identificação exclusiva do datagrama IPv4/IPv6;
q) DF............: flag de fragmentação de pacote;
r) PROTO=........: protocolo utilizado (TCP, UDP ou ICMP);
s) SPT=..........: porta de origem de uma conexão;
t) DPT=..........: porta de destino de uma conexão;
u) WINDOW=.......: tamanho da janela do pacote que o remetente deseja receber;
v) RES=..........: bit está reservado para uso futuro, sem utilização, definido sempre com 0x00 (zero);
x) ACK SYN URGP=.: conexão requer um handshake de três vias, URGP significa relevância urgência.
```

#19_ Criando regras (RULES) baseadas em Aplicações (APP) do UFW no Ubuntu Server<br>
```bash
#OBSERVAÇÃO IMPORTANTE: você pode criar regras de Entrada (INCOMING) ou Saída (OUTGOING)
#utilizando a Porta e Protocolo ou somente o nome da aplicação utilizando a Lista de App
#(aplicativos) do UFW que utiliza como base o arquivo: /etc/services e os aplicativos
#instalados no servidor (OBS: nem todos os aplicativos são reconhecidos na lista), para
#criar aplicativos personalizados, no diretório: /etc/ufw/applications.d/ é só criar o
#arquivo com o nome do aplicativo e adicionar as informações abaixo de exemplo:
#
# [Nginx]
# title=Servidor Web (Nginx HTTP)
# description=Servidor web pequeno, mas muito poderoso e eficiente
# ports=80/tcp
#
#após a criação digite o comando: sudo ufw app update Nginx para adicionar o App a lista,
#você pode baixar vários aplicativos do projeto do Github ufw-application-profiles, apenas
#digitando o comando: git clone https://github.com/ageis/ufw-application-profiles e depois
#copiar o conteúdo do diretório: applications.d/ para: /etc/ufw/applications.d/.

#Listando os aplicativos disponíveis no UFW
sudo ufw app list

#Obtendo informações do aplicativo no UFW
sudo ufw app info Apache

#Baixando um modelo de aplicativo do MySQL do Github
sudo wget -O /etc/ufw/applications.d/mysql https://raw.githubusercontent.com/ageis/ufw-application-profiles/master/applications.d/MySQL

#Listando o conteúdo do diretório de aplicativos
#opção do comando ls: -l (long listing), -h (human-readable)
ls -lh /etc/ufw/applications.d/

#Listando os aplicativos disponíveis no UFW
sudo ufw app list

#Obtendo informações do aplicativo no UFW
sudo ufw app info MySQL

#Liberando (ALLOW) a Entrada (IN) e Logando todo o acesso (LOG-ALL) ao aplicativo MySQL no UFW
sudo ufw allow in log-all MySQL

#Verificando as Políticas padrão do UFW
sudo ufw status verbose
```

#20_ Liberando (ALLOW) um Faixa (Range) de Portas do UFW no Ubuntu Server<br>
```bash
#OBSERVAÇÃO IMPORTANTE: por padrão o UFW no Ubuntu Server adiciona automaticamente regras
#de IPv6 para as regras criadas de forma Simples/Básica.

#OBSERVAÇÃO IMPORTANTE: quando você utilizar a opção: comment (comentário) do UFW é
#recomendo não utilizar acentuação.

#Regra de liberação (ALLOW) de Entrada (IN) da Faixa (RANGE) de Portas (1000:2000/tcp)
sudo ufw allow in 1000:2000/tcp comment 'Liberando uma faixa de portas'

#Regra de liberação (ALLOW) de Entrada (IN) das Portas Aleatórias (10050,10051/tcp)
sudo ufw allow in 10050,10051/tcp comment 'Liberando as portas de conexão do Zabbix'

#Verificando as Políticas padrão do UFW
sudo ufw status verbose
```

#21_ Limitando (LIMIT) uma conexão de Entrada (INCOMING) do UFW no Ubuntu Server<br>
```bash
#OBSERVAÇÃO IMPORTANTE: com esta opção você pode negar conexões de um endereço IPv4/IPv6 que 
#tentou iniciar 6 (seis) ou mais conexões simultâneas nos últimos 30 (trinta) segundos, esta 
#opção é muito útil para o serviço OpenSSH Server, usamos para proteger nosso servidor contra 
#ataques de força bruta (Brute Force). Para alterar os Limites do UFW é necessário editar os
#arquivos de configuração em: /etc/ufw/user.rules ou /etc/ufw/user6.rules e depois digitar o
#comando: sudo ufw reload para aplicar as novas políticas.

#Verificando as Políticas padrão do UFW em modo Numerado
sudo ufw status numbered

#Removendo (DELETE) a Regra de Acesso ao SSH IPv4 (8) e IPv6 (17)
sudo ufw delete 8
	Deleting:
	allow log-all 22/tcp comment 'Liberando a entrada do acesso remoto via SSH'
	Proceed with operation (y|n)? y <Enter>
	Rule deleted (v4)

sudo ufw delete 17
	Deleting:
	allow log-all 22/tcp comment 'Liberando a entrada do acesso remoto via SSH'
	Proceed with operation (y|n)? y <Enter>
	Rule deleted (v6)

#Verificando as Políticas padrão do UFW em modo Numerado
sudo ufw status numbered

#Limitando (LIMIT) e Logando Tudo (LOG-ALL) da Sub-rede 172.16.1.0/24 (FROM) acessar o servidor (TO) do OpenSSH Server na porta (PORT) 22 via protocolo TCP (PROTO TCP)
sudo ufw limit log-all from 172.16.1.0/24 to 172.16.1.20 port 22 proto tcp comment 'Limitando a sub-rede para acessar o OpenSSH Server'

#Verificando as Políticas padrão do UFW em modo Numerado
sudo ufw status numbered

#Baixando o script de teste de conexão simultânea na porta do SSH
wget https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/script/openssh.sh

#Testando os Limites de conexão na Porta do SSH
bash openssh.sh

#Verificando o arquivo de Log do UFW
#opção do comando cat: -n (numeric)
#opção do redirecionador | (pipe): Conecta a saída padrão com a entrada padrão de outro comando
#opção do comando grep: -i (ignore-case)
sudo cat -n /var/log/ufw.log | grep -i dpt=22
```

#22_ Desativando (DISABLE) e Ativando (ENABLE) o UFW no Ubuntu Server<br>
```bash
#OBSERVAÇÃO IMPORTANTE: se você desabilitar o firewall UFW, não perderá as regras criadas.

#Desabilitando (DISABLE) o Firewall UFW
sudo ufw disable
	Firewall stopped and disabled on system startup

#Verificando o status do UFW
sudo ufw status verbose

#Habilitando (ENABLE) o Firewall UFW
sudo ufw enable 
	Command may disrupt existing ssh connections. Proceed with operation (y|n)? y <Enter>
	Firewall is active and enabled on system startup

#Verificando o status do UFW
sudo ufw status verbose
```

#23_ Resetando (RESET) das Regras de Firewall do UFW no Ubuntu Server<br>
```bash
#OBSERVAÇÃO IMPORTANTE: antes de resetar as regras de firewall do UFW no Ubuntu Server, recomendo
#fazer o backup dos arquivos no diretório: /etc/ufw - principalmente dos arquivos: /etc/ufw/user.rules, 
#/etc/ufw-user6.rules (arquivos da regras de usuário) e /etc/ufw/before.rules (regras antes).

#Resetando (RESET) as regras de Firewall do UFW
sudo ufw reset 
	Resetting all rules to installed defaults. This may disrupt existing ssh
	connections. Proceed with operation (y|n)? y <Enter>

	Backing up 'user.rules' to '/etc/ufw/user.rules.20240715_002334'
	Backing up 'before.rules' to '/etc/ufw/before.rules.20240715_002334'
	Backing up 'after.rules' to '/etc/ufw/after.rules.20240715_002334'
	Backing up 'user6.rules' to '/etc/ufw/user6.rules.20240715_002334'
	Backing up 'before6.rules' to '/etc/ufw/before6.rules.20240715_002334'
	Backing up 'after6.rules' to '/etc/ufw/after6.rules.20240715_002334'

#Liberando (ALLOW) a Saída (OUTGOING) padrão (DEFAULT) do UFW
sudo ufw default allow outgoing
	Default outgoing policy changed to 'allow'
	(be sure to update your rules accordingly)

#Verificando o status do UFW
sudo ufw status verbose

#Desativando o Firewall UFW
sudo ufw disable
	Firewall stopped and disabled on system startup
```

=========================================================================================

OBSERVAÇÃO IMPORTANTE: COMENTAR NO VÍDEO DO UFW SE VOCÊ CONSEGUIU IMPLEMENTAR COM 
A SEGUINTE FRASE: Implementação do Firewall UFW realizado com sucesso!!! #BoraParaPrática

COMPARTILHAR O SELO DA IMPLEMENTAÇÃO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM)
MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DA IMPLEMENTAÇÃO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/19-ufw.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver 
#ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiofirewall #desafioufw