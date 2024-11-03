#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 14/04/2023<br>
#Data de atualização: 03/10/2024<br>
#Versão: 0.23<br>

OBSERVAÇÃO IMPORTANTE: COMENTAR NO VÍDEO DO NETDATA SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: Desafio do Netdata realizado com sucesso!!! #BoraParaPrática

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/09-netdata.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafionetdata #desafionetdatacloud

Conteúdo estudado nesse desafio:<br>
#01_ Instalação das Dependência do Netdata<br>
#02_ Clonagem do Projeto do Netdata do Github<br>
#03_ Compilação e Instalação do Netdata no Ubuntu Server<br>
#04_ Verificando o Status do Serviço do Netdata<br>
#05_ Verificando a Versão do Netdata<br>
#06_ Verificando a Porta de Conexão do Netdata<br>
#07_ Habilitando o Recurso de Auto-Atualização do Netdata<br>
#08_ Arquivo e Diretórios de Configuração do Netdata<br>
#09_ Atualização os Arquivos de Monitoramento de Serviços do Netdata<br>
#10_ Criando o Usuário de Monitoramento do MySQL Server do Netdata<br>
#11_ Adicionando o Usuário Local do Grupo do Netdata<br>
#12_ Acessando o Netdata via Navegador<br>
#13_ Desafio do Netdata Cloud<br>

Site Oficial do Netdata: https://www.netdata.cloud/<br>

Netdata é uma ferramenta de código aberto projetada para coletar métricas em tempo real, como uso de CPU, atividade de disco, uso de largura de banda, visitas a sites etc..., e exibi-las em gráficos ao vivo e fáceis de interpretar.

## OBSERVAÇÃO IMPORTANTE: A PARTIR DA VERSÃO DO NETDATA v1.90.x NÃO É MAIS NECESSÁRIO FAZER O PROCEDIMENTO DESSE VÍDEO DE BAIXAR O AGENTE VIA GITHUB, COMPILAR E INSTALAR, HOJE ACESSAMOS APENAS O NETDATA CLOUD: https://app.netdata.cloud/, COPIAMOS A CHAVE DE INTEGRAÇÃO DO AGENTE E COLAMOS NO TERMINAL, SÓ SEGUIR OS PROCEDIMENTOS NA TELA QUE JÁ ESTÁ FEITO A INTEGRAÇÃO, AINDA É POSSÍVEL UTILIZAR OS RECURSOS DE CONFIGURAÇÃO DE SERVIÇOS A SEREM MONITORADOS, MUITO MAIS SIMPLES.

