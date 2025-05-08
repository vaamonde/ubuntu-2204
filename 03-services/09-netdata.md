#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 14/04/2023<br>
#Data de atualização: 06/05/2025<br>
#Versão: 0.26<br>

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
#14_ Configurando o serviço de monitoramento do Apache TomCAT Server no Netdata Agent;<br>
#15_ Configurando o serviço de monitoramento do MySQL Server no Netdata Agent;<br>
#16_ Configurando o serviço de monitoramento do MongoDB Server no Netdata Agent;<br>
#17_ Configurando o serviço de monitoramento do ICMP no Netdata Agent;<br>
#18_ Configurando o serviço de monitoramento das Portas TCP Endpoint no Netdata Agent;<br>
#19_ Reiniciando o serviço do Netdata Agent no Ubuntu Server;<br>
#20_ Verificando todas as Portas de Serviços de Rede no Ubuntu Server;<br>
#21_ Estressando o Servidor Ubuntu Server para verificar as mudanças no Gráfico;<br>
#22_ Desafio da Integração do Netdata Server com o Cloud.<br>

**Sites de IA (Inteligência Artificial) indicados para os Desafios**<br>
OpenAI ChatGPT: https://chatgpt.com<br>
Microsoft Copilot: https://copilot.microsoft.com<br>
Google Gemini: https://gemini.google.com<br>
DeepSeek: https://chat.deepseek.com/<br>
x.AI Grok: https://grok.com/<br>

Site Oficial do Netdata: https://www.netdata.cloud/<br>

**O QUE É E PARA QUE SERVER O NETDATA:** Netdata é uma ferramenta de código aberto projetada para coletar métricas em tempo real, como uso de CPU, atividade de disco, uso de largura de banda, visitas a sites etc..., e exibi-las em gráficos ao vivo e fáceis de interpretar.

**O QUE É E PARA QUE SERVER O OBSERVABILIDADE:** Essa é uma daquelas palavras que virou **buzzword (momento)** no mundo *DevOps/SRE (Site Reliability Engineering)*, *Observabilidade* é a capacidade de entender o que está acontecendo dentro de um sistema (app, servidor, infraestrutura) apenas observando os dados gerados por ele — como *logs, métricas, traces, etc*.

