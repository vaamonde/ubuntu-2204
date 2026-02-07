#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 19/01/2023<br>
#Data de atualização: 13/01/2026<br>
#Versão: 0.35<br>

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO TOMCAT SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do Tomcat11 realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/06-tomcat.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiotomcat #desafiojava

Conteúdo estudado nesse desafio:<br>
#01_ Instalando as Dependências do Apache Tomcat Server no Ubuntu Server;<br>
#02_ Verificando as Versões do Java OpenJDK e OpenJRE instalado no Ubuntu Server;<br>
#03_ Download do Apache Tomcat Server 11.x do site Oficial no Ubuntu Server;<br>
#04_ Descompactando e instalando o Apache Tomcat 11.x no Ubuntu Server;<br>
#05_ Atualizando os arquivos de configuração do Apache Tomcat Server 11.x no Ubuntu Server;<br>
#06_ Criando o Usuário de Serviço do Apache Tomcat Server 11.x no Ubuntu Server;<br>
#07_ Alterando as Permissões do Diretório do Apache Tomcat Server 11.x no Ubuntu Server;<br>
#08_ Habilitando o Serviço do Apache Tomcat Server 11.x no Ubuntu Server;<br>
#09_ Verificando o Serviço e Versão do Apache Tomcat Server 11.x no Ubuntu Serve;<br>
#10_ Verificando a Porta de Conexão do Apache Tomcat Server 11.x no Ubuntu Server;<br>
#11_ Localização dos Arquivos de Configuração do Apache Tomcat Server no Ubuntu Server;<br>
#12_ Adicionado o Usuário Local no Grupo Padrão do Apache Tomcat Server no Ubuntu Server;<br>
#13_ Editando o arquivo de configuração de usuários do Apache Tomcat Server no Ubuntu Server;<br>
#14_ Testando o acesso ao Apache Tomcat Server no navegador;<br>
#15_ Administrando o Apache Tomcat Server via navegador;<br>
#16_ Conhecendo as opções de gerenciamento do Apache Tomcat Server via navegador;<br>
#17_ Desafios do Servidor de Aplicação Apache Tomcat Server.<br>

Site Oficial do Apache2: https://httpd.apache.org/<br>
Site Oficial do Apache Tomcat: https://tomcat.apache.org/<br>
Site Oficial do OpenJDK: https://openjdk.org/<br>
Site Oficial do Java: https://www.java.com/pt-BR/

**Site Oficial do W3C (World Wide Web Consortium) School**<br>
Site Oficial do W3C School HTML5: https://www.w3schools.com/html/default.asp<br>
Site Oficial do W3C School CSS5: https://www.w3schools.com/css/default.asp<br>
Site Oficial do W3C School JavaScript: https://www.w3schools.com/js/default.asp<br>
Site Oficial do W3C School Java24: https://www.w3schools.com/java/default.asp<br>
Site Oficial do W3C School XML: https://www.w3schools.com/xml/

**Sites de IA (Inteligência Artificial) indicados para os Desafios**<br>
OpenAI ChatGPT: https://chatgpt.com<br>
Microsoft Copilot: https://copilot.microsoft.com<br>
Google Gemini: https://gemini.google.com<br>
DeepSeek: https://chat.deepseek.com/<br>
x.AI Grok: https://grok.com/<br>
Perplexity: https://www.perplexity.ai/<br>

**PERGUNTA PARA A IA**

> **Prompt-01:** qual a melhor plataforma de software e sistema operacional para fazer o Deploy de uma 
aplicação desenvolvida em Eclipse utilizando o JavaEE?

> **Prompt-02:** quais as principais Big Techs no Brasil e no mundo que utiliza o JAVA e Apache Tomcat?

**O QUE É E PARA QUE SERVER O APACHE TOMCAT SERVER:** O *Apache Tomcat* é um servidor web Java, mais especificamente, um container de servlets. O Tomcat implementa, dentre outras de menor relevância, as tecnologias Java Servlet e JavaServer Pages e não é um container Enterprise JavaBeans. Desenvolvido pela Apache Software Foundation, é distribuído como software livre.

**O QUE É E PARA QUE SERVER O OPENJDK:** O *OpenJDK (Open Java Development Kit)* é uma implementação de código aberto da plataforma Java Standard Edition (Java SE). Ele inclui o *compilador Java (javac), a máquina virtual Java (JVM) e as bibliotecas padrão*, permitindo o desenvolvimento e execução de aplicativos Java.

**O QUE É E PARA QUE SERVER O OPENJRE:** O *OpenJRE (Open Java Runtime Environment)* é uma implementação de código aberto do *Java Runtime Environment (JRE)*, baseada no OpenJDK. O OpenJRE é utilizado para executar aplicações Java, mas *não inclui o compilador (javac)* e outras ferramentas de desenvolvimento. Ele contém apenas a *Máquina Virtual Java (JVM) e as bibliotecas* necessárias para rodar programas Java já compilados.

**O QUE É E PARA QUE SERVER O XML:** O *XML (eXtensible Markup Language)* é uma linguagem de marcação criada para armazenar e transportar dados de forma estruturada e legível por humanos e máquinas. Não é uma linguagem de programação, e sim uma forma padronizada de organizar informações usando tags (semelhante ao HTML, mas com foco em dados, não visual).

[![Apache TomCAT](http://img.youtube.com/vi/TcC7cijfub0/0.jpg)](https://www.youtube.com/watch?v=TcC7cijfub0 "Apache TomCAT")

Link da vídeo aula: https://www.youtube.com/watch?v=TcC7cijfub0

## 01_ Instalando as Dependências do Apache Tomcat Server no Ubuntu Server

> **OBSERVAÇÃO IMPORTANTE:** no Ubuntu Server 22.04.x temos as versões disponíveis do **OpenJDK** e do **OpenJRE**:* 8, 11, 17, 18, 19, 21 e 25*, cuidado na versão do Java que você está usando no seu projeto e a compatibilidade de versão do *Apache TomCAT* em relação ao *OpenJDK (Java Development Kit) e OpenJRE (Java Runtime Environment)*.

```bash
#atualizando as lista do apt
#opção do comando apt: update (Resynchronize the package index files from their sources)
sudo apt update

#instalando as dependências do Java OpenJDK e OpenJRE utilizadas no Apache Tomcat
#opção do comando apt: install (install is followed by one or more package names)
#OBSERVAÇÃO: OpenJDK é uma implementação livre e gratuita da plataforma Java hoje da Oracle
#OBSERVAÇÃO: OpenJRE é um software necessário para que os programas em Java funcionem corretamente.
sudo apt install git vim openjdk-25-jdk openjdk-25-jre software-properties-common build-essential
```

## 02_ Verificando as Versões do Java OpenJDK e OpenJRE instalado no Ubuntu Server
```bash
#verificando a versão do Java instalado no Ubuntu Server
sudo java -version

#verificando as versões do OpenJDK (JDK/JRE) instalados no Ubuntu Server
#opção do comando apt: list (display a list of packages), --installed (packages installed)
#opção do comando grep: -i (ignore-case)
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
sudo apt list --installed | grep -i openjdk

#listando os caminhos das instalações de Java (Binário) no Ubuntu Server
sudo update-alternatives --list java

#listando as instalações completas de JDK/JRE (Prioridade) no Ubuntu Server
sudo update-java-alternatives --list
```

## 03_ Download do Apache Tomcat Server 11.x do site Oficial no Ubuntu Server

> **OBSERVAÇÃO IMPORTANTE:** recomendo que o procedimento abaixo seja feito utilizando o usuário: __`root`__ do Ubuntu Server para facilitar a instalação e configuração do *Apache Tomcat Server 11.x*.

Link Oficial das versões do Apache Tomcat Server: https://dlcdn.apache.org/tomcat/

> **OBSERVAÇÃO IMPORTANTE:** EM OUTUBRO DE 2024 FOI ANUNCIADO A VERSÃO 11.x DO APACHE TOMCAT, EM ABRIL DE 2025 A VERSÃO 11.0.6 FOI LANÇADA COM VÁRIAS CORREÇÕES SE TORNANDO UMA VERSÃO ESTÁVEL PARA IMPLEMENTAÇÃO, APÓS TODOS OS TESTES FEITO NA NOVA VERSÃO DO APACHE TOMCAT, ESSA DOCUMENTAÇÃO FOI ATUALIZADA PARA A VERSÃO MAIS RECENTE DO APACHE TOMCAT (ATUAL 13/06/2026: 11.0.15), MAIS INFORMAÇÕES ACESSE O LINK OFICIAL DO APACHE TOMCAT EM: https://tomcat.apache.org/tomcat-11.0-doc/changelog.html


```bash
#mudando para o usuário Root do Ubuntu Server
#opção do comando sudo: -i (login)
sudo -i

#download da última versão do Apache Tomcat Server (link atualizado em 31/12/2025)
#OBSERVAÇÃO IMPORTANTE: o tempo todo o Apache Tomcat Server sofre alteração, antes
#de fazer o download do arquivo verifique a versão no link: https://dlcdn.apache.org/tomcat/
#opção do comando wget: -v (verbose), -O (output file)
wget -v -O /tmp/tomcat11.tar.gz https://dlcdn.apache.org/tomcat/tomcat-11/v11.0.15/bin/apache-tomcat-11.0.15.tar.gz
```

## 04_ Descompactando e instalando o Apache Tomcat 11.x no Ubuntu Server
```bash
#descompactando o download do arquivo do Apache Tomcat
#opção do comando tar: -x (extract), -z (gzip), -v (verbose), -f (file), -C (directory)
tar -xzvf /tmp/tomcat11.tar.gz -C /tmp

#movendo o conteúdo do diretório do Apache Tomcat para o diretório /opt
#opção do comando mv: -v (verbose)
mv -v /tmp/apache-tomcat* /opt/tomcat
```

## 05_ Atualizando os arquivos de configuração do Apache Tomcat Server 11.x no Ubuntu Server
```bash
#download dos principais arquivos de configuração do Apache Tomcat Server
#opção do comando wget: -v (verbose), -O (output file)

#PRIMEIRO: download do arquivo de configuração do Servidor Apache Tomcat
wget -v -O /opt/tomcat/conf/server.xml https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/server.xml

#SEGUNDO: download do arquivo de configuração dos Usuários do Apache Tomcat
wget -v -O /opt/tomcat/conf/tomcat-users.xml https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/tomcat-users.xml

#TERCEIRO: download do arquivo de configuração do Contexto do Apache Tomcat
#OBSERVAÇÃO IMPORTANTE: NESSE ARQUIVO A PARTIR DA LINHA: 36 FICA TODAS AS LIBERAÇÕES
#DE REDES QUE PODE ACESSAR O SERVIDOR APACHE TOMCAT, FOI ADICIONADO SOMENTE AS REDES
#LOCAIS PRIVADAS CONFORME RFC-1918.
wget -v -O /opt/tomcat/conf/context.xml https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/context.xml

#QUARTO: download do arquivo de configuração do Meta Dados do Contexto Manager do Apache Tomcat
wget -v -O /opt/tomcat/webapps/manager/META-INF/context.xml https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/context.xml

#QUINTO: download do arquivo de configuração do Meta Dados do Contexto Host Manager do Apache Tomcat
wget -v -O /opt/tomcat/webapps/host-manager/META-INF/context.xml https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/context.xml

#SEXTO: download do arquivo de configuração do Meta Dados do Contexto Examples do Apache Tomcat
wget -v -O /opt/tomcat/webapps/examples/META-INF/context.xml https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/context.xml

#SÉTIMO: download do arquivo de configuração do Meta Dados do Contexto Docs do Apache Tomcat
#NÃO COMENTADO OU BAIXADO NO VÍDEO (ADICIONADO DEPOIS PARA CORRIGIR O ERRO DA DOCUMENTAÇÃO)
wget -v -O /opt/tomcat/webapps/docs/META-INF/context.xml https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/context.xml

#OITAVO: download do arquivo de configuração da Inicialização do Apache Tomcat
#OBSERVAÇÃO IMPORTANTE: NESSE ARQUIVO NA LINHA: 11 FICA A CONFIGURAÇÃO DA VERSÃO
#DO OPENJDK UTILIZADO, POR PADRÃO FOI ATUALIZADO PARA A VERSÃO 25.x NO DIA: 13/01/2026
wget -v -O /etc/systemd/system/tomcat11.service https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/tomcat11.service
```

## 06_ Criando o Usuário de Serviço do Apache Tomcat Server 11.x no Ubuntu Server
```bash
#criando o usuário de serviço do Apache Tomcat Server
#opção do comando useradd: -m (create-home), -d (home-dir), -U (user-group), -s (shell)
useradd -m -d /opt/tomcat -U -s /bin/false tomcat
```

## 07_ Alterando as Permissões do Diretório do Apache Tomcat Server 11.x no Ubuntu Server
```bash
#alterando as permissões de dono e grupo do diretório do Apache Tomcat
#opção do comando chown: -R (recursive), -v (verbose), tomcat:tomcat (user and group)
chown -Rv tomcat:tomcat /opt/tomcat

#alterando as permissões de acesso a arquivos e diretórios do Apache Tomcat
#opção do comando chmod: -R (recursive), -v (verbose), u+x (user added execute/search)
chmod -Rv u+x /opt/tomcat/bin
```

## 08_ Habilitando o Serviço do Apache Tomcat Server 11.x no Ubuntu Server
```bash
#habilitando o serviço do Apache Tomcat Server
#opções do comando systemctl: daemon-reload (Reload the systemd manager configuration), 
#enable (Enable one or more units), start (Start (activate) one or more units)
systemctl daemon-reload
systemctl enable tomcat11
systemctl start tomcat11

#saindo do perfil do usuário Root
exit
```

## 09_ Verificando o Serviço e Versão do Apache Tomcat Server 11.x no Ubuntu Server
```bash
#verificando o serviço do Apache Tomcat Server
#opções do comando systemctl: status (runtime status information), restart (Stop and then 
#start one or more units), stop (Stop (deactivate) one or more units), start (Start (activate) 
#one or more units)
sudo systemctl status tomcat11
sudo systemctl restart tomcat11
sudo systemctl stop tomcat11
sudo systemctl start tomcat11

#analisando os Log's e mensagens de erro do Servidor do Tomcat (NÃO COMENTADO NO VÍDEO)
#opção do comando journalctl: x (catalog), e (pager-end), u (unit)
sudo journalctl -xeu tomcat11

#verificando os arquivos de configuração do Apache Tomcat Server (NÃO COMENTADO NO VÍDEO)
sudo bash /opt/tomcat/bin/configtest.sh
```

> **OBSERVAÇÃO IMPORTANTE:** Por que sempre é necessário verificar a versão do serviço de rede que você está implementando ou configurando no Servidor Ubuntu Server, devido as famosas falhas de segurança chamadas de: *CVE (Common Vulnerabilities and Exposures)*, com base na versão utilizada podemos pesquisar no site do **Ubuntu Security CVE Reports:** https://ubuntu.com/security/cves as falhas de segurança encontradas e corrigidas da versão do nosso aplicativo, o que ela afeta, se foi corrigida e como aplicar a correção.

```bash
#verificando a versão do Apache Tomcat Server
sudo bash /opt/tomcat/bin/version.sh
```

## 10_ Verificando a Porta de Conexão do Apache Tomcat Server 11.x no Ubuntu Server

> **OBSERVAÇÃO IMPORTANTE:** no Ubuntu Server as Regras de Firewall utilizando o comando: __` iptables `__ ou: __` ufw `__ está desabilitado por padrão **(INACTIVE)**, caso você tenha habilitado algum recurso de Firewall é necessário fazer a liberação do *Fluxo de Entrada (INPUT), Porta (PORT) e Protocolo (PROTOCOL) TCP* do Serviço corresponde nas tabelas do firewall e testar a conexão.

```bash
#verificando a porta padrão TCP-8080 do Apache Tomcat Server
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'8080' -sTCP:LISTEN
```

## 11_ Localização dos Arquivos de Configuração do Apache Tomcat Server 11.x no Ubuntu Server
```bash
/opt/tomcat                         <-- Diretório de configuração do Apache Tomcat Server
/opt/tomcat/bin                     <-- Diretório do binário (executável) do Apache Tomcat Server
/opt/tomcat/conf                    <-- Diretório das configurações do Apache Tomcat Server
/opt/tomcat/conf/server.xml         <-- Arquivo de configuração do Servidor do Apache Tomcat Server
/opt/tomcat/conf/tomcat-users.xml   <-- Arquivo de configuração dos Usuários do Apache Tomcat Server
/opt/tomcat/conf/context.xml        <-- Arquivo de configuração do Contexto do Apache Tomcat Server
/opt/tomcat/logs                    <-- Diretório dos Logs do Apache Tomcat Server
/opt/tomcat/webapps                 <-- Diretório das Aplicações Web do Apache Tomcat Server
```

## 12_ Adicionado o Usuário Local no Grupo Padrão do Apache Tomcat Server no Ubuntu Server

> **OBSERVAÇÃO IMPORTANTE:** você pode substituir a variável de ambiente: __`$USER`__ pelo nome do usuário existente no sistema para adicionar no Grupo desejado.

```bash
#adicionando o usuário local (logado) no grupo do Apache Tomcat
#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
sudo usermod -a -G tomcat $USER

#fazendo login em um novo grupo do TOMCAT
newgrp tomcat

#verificando os identificadores de usuário e grupos
id

#verificando informações do grupo TOMCAT do Apache Tomcat
#opção do comando getent: group (the database system group)
sudo getent group tomcat

#recomendo fazer logout do usuário para testar as permissões de grupos
#OBSERVAÇÃO: você pode utilizar o comando: exit ou tecla de atalho: Ctrl +D
exit
```

## 13_ Editando o arquivo de configuração de usuários do Apache Tomcat Server no Ubuntu Server
```bash
#editando o arquivo de criação de usuários do Apache Tomcat
sudo vim /opt/tomcat/conf/tomcat-users.xml

#entrando no modo de edição do editor de texto VIM
INSERT
```
```xml
<!-- alterar os valores das variáveis a partir da linha: 30 -->
<!-- Configuração do Usuário, Senha e Papéis de administrador do Servidor Apache Tomcat -->
<!-- Para criar novos usuários no Apache TomCAT Server é só copiar a linha abaixo e colar -->
<!-- na próxima linha alterando o nome, senha e papeis do novo usuário -->
<user username="admin" password="sua_senha" roles="manager-gui,manager,admin-gui,admin,tomcat,role1"/>
```
```bash
#salvar e sair do arquivo
ESC SHIFT : x <Enter>

#verificando os arquivos de configuração do Apache Tomcat Server (NÃO COMENTADO NO VÍDEO)
sudo bash /opt/tomcat/bin/configtest.sh

#reiniciando e verificando o serviço do Apache Tomcat Server
#opções do comando systemctl: status (runtime status information), restart (Stop and then start
#one or more units)
sudo systemctl restart tomcat11
sudo systemctl status tomcat11
```

## 14_ Testando o acesso ao Apache Tomcat Server no Terminal e no Navegador

> **OBSERVAÇÃO:** Tabela de referência dos Códigos do HTTP mais comuns para tester no Terminal ou no Navegador.

| Código | Significado |
| ------ | ----------- |
| **200** | OK (Sucesso) |
| **301** | Moved Permanently (Redirecionamento permanente) |
| **302** | Found (Redirecionamento temporário) |
| **403** | Forbidden (Acesso negado) |
| **404** | Not Found (Não encontrado) |
| **500** | Internal Server Error |

```bash
#testando o acesso as páginas do Apache TomCAT Server (NÃO COMENTADO NO VÍDEO)
#opção do comando curl: -I (Fetch the headers only)
curl -I http://127.0.0.1:8080/
```
```bash
#utilizar os navegadores para testar o acesso ao Apache TomCAT Server
firefox ou google chrome: http://endereço_ipv4_ubuntuserver:8080
```

## 15_ Administrando o Apache Tomcat Server via navegador
```bash
Clique em: Manager App
  Usuário padrão: admin
  Senha padrão..: sua_senha
<Fazer Login>
```

## 16_ Conhecendo as opções de gerenciamento do Apache Tomcat Server via navegador

| Opção | Descrição |
|-------|-----------|
| 🔧 **Server Status** | Exibe informações em tempo real sobre o estado do servidor |
| 📦 **Manager App** | Interface para gerenciar aplicações web implantadas no Tomcat |
| 🏠 **Host Manager** | Permite criar e gerenciar Virtual Hosts diretamente pela interface web |

========================================DESAFIOS=========================================

> **#17_ DESAFIO-01:** FAZER A CRIAÇÃO DE __`02 (DOIS) NOVOS USUÁRIOS`__ PARA ADMINISTRAR O APACHE TOMCAT SERVER, PRIMEIRO USUÁRIO: __`tomcat11`__ (TUDO EM MINÚSCULO) SENHA: __`tomcat11`__, SEGUNDO USUÁRIO: __`seu_nome`__ (TUDO EM MINÚSCULO) SENHA: __`sua_senha`__, MANTENDO O USUÁRIO: __`admin`__ NO APACHE TOMCAT (O APACHE TOMCAT VAI SER ADMINISTRADO POR 03 (TRÊS) USUÁRIOS), TESTAR O ACESSO AO APACHE TOMCAT COM OS USUÁRIOS E VERIFICAR SE ESTÃO TENDO DIREITOS PARA ADMINISTRAR O SERVIDOR. 

> **OBSERVAÇÃO IMPORTANTE:** RECOMENDO UTILIZAR DOIS NAVEGADORES DIFERENTES PARA ESSE TESTE, O USUÁRIO E SENHA DO APACHE TOMCAT GERALMENTE FICA EM CACHE NO NAVEGADOR, VOCÊ PODE UTILIZAR O RECURSO DOS NAVEGADORES: __`Mozilla Firefox - Nova Janela Privada`__, __`Google Chrome - Nova Janela de Navegação Anonima`__ ou __`Microsoft Edge - Nova Janela InPrivate`__ QUE RESOLVE ESSE PROBLEMA.

> **#18: DESAFIO-02:** ADICIONAR O USUÁRIO: __`admin`__ E O SEU: __`seu_usuário`__ NO GRUPO DO APACHE TOMCAT: __`tomcat`__  PARA ADMINISTRAR O APACHE TOMCAT SERVER SEM PRECISAR DO COMANDO SUDO.

=========================================================================================

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO TOMCAT SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do Tomcat11 realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/06-tomcat.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiotomcat #desafiojava