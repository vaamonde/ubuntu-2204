#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 21/04/2024<br>
#Data de atualização: 26/09/2025<br>
#Versão: 0.12<br>

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO GRAYLOG SE VOCÊ CONSEGUIU IMPLEMENTAR COM A SEGUINTE FRASE: *Implementação do Graylog realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DA IMPLEMENTAÇÃO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DA IMPLEMENTAÇÃO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/15-graylog.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiograylog #desafioopensearch

Conteúdo estudado nessa implementação:<br>
#01_ Instalando as Dependências do Graylog Server no Ubuntu Server;<br>
#02_ Baixando e instalando a Chave GPG do OpenSearch no Ubuntu Server;<br>
#03_ Instalando o OpenSearch no Ubuntu Server;<br>
#04_ Editando o arquivo de configuração do OpenSearch no Ubuntu Server;<br>
#05_ Editando o arquivo de configuração JVM (Java Virtual Machine) do OpenSearch no Ubuntu Server;<br>
#06_ Alterando as opções de inicialização do Kernel do Ubuntu Server;<br>
#07_ Habilitando o Serviço do OpenSearch no Ubuntu Server;<br>
#08_ Verificando o Serviço e Versão do OpenSearch no Ubuntu Server;<br>
#09_ Verificando a Porta de Conexão do OpenSearch no Ubuntu Server;<br>
#10_ Adicionando o Repositório do Graylog Server no Ubuntu Server;<br>
#11_ Instalando o Graylog Server no Ubuntu Server;<br>
#12_ Gerando as senhas das Variáveis: password_secret e root_password_sha2 do Graylog Server no Ubuntu Server;<br>
#13_ Editando o arquivo de configuração do Graylog Server no Ubuntu Server;<br>
#14_ Criando o usuário de autenticação do MongoDB Server no Ubuntu Server;<br>
#15_ Habilitando o Serviço do Graylog Server no Ubuntu Server;<br>
#16_ Verificando o Serviço e Versão do Graylog Server no Ubuntu Server;<br>
#17_ Verificando a Porta de Conexão do Graylog Server no Ubuntu Server;<br>
#18_ Adicionado o Usuário Local nos Grupos do OpenSearch e do Graylog Server no Ubuntu Server;<br>
#19_ Localização dos diretórios e arquivos principais do OpenSearch e do Graylog Server no Ubuntu Server;<br>
#20_ Configurando o Graylog Server via Navegador;<br>
#21_ Exportando os Logs do Rsyslog/Syslog do Ubuntu Server para o Graylog Server;<br>
#22_ Exportando os Logs do Rsyslog/Syslog do Linux Mint e Event Viewer do Windows 10;<br>
#23_ Criando um Input GELF UDP do Windows 10 no Graylog Server;<br>
#24_ Verificando os Logs dos Eventos do Linux Mint e do Microsoft Windows 10.<br>

Site Oficial do Graylog: https://graylog.org/<br>

**O QUE É E PARA QUE SERVER O GRAYLOG:** O Graylog é uma plataforma open-source de gerenciamento e análise de logs usada para coletar, processar, armazenar e visualizar logs de sistemas, servidores, aplicações e redes. Ele é amplamente utilizado para monitoramento de segurança, auditoria e troubleshooting.

**O QUE É E PARA QUE SERVER O NXLOG:** O NXLog é uma ferramenta avançada para coleta, processamento e envio de logs em ambientes Windows, Linux e Unix. Ele é usado para centralizar logs de sistemas, aplicações e dispositivos de rede, oferecendo suporte a diversos formatos e protocolos.

[![Graylog](http://img.youtube.com/vi/_Hp8fuKdfCo/0.jpg)](https://www.youtube.com/watch?v=_Hp8fuKdfCo "Graylog")

Link da vídeo aula: https://www.youtube.com/watch?v=_Hp8fuKdfCo

## 01_ Instalando as Dependências do Graylog Server no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** O GRAYLOG POSSUI AS DEPENDÊNCIAS DO BANCO DE DADOS NO-SQL MONGODB SERVER E DO OPENJDK/OPENJRE, ESSES APLICATIVOS JÁ FORAM INSTALADO NAS ETAPAS: 06 DO TOMCAT SERVER (VERSÃO DO OPENJDK E DO OPENJRE INSTALADO: 21) E NA ETAPA: 08 DO MONGODB SERVER (VERSÃO 8).

```bash
#atualizando as lista do apt
sudo apt update

#instalando as dependências do Graylog Server
#opção da contra barra (\): criar uma quebra de linha no terminal
sudo apt install apt-transport-https software-properties-common git vim wget curl \
gnupg2 uuid-runtime pwgen dirmngr build-essential

#instalando as dependências do OpenJDK e OpenJRE (NÃO COMENTADO NO VÍDEO)
#OBSERVAÇÃO: OpenJDK é uma implementação livre e gratuita da plataforma Java hoje da Oracle
#OBSERVAÇÃO: OpenJRE é um software necessário para que os programas em Java funcionem corretamente.
sudo apt install openjdk-21-jdk openjdk-21-jre
```

## 02_ Baixando e instalando a Chave GPG do OpenSearch no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** No mês de *Maio/2025* foi lançado a versão 3.0.x do OpenSearch conforme link do site Oficial: https://opensearch.org/blog/opensearch-3-0-enhances-vector-database-performance/ - até o momento, a última versão do *Graylog Server 6.3.x/6.4.x* não suporta a nova versão do OpenSearch, sendo necessário ainda instalar a versão 2.x do OpenSearch para o correto funcionamento do servidor, caso você instale a versão 3.x a seguinte mensagem é mostrada no comando: __`sudo journalctl -xeu graylog-server`__

Exception in thread "main" org.graylog2.bootstrap.preflight.PreflightCheckException: Unsupported (Elastic/Open)Search version <OpenSearch:3.0.0>. Supported versions: <[SearchVersionRange{distribution=OpenSearch, expression=^1.0.0}, SearchVersionRange{distribution=OpenSearch, expression=^2.0.0}, SearchVersionRange{distribution=Elasticsearch, expression=^7.0.0}, SearchVersionRange{distribution=Datanode, expression=^5.2.0}]>

```bash
#baixando a chave GPG do OpenSearch (Link atualizado no dia 11/05/2025)
#opção do comando curl: -o- (output file)
#opção do comando gpg: -o (output file)
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
curl -o- https://artifacts.opensearch.org/publickeys/opensearch.pgp | sudo gpg --dearmor --batch --yes -o /usr/share/keyrings/opensearch-keyring

#criando o repositório do OpenSearch (Link atualizado no dia 11/05/2025)
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
echo "deb [signed-by=/usr/share/keyrings/opensearch-keyring] https://artifacts.opensearch.org/releases/bundle/opensearch/2.x/apt stable main" | sudo tee /etc/apt/sources.list.d/opensearch-2.x.list
```

## 03_ Instalando o OpenSearch no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** A versão do OpenSearch >=2.12 e superior agora requer a configuração da *OPENSEARCH_INITIAL_ADMIN_PASSWORD* variável de ambiente durante a instalação. A senha deve ter no mínimo oito caracteres com pelo menos uma letra maiúscula, uma letra minúscula, um número e um caractere especial.

```bash
#atualizando as listas do Apt com o Sources List do OpenSearch
sudo apt update

#instalando o OpenSearch
#opção do comando tr: -d (delete), -c (complement)
#opção do comando head: -c (bytes)
#opção do comando apt: --install-recommends (Consider suggested packages as a dependency for installing)
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
#opção do redirecionador < (menor): Redireciona a entrada padrão (STDIN)
#opção do bloco de agrupamento ${}: Agrupa comandos em um bloco
#opção do bloco de agrupamento $(): Executa comandos numa subshell, retornando o resultado
sudo OPENSEARCH_INITIAL_ADMIN_PASSWORD=$(tr -dc A-Z-a-z-0-9_@#%^-_=+ < /dev/urandom  | head -c${1:-32}) apt install --install-recommends opensearch
```

## 04_ Editando o arquivo de configuração do OpenSearch no Ubuntu Server
```bash
#editando o arquivo de configuração do OpenSearch
sudo vim /etc/opensearch/opensearch.yml

#entrando no modo de edição do editor de texto VIM
INSERT

  #descomentar e alterar o valor da variável cluster.name na linha: 17
  cluster.name: graylog

  #descomentar e alterar o valor da variável node.name na linha: 23
  node.name: wsvaamonde

  #descomentar e alterar o valor da variável network.host na linha: 55
  network.host: 0.0.0.0

  #adicionar as opção abaixo no final do arquivo a partir da linha: 160
  discovery.type: single-node
  action.auto_create_index: false
  plugins.security.disabled: true

#salvar e sair do arquivo
ESC SHIFT : x <Enter>
```

## 05_ Editando o arquivo de configuração JVM (Java Virtual Machine) do OpenSearch no Ubuntu Server
```bash
#editando o arquivo de configuração JVM (Java Virtual Machine)
sudo vim /etc/opensearch/jvm.options

#entrando no modo de edição do editor de texto VIM
INSERT

  #manter o padrão das configurações do Heap Space a partir da linha: 22
  #padrão do tamanho inicial e máximo da memória do JVM: 1GB
  -Xms1g
  -Xmx1g

#salvar e sair do arquivo
ESC SHIFT : x <Enter>
```

## 06_ Alterando as opções de inicialização do Kernel do Ubuntu Server
```bash
#alterando as opção do Sysctl de memória do JVM
#opção do comando sysctl: -w (write)
sudo sysctl -w vm.max_map_count=262144

#adicionando as informações de memória na inicialização do Kernel
#opção do comando tee: -a (append)
#opção do redirecionador | (pipe): Conecta a saída padrão com a entrada padrão de outro comando
echo 'vm.max_map_count=262144' | sudo tee -a /etc/sysctl.conf
```

## 07_ Habilitando o Serviço do OpenSearch no Ubuntu Server
```bash
#habilitando o serviço do OpenSearch
sudo systemctl daemon-reload
sudo systemctl enable opensearch
sudo systemctl restart opensearch
```

## 08_ Verificando o Serviço e Versão do OpenSearch no Ubuntu Server
```bash
#verificando o serviço do OpenSearch
sudo systemctl status opensearch
sudo systemctl restart opensearch
sudo systemctl stop opensearch
sudo systemctl start opensearch

#analisando os Log's e mensagens de erro do Servidor do OpenSearch
#opção do comando journalctl: -x (catalog), -e (pager-end), -u (unit)
sudo journalctl -xeu opensearch
```

**OBSERVAÇÃO IMPORTANTE:** Por que sempre é necessário verificar a versão do serviço de rede que você está implementando ou configurando no Servidor Ubuntu Server, devido as famosas falhas de segurança chamadas de: *CVE (Common Vulnerabilities and Exposures)*, com base na versão utilizada podemos pesquisar no site do **Ubuntu Security CVE Reports:** https://ubuntu.com/security/cves as falhas de segurança encontradas e corrigidas da versão do nosso aplicativo, o que ela afeta, se foi corrigida e como aplicar a correção.

```bash
#verificando a versão do OpenSearch via Terminal ou Navegador
#opção do comando curl: -X (request method), GET (method)
curl -X GET "http://localhost:9200"

#verificando os plugins habilitados por padrão do OpenSearch via Terminal ou Navegador
#opção do comando curl: -X (request method), GET (method)
curl -X GET http://localhost:9200/_cat/plugins?v

#acessar via navegador o OpenSearch
firefox ou google chrome: http://endereço_ipv4_ubuntuserver:9200
```

## 09_ Verificando a Porta de Conexão do OpenSearch no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** no Ubuntu Server as Regras de Firewall utilizando o comando: __` iptables `__ ou: __` ufw `__ está desabilitado por padrão **(INACTIVE)**, caso você tenha habilitado algum recurso de Firewall é necessário fazer a liberação do *Fluxo de Entrada (INPUT), Porta (PORT) e Protocolo (PROTOCOL) TCP* do Serviço corresponde nas tabelas do firewall e testar a conexão.

```bash
#verificando a porta padrão TCP-9200 do OpenSearch
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'9200' -sTCP:LISTEN
```

## 10_ Adicionando o Repositório do Graylog Server no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** o executável e os arquivos de configuração do *Graylog* sofre alteração o tempo todo, sempre acessar o projeto do Graylog para verificar a última versão do software no Link: https://packages.graylog2.org/packages

```bash
#baixando o repositório do Graylog Server (Link atualizado no dia 11/05/2025)
wget https://packages.graylog2.org/repo/packages/graylog-6.3-repository_latest.deb

#instalando o repositório do Graylog
#opção do comando dpkg: -i (install)
sudo dpkg -i graylog-*.deb
```

## 11_ Instalando o Graylog Server no Ubuntu Server
```bash
#atualizando as listas do Apt com o Sources List do Graylog Server
sudo apt update

#instalando o Graylog Server
#opção do comando apt: --install-recommends (Consider suggested packages as a dependency for installing)
sudo apt install --install-recommends graylog-server
```

## 12_ Gerando as senhas das Variáveis: password_secret e root_password_sha2 do Graylog Server no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** COPIAR A SENHA GERADA NO BLOCO DE NOTAS PARA ALTERAR NAS CONFIGURAÇÕES DAS VARIÁVEIS DO GRAYLOG SERVER NAS PRÓXIMAS ETAPAS.

```bash
#gerando a senha aleatório da variável: password_secret
#opção do comando tr: -d (delete), -c (complement)
#opção do comando head: -c (bytes)
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
#opção do redirecionador < (menor): Redireciona a entrada padrão (STDIN)
#opção do bloco de agrupamento $(): Executa comandos numa subshell, retornando o resultado
< /dev/urandom tr -dc A-Z-a-z-0-9 | head -c${1:-96};echo;

#gerando a senha aleatório da variável: root_password_sha2
#opção do comando echo: -n (do not output the trailing newline)
#opção do comando head: -1 (lines)
#opção do comando tr: -d (delete)
#opção do comando cut: -d (delimiter), -f (fields)
#opção do redirecionador | (pipe): Conecta a saída padrão com a entrada padrão de outro comando
#opção do redirecionador < (menor): Redireciona a entrada padrão (STDIN)
echo -n "Enter Password: " && head -1 </dev/stdin | tr -d '\n' | sha256sum | cut -d" " -f1
  Enter Password: sua_senha
```

## 13_ Editando o arquivo de configuração do Graylog Server no Ubuntu Server
```bash
#editando o arquivo de configuração do Graylog
sudo vim /etc/graylog/server/server.conf

#entrando no modo de edição do editor de texto VIM
INSERT

  #copiar e colar a senha da variável password_secret na linha: 57
  password_secret = COLAR_SUA_SENHA_GERADA

  #copiar e colar a senha da variável root_password_sha2 na linha: 68
  root_password_sha2 = COLAR_SUA_SENHA_GERADA

  #descomentar a alterar o valor da variável root_timezone na linha: 76
  #OBSERVAÇÃO: CUIDADO COM ESSA VARIÁVEL, O SISTEMA JÁ FOI CONFIGURADO COM O UTC
  #America / São Paulo no inicio da configuração do Ubuntu Server.
  root_timezone = America/Sao_Paulo

  #descomentar e alterar o valor da variável http_bind_address na linha: 104
  http_bind_address = 0.0.0.0:9000

  #descomentar e alterar o valor da variável elasticsearch_hosts na linha: 193
  elasticsearch_hosts = http://172.16.1.20:9200

  #alterando o valor da variável mongodb_uri na linha: 578
  #OBSERVAÇÃO IMPORTANTE: nesse cenário a conexão com o MongoDB está sendo feita
  #utilizando usuário e senha.
  mongodb_uri = mongodb://graylog:graylog@localhost:27017/graylog

#salvar e sair do arquivo
ESC SHIFT : x <Enter>
```

## 14_ Criando o usuário de autenticação do MongoDB Server no Ubuntu Server
```bash
#acessando o MongoDB Shell
#opção do comando mongosh: admin (database) -u (username), -p (password)
sudo mongosh admin -u admin -p

#criando a base de dados Graylog Server
use graylog;
```
```json
//criando o usuário e senha de acesso a base de dados do Graylog Server
db.createUser({
  "user": "graylog",
  "pwd": "graylog",
  "roles" : [
  { role: 'root', db: 'admin' }
  ]
})
```
```bash
#verificando o usuário criado no MongoDB
db.getUser("graylog")

#saindo do MongoDB
quit
```

## 15_ Habilitando o Serviço do Graylog Server no Ubuntu Server
```bash
#habilitando o serviço do Graylog Server
sudo systemctl daemon-reload
sudo systemctl enable graylog-server
sudo systemctl restart graylog-server
```

## 16_ Verificando o Serviço e Versão do Graylog Server no Ubuntu Server
```bash
#verificando o serviço do Graylog Server
sudo systemctl status graylog-server
sudo systemctl restart graylog-server
sudo systemctl stop graylog-server
sudo systemctl start graylog-server

#analisando os Log's e mensagens de erro do Servidor do Graylog Server
#opção do comando journalctl: -x (catalog), -e (pager-end), -u (unit)
sudo journalctl -xeu graylog-server
```

**OBSERVAÇÃO IMPORTANTE:** Por que sempre é necessário verificar a versão do serviço de rede que você está implementando ou configurando no Servidor Ubuntu Server, devido as famosas falhas de segurança chamadas de: *CVE (Common Vulnerabilities and Exposures)*, com base na versão utilizada podemos pesquisar no site do **Ubuntu Security CVE Reports:** https://ubuntu.com/security/cves as falhas de segurança encontradas e corrigidas da versão do nosso aplicativo, o que ela afeta, se foi corrigida e como aplicar a correção.

```bash
#verificando a versão do Graylog Server
#opção do comando grep: - i (ignore-case)
#opção do redirecionador | (pipe): Conecta a saída padrão com a entrada padrão de outro comando
sudo apt list | grep -i graylog
```

## 17_ Verificando a Porta de Conexão do Graylog Server no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** no Ubuntu Server as Regras de Firewall utilizando o comando: __` iptables `__ ou: __` ufw `__ está desabilitado por padrão **(INACTIVE)**, caso você tenha habilitado algum recurso de Firewall é necessário fazer a liberação do *Fluxo de Entrada (INPUT), Porta (PORT) e Protocolo (PROTOCOL) TCP* do Serviço corresponde nas tabelas do firewall e testar a conexão.

```bash
#verificando a porta padrão TCP-9000 do Graylog Server
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'9000' -sTCP:LISTEN
```

## 18_ Adicionado o Usuário Local nos Grupos do OpenSearch e do Graylog Server no Ubuntu Server
```bash
#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
sudo usermod -a -G opensearch $USER
sudo usermod -a -G graylog $USER
newgrp graylog
id

#recomendo fazer logout do usuário para testar as permissões de grupos
#OBSERVAÇÃO: você pode utilizar o comando: exit ou tecla de atalho: Ctrl +D
exit
```

## 19_ Localização dos diretórios e arquivos principais do OpenSearch e do Graylog Server no Ubuntu Server
```bash
/etc/opensearch/*                <-- Diretório das configurações do OpenSearch
/etc/opensearch/opensearch.yml   <-- Arquivo de configuração do Serviço do OpenSearch
/etc/opensearch/jvm.options      <-- Arquivo de configuração do JVM do OpenSearch
/etc/graylog/*                   <-- Diretório das configurações do Graylog Server
/etc/graylog/server/server.conf  <-- Arquivo de configuração do Graylog Server
/var/log/opensearch/*            <-- Diretório dos Logs do OpenSearch
/var/log/graylog/*               <-- Diretório dos Logs do Graylog Server
```

## 20_ Configurando o Graylog Server via Navegador
```bash
#acessar via navegador o Graylog
firefox ou google chrome: http://endereço_ipv4_ubuntuserver:9000

Welcome to Graylog
  Username: admim
  Password: pti@2018
<Sign In>
```

## 21_ Exportando os Logs do Rsyslog/Syslog do Ubuntu Server para o Graylog Server
```bash
#criando um Input no Graylog Server
Welcome
  System
    Inputs
      Select input: Syslog UDP <Launch new input>

#configurando o Input do Syslog UDP
Launch new Syslog UDP input
  Node: XXXX/wsvaamonde.pti.intra
  Title: wsvaamonde
  Bind Address: 172.16.1.20
  Port: 1514
  Encoding (optional): UTF-8
<Launch Input>

#verificando a porta de conexão do Input do Graylog
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address)
sudo lsof -nP -iUDP:'1514'

#configurando a exportação dos Logs do Rsyslog para o Graylog
#verificando o status de serviço do Rsyslog
sudo systemctl status rsyslog

#criando o arquivo de exportação dos Logs
sudo vim /etc/rsyslog.d/70-graylog.conf

#entrando no modo de edição do editor de texto VIM
INSERT

  #copiar a colar a exportação dos Logs do Rsyslog para o Graylog
  *.* @172.16.1.20:1514;RSYSLOG_SyslogProtocol23Format

#salvar e sair do arquivo
ESC SHIFT : x <Enter>

#reiniciar e verificar o serviço do Rsyslog
sudo systemctl restart rsyslog
sudo systemctl status rsyslog
```

## 22_ Exportando os Logs do Rsyslog/Syslog do Linux Mint e Event Viewer do Windows 10

**OBSERVAÇÃO IMPORTANTE:** NESSE CENÁRIO VOU UTILIZAR O MESMO INPUT DO SYSLOG UDP CONFIGURADO NO GRAYLOG SERVER, O CORRETO É CRIAR UM NOVO INPUT PARA CADA SERVER OU SERVIÇO DE REDE QUE VOCÊ ESTÁ OBTENDO OS LOGS.

### Exportando dos Logs do GNU/Linux Mint para o Graylog Server

```bash
#configurando a exportação dos Logs do Rsyslog do Linux Mint para o Graylog
#verificando o status de serviço do Rsyslog
sudo systemctl status rsyslog

#criando o arquivo de exportação dos Logs
sudo vim /etc/rsyslog.d/70-graylog.conf

#entrando no modo de edição do editor de texto VIM
INSERT

  #copiar a colar a exportação dos Logs do Rsyslog para o Graylog
  *.* @172.16.1.20:1514;RSYSLOG_SyslogProtocol23Format

#salvar e sair do arquivo
ESC SHIFT : x <Enter>

#reiniciar e verificar o serviço do Rsyslog
sudo systemctl restart rsyslog
sudo systemctl status rsyslog
```

### Exportando dos Logs do Microsoft Windows para o Graylog Server
```bash
#configurando a exportação dos Logs do Event Viewer do Windows 10 para o Graylog
#baixando o software NXLog-CE (Community Edition) do site oficial:
Link de download: https://nxlog.co/downloads/nxlog-ce#nxlog-community-edition
  Available Downloads
    Version: NXLog Community Edition
    Platform: Windows
    #download da versão atualizada em: 26/09/2025
    Windows: Windows x86-64 (nxlog-ce-3.2.2329.msi)
  <Download>
  <No thanks, just starts my download>

#instalando o NXLog-CE no Windows 10
Download
  Executar o software: nxlog-ce-*.msi
  Welcome to the NXLog-CE Setup Wizard: <Next>
  End-User License Agreement: (ON) I Accept the terms in the License Agreement <Next>
  Destination Folder: Default <Next>
  Ready to install NXLog-CE: <Install>
    Controle de Conta do Usuário: <Sim>
  Completed the NXLog-CE Setup Wizard: <Finish>
```

**OBSERVAÇÃO IMPORTANTE:** fazer a instalação do *NXLog-CE Windows* utilizando o *Powershell* em modo: **Executar como Administrador**.

```bash
#editando o arquivo de configuração do NXLog-CE via Powershell
Menu
  Powershell 
    Clicar com o botão direito do mouse e selecionar: Executar como Administrador

#acessando o diretório de configuração do NXLog-CE
cd 'C:\Program Files\nxlog\conf\'

#editando o arquivo de configuração do NXLog-CE
notepad.exe .\nxlog.conf

#copiar e colar o bloco de configuração abaixo no final do arquivo nxlog.conf
```
```xml
#Habilitando o Módulo GELF (Graylog Extended Log Format) do NXLog-CE
<Extension gelf>
    Module      xm_gelf
</Extension>

#Exemplo de configuração compatível com a caixa de Coleta dos Logs de Eventos
<Input in>
   Module      im_msvistalog
    ReadFromLast FALSE
    SavePos     FALSE
    Query       <QueryList>\
                    <Query Id="0">\
                        <Select Path="Application">*</Select>\
                        <Select Path="System">*</Select>\
                        <Select Path="Security">*</Select>\
                    </Query>\
                </QueryList>
</Input>

#Convertendo os eventos e transmitindo via UDP para o Graylog
<Output out>
    Module      om_udp
    Host        172.16.1.20
    Port        12201
    OutputType  GELF
</Output>

#Configuração da Rota de entrada 'in' e saída 'out'
<Route 1>
    Path        in => out
</Route>
```
```bash
#fechar e salvar as mudanças do arquivo
<Fechar>
  <Salvar>
  <Sair>

#testando o arquivo de configuração do NXLog-CE
..\nxlog.exe -v

#reiniciar e verificar o serviço do NXLog-CE
Restart-Service nxlog
Get-Service nxlog
```

## 23_ Criando um Input GELF UDP do Windows 10 no Graylog Server
```bash
#criando um Input GELF (Graylog Extended Log Format) UDP no Graylog Server
Welcome
  System
    Inputs
      Select input: GELF UDP <Launch new input>

#configurando o Input do GELF UDP
Launch new GELF UDP input
  Node: XXXX/wsvaamonde.pti.intra
  Title: windows10
  Bind Address: 172.16.1.20
  Port: 12201
  Encoding (optional): UTF-8
<Launch Input>

#verificando a porta de conexão do Input do Graylog
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address)
sudo lsof -nP -iUDP:'12201'
```

## 24_ Verificando os Logs dos Eventos do Linux Mint e do Microsoft Windows 10
```bash
Graylog
  Search
    Select time range: 30 minutes
    (Play) Every 1 second

Graylog
  Dashboard
    Sources
      Select time range: 30 minutes
      (Play) Every 1 second
```

=========================================================================================

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO GRAYLOG SE VOCÊ CONSEGUIU IMPLEMENTAR COM A SEGUINTE FRASE: *Implementação do Graylog realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DA IMPLEMENTAÇÃO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DA IMPLEMENTAÇÃO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/15-graylog.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiograylog #desafioopensearchh