[![Netdata Server](http://img.youtube.com/vi/KaNmgc43vlw/0.jpg)](https://www.youtube.com/watch?v=KaNmgc43vlw "Netdata Server")

Link da vídeo aula: https://www.youtube.com/watch?v=KaNmgc43vlw

#01_ Instalando as Dependências do Netdata Server<br>
```bash
#atualizando as lista do apt
sudo apt update

#instalando as dependências do Netdata Server
#opção da contra barra (\): criar uma quebra de linha no terminal
sudo apt install git vim build-essential software-properties-common gnupg apt-transport-https \
ca-certificates zlib1g-dev gcc make git autoconf autogen automake pkg-config uuid-dev python3 \
python3-mysqldb python3-pip python3-dev libmysqlclient-dev libuv1-dev netcat libwebsockets16 \
libwebsockets-dev libjson-c-dev libbpfcc-dev liblz4-dev libjudy-dev libelf-dev libmnl-dev \
autoconf-archive curl cmake protobuf-compiler protobuf-c-compiler lm-sensors python3-psycopg2 \
python3-pymysql libssl-dev libprotobuf-dev g++ flex bison nmap libuuid1 libcurl4 libyaml-dev \
libcurl4-openssl-dev
```

#02_ Clonando o projeto do Netdata Server do Github<br>
```bash
#clonando o projeto do Github do Netdata
#opção do comando git clone: --recurse-submodules (initialize and clone submodules within based 
#on the provided pathspec), --depth (create a shallow clone with a history truncated to the 
#specified number of commits), --recursive (initialize and clone and recursive directory)
git clone https://github.com/netdata/netdata --depth=100 --recursive
```

#03_ Compilando e Instalando o Netdata Server<br>
```bash
#OBSERVAÇÃO IMPORTANTE: o processo de compilação e instalação do Netdata demora
#bastante, dependendo do seu hardware pode demorar mais de 30 minutos para baixar
#as dependências, compilar e instalar o Netdata.

#acessando o diretório clonado e instalando o Netdata Server
cd netdata/

#iniciando a instalação do Netdata Server
#opção do ./: execução de script desenvolvido em Shell Script .sh
sudo ./netdata-installer.sh

#saindo do diretório clonado do Netdata Server
cd ..
```

#04_ Verificando o Serviço e Versão do Netdata Server<br>
```bash
#verificando o serviço do Netdata Server
sudo systemctl status netdata
sudo systemctl restart netdata
sudo systemctl stop netdata
sudo systemctl start netdata

#analisando os Log's e mensagens de erro do Servidor do Netdata (NÃO COMENTADO NO VÍDEO)
#opção do comando journalctl: x (catalog), e (pager-end), u (unit)
sudo journalctl -xeu netdata

#verificando a versão do Netdata Server
#opção do comando netdata: -v (version)
sudo netdata -v
```

#05_ Verificando a Porta de Conexão do Netdata Server<br>
```bash
#OBSERVAÇÃO IMPORTANTE: no Ubuntu Server as Regras de Firewall utilizando o comando: 
#iptables ou: ufw está desabilitado por padrão (INACTIVE), caso você tenha habilitado 
#algum recurso de Firewall é necessário fazer a liberação do Fluxo de Entrada, Porta 
#e Protocolo TCP do Serviço corresponde nas tabelas do firewall e testar a conexão.P.

#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'19999' -sTCP:LISTEN
```

#06_ Habilitando as atualizações automática do Netdata Server<br>
```bash
#habilitando o suporte para atualização do Netdata Server
sudo /usr/libexec/netdata/netdata-updater.sh --enable-auto-updates

#OBSERVAÇÃO IMPORTANTE: caso queira atualizar manualmente o Netdata digite o
#mesmo comando do agendamento de atualizações do Netdata no terminal.
#opção do ./: execução de script desenvolvido em Shell Script .sh
sudo /usr/libexec/netdata/./netdata-updater.sh
```

#07_ Criando o usuário de monitoramento do MySQL Server do Netdata Server<br>
```bash
#opções do comando mysql: -u (user), -p (password)
sudo mysql -u root -p
```
```sql
/* criando o usuário de monitoramento do Netdata no MySQL */
CREATE USER 'netdata'@'localhost';

/* aplicando as permissões do usuário do Netdata no MySQL */
GRANT USAGE, REPLICATION CLIENT ON *.* TO 'netdata'@'localhost';

/* fazendo o flush das permissões */
FLUSH PRIVILEGES;

/* verificando o usuário do Netdata criado no MySQL */
SELECT user,host FROM mysql.user WHERE user="netdata";

/* saindo do MySQL */
exit
```

#08_ Criando o usuário de monitoramento do MongoDB Server do Netdata Server<br>
```bash
#opção do comando mongosh: admin (database) -u (username), -p (password)
mongosh admin -u admin -p
```
```javascript
// criando o usuário de monitoramento do Netdata
db.createUser({
    "user": "netdata",
    "pwd": "netdata",
    "roles" : [
    {role: 'read', db: 'admin' },
    {role: 'clusterMonitor', db: 'admin'},
    {role: 'read', db: 'local' }
    ]
})
``` 
```bash
#verificando o usuário criado no MongoDB do Netdata
db.getUsers()
db.getUser("netdata")

#saindo do MongoDB
quit
```

#09_ Adicionado o Usuário Local no Grupo Padrão do Netdata Server<br>
```bash
#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
#OBSERVAÇÃO IMPORTANTE: você pode substituir a variável de ambiente $USER pelo
#nome do usuário existente no sistema para adicionar no Grupo desejado.
sudo usermod -a -G netdata $USER

#fazendo login em um novo grupo do NETDATA
newgrp netdata

#verificando os identificadores de usuário e grupos
id

#verificando informações do grupo NETDATA
sudo getent group netdata

#recomendo fazer logout do usuário para testar as permissões de grupos
#OBSERVAÇÃO: você pode utilizar o comando: exit ou tecla de atalho: Ctrl +D
exit
```

#10_ Localização dos Arquivos de Configuração do Netdata Server<br>
```bash
/etc/netdata/netdata.conf           <-- arquivo de configuração do serviço do Netdata Server
/etc/netdata/apps_groups.conf       <-- arquivo de configuração dos Grupos de Aplicativos do Netdata Server
/etc/netdata/go.d/apache.conf       <-- arquivo de monitoramento do Apache2 Server
/etc/netdata/go.d/mongodb.conf      <-- arquivo de monitoramento do MongoDB Server
/etc/netdata/go.d/mysql.conf        <-- arquivo de monitoramento do MySQL Server
/etc/netdata/python.d/tomcat.conf   <-- arquivo de monitoramento do Apache Tomcat
/etc/netdata/go.d/ping.conf         <-- arquivo de monitoramento do ICMP Ping
/etc/netdata/go.d/portcheck.conf    <-- arquivo de monitoramento do Port Check
```

#11_ Configurando os Serviços de Monitoramento do Netdata Server<br>
```bash
#OBSERVAÇÃO IMPORTANTE: cuidado na hora de configurar os serviços de monitoramento do
#Netdata Server, os arquivos de configuração são baseados na Linguagem de Programação
#Python utilizando o conceito do YAML (YAML Ain't Markup Language), não se utiliza TAB
#sempre utilizar 02 (dois) espaços para indentar o código.

#acessando o diretório de configuração do Netdata Server
cd /etc/netdata/
```
```bash
#OBSERVAÇÃO IMPORTANTE: POR PADRÃO O COMANDO ./edit-config UTILIZA O EDITOR DE TEXTO
#NANO, SEUS COMANDOS E TECLAS SÃO DIFERENTES DO EDITOR DE TEXTO VIM, CUIDADO!!!!.

#configuração do serviço de monitoramento do Apache Server
#https://learn.netdata.cloud/docs/data-collection/web-servers-and-web-proxies/apache
sudo ./edit-config go.d/apache.conf

#editar as informações a partir da linha: 8
jobs:
  - name: wsvaamonde
    url: http://localhost/server-status?auto

  - name: wsvaamonde
    url: http://127.0.0.1/server-status?auto

#salvar e sair do arquivo
Ctrl + X
    Save modified buffer? Y
    File Name to Write: <Enter>
```
```bash
#configuração do serviço de monitoramento do Apache TomCAT Server
#https://learn.netdata.cloud/docs/data-collection/web-servers-and-web-proxies/tomcat
sudo ./edit-config python.d/tomcat.conf

#editar as informações a partir da linha: 79
localhost:
  name : 'wsvaamonde'
  url  : 'http://localhost:8080/manager/status?XML=true'
  user : 'admin'
  pass : 'pti@2018'

localipv4:
  name : 'wsvaamonde'
  url  : 'http://127.0.0.1:8080/manager/status?XML=true'
  user : 'admin'
  pass : 'pti@2018'

localipv6:
  name : 'wsvaamonde'
  url  : 'http://[::1]:8080/manager/status?XML=true'
  user : 'admin'
  pass : 'pti@2018'

#salvar e sair do arquivo
Ctrl + X
    Save modified buffer? Y
    File Name to Write: <Enter>
```
```bash
#configuração do serviço de monitoramento do MySQL Server
#https://learn.netdata.cloud/docs/data-collection/databases/mysql
sudo ./edit-config go.d/mysql.conf

#editar as informações a partir da linha: 52
jobs:
  - name: wsvaamonde
    dsn: netdata@tcp(127.0.0.1:3306)/

#salvar e sair do arquivo
Ctrl + X
    Save modified buffer? Y
    File Name to Write: <Enter>
```
```bash
#configuração do serviço de monitoramento do MongoDB Server
#https://learn.netdata.cloud/docs/data-collection/databases/mongodb
sudo ./edit-config go.d/mongodb.conf

#editar as informações a partir da linha: 8
jobs:
  - name: wsvaamonde
    uri: mongodb://netdata:netdata@localhost:27017

#salvar e sair do arquivo
Ctrl + X
    Save modified buffer? Y
    File Name to Write: <Enter>
```
```bash
#configuração do serviço de monitoramento do ICMP Ping
#https://learn.netdata.cloud/docs/data-collection/synthetic-checks/ping
sudo ./edit-config go.d/ping.conf

#editar as informações a partir da linha: 10
jobs:
  - name: google 
    hosts:
      - 8.8.8.8

  - name: wsvaamonde 
    hosts:
      - 172.16.1.20

#salvar e sair do arquivo
Ctrl + X
    Save modified buffer? Y
    File Name to Write: <Enter>
```
```bash
#configuração do serviço de monitoramento das Portas TCP Endpoint
#https://learn.netdata.cloud/docs/data-collection/synthetic-checks/tcp-endpoints
sudo ./edit-config go.d/portcheck.conf

#OBSERVAÇÃO IMPORTANTE: após várias análises dos Logs do OpenSSH, principalmente do arquivo:
#sudo cat -n /var/log/auth.log | grep ssh apresentou a seguinte mensagem de erro constante a
#cada 5 segundos: Connection closed by: ENDEREÇO_IPV4 port PORTA_ALEATÓRIA - error: kex_exchange_
#identification: Connection closed by remote host. Esse error muitas vezes está associado a
#conexões remotas não autorizadas no Ubuntu Server rodando o OpenSSH na Porta Padrão: 22, após
#pesquisar nos Fóruns foi identificado um Software Malicioso (Malware/Boot) de Força Bruta
#que fica escaneando servidores OpenSSH na Porta Padrão para implementação de Bots DDoS e
#CoinMiners, segue lista de alguns Bots: ShellBot, Tsunami, Bot DDos ChinaZ, XMRing CoinMiner
#Mirai, Gafgy e XorDDos, nesse cenário a falha está associada ao Monitoramento de Porta do SSH
#utilizado pelo Netdata, após remover a porta: 22 a falha dos Logs foi resolvida.

#editar as informações a partir da linha: 8
jobs:
  - name: wsvaamonde
    host: 172.16.1.20
    ports: [80, 3306, 8080, 19999, 27017]

#salvar e sair do arquivo
Ctrl + X
    Save modified buffer? Y
    File Name to Write: <Enter>
```
```bash
#verificando os arquivos de configuração do monitoramento criados
#opção do comando ls: -l (long listing), -h (human-readable)
ls -lh go.d/
ls -lh python.d/

#reinicializar o serviço do Netdata Server
sudo systemctl restart netdata
sudo systemctl status netdata

#verificando todos os serviços iniciados e rodando no Ubuntu Server
#opção do comando systemctl: list-units (List units that systemd currently has in memory)
#--type (list of unit types such as service and socket), --state (list of unit LOAD, SUB, 
#or ACTIVE states)
sudo systemctl list-units --type=service --state=running

#OBSERVAÇÃO IMPORTANTE: no vídeo as portas listadas com o comando: nmap só listou as portas 
#conhecidas, para listar todas as portas adicionei a opção: -p- (OBSERVAÇÃO: COM ESSA OPÇÃO
#HABILITADA O PROCESSO DE ESCANEAMENTO DE PORTAS DEMORA UM POUCO).

#verificando todas as portas abertas no Ubuntu Server
#opção do comando nmap: -p- (port ranges all) -sS (scan TCP SYN), -sU (scans UDP)
#opção do comando grep: -i (ignore-case)
#opção do comando cat: -n (number line)
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
sudo nmap -p- 172.16.1.20 -sS -sU | grep -i open | cat -n

#verificando todas as portas de serviços no Ubuntu Server
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'22,80,3306,8080,19999,27017' -sTCP:LISTEN
```

#12_ Acessando e configurando o Netdata Server no navegador<br>
```bash
#acessar via navegador o Netdata
firefox ou google chrome: http://endereço_ipv4_ubuntuserver:19999
```

========================================DESAFIOS=========================================

**#13_ DESAFIO-01:** FAZER A INTEGRAÇÃO DO NETDATA CLIENT COM O NETDATA CLOUD, UTILIZE O VÍDEO DE INTEGRAÇÃO: __`15-netdata.sh Configurando o Netdata Cloud integrado com o Netdata Agent`__, LINK: https://www.youtube.com/watch?v=5MrH8L5cSIU

**#14_ DESAFIO-02:** ADICIONAR O USUÁRIO: __`admin`__ E O: __`seu_usuário`__ CRIADOS NO DESAFIO DO OPENSSH NO GRUPO DO NETDATA PARA FACILITAR A ADMINISTRAÇÃO E GERENCIAMENTO SEM A NECESSIDADE DO SUDO.

**#15_ DESAFIO-03:** ADICIONAR O HYPER LINK NO WORDPRESS PARA FACILITAR O ACESSO AO NETDATA, IGUAL A TODOS OS DESAFIOS FEITO ATÉ AGORA.

=========================================================================================

OBSERVAÇÃO IMPORTANTE: COMENTAR NO VÍDEO DO NETDATA SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: Desafio do Netdata realizado com sucesso!!! #BoraParaPrática

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/09-netdata.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafionetdata #desafionetdatacloud