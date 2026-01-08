#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 07/03/2024<br>
#Data de atualização: 08/01/2026<br>
#Versão: 0.21<br>

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO GRAFANA SE VOCÊ CONSEGUIU IMPLEMENTAR COM A SEGUINTE FRASE: *Implementação do Grafana realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DA IMPLEMENTAÇÃO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DA IMPLEMENTAÇÃO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/12-grafana.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiografana

Conteúdo estudado nessa implementação:<br>
#01_ Instalando as Dependências do Grafana Server no Ubuntu Server;<br>
#02_ Instalando a Chave GPG do Grafana Server no Ubuntu Server;<br>
#03_ Instalando o Grafana Server no Ubuntu Server;<br>
#04_ Editando os arquivos de configuração do Grafana Server no Ubuntu Server;<br>
#05_ Habilitando o Serviço do Grafana Server no Ubuntu Server;<br>
#06_ Verificando o Serviço e Versão do Grafana Server no Ubuntu Server;<br>
#07_ Verificando a Porta de Conexão do Grafana Server no Ubuntu Server;<br>
#08_ Adicionado o Usuário Local no Grupo Padrão do Grafana Server no Ubuntu Server;<br>
#09_ Localização dos diretórios e arquivos principais do Grafana Server no Ubuntu Server;<br>
#10_ Configurando o Grafana Server via Navegador;<br>
#11_ Criando um Data Sources do MySQL Server no Grafana Server;<br>
#12_ Criando um Dashboard do Banco de Dados DBAgenda;<br>
#13_ Adicionando o Plugin do Dashboard do Zabbix Server no Grafana no Ubuntu Server;<br>
#14_ Estressando o Servidor Ubuntu Server para verificar as mudanças no Gráfico **(NÃO COMENTADO NO VÍDEO)**.<br>

Site Oficial do Grafana: https://grafana.com/<br>

**O QUE É E PARA QUE SERVER O GRAFANA:** O Grafana é uma plataforma open-source para visualização, monitoramento e análise de dados em tempo real. Ele permite criar dashboards interativos que exibem métricas coletadas de diversas fontes, como bancos de dados, sistemas de monitoramento, IoT e aplicações.

