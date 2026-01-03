#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 14/04/2023<br>
#Data de atualização: 03/01/2026<br>
#Versão: 0.33<br>

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO NETDATA SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do Netdata realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/09-netdata.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafionetdata #desafionetdatacloud

Conteúdo estudado nesse desafio:<br>
#01_ Instalando as Dependências do Netdata Agent no Ubuntu Server;<br>
#02_ Clonando o projeto do Netdata Agent do Github no Ubuntu Server;<br>
#03_ Compilando e Instalando o Netdata Agent no Ubuntu Server;<br>
#04_ Verificando o Serviço e Versão do Netdata Agent no Ubuntu Server;<br>
#05_ Verificando a Porta de Conexão do Netdata Agent no Ubuntu Server;<br>
#06_ Habilitando as atualizações automática do Netdata Agent no Ubuntu Server;<br>
#07_ Adicionado o Usuário Local no Grupo Padrão do Netdata Agent no Ubuntu Server;<br>
#08_ Localização dos Arquivos de Configuração do Netdata Agent no Ubuntu Server;<br>
#09_ Acessando e configurando o Netdata Agent via navegador;<br>
#10_ Criando o usuário de monitoramento do MySQL Server do Netdata Agent no Ubuntu Server;<br>
#11_ Criando o usuário de monitoramento do MongoDB Server do Netdata Agent no Ubuntu Server;<br>
#12_ Acessando o diretório de configuração do Netdata Agent no Ubuntu Server;<br>
#13_ Configurando o serviço de monitoramento do Apache2 Server no Netdata Agent;<br>
#14_ Configurando o serviço de monitoramento do Apache Tomcat Server no Netdata Agent;<br>
#15_ Configurando o serviço de monitoramento do MySQL Server no Netdata Agent;<br>
#16_ Configurando o serviço de monitoramento do MongoDB Server no Netdata Agent;<br>
#17_ Configurando o serviço de monitoramento do ICMP no Netdata Agent;<br>
#18_ Configurando o serviço de monitoramento das Portas TCP Endpoint no Netdata Agent;<br>
#19_ Configurando o serviço de monitoramento do HTTP Endpoint no Netdata Agent;<br>
#20_ Aplicando as mudanças e reiniciando o serviço do Netdata Agent no Ubuntu Server;<br>
#21_ Verificando todas as Portas de Serviços de Rede no Ubuntu Server;<br>
#22_ Estressando o Servidor Ubuntu Server para verificar as mudanças no Gráfico **(NÃO COMENTADO NO VÍDEO)**;<br>
#23_ Desafio da Integração do Netdata Server com o Cloud.<br>

**Sites de IA (Inteligência Artificial) indicados para os Desafios**<br>
OpenAI ChatGPT: https://chatgpt.com<br>
Microsoft Copilot: https://copilot.microsoft.com<br>
Google Gemini: https://gemini.google.com<br>
DeepSeek: https://chat.deepseek.com/<br>
x.AI Grok: https://grok.com/<br>

Site Oficial do Netdata: https://www.netdata.cloud/<br>

**O QUE É E PARA QUE SERVER O NETDATA:** Netdata é uma ferramenta de código aberto projetada para coletar métricas em tempo real, como uso de CPU, atividade de disco, uso de largura de banda, visitas a sites etc..., e exibi-las em gráficos ao vivo e fáceis de interpretar.

**O QUE É E PARA QUE SERVER O MONITORAMENTO:** O monitoramento é o processo de observar, coletar e analisar dados em tempo real ou em intervalos regulares para acompanhar o desempenho, o estado e o comportamento de sistemas, equipamentos, redes ou processos.

**O QUE É E PARA QUE SERVER A OBSERVABILIDADE:** Essa é uma daquelas palavras que virou **buzzword (momento)** no mundo *DevOps/SRE (Site Reliability Engineering)*, *Observabilidade* é a capacidade de entender o que está acontecendo dentro de um sistema (app, servidor, infraestrutura) apenas observando os dados gerados por ele — como *logs, métricas, traces, etc*.