[![Netdata Server](http://img.youtube.com/vi/KaNmgc43vlw/0.jpg)](https://www.youtube.com/watch?v=KaNmgc43vlw "Netdata Server")

Link da vídeo aula: https://www.youtube.com/watch?v=KaNmgc43vlw

## 01_ Instalando as Dependências do Netdata Agent no Ubuntu Server
```bash
#atualizando as lista do apt
sudo apt update

#instalando as dependências do Netdata Agent
#opção da contra barra (\): criar uma quebra de linha no terminal
sudo apt install git vim build-essential software-properties-common gnupg apt-transport-https \
ca-certificates zlib1g-dev gcc make git autoconf autogen automake pkg-config uuid-dev python3 \
python3-mysqldb python3-pip python3-dev libmysqlclient-dev libuv1-dev netcat libwebsockets16 \
libwebsockets-dev libjson-c-dev libbpfcc-dev liblz4-dev libjudy-dev libelf-dev libmnl-dev \
autoconf-archive curl cmake protobuf-compiler protobuf-c-compiler lm-sensors python3-psycopg2 \
python3-pymysql libssl-dev libprotobuf-dev g++ flex bison nmap libuuid1 libcurl4 libyaml-dev \
libcurl4-openssl-dev stress-ng
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

**OBSERVAÇÃO IMPORTANTE:** o processo de compilação e instalação do Netdata Agent via Github demora bastante, dependendo do seu hardware pode demorar mais de: *30 minutos* para baixar as dependências, compilar e instalar o Netdata Agent no Ubuntu Server, aguarde!!!!!!!

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

**OBSERVAÇÃO IMPORTANTE:** caso queira atualizar manualmente o Netdata Agent digite o mesmo comando do agendamento de atualizações do Netdata Agent no terminal.

```bash
#atualizando manualmente o Netdata Agent
#opção do ./: execução de script desenvolvido em Shell Script .sh
sudo /usr/libexec/netdata/./netdata-updater.sh
```

## 07_ Adicionado o Usuário Local no Grupo Padrão do Netdata Agent no Ubuntu Server
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

## 08_ Localização dos Arquivos de Configuração do Netdata Agent no Ubuntu Server
```bash
/etc/netdata/netdata.conf          <-- arquivo de configuração do serviço do Netdata Agent
/etc/netdata/apps_groups.conf      <-- arquivo de configuração dos Grupos de Aplicativos do Netdata Agent
/etc/netdata/go.d/apache.conf      <-- arquivo de monitoramento do Apache2 Server
/etc/netdata/go.d/mongodb.conf     <-- arquivo de monitoramento do MongoDB Server
/etc/netdata/go.d/mysql.conf       <-- arquivo de monitoramento do MySQL Server
/etc/netdata/go.d/ping.conf        <-- arquivo de monitoramento do ICMP Ping
/etc/netdata/go.d/portcheck.conf   <-- arquivo de monitoramento do Port Check
/etc/netdata/go.d/tomcat.conf      <-- arquivo de monitoramento do Apache Tomcat
/var/log/netdata                   <-- diretório dos arquivos de Logs do Netdata
```

## 09_ Acessando e configurando o Netdata Agent via navegador
```bash
#acessar via navegador o Netdata
firefox ou google chrome: http://endereço_ipv4_ubuntuserver:19999
```

# CONFIGURAÇÃO DO MONITORAMENTO DOS SERVIÇOS DE REDE DO NETDATA AGENT

## 10_ Criando o usuário de monitoramento do MySQL Server do Netdata Agent no Ubuntu Server
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

## 11_ Criando o usuário de monitoramento do MongoDB Server do Netdata Agent no Ubuntu Server
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

## 12_ Acessando o diretório de configuração do Netdata Agent no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** cuidado na hora de configurar os serviços de monitoramento do Netdata Server, os arquivos de configuração são baseados na *Linguagem de Programação Python* utilizando o conceito do **YAML (YAML Ain't Markup Language)**, não se utiliza __`TAB`__ sempre utilizar __`02 (dois)`__ espaços para indentar o código.

```bash
#acessando o diretório de configuração do Netdata Aget
cd /etc/netdata/

#listando o conteúdo do diretório do Netdata Agent
#opções do comando ls: -l (long listing), -h (human-readable)
ls -lh
```

## 13_ Configurando o serviço de monitoramento do Apache2 Server no Netdata Agent

**OBSERVAÇÃO IMPORTANTE:** POR PADRÃO O COMANDO: *./edit-config* UTILIZA O EDITOR DE TEXTO **NANO**, SEUS COMANDOS E TECLAS DE ATALHO SÃO DIFERENTES DO EDITOR DE TEXTO **VIM**, CUIDADO!!!!.

```bash
#configuração do serviço de monitoramento do Apache Server
#https://learn.netdata.cloud/docs/data-collection/web-servers-and-web-proxies/apache
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

## 14_ Configurando o serviço de monitoramento do Apache TomCAT Server no Netdata Agent

```bash
#configuração do serviço de monitoramento do Apache TomCAT Server
#https://learn.netdata.cloud/docs/data-collection/web-servers-and-web-proxies/tomcat
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
#https://learn.netdata.cloud/docs/data-collection/databases/mysql
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
#https://learn.netdata.cloud/docs/data-collection/databases/mongodb
sudo ./edit-config go.d/mongodb.conf

#editar as informações a partir da linha: 04
jobs:
  - name: wsseunome
    uri: 'mongodb://netdata:netdata@localhost:27017'

#salvar e sair do arquivo
Ctrl + X
    Save modified buffer? Y
    File Name to Write: <Enter>
```

## 17_ Configurando o serviço de monitoramento do ICMP no Netdata Agent

```bash
#configuração do serviço de monitoramento do ICMP Ping
#https://learn.netdata.cloud/docs/data-collection/synthetic-checks/ping
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
#https://learn.netdata.cloud/docs/data-collection/synthetic-checks/tcp-endpoints
sudo ./edit-config go.d/portcheck.conf
```

**OBSERVAÇÃO IMPORTANTE:** após várias análises dos *Logs do OpenSSH*, principalmente do arquivo: *sudo cat -n /var/log/auth.log | grep ssh* apresentou a seguinte mensagem de erro constante a cada **5 segundos**: __`Connection closed by: ENDEREÇO_IPV4 port PORTA_ALEATÓRIA - error: kex_exchange_ identification: Connection closed by remote host`__. Esse error muitas vezes está associado a *conexões remotas não autorizadas* no Ubuntu Server rodando o OpenSSH na Porta Padrão: 22, após pesquisar nos Fóruns foi identificado um **Software Malicioso (Malware/Boot)** de Força Bruta que fica escaneando servidores OpenSSH na Porta Padrão para implementação de *Bots DDoS e CoinMiners*, segue lista de alguns Bots: **ShellBot, Tsunami, Bot DDos ChinaZ, XMRing CoinMiner Mirai, Gafgy e XorDDos**, nesse cenário a falha está associada ao *Monitoramento da Porta do SSH* utilizado pelo Netdata, após remover a porta: 22 a falha dos Logs foi resolvida.

```bash
#editar as informações a partir da linha: 04
jobs:
  - name: wsseunome
    host: SEU_ENDEREÇO_IPV4
    ports: [80, 3306, 8080, 19999, 27017]

#salvar e sair do arquivo
Ctrl + X
    Save modified buffer? Y
    File Name to Write: <Enter>
```

## 19_ Reiniciando o serviço do Netdata Agent no Ubuntu Server
```bash
#verificando os arquivos de configuração dos monitoramentos criados
#opção do comando ls: -l (long listing), -h (human-readable)
ls -lh go.d/

#reinicializar o serviço do Netdata Agent
sudo systemctl restart netdata
sudo systemctl status netdata

#verificando todos os serviços iniciados e rodando no Ubuntu Server
#opção do comando systemctl: list-units (List units that systemd currently has in memory)
#--type (list of unit types such as service and socket), --state (list of unit LOAD, SUB, 
#or ACTIVE states)
sudo systemctl list-units --type=service --state=running
```

## 20_ Verificando todas as Portas de Serviços de Rede no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** no vídeo as portas listadas com o comando: *nmap* só listou as portas conhecidas, para listar todas as portas adicionei a opção: __`-p-`__ (OBSERVAÇÃO: COM ESSA OPÇÃO HABILITADA O PROCESSO DE ESCANEAMENTO DE PORTAS DEMORA UM POUCO).

```bash
#verificando todas as portas abertas no Ubuntu Server
#opção do comando nmap: -p- (port ranges all) -sS (scan TCP SYN), -sU (scans UDP)
#opção do comando grep: -i (ignore-case)
#opção do comando cat: -n (number line)
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
sudo nmap -p- SEU_ENDEREÇO_IPV4 -sS -sU | grep -i open | cat -n

#verificando todas as portas de serviços no Ubuntu Server
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
#serviços implementados: 22 (OpenSSH), 80 (Apache2), 3306 (MySQL), 8080 (TomCAT), 19999 (Netdata)
#27017 (MongoDB)
sudo lsof -nP -iTCP:'22,80,3306,8080,19999,27017' -sTCP:LISTEN
```

## 21_ Estressando o Servidor Ubuntu Server para verificar as mudanças no Gráfico (NÃO COMENTADO NO VÍDEO)

Mais informações do software stress-ng Ubuntu: https://manpages.ubuntu.com/manpages/xenial/man1/stress-ng.1.html<br>
Mais informações do software stress-ng Debian: https://manpages.debian.org/jessie/stress-ng/stress-ng.1<br>

```bash
#estressando a CPU, RAM e DISK utilizando o stress-ng (pressione Ctrl+C para abortar)
#opção do comando stress-ng: --hdd (start N workers continually writing, reading and 
#removing temporary files.), --io (start N workers continuously calling sync(2) to 
#commit buffer cache to disk.), --vm (start N workers continuously calling mmap(2)/
#munmap(2) and writing to the allocated memory.), --cpu (tart N processes computing 
#sqrt((double)rand())), --timeout (run each stress test for at least T seconds)
sudo stress-ng --hdd 8 --io 8 --vm 18 --cpu 8 --timeout 900s

#fazendo uma busca no disk utilizando o comando find e grep
#opções do comando find: / (root device), -type f (files), -exec (exec command), grep -H 
#'root'(with-filename), {} (path find file), \; (end command execution)
sudo find / -type f -exec grep -H 'root' {} \;
```

========================================DESAFIOS=========================================

**#22_ DESAFIO-01:** FAZER A INTEGRAÇÃO DO NETDATA AGENT COM O NETDATA CLOUD, UTILIZE O VÍDEO DE INTEGRAÇÃO: __`15-netdata.sh Configurando o Netdata Cloud integrado com o Netdata Agent`__, LINK: https://www.youtube.com/watch?v=5MrH8L5cSIU

**#23_ DESAFIO-02:** ADICIONAR O USUÁRIO: __`admin`__ E O: __`seu_usuário`__ CRIADOS NO DESAFIO DO OPENSSH NO GRUPO DO NETDATA PARA FACILITAR A ADMINISTRAÇÃO E GERENCIAMENTO SEM A NECESSIDADE DO SUDO.

**#24_ DESAFIO-03:** ADICIONAR O HYPER LINK NO WORDPRESS PARA FACILITAR O ACESSO AO NETDATA, IGUAL A TODOS OS DESAFIOS FEITO ATÉ AGORA.

=========================================================================================

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO NETDATA SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do Netdata realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/09-netdata.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafionetdata #desafionetdatacloud