[![Grafana Server](http://img.youtube.com/vi/vD1aFVcgdlo/0.jpg)](https://www.youtube.com/watch?v=vD1aFVcgdlo "Grafana Server")

Link da vídeo aula: https://www.youtube.com/watch?v=vD1aFVcgdlo

## 01_ Instalando as Dependências do Grafana Server no Ubuntu Server
```bash
#atualizando as lista do apt
#opção do comando apt: update (Resynchronize the package index files from their sources)
sudo apt update

#instalando as dependências do Grafana Server
#opção do comando apt: install (install is followed by one or more package names)
sudo apt install apt-transport-https software-properties-common git vim
```

## 02_ Instalando a Chave GPG do Grafana Server no Ubuntu Server
```bash
#baixando e instalando a Chave GPG do Grafana Server no Ubuntu Server
#opção do comando wget: -q (quiet), -O (output-document)
#opção do redirecionador | (pipe): Conecta a saída padrão com a entrada padrão de outro comando
#opção do redirecionador > (maior): Redireciona a saída padrão (STDOUT)
sudo wget -q -O - https://apt.grafana.com/gpg.key | gpg --dearmor | sudo tee /usr/share/keyrings/grafana.gpg > /dev/null

#adicionando o Repositório do Grafana Server no Ubuntu Server
#OBSERVAÇÃO IMPORTANTE: caso queira instalar a versão atual altere a palavra: beta por: stable
#OBSERVAÇÃO IMPORTANTE: na data de: 14/05/2024 a Versão BETA 11 do Grafana se tornou STABLE.
#opção do comando tee: -a (append)
#opção do redirecionador | (pipe): Conecta a saída padrão com a entrada padrão de outro comando
echo "deb [signed-by=/usr/share/keyrings/grafana.gpg] https://apt.grafana.com stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list
```

## 03_ Instalando o Grafana Server no Ubuntu Server
```bash
#atualizando as listas do Apt com o novo repositório
#opção do comando apt: update (Resynchronize the package index files from their sources)
sudo apt update

#instalando o Grafana Server no Ubuntu Server
#opções do comando apt: install (install is followed by one or more package names), 
#--install-recommends (Consider suggested packages as a dependency for installing)
sudo apt install --install-recommends grafana
```

## 04_ Editando os arquivos de configuração do Grafana Server no Ubuntu Server
```bash
#fazendo o backup do arquivo de configuração do Grafana Server (NÃO COMENTADO NO VÍDEO)
#opção do comando cp: -v (verbose)
sudo cp -v /etc/default/grafana-server /etc/default/grafana-server.old

#fazendo o backup do arquivo de inicialização do Grafana Server (NÃO COMENTADO NO VÍDEO)
#opção do comando cp: -v (verbose)
sudo cp -v /etc/grafana/grafana.ini /etc/grafana/grafana.ini.old

#download do arquivo de configuração do Grafana Server (NÃO COMENTADO NO VÍDEO)
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/default/grafana-server https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/grafana-server

#download do arquivo de inicialização do Grafana Server (NÃO COMENTADO NO VÍDEO)
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/grafana/grafana.ini https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/grafana.ini

#editando o arquivo de configuração do Grafana Server
sudo vim /etc/default/grafana-server

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
#principais variáveis do Grafana Server (PADRÃO NÃO ALTERAR OS VALORES)
GRAFANA_USER=grafana          (usuário do serviço do Grafana Server)
GRAFANA_GROUP=grafana         (grupo do serviço do Grafana Server)
LOG_DIR=/var/log/grafana      (localização dos arquivos de Log do Grafana Server)
DATA_DIR=/var/lib/grafana     (localização do banco de dados do Grafana Server)
```
```bash
#salvar e sair do arquivo
ESC SHIFT : x <Enter>

#editando o arquivo de inicialização do Grafana Server
sudo vim /etc/grafana/grafana.ini

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
#descomentar a variável protocol = na linha: 32
protocol = http

#descomentar a variável ;http_port = na linha 41
http_port = 3000

#descomentar a variável ;domain = na linha 44
#altere o nome de domínio conforme o seu cenário
domain = pti.intra
```
```bash
#salvar e sair do arquivo
ESC SHIFT : x <Enter>
```

## 05_ Habilitando o Serviço do Grafana Server no Ubuntu Server
```bash
#habilitando o serviço do Grafana Server
#opções do comando systemctl: daemon-reload (Reload the systemd manager configuration), 
#enable (Enable one or more units), restart (Stop and then start one or more units)
sudo systemctl daemon-reload
sudo systemctl enable grafana-server
sudo systemctl restart grafana-server
```

## 06_ Verificando o Serviço e Versão do Grafana Server no Ubuntu Server
```bash
#verificando o serviço do Grafana Server
#opções do comando systemctl: status (runtime status information), restart (Stop and then 
#start one or more units), stop (Stop (deactivate) one or more units), start (Start (activate) 
#one or more units)
sudo systemctl status grafana-server
sudo systemctl restart grafana-server
sudo systemctl stop grafana-server
sudo systemctl start grafana-server

#analisando os Log's e mensagens de erro do Servidor do Grafana Server
#opção do comando journalctl: -t (identifier), -x (catalog), -e (pager-end), -u (unit)
sudo journalctl -t grafana
sudo journalctl -xeu grafana-server
```

**OBSERVAÇÃO IMPORTANTE:** Por que sempre é necessário verificar a versão do serviço de rede que você está implementando ou configurando no Servidor Ubuntu Server, devido as famosas falhas de segurança chamadas de: *CVE (Common Vulnerabilities and Exposures)*, com base na versão utilizada podemos pesquisar no site do **Ubuntu Security CVE Reports:** https://ubuntu.com/security/cves as falhas de segurança encontradas e corrigidas da versão do nosso aplicativo, o que ela afeta, se foi corrigida e como aplicar a correção

```bash
#verificando a versão do Grafana Server
#opção do comando grafana-server: -v (version)
sudo grafana-server -v

#verificando a versão do Grafana Cli
#opção do comando grafana-cli: -v (version)
sudo grafana-cli -v
```

## 07_ Verificando a Porta de Conexão do Grafana Server no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** no Ubuntu Server as Regras de Firewall utilizando o comando: __` iptables `__ ou: __` ufw `__ está desabilitado por padrão **(INACTIVE)**, caso você tenha habilitado algum recurso de Firewall é necessário fazer a liberação do *Fluxo de Entrada (INPUT), Porta (PORT) e Protocolo (PROTOCOL) TCP* do Serviço corresponde nas tabelas do firewall e testar a conexão.

**OBSERVAÇÃO IMPORTANTE:** CUIDADO NO PROCEDIMENTO DE INSTALAR E CONFIGURAR O **NODE.JS E OS SEUS DESAFIOS**, POR PADRÃO A PRIMEIRA APLICAÇÃO EM *JAVASCRIPT* FEITA UTILIZANDO O RECURSO DO **EXPRESS** ESTÁ NA PORTA: __`3000`__, RECOMENDO MUDAR A PORTA DA APLICAÇÃO OU DESATIVAR A MESMA PARA NÃO ENTRAR EM CONFLITO COM O GRAFANA SERVER.

```bash
#verificando a porta padrão TCP-3000 do Grafana Server
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'3000' -sTCP:LISTEN
```

## 08_ Adicionado o Usuário Local no Grupo Padrão do Grafana Server no Ubuntu Server
```bash
#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
#OBSERVAÇÃO IMPORTANTE: você pode substituir a variável de ambiente $USER pelo
#nome do usuário existente no sistema para adicionar no Grupo desejado.
sudo usermod -a -G grafana $USER

#fazendo login em um novo grupo do Grafana Server
newgrp grafana

#verificando os identificadores de usuário e grupos
id

#verificando informações do grupo GRAFANA do Grafana Server
#opção do comando getent: group (the database system group)
sudo getent group grafana

#recomendo fazer logout do usuário para testar as permissões de grupos
#OBSERVAÇÃO: você pode utilizar o comando: exit ou tecla de atalho: Ctrl +D
exit
```

## 09_ Localização dos diretórios e arquivos principais do Grafana Server no Ubuntu Server
```bash
/etc/grafana/*                <-- Diretório das configurações do Grafana Server
/etc/grafana/grafana.ini      <-- Arquivo de Configuração e Inicialização do Grafana Server
/etc/default/grafana-server   <-- Arquivo de Configuração do Serviço do Grafana Server
/usr/share/grafana*           <-- Diretório do Site do Grafava Server
/var/log/grafana*             <-- Diretório dos arquivos de Logs do serviço do Grafana Server
/var/lib/grafana*             <-- Diretório dos banco de dados do Grafana Server
/var/lib/grafana/plugins*     <-- Diretório dos Plugins do Grafana Server
```

## 10_ Configurando o Grafana Server via Navegador
```bash
#acessando via navegador o Grafana Server
firefox ou google chrome: http://endereço_ipv4_ubuntuserver:3000

#configurações iniciais do Grafana Server
Welcome to Grafana
  Email or username: admin
  Password: admin 
<Log In>

#atualização da senha do usuário Admin do Grafana Server
Update your password
  New password: SUA_SENHA_SEGURA
  Confirm new password: SUA_SENHA_SEGURA 
<Submit>
```

## 11_ Criando um Data Sources do MySQL Server no Grafana Server
```bash
#criando um Data Sources do Banco de Dados DBAgenda do MySQL Server
Open Menu
  Connections
    Data Sources
      <Add data source>
        Filter by name or type: MySQL
          Select: MySQL (Data Source for MySQL databases)
            Name: MySQL-DBAgenda - Default (Enable)
            MySQL Connection
              Host URL: localhost:3306
              Database name: dbagenda
              Username: dbagenda
              Password: dbagenda
          <Save & Test>
    Data Sources
```

## 12_ Criando um Dashboard do Banco de Dados DBAgenda
```bash
#criando o Dashboard do Banco de Dados DBAgenda
Open Menu
  Dashboards
    <Create Dashboard>
    <+ Add visualization>
      Select data source
        Data source: MySQL-DBAgenda

      #primeira etapa: criar o Dataset do Banco, Tabela e Coluna
      Builder
        Dataset: dbagenda   Tabela: contatos
        Columm: nome   Aggregation: COUNT (Contar)   Alias: Choose (Default)
      <Run query>

      #segunda etapa: criar a visualização dos dados no painel
      Panel Title
        <Open visualization suggestions>
          Suggestions: Gauge
            Panel options
              Tile: Total de Contatos
              Description: Total de Contatos cadastrados no banco DBAgenda
            Standard Option
              Min: 1
              Max: 20
          <Save>

      #terceira etapa: salvando as mudanças do Dashboard		
      Details
        Title: DBAgenda
        Description: Dashboard DBAgenda
        Folder: Dashboard
      <Save>

    #quarta etapa: adicionando mais um painel no Dashboard DBAgenda
    <Add>
      Visualization
        Builder
          Dataset: dbagenda   Tabela: contatos
          Columm: nome   Aggregation: Choose (Default)   Alias: Choose (Default)

          #habilitar a opção: Order (Enable) no painel da Builder
          Order by: idcon
          Sort by: descending
          Limit: 10
        <Run query>

        Panel Title
          <Switch to table>
            Panel options
              Tile: Últimos Contatos do DBAgenda
              Description: Nome dos últimos contatos do banco DBAgenda
          <Save> - <Save>
        <Apply>
```

## 13_ Adicionando o Plugin do Dashboard do Zabbix Server no Grafana no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** nos testes feito utilizando o usuário padrão do Zabbix Server: __`Admin`__ acontecia o erro de autenticação, aparecendo sempre a mensagem de: *Incorrect user name or password or account is temporarily blocked*. Para corrigir essa falha foi feita a criação de um novo usuário e a conexão foi feita com sucesso.

```bash
#acessando o Zabbix Server via Navegador
firefox ou google chrome: http://endereço_ipv4_ubuntuserver/zabbix
```
```bash
#criando o usuário para a integração com o Grafana Server
Zabbix
  Users
    Users
      <Create User>
        User
          Username: grafana
          Name: Grafana Server
          Grupos: Internal, Zabbix administrators
          Password: pti@2018
          Password (once again): pti@2018
        Permission
          Role: <Select>
            Super admin role
      <Add>
```

```bash
#instalando e habilitando o Plugin do Zabbix Server no Grafana Server
Open menu
  Administration
    Plugins and data
      Plugins
      #pesquisando o Plugin do Zabbix Server
      Search: Zabbix
        Clique em: Zabbix (By Grafana Labs)
          Clique em: <Install>
          #aguarde a instalação e depois habilite o Plugin
          Clique em: <Enable>

#criando o Data Source da Zabbix Server no Grafana Server
Open Menu
  Connections
    Data sources
      <+ Add new data source>
        Filter: Zabbix (select)
          Name: wsvaamonde
          Connection: http://172.16.1.20/zabbix/api_jsonrpc.php
          Zabbix Connection
            Auth type: User and password
            Username: grafana
            Password: pti@2018
      <Save and test>

#criando o Dashboard padrão do Zabbix Server no Grafana Server
Open Menu
 Dashboards
    <+ Create dashboard>
      <+ Add visualization>
        Select data source: wsvaamonde Default (Zabbix Server)
          #gráfico de utilização da CPU
          Edite query name: CPU
            Query type: Metrics
            Group: Zabbix servers
            Host: wsvaamonde
            Item tag: component: cpu
            Item: CPU utilization
          #gráfico de utilização da RAM
            Edite query name: CPU
              Query type: Metrics
              Group: Zabbix servers
              Host: wsvaamonde
              Item tag: component: memory
              Item: Memory utilization
          #gráfico de utilização do HARD DISK
            Edite query name: CPU
              Query type: Metrics
              Group: Zabbix servers
              Host: wsvaamonde
              Item tag: component: storage
              Item: Disk utilization
          #gráfico de utilização da NETWORK
            Edite query name: CPU
              Query type: Metrics
              Group: Zabbix servers
              Host: wsvaamonde
              Item tag: component: enp0s3
              Item: Interface enp0s3: Bits received
              Item: Interface enp0s3: Bits sent
```

## 14_ Estressando o Servidor Ubuntu Server para verificar as mudanças no Gráfico (NÃO COMENTADO NO VÍDEO)
```bash
#instalando o software stress-ng e s-tui no Ubuntu Server (NÃO COMENTADO NO VÍDEO)
#opção do comando apt: install (install is followed by one or more package names)
sudo apt install stress-ng s-tui

#verificando a versão do stress-ng e do s-tui (NÃO COMENTADO NO VÍDEO)
sudo stress-ng --version
sudo s-tui --version

#verificando a carga atual do servidor Ubuntu Server (NÃO COMENTADO NO VÍDEO)
#HORA ATUAL | TEMPO DE ATIVIDADE | NÚMERO DE USUÁRIOS LOGADOS | MÉDIA DE CARGA CPU 1=100% - (1M) (5M) (15M)
sudo uptime

#verificando o desempenho do servidor Ubuntu Server (NÃO COMENTADO NO VÍDEO)
sudo top

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

#parando alguns serviços do Ubuntu Server (NÃO COMENTADO NO VÍDEO)
sudo systemctl stop tomcat11.service mongod.service netdata.service webmin.service

#fazendo uma busca no hard disk utilizando o comando find e grep (NÃO COMENTADO NO VÍDEO)
#opções do comando find: / (root device), -type f (files), -exec (exec command), grep -H 
#'root'(with-filename), {} (path find file), \; (end command execution)
sudo find / -type f -exec grep -H 'root' {} \;

#estressando a CPU utilizando o s-tui
sudo s-tui

#utilizado o modos de Monitoramento e Estresse do s-tui
Modes
  ( ) Monitor (Monitoramento do uso da CPU) <Enter>
  ( ) Stress  (Modo de Stress da CPU) <Enter>

#Saindo do s-tui
Control Options
  <Quit> <Enter>
```

=========================================================================================

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO GRAFANA SE VOCÊ CONSEGUIU IMPLEMENTAR COM A SEGUINTE FRASE: *Implementação do Grafana realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DA IMPLEMENTAÇÃO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DA IMPLEMENTAÇÃO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/12-grafana.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiografana