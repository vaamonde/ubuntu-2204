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
#Versão: 0.05<br>

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
#Iniciando o Firewall UFW
sudo ufw enable
Command may disrupt existing ssh connections. Proceed with operation (y|n)? y

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

#Verificando as Políticas padrão do UFW
sudo ufw status verbose
```

#09_ Configurando o Nível de Log (LOGGING) do UFW no Ubuntu Server<br>
```bash
#OBSERVAÇÃO IMPORTANTE: no UFW temos basicamente 05 (cinco) níveis de Log: off (desligado),
#low (baixo), medium (médio), high (alto) e full (completo/debug).

#Habilitando os Logs das Regras do UFW
sudo ufw logging on

#Configurando o Nível de Log de Baixo (LOW) para Médio (MEDIUM)
sudo ufw logging medium

#Verificando as Políticas padrão do UFW
sudo ufw status verbose
```

#10_ Testando as conexões de Entrada (INCOMING) e Saída (OUTGOING) no Ubuntu Server<br>
```bash
#OBSERVAÇÃO IMPORTANTE: por padrão o UFW permiti o protocolo ICMP (Internet Control Message
#Protocol) para o endereço IPv4 de Loopback e o endereço externo/remoto do Ubuntu Server.

#Pingando o endereço IPv4 de Loopback
ping 127.0.0.1

#Pingando o Loopback
ping loopback

#Testando a resolução de Nomes da Loopback
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
#opção do comando nmap: -p- (port ranges all) -sS (scan TCP SYN), -sU (scans UDP)
nmap -p- 172.16.1.20 -sS -sU
```

#11_ Liberando (ALLOW) a Entrada (INCOMING) e Saída (OUTGOING) da Interface de Loopback do UFW no Ubuntu Server<br>
```bash
#OBSERVAÇÃO IMPORTANTE: por padrão o UFW no Ubuntu Server adiciona automaticamente regras
#de IPv6 para a Interface Loopback.

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
#OBSERVAÇÃO IMPORTANTE: por padrão o UFW no Ubuntu Server adiciona automaticamente regras
#de IPv6 para as regras criadas de forma Simples/Básica.

#OBSERVAÇÃO IMPORTANTE: quando você utilizar a opção: comment (comentário) do UFW é
#recomendo não utilizar acentuação, sempre dentro de Aspas Simples (não crase).

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
#Entrada (INCOMING) e Liberada (ACCEPT), caso queira Bloquear (DROP) só alterar o opção de
#ACCEPT para DROP nas linhas correspondente a partir da linha: 

#editando o arquivo de configuração before.rules do UFW
sudo vim /etc/ufw/before.rules
ESC SHIFT :set number <Enter>
INSERT

	#inserir as informações na linha: 39
	#liberando a saída do protocolo ICMP (Permitindo o Ping)
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

#Pingando o endereço IPv4 do Google
ping 8.8.8.8

#Pingando o nome do Google
ping google.com
```

#14_ Liberando (ALLOW) as Entradas (INCOMING) Básicas do UFW no Ubuntu Server<br>
```bash
#OBSERVAÇÃO IMPORTANTE: por padrão o UFW no Ubuntu Server adiciona automaticamente regras
#de IPv6 para as regras criadas de forma Simples/Básica.

#OBSERVAÇÃO IMPORTANTE: quando você utilizar a opção: comment (comentário) do UFW é
#recomendo não utilizar acentuação.

#Regra de liberação (ALLOW) de Entrada (IN) do Protocolo SSH (22/tcp)
sudo ufw allow in 22/tcp comment 'Liberando a entrada do acesso remoto via SSH'

#Regra de liberação (ALLOW) de Entrada (IN) do Protocolo HTTP (80/tcp)
sudo ufw allow in 80/tcp comment 'Liberando a entrada do protocolo HTTP'

#Verificando as Políticas padrão do UFW
sudo ufw status verbose

#Verificando as Políticas padrão do UFW em modo Numerado
sudo ufw status numbered

#testando a porta de conexão remota do SSH via Telnet, Netcat ou NC
telnet 172.16.1.20
netcat 172.16.1.20
nc 172.16.1.20

#acessando remotamente o Ubuntu Server via SSH
ssh vaamonde@172.16.1.20
```

#15_ Liberando (ALLOW) as Entradas (INCOMING) por Sub-rede ou Endereço IPv4 do UFW no Ubuntu Server<br>
```bash
#OBSERVAÇÃO IMPORTANTE: por padrão o UFW no Ubuntu Server não adiciona automaticamente regras
#de IPv6 para as regras criadas de forma Avançada/Complexa.

#OBSERVAÇÃO IMPORTANTE: quando você utilizar a opção: comment (comentário) do UFW é
#recomendo não utilizar acentuação.

#OBSERVAÇÃO IMPORTANTE: nas opções FROM (ORIGEM/DE) e TO (DESTINO/PARA) você pode usar
#a opção ANY (QUALQUER) para facilitar a configuração da regra ser menos restritiva.

#liberando (ALLOW) a Sub-rede 172.16.1.0/24 (FROM) acessar o servidor (TO) do Grafana Server na porta (PORT) 3000 via protocolo HTTP (proto tcp)
sudo ufw allow from 172.16.1.0/24 to 172.16.1.20 port 3000 proto tcp comment 'Liberando a sub-rede para acessar o Grafana Server'

#liberando (ALLOW) o IPv4 172.16.1.114 (FROM) acessar o servidor (TO) do Webmin na porta (PORT) 10000 via protocolo HTTPS (proto tcp)
sudo ufw allow from 172.16.1.114 to 172.16.1.20 port 10000 proto tcp comment 'Liberando o IP para acessar o Webmin'

#Verificando as Políticas padrão do UFW
sudo ufw status verbose

#Verificando as Políticas padrão do UFW em modo Numerado
sudo ufw status numbered

#tetando o acesso via Navegador
firefox ou google chrome: http://endereço_ipv4_ubuntuserver:3000
firefox ou google chrome: https://endereço_ipv4_ubuntuserver:10000
```

#16_ Removendo (DELETE) regras de firewall do UFW no Ubuntu Server<br>
```bash
#Verificando as Políticas padrão do UFW
sudo ufw status verbose

#Verificando as Políticas padrão do UFW em modo Numerado
sudo ufw status numbered

#Removendo (DELETE) a Regra de Acesso ao Webmin (10) do endereço IPv4 172.16.1.114
sudo ufw delete 10
Proceed with operation (y|n)? y

#Verificando as Políticas padrão do UFW em modo Numerado
sudo ufw status numbered
```

#17_ Reiniciando (RELOAD) as Regras de Firewall do UFW no Ubuntu Server<br>
```bash
#Reiniciando as regras de firewall do UFW
sudo ufw reload

#Verificando as Políticas padrão do UFW
sudo ufw status verbose
```

#18_ Entendo o Log (LOGGING) do Firewall UFW no Ubuntu Server<br>
```bash
#listando o conteúdo do arquivo de Log do UFW
#opção do comando cat: -n (numeric)
#opção do redirecionador | (pipe): Conecta a saída padrão com a entrada padrão de outro comando
sudo cat -n /var/log/ufw.log | less

#entendo o Log do UFW
a) [UFW BLOCK].: status da regra (ALLOW, BLOCK, REJECT, LIMITED);
b) IN=.........: entrada do tráfego e interface;
c) OUT=........: saída do tráfego e interface;.
d) MAC=........: endereço MAC (Media Access Control) de origem e destino;
e) SRC=........: endereço IPv4/IPv6 de origem do pacote;
f) DST=........: endereço IPv4/IPv6 de destino do pacote;
g) LEN=........: tamanho do pacote;
h) TOS=........: variável obsoleta, sem utilização, definidas sempre com 0 (zero);
i) PREC=.......: variável obsoleta, sem utilização, definidas sempre com 0 (zero);
j) TTL=........: tempo de vida de um pacote TTL (Time to Live);
k) ID=.........: ID exclusivo do datagrama IPv4/IPv6;
l) PROTO=......: protocolo utilizado (TCP, UDP ou ICMP);
m) SPT=........: porta de origem de uma conexão;
n) DPT=........: porta de destino de uma conexão;
o) WINDOW=.....: tamanho do pacote que o remetente deseja receber;
p) RES=........: bit está reservado para uso futuro,sem utilização, definidas sempre com 0 (zero);
q) SYN URGP=...: conexão requer um handshake de três vias, URGP significa relevância urgência.
```

#19_ Criando regras (RULES) baseadas em Aplicações (APP) do UFW no Ubuntu Server<br>
```bash
#OBSERVAÇÃO IMPORTANTE: você pode criar regras de Entrada (INCOMING) ou Saída (OUTGOING)
#utilizando a Porta e Protocolo ou somente o nome da aplicação utilizando a Lista de App
#(aplicativos) do UFW que utiliza como base o arquivo: /etc/services e os aplicativos
#instalados no servidor (OBS: nem todos os aplicativos são reconhecidos na lista), para
#criar aplicativos personalizados, no diretório: /etc/ufw/applications.d/ é só criar o
#arquivo com o nome do aplicativo e adicionar as informações abaixo:
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

#listando os aplicativos disponíveis no UFW
sudo ufw app list

#obtendo informações do aplicativo no UFW
sudo ufw app info Apache

#Verificando as Políticas padrão do UFW
sudo ufw status verbose
```

#20_ Liberando (ALLOW) um Faixa (Range) de Portas do UFW no Ubuntu Server<br>
```bash
#OBSERVAÇÃO IMPORTANTE: por padrão o UFW no Ubuntu Server adiciona automaticamente regras
#de IPv6 para as regras criadas de forma Simples/Básica.

#OBSERVAÇÃO IMPORTANTE: quando você utilizar a opção: comment (comentário) do UFW é
#recomendo não utilizar acentuação.

#Regra de liberação (ALLOW) de Entrada (IN) do Faixa de Portas (1000:2000/tcp)
sudo ufw allow in 1000:2000/tcp comment 'Liberando uma faixa de portas'

#Regra de liberação (ALLOW) de Entrada (IN) de Portas Aleatórias (10050,10051/tcp)
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

#Removendo (DELETE) a Regra de Acesso ao SSH (10)
sudo ufw delete 
Proceed with operation (y|n)? y

#Verificando as Políticas padrão do UFW em modo Numerado
sudo ufw status numbered

#Limitando (LIMIT) a Sub-rede 172.16.1.0/24 (FROM) acessar o servidor (TO) do OpenSSH Server na porta (PORT) 22 via protocolo TCP (PROTO TCP)
sudo ufw limit from 172.16.1.0/24 to 172.16.1.20 port 22 proto tcp comment 'Limitando a sub-rede para acessar o OpenSSH Server'

#Verificando as Políticas padrão do UFW em modo Numerado
sudo ufw status numbered
```

#22_ Desativando (DISABLE) e Ativando (ENABLE) o UFW no Ubuntu Server<br>
```bash
#OBSERVAÇÃO IMPORTANTE: se você desabilitar o firewall UFW, não perderá as regras criadas.

#Desabilitando (DISABLE) o Firewall UFW
sudo ufw disable

#Verificando o status do UFW
sudo ufw status verbose

#Habilitando (ENABLE) o Firewall UFW
sudo ufw enable 
Command may disrupt existing ssh connections. Proceed with operation (y|n)?y

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
connections. Proceed with operation (y|n)? y

#Verificando o status do UFW
sudo ufw status verbose
```

=========================================================================================

OBSERVAÇÃO IMPORTANTE: COMENTAR NO VÍDEO DO UFW SE VOCÊ CONSEGUIU IMPLEMENTAR COM 
A SEGUINTE FRASE: Implementação do Firewall UFW realizado com sucesso!!! #BoraParaPrática

COMPARTILHAR O SELO DA IMPLEMENTAÇÃO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM)
MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DA IMPLEMENTAÇÃO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/19-ufw.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver 
#ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiofirewall #desafioufw