[![Netdata Server](http://img.youtube.com/vi/KaNmgc43vlw/0.jpg)](https://www.youtube.com/watch?v=KaNmgc43vlw "Netdata Server")

Link da vídeo aula: https://www.youtube.com/watch?v=KaNmgc43vlw

## 01_ Instalando as Dependências do Netdata Agent no Ubuntu Server
```bash
#atualizando as lista do apt
#opção do comando apt: update (Resynchronize the package index files from their sources)
sudo apt update

#instalando as dependências do Netdata Agent
#opção do comando apt: install (install is followed by one or more package names)
#opção da contra barra (\): criar uma quebra de linha no terminal
sudo apt install git vim build-essential software-properties-common gnupg apt-transport-https \
ca-certificates zlib1g-dev gcc make git autoconf autogen automake pkg-config uuid-dev python3 \
python3-mysqldb python3-pip python3-dev libmysqlclient-dev libuv1-dev netcat libwebsockets16 \
libwebsockets-dev libjson-c-dev libbpfcc-dev liblz4-dev libjudy-dev libelf-dev libmnl-dev \
autoconf-archive curl cmake protobuf-compiler protobuf-c-compiler lm-sensors python3-psycopg2 \
python3-pymysql libssl-dev libprotobuf-dev g++ flex bison nmap libuuid1 libcurl4 libyaml-dev \
libcurl4-openssl-dev stress-ng iperf3 s-tui
```

## 02_ Clonando o projeto do Netdata Agent do Github no Ubuntu Server
```bash
#clonando o projeto do Github do Netdata Agent
#opção do comando git clone: --recurse-submodules (initialize and clone submodules within based 
#on the provided pathspec), --depth (create a shallow clone with a history truncated to the 
#specified number of commits), --recursive (initialize and clone and recursive directory)
git clone https://github.com/netdata/netdata --depth=100 --recursive
```

## 03_ Compilando e Instalando o Netdata Agent no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** o processo de compilação e instalação do Netdata Agent via Github demora bastante, dependendo do seu hardware pode demorar mais de: **30 minutos** para baixar as dependências, compilar e instalar o Netdata Agent no Ubuntu Server, aguarde!!!!!!!

```bash
#acessando o diretório clonado e instalando o Netdata Agent
cd netdata/

#iniciando a instalação do Netdata Agent
#opção do ./: execução de script desenvolvido em Shell Script .sh
sudo ./netdata-installer.sh

#saindo do diretório clonado do Netdata Agent
cd ..
```

## 04_ Verificando o Serviço e Versão do Netdata Agent no Ubuntu Server
```bash
#verificando o serviço do Netdata Agent
#opções do comando systemctl: status (runtime status information), restart (Stop and then 
#start one or more units), stop (Stop (deactivate) one or more units), start (Start (activate) 
#one or more units)
sudo systemctl status netdata
sudo systemctl restart netdata
sudo systemctl stop netdata
sudo systemctl start netdata

#analisando os Log's e mensagens de erro do Servidor do Netdata Agent (NÃO COMENTADO NO VÍDEO)
#opção do comando journalctl: x (catalog), e (pager-end), u (unit)
sudo journalctl -xeu netdata
```

**OBSERVAÇÃO IMPORTANTE:** Por que sempre é necessário verificar a versão do serviço de rede que você está implementando ou configurando no Servidor Ubuntu Server, devido as famosas falhas de segurança chamadas de: *CVE (Common Vulnerabilities and Exposures)*, com base na versão utilizada podemos pesquisar no site do **Ubuntu Security CVE Reports:** https://ubuntu.com/security/cves as falhas de segurança encontradas e corrigidas da versão do nosso aplicativo, o que ela afeta, se foi corrigida e como aplicar a correção.

```bash
#verificando a versão do Netdata Agent
#opção do comando netdata: -v (version)
sudo netdata -v
```

## 05_ Verificando a Porta de Conexão do Netdata Agent no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** no Ubuntu Server as Regras de Firewall utilizando o comando: __` iptables `__ ou: __` ufw `__ está desabilitado por padrão **(INACTIVE)**, caso você tenha habilitado algum recurso de Firewall é necessário fazer a liberação do *Fluxo de Entrada (INPUT), Porta (PORT) e Protocolo (PROTOCOL) TCP* do Serviço corresponde nas tabelas do firewall e testar a conexão.

```bash
#verificando a porta padrão TCP-19999 do Netdata Agent
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'19999' -sTCP:LISTEN
```

## 06_ Habilitando as atualizações automática do Netdata Agent no Ubuntu Server
```bash
#habilitando o suporte para atualização do Netdata Agent
sudo /usr/libexec/netdata/netdata-updater.sh --enable-auto-updates
```
```bash
#verificando o arquivo de atualização do Crontab do Netdata Agent
#opções de comando ls: -l (long listing format), -h (human-readable)
ls -lh /etc/cron.daily/
```

**OBSERVAÇÃO IMPORTANTE:** caso queira atualizar manualmente o Netdata Agent digite o mesmo comando do agendamento de atualizações do Netdata Agent no terminal.

```bash
#atualizando manualmente o Netdata Agent (SÓ EXECUTAR ESSE COMANDO SE NECESSÁRIO)
#opção do ./: execução de script desenvolvido em Shell Script .sh
sudo /usr/libexec/netdata/./netdata-updater.sh
```

## 07_ Adicionado o Usuário Local no Grupo Padrão do Netdata Agent no Ubuntu Server
```bash
#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
#OBSERVAÇÃO IMPORTANTE: você pode substituir a variável de ambiente $USER pelo
#nome do usuário existente no sistema para adicionar no Grupo desejado.
sudo usermod -a -G netdata $USER

#fazendo login em um novo grupo do Netdata
newgrp netdata

#verificando os identificadores de usuário e grupos
id

#verificando informações do grupo Netdata
sudo getent group netdata

#recomendo fazer logout do usuário para testar as permissões de grupos
#OBSERVAÇÃO: você pode utilizar o comando: exit ou tecla de atalho: Ctrl +D
exit
```

## 08_ Localização dos Arquivos de Configuração do Netdata Agent no Ubuntu Server
```bash
/etc/netdata/                      <-- Diretório padrão das configurações do Netdata Agent
/etc/netdata/netdata.conf          <-- Arquivo de configuração do serviço do Netdata Agent
/etc/netdata/apps_groups.conf      <-- Arquivo de configuração dos Grupos de Aplicativos do Netdata Agent
/etc/netdata/go.d/apache.conf      <-- Arquivo de monitoramento do Apache2 Server
/etc/netdata/go.d/httpcheck.conf   <-- Arquivo de monitoramento do HTTP Endpoint Check
/etc/netdata/go.d/mongodb.conf     <-- Arquivo de monitoramento do MongoDB Server
/etc/netdata/go.d/mysql.conf       <-- Arquivo de monitoramento do MySQL Server
/etc/netdata/go.d/ping.conf        <-- Arquivo de monitoramento do ICMP Ping
/etc/netdata/go.d/portcheck.conf   <-- Arquivo de monitoramento do TCP/UDP Port Endpoint Check
/etc/netdata/go.d/tomcat.conf      <-- Arquivo de monitoramento do Apache Tomcat Server
/etc/cron.daily/                   <-- Diretório das atualizações diárias do Netdata Agent
/var/log/netdata                   <-- Diretório dos arquivos de Logs do Netdata Agent
```

## 09_ Testando e acessando as configurações do Netdata Agent via Terminal e Navegador

**OBSERVAÇÃO:** Tabela de referência dos Códigos do HTTP mais comuns para tester no Terminal ou no Navegador.

| Código | Significado                                     |
| ------ | ----------------------------------------------- |
| 200    | OK (Sucesso)                                    |
| 301    | Moved Permanently (Redirecionamento permanente) |
| 302    | Found (Redirecionamento temporário)             |
| 400    | Bad Request (solicitação malformada)            |
| 403    | Forbidden (Acesso negado)                       |
| 404    | Not Found (Não encontrado)                      |
| 500    | Internal Server Error                           |

```bash
#testando o acesso as páginas do Netdata Agent (NÃO COMENTADO NO VÍDEO)
#opção do comando curl: -I (Fetch the headers only)
curl -I http://127.0.0.1:19999/
```

**OBSERVAÇÃO IMPORTANTE:** Por padrão o acesso ao Netdata Agent não solicita usuário e senha, o acesso está liberado para todas as Redes Locais (LAN) ou Remotas (WAN), o processo de segurança do Netdata Agent é baseado nas configurações de Regras de Acesso a URL da Aplicação feitas no arquivo: __`/etc/netdata/netdata.conf`__, regras de Firewall utilizando o: __`iptables`__ ou __`ufw`__ e a configuração do recurso de Proxy com Autenticação do __`Apache2 Server ou NGINX Server`__, recursos esses que não serão abordados nesse curso.

```bash
#acessar o Netdata Agent via navegador
firefox ou google chrome: http://endereço_ipv4_ubuntuserver:19999
```

# CONFIGURAÇÃO DO MONITORAMENTO DOS SERVIÇOS DE REDE NO NETDATA AGENT

## 10_ Criando o usuário de monitoramento no MySQL Server do Netdata Agent no Ubuntu Server
```bash
#configuração do serviço de monitoramento do MySQL Server
#Mais informações acesse: https://learn.netdata.cloud/docs/collecting-metrics/databases/mysql

#acessando o MySQL Server via console
#opções do comando mysql: -u (user), -p (password)
sudo mysql -u root -p
```
```sql
/* criando o usuário de monitoramento do Netdata no MySQL */
/* Mais informações acesse: https://dev.mysql.com/doc/refman/8.4/en/create-user.html */
CREATE USER 'netdata'@'localhost';

/* aplicando as permissões do usuário do Netdata no MySQL */
/* Mais informações acesse: https://dev.mysql.com/doc/refman/8.4/en/grant.html */
GRANT USAGE, REPLICATION CLIENT ON *.* TO 'netdata'@'localhost';

/* fazendo o flush das permissões */
/* Mais informações acesse: https://dev.mysql.com/doc/refman/8.4/en/flush.html */
FLUSH PRIVILEGES;

/* verificando o usuário do Netdata criado no MySQL */
/* Mais informações acesse: https://www.w3schools.com/sql/sql_ref_select.asp */
SELECT user,host FROM mysql.user WHERE user="netdata";

/* saindo do MySQL */
exit
```

## 11_ Criando o usuário de monitoramento no MongoDB Server do Netdata Agent no Ubuntu Server
```bash
#configuração do serviço de monitoramento do MongoDB Server
#Mais informações acesse: https://learn.netdata.cloud/docs/collecting-metrics/databases/mongodb

#acessando o MongoDB Server via shell
#opção do comando mongosh: admin (database) -u (username), -p (password)
mongosh admin -u admin -p
```
```javascript
// criando o usuário de monitoramento do Netdata
// Mais informações acesse: https://www.mongodb.com/pt-br/docs/manual/reference/method/db.createUser/
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
#Mais informações acesse: https://www.mongodb.com/pt-br/docs/manual/reference/method/db.getUsers/
db.getUser("netdata")

#saindo do MongoDB
quit
```

## 12_ Acessando o diretório de configuração do Netdata Agent no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** cuidado na hora de configurar os serviços de monitoramento do *Netdata Agent*, os arquivos de configuração são baseados na *Linguagem de Programação Python e Go (Golang)* utilizando o conceito do **YAML (YAML Ain't Markup Language)**, não se utiliza __`TAB`__ sempre utilizar __`02 (dois)`__ espaços para indentar o código.

```bash
#acessando o diretório de configuração do Netdata Aget
cd /etc/netdata/

#listando o conteúdo do diretório do Netdata Agent
#opções do comando ls: -l (long listing), -h (human-readable)
ls -lh
```

## 13_ Configurando o serviço de monitoramento do Apache2 Server no Netdata Agent

**OBSERVAÇÃO IMPORTANTE:** POR PADRÃO O COMANDO: __`./edit-config`__ UTILIZA O EDITOR DE TEXTO **NANO**, SEUS COMANDOS E TECLAS DE ATALHO SÃO DIFERENTES DO EDITOR DE TEXTO **VIM**, CUIDADO!!!!.

```bash
#configuração do serviço de monitoramento do Apache2 Server
#Mais informações acesse: https://learn.netdata.cloud/docs/collecting-metrics/web-servers-and-web-proxies/apache
sudo ./edit-config go.d/apache.conf

#editar as informações a partir da linha: 04
jobs:
  - name: wsseunome
    url: http://127.0.0.1/server-status?auto

#salvar e sair do arquivo
Ctrl + X
    Save modified buffer? Y
    File Name to Write: <Enter>
```

## 14_ Configurando o serviço de monitoramento do Apache Tomcat Server no Netdata Agent

```bash
#configuração do serviço de monitoramento do Apache Tomcat Server
#Mais informações acesse: https://learn.netdata.cloud/docs/collecting-metrics/web-servers-and-web-proxies/tomcat
sudo ./edit-config go.d/tomcat.conf

#editar as informações a partir da linha: 04
jobs:
  - name: wsseunome
    url: http://127.0.0.1:8080
    username: seu_usuário
    password: sua_senha

#salvar e sair do arquivo
Ctrl + X
    Save modified buffer? Y
    File Name to Write: <Enter>
```

## 15_ Configurando o serviço de monitoramento do MySQL Server no Netdata Agent

```bash
#configuração do serviço de monitoramento do MySQL Server
#Mais informações acesse: https://learn.netdata.cloud/docs/collecting-metrics/databases/mysql
sudo ./edit-config go.d/mysql.conf

#editar as informações a partir da linha: 04
jobs:
  - name: wsseunome
    dsn: netdata@tcp(127.0.0.1:3306)/

#salvar e sair do arquivo
Ctrl + X
    Save modified buffer? Y
    File Name to Write: <Enter>
```

## 16_ Configurando o serviço de monitoramento do MongoDB Server no Netdata Agent

```bash
#configuração do serviço de monitoramento do MongoDB Server
#Mais informações acesse: https://learn.netdata.cloud/docs/collecting-metrics/databases/mongodb
sudo ./edit-config go.d/mongodb.conf

#editar as informações a partir da linha: 04
jobs:
  - name: wsseunome
    uri: 'mongodb://netdata:netdata@127.0.0.1:27017'

#salvar e sair do arquivo
Ctrl + X
    Save modified buffer? Y
    File Name to Write: <Enter>
```

## 17_ Configurando o serviço de monitoramento do ICMP Ping no Netdata Agent

```bash
#configuração do serviço de monitoramento do ICMP Ping
#Mais informações acesse: https://learn.netdata.cloud/docs/collecting-metrics/synthetic-checks/ping
sudo ./edit-config go.d/ping.conf

#editar as informações a partir da linha: 04
jobs:
  - name: internet 
    hosts:
      - 8.8.8.8

  - name: wsseunome 
    hosts:
      - SEU_ENDEREÇO_IPV4

#salvar e sair do arquivo
Ctrl + X
    Save modified buffer? Y
    File Name to Write: <Enter>
```

## 18_ Configurando o serviço de monitoramento das Portas TCP Endpoint no Netdata Agent

```bash
#configuração do serviço de monitoramento das Portas TCP Endpoint
#Mais informações acesse: https://learn.netdata.cloud/docs/collecting-metrics/synthetic-checks/tcp-udp-endpoints
sudo ./edit-config go.d/portcheck.conf
```

**OBSERVAÇÃO IMPORTANTE:** após várias análises dos *Logs do OpenSSH*, principalmente do arquivo: *sudo cat -n /var/log/auth.log | grep ssh* apresentou a seguinte mensagem de erro constante a cada **5 segundos**: __`Connection closed by: ENDEREÇO_IPV4 port PORTA_ALEATÓRIA - error: kex_exchange_ identification: Connection closed by remote host`__. Esse error muitas vezes está associado a *conexões remotas não autorizadas* no Ubuntu Server rodando o OpenSSH na **Porta Padrão: 22**, após pesquisar nos Fóruns foi identificado um **Software Malicioso (Malware/Boot)** de *Força Bruta (Brute Force)* que fica escaneando servidores OpenSSH na Porta Padrão para implementação de *Bots DDoS (Robots of Distributed Denial-of-Service) e CoinMiners (Malware de Criptomineração ou Cryptojacking)*, segue lista de alguns Bots (Robôs): **ShellBot, Tsunami, Bot DDos ChinaZ, XMRing CoinMiner Mirai, Gafgy e XorDDos**, nesse cenário a falha está associada ao *Monitoramento da Porta do SSH* utilizado pelo Netdata Agent, após remover a porta: 22 a falha dos Logs foi resolvida.

```bash
#editar as informações a partir da linha: 04
#portas: 80 (Apache2 Server), 3306 (MySQL Server), 8080 (Apache TomCAT), 19999 (Netdata Agent),
#27017 (MongoDB Server).
jobs:
  - name: wsseunome
    host: SEU_ENDEREÇO_IPV4
    ports: [80, 3306, 8080, 19999, 27017]

#salvar e sair do arquivo
Ctrl + X
    Save modified buffer? Y
    File Name to Write: <Enter>
```

## 19_ Configurando o serviço de monitoramento do HTTP Endpoint no Netdata Agent

```bash
#configuração do serviço de monitoramento do HTTP Endpoint
#Mais informações acesse: https://learn.netdata.cloud/docs/collecting-metrics/synthetic-checks/http-endpoints
sudo ./edit-config go.d/httpcheck.conf

#editar as informações a partir da linha: 04
jobs:
  - name: apache2
    url: http://127.0.0.1:80/

  - name: tomcat
    url: http://127.0.0.1:8080/

#salvar e sair do arquivo
Ctrl + X
    Save modified buffer? Y
    File Name to Write: <Enter>
```

## 20_ Aplicando as mudanças e reiniciando o serviço do Netdata Agent no Ubuntu Server
```bash
#verificando os arquivos de configuração dos monitoramentos criados no Netdata Agent
#opção do comando ls: -l (long listing), -h (human-readable)
ls -lh go.d/

#reinicializar o serviço do Netdata Agent
#opções do comando systemctl: status (runtime status information), restart (Stop and then 
#start one or more units)
sudo systemctl restart netdata
sudo systemctl status netdata

#verificando todos os serviços iniciados e rodando no Ubuntu Server
#opção do comando systemctl: list-units (List units that systemd currently has in memory)
#--type (list of unit types such as service and socket), --state (list of unit LOAD, SUB, 
#or ACTIVE states)
sudo systemctl list-units --type=service --state=running
```

## 21_ Verificando todas as Portas de Serviços de Rede no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** no vídeo as portas listadas com o comando: *nmap* só listou as portas conhecidas, para listar todas as portas adicionei a opção: __`-p-`__ (**OBSERVAÇÃO:** COM ESSA OPÇÃO HABILITADA O PROCESSO DE ESCANEAMENTO DE PORTAS DEMORA UM POUCO).

```bash
#verificando todas as portas abertas no Ubuntu Server
#opção do comando nmap: -p- (port ranges all) -sS (scan TCP SYN), -sU (scans UDP)
#opção do comando grep: -i (ignore-case)
#opção do comando cat: -n (number line)
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
sudo nmap -p- SEU_ENDEREÇO_IPV4 -sS -sU | grep -i open | cat -n

#verificando todas as portas de serviços no Ubuntu Server
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
#serviços implementados: 22 (OpenSSH), 80 (Apache2), 3306 (MySQL), 8080 (Apache TomCAT), 19999 (Netdata)
#27017 (MongoDB)
sudo lsof -nP -iTCP:'22,80,3306,8080,19999,27017' -sTCP:LISTEN
```

## 22_ Estressando o Servidor Ubuntu Server para verificar as mudanças no Gráfico (NÃO COMENTADO NO VÍDEO)

Mais informações do software stress-ng Ubuntu: https://manpages.ubuntu.com/manpages/xenial/man1/stress-ng.1.html<br>
Mais informações do software stress-ng Debian: https://manpages.debian.org/jessie/stress-ng/stress-ng.1<br>

```bash
#estressando a CPU, RAM, DISK e PROCESS utilizando o stress-ng (pressione Ctrl+C para abortar)
#opção do comando stress-ng: --hdd (start N workers continually writing, reading and 
#removing temporary files.), --io (start N workers continuously calling sync(2) to 
#commit buffer cache to disk.), --vm (start N workers continuously calling mmap(2)/
#munmap(2) and writing to the allocated memory.), --cpu (start N processes computing 
#sqrt((double)rand())), --stack (start N workers that rapidly cause and catch), --fork
#(start N workers continually forking children that immediately exit), --exec  (start N 
#workers continually forking children that exec) --timeout (run each stress test for at
#least T seconds)
sudo stress-ng --hdd 8 --io 8 --vm 18 --cpu 8 --stack 4 --fork 8 --exec 4 --timeout 900s
```

Entendendo as opções do comando __`*stress-ng*`__

| ID | Opção | Descrição |
|----|-------|-----------|
| 01 | --hdd 8 | Cria 8 workers (trabalhos) que fazem operações intensas de leitura e escrita em disco (testa o I/O de disco). |
| 02 | --io 8 | Cria 8 workers (trabalhos) que realizam chamadas de entrada e saída (I/O) para testar o subsistema de arquivos/dispositivos. |
| 03 | --vm 18 | Cria 18 workers (trabalhos) que alocam e acessam memória (RAM), simulando uso intenso da memória. |
| 04 | --cpu 8 | Cria 8 workers (trabalhos) que usam a CPU ao máximo (100%), rodando cálculos matemáticos. |
| 05 | --stack 4 | Cria 4 process (processos) que usam chamadas recursivas profundas, estressando a pilha (stack) de memória (ram) de cada thread (unidade de execução). |
| 06 | --fork 8 | Cria 8 process (processos) que ficam criando e destruindo novos processos rapidamente (estressa o gerenciamento de processos do kernel). |
| 07 | --exec 4 | Cria 4 process (processos) que executam repetidamente programas simples (testa a função exec() e o sistema de arquivos). |
| 08 | --timeout 900 | Executa todos esses testes por 900 segundos (ou seja, 15 minutos), e depois para automaticamente. |

```bash
#estressando a CPU utilizando o s-tui
sudo s-tui

#utilizado o modos de Monitoramento e Estresse do s-tui
Modes
  ( ) Monitor (Monitoramento do uso da CPU) <Enter>
  (X) Stress  (Modo de Stress da CPU) <Enter>

#Saindo do s-tui
Control Options
  <Quit> <Enter>
```
```bash
#fazendo uma busca no hard disk utilizando o comando find e grep
#opções do comando find: / (root device), -type f (files), -exec (exec command), grep -H 
#'root'(with-filename), {} (path find file), \; (end command execution)
sudo find / -type f -exec grep -H 'root' {} \;
```
```bash
#fazendo várias requisições simultâneas no Apache2 Server
#opções do comando ab: -n (Number of requests to perform for the benchmarking session.),
#-c (Number of multiple requests to perform at a time. Default is one request at a time),
#http://127.0.0.1/ (Target request test)
sudo ab -n 100000 -c 1000 http://127.0.0.1/

#fazendo várias requisições simultâneas no Apache Tomcat Server
#opções do comando ab: -n (Number of requests to perform for the benchmarking session.),
#-c (Number of multiple requests to perform at a time. Default is one request at a time),
#http://127.0.0.1:8080/agenda (Target request test)
sudo ab -n 100000 -c 1000 http://127.0.0.1:8080/agenda
```

Entendendo as opções de métricas do comando __`*ab*`__

| ID | Opção | Descrição |
|----|-------|-----------|
| 01 | Server Software: Apache/2.4.52 | Informa o software do servidor HTTP que respondeu às requisições |
| 02 | Server Hostname: 127.0.0.1 | Endereço do host (IP ou nome) onde o benchmark foi executado | 
| 03 | Server Port: 80 | Porta TCP usada para as conexões HTTP (padrão é 80) | 
| 04 | Document Path: / | Caminho do recurso requisitado no servidor web | 
| 05 | Document Length: 10671 bytes | Tamanho da resposta HTML em bytes por requisição |
| 06 | Concurrency Level: 1000 | Número de conexões simultâneas realizadas durante o teste |
| 07 | Time taken for tests: 13.720 seconds | Tempo total gasto para concluir todas as requisições do teste |
| 08 | Complete requests: 100000 | Número total de requisições realizadas com sucesso |
| 09 | Failed requests: 0 | Número de requisições que falharam (timeout, erro de conexão, etc) |
| 10 | Total transferred: 1094500000 bytes | Quantidade total de dados transferidos, incluindo cabeçalhos HTTP |
| 11 | HTML transferred: 1067100000 bytes | Quantidade total de conteúdo HTML transferido, excluindo cabeçalhos |
| 12 | Requests per second: 7288.73 [#/sec] (mean) | Número médio de requisições concluídas por segundo |
| 13 | Time per request: 137.198 [ms] (mean) | Tempo médio para concluir uma requisição, considerando todas as concorrências |
| 14 | Time per request: 0.137 [ms] (mean, across all concurrent requests) | Tempo médio por requisição individual (tempo total dividido pelo número total de requests) |
| 15 | Transfer rate: 77905.47 [Kbytes/sec] received | Taxa média de transferência de dados durante o teste |
| 16 | Connection Times (ms): min=0 mean=4 [+/-sd]=65.5 median=0 max=3069 | Tempo de estabelecimento de conexão (TCP handshake): mínimo, médio, mediana e máximo |
| 17 | Processing Times (ms): min=10 mean=123 [+/-sd]=895.5 median=52 max=13599 | Tempo de processamento no servidor: do envio da requisição até início da resposta |
| 18 | Waiting Time (ms): min=0 mean=121 [+/-sd]=894.2 median=52 max=13594 | Tempo ocioso aguardando a resposta: é um subconjunto do tempo de processamento |
| 19 | Total Time (ms): min=42 mean=127 [+/-sd]=903.9 median=53 max=13711 | Tempo total para completar a requisição: conexão + processamento + resposta |

```bash
#fazendo várias requisições de consultas simultâneas no MySQL Server
#opções do comando mysqlslap: --concurrency (The number of parallel clients to simulate), 
#--iterations (The number of times to run the tests), --query (The file or string containing 
#the SELECT statement to use for retrieving data), --create-schema (The schema in which to 
#run the tests), --user (The user name of the MySQL account to use for connecting to the 
#server), --password (The password of the MySQL account used for connecting to the server)
sudo mysqlslap --concurrency=1000 --iterations=100 --query="SELECT * FROM contatos;" --create-schema=dbagenda --user=dbagenda --password=dbagenda
```

Mais informações do software iPerf3: https://iperf-fr.translate.goog/iperf-doc.php?_x_tr_sl=en&_x_tr_tl=pt&_x_tr_hl=pt&_x_tr_pto=tc

```bash
#fazendo várias conexões de rede simultâneas no servidor do iPerf3
#opções do comando iperf3: -s (Run iPerf in server mode.), -c (Run iPerf in client mode, connecting
#to an iPerf server running on host.), -t (The time in seconds to transmit for), -u (Use UDP rather 
#than TCP), -b (The UDP bandwidth to send at, in bits/sec), -l (The length of buffers to read or write)
iperf3 -s
iperf3 -c IP_SERVER_IPERF3_REMOTO -t 30
iperf3 -c IP_SERVER_IPERF3_REMOTO -u -b 10M -t 30
iperf3 -c IP_SERVER_IPERF3_REMOTO -l 128
```

Entendendo as opções de métricas do comando __`*iperf3*`__

| ID  | Opção              | Descrição                                                                                  |
|-----|--------------------|--------------------------------------------------------------------------------------------|
| 01  | ID                 | Identificador único para cada teste ou fluxo de dados. Cada conexão ou métrica é associada a um ID distinto.       |
| 02  | Interval           | Intervalo de tempo durante o qual as métricas são calculadas. Em um teste contínuo, o `iperf3` calcula os dados para intervalos definidos (geralmente em segundos). |
| 03  | Transfer           | Quantidade total de dados transferidos durante o teste, em bytes ou em uma unidade mais legível como megabytes (MB) ou gigabytes (GB). |
| 04  | Bitrate            | Taxa de transferência de dados durante o teste, medida em bits por segundo (bps), Kbps, Mbps ou Gbps. Reflete o desempenho da conexão em termos de velocidade de download/upload. |
| 05  | Retr               | Retransmissões de pacotes, ou seja, o número de pacotes que foram enviados novamente devido a falhas ou perda de pacotes durante a transmissão. |
| 06  | Cwnd               | Tamanho da janela de congestionamento (congestion window) no TCP. O TCP usa uma janela de congestionamento para controlar a quantidade de dados não confirmados que podem ser enviados antes de esperar por um reconhecimento. Quanto maior o valor, mais dados podem ser enviados sem confirmação. |
| 07  | Total Datagrams    | Número total de pacotes de dados enviados ou recebidos durante o teste, aplicável especialmente aos testes UDP. Cada datagrama representa um pacote UDP. |

```bash
#fazendo várias requisições de consultas simultâneas no MongoDB Server
#criando o arquivo de teste do MongoDB (criar no Perfil do seu usuário)
vim mongodb_stress_test.js

#entrar no modo de edição do Editor VIM
INSERT
```
```js
/**
 * Script de Teste de Estresse para MongoDB Server
 * Versão: 1.0 - Data de atualização: 14/05/2025 - Dev: Robson Vaamonde
 * Finalidade: Simular um cenário de concorrência e carga no MongoDB semelhante ao comando:
 * mysqlslap --concurrency=1000 --iterations=100 [...] do MySQL Server usando o mysqllap
 * 
 * O teste cria 1000 workers (processos filhos), cada um executando 100 queries findOne()
 * contra a coleção "contatos" do banco "agenda".
 */

//===== Bloco das Variáveis do Node.JS =====
const { MongoClient } = require("mongodb"); // Importa o driver oficial MongoDB
const cluster = require("cluster");         // Módulo para criar múltiplos processos (concorrência real)
const numWorkers = 1000;                    // Número de processos simultâneos (concorrência)
const iterations = 100;                     // Quantidade de consultas por worker

// Configuração da conexão MongoDB
const uri = "mongodb://seu_usuário:sua_senha@localhost:27017";   // URI de conexão (ajuste se necessário)
const dbName = "agenda";                                         // Nome do banco de dados
const collectionName = "contatos";                               // Nome da collection que será consultada

// Se é o processo master (coordenador dos workers)
if (cluster.isPrimary || cluster.isMaster) {
  console.log(`Iniciando o teste de estresse com ${numWorkers} workers...`);
  let completed = 0; // Contador de workers finalizados

  // Criação dos workers
  for (let i = 0; i < numWorkers; i++) {
    const worker = cluster.fork(); // Cria um novo processo filho

    // Quando o worker termina, incrementa o contador
    worker.on("exit", () => {
      completed++;
      if (completed === numWorkers) {
        console.log("Teste de estresse finalizado com sucesso!!!");
      }
    });
  }
} else {
  // Código executado por cada worker
  (async () => {
    try {
      // Cria uma nova conexão com o MongoDB
      const client = new MongoClient(uri, {
        useNewUrlParser: true,
        useUnifiedTopology: true,
      });

      await client.connect(); // Conecta ao servidor MongoDB
      const db = client.db(dbName); // Seleciona o banco de dados
      const collection = db.collection(collectionName); // Seleciona a collection

      // Executa a consulta 100 vezes (findOne())
      for (let i = 0; i < iterations; i++) {
        await collection.findOne({});
      }

      await client.close(); // Fecha a conexão após terminar as consultas
      process.exit(0); // Encerra o worker com sucesso
    } catch (err) {
      console.error("Erro no worker:", err); // Log de erro, se ocorrer
      process.exit(1); // Encerra com erro
    }
  })();
}
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>
```
```bash
#executando o script de Stress do MongoDB Server
node mongodb_stress_test.js
```
```bash
#monitorando o MongoDB utilizando os recursos de monitoramento nativo

#monitorando o MongoDB utilizando o comando mongostat
#opção do comando mongostat: --authenticationDatabase (database), -u (username), -p (password)
sudo mongostat --authenticationDatabase admin -u seu_usuário -p sua_senha

#monitorando o MongoDB utilizando o comando mongotop
#opção do comando mongotop: --authenticationDatabase (database), -u (username), -p (password)
sudo mongotop   --authenticationDatabase admin -u seu_usuário -p sua_senha
```

========================================DESAFIOS=========================================

**#23_ DESAFIO-01:** FAZER A INTEGRAÇÃO DO NETDATA AGENT COM O NETDATA CLOUD, UTILIZE O VÍDEO DE INTEGRAÇÃO: __`15-netdata.sh Configurando o Netdata Cloud integrado com o Netdata Agent`__, LINK: https://www.youtube.com/watch?v=5MrH8L5cSIU

**#24_ DESAFIO-02:** ADICIONAR O USUÁRIO: __`admin`__ E O: __`seu_usuário`__ CRIADOS NO DESAFIO DO OPENSSH NO GRUPO DO NETDATA PARA FACILITAR A ADMINISTRAÇÃO E GERENCIAMENTO SEM A NECESSIDADE DO SUDO.

**#25_ DESAFIO-03:** ADICIONAR O HYPER LINK NO WORDPRESS PARA FACILITAR O ACESSO AO NETDATA, IGUAL A TODOS OS DESAFIOS FEITO ATÉ AGORA.

=========================================================================================

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO NETDATA SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do Netdata realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/09-netdata.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafionetdata #desafionetdatacloud