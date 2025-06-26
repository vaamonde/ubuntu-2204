#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 16/01/2023<br>
#Data de atualização: 25/06/2025<br>
#Versão: 0.29<br>

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO APACHE2 SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do Apache2 realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/02-apache2.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafioapache2 #desafioapache

Conteúdo estudado nesse desafio:<br>
#01_ Instalando o Apache2 Server e PHP 8.x no Ubuntu Server;<br>
#02_ Verificando o Serviço e Versão do Apache2 Server e do PHP no Ubuntu Server;<br>
#03_ Verificando a Porta de Conexão do Apache2 Server no Ubuntu Server;<br>
#04_ Localização dos Arquivos de Configuração do Apache2 Server e do PHP 8.x no Ubuntu Server;<br>
#05_ Adicionando o Usuário Local no Grupo Padrão do Apache2 Server no Ubuntu Server;<br>
#06_ Criando um diretório de Teste do HTML e PHP do Apache2 Server no Ubuntu Server;<br>
#07_ Criando páginas HTML e PHP para testar o Apache2 Server no Ubuntu Server;<br>
#08_ Testando o Apache2 Server e o PHP no seu navegador;<br>
#09_ Desafios do Novo Projeto de Site e Usuários do Apache2.<br>

Site Oficial do Apache2: https://httpd.apache.org/<br>
Site Oficial do PHP (7.x ou 8.x): https://www.php.net/

**Site Oficial do W3C (World Wide Web Consortium) School**<br>
Site Oficial do W3C School HTML5: https://www.w3schools.com/html/default.asp<br>
Site Oficial do W3C School CSS5: https://www.w3schools.com/css/default.asp<br>
Site Oficial do W3C School JavaScript: https://www.w3schools.com/js/default.asp<br>
Site Oficial do W3C School PHP8: https://www.w3schools.com/php/default.asp<br>

**Sites de IA (Inteligência Artificial) indicados para os Desafios**<br>
OpenAI ChatGPT: https://chatgpt.com<br>
Microsoft Copilot: https://copilot.microsoft.com<br>
Google Gemini: https://gemini.google.com<br>
DeepSeek: https://chat.deepseek.com/<br>
x.AI Grok: https://grok.com/<br>

**O QUE É E PARA QUE SERVER O APACHE2 SERVER:** O Servidor *HTTP (Hypertext Transfer Protocol)* Apache2 ou Servidor Apache2 ou HTTP Daemon Apache2 ou somente Apache2, é o servidor web livre criado em **1995** por um grupo de desenvolvedores da *NCSA (National Center for Supercomputing Applications)*, tendo como base o servidor web NCSA HTTPd criado por Rob McCool.

**O QUE É E PARA QUE SERVER O HTTP:** O *HTTP (Hyper Text Transfer Protocol)* é um padrão de mensagens que permite a comunicação entre navegadores e servidores web. Ele é a base da internet e é usado para transferir dados, como o conteúdo de sites e chamadas de **API (Application Programming Interface)**, utiliza o *Protocolo TCP (Transmission Control Protocol) na porta Padrão 80*.

**O QUE É E PARA QUE SERVER O HTTPS:** O *HTTPS (Hyper Text Transfer Protocol Secure)* é uma versão segura do protocolo HTTP. Ele é usado para criptografar a comunicação entre um site e um navegador web, utiliza o *Protocolo TCP (Transmission Control Protocol) na porta Padrão 443*.

**O QUE É E PARA QUE SERVER O HTML:** O *HTML (Hypertext Markup Language)* é uma linguagem de marcação utilizada na construção de páginas na Web. Documentos HTML podem ser interpretados por navegadores. A tecnologia é fruto da junção entre os padrões **HyTime e SGML**. HyTime é um padrão para a representação estruturada de hipermídia e conteúdo baseado em tempo.

**O QUE É E PARA QUE SERVER O CSS:** O *CSS (Cascading Style Sheets)* é um mecanismo para adicionar estilos (cores, fontes, espaçamento, etc.) a uma página web aplicado diretamente nas **tags HTML** ou ficar contido dentro dessas tags. Também é possível, adicionar estilos adicionando um link para um arquivo CSS que contém os estilos.

**O QUE É E PARA QUE SERVER O PHP:** O *PHP (Hypertext Preprocessor, originalmente Personal Home Page)* é uma linguagem interpretada livre, usada originalmente apenas para o desenvolvimento de aplicações presentes e atuantes no lado do servidor, capazes de gerar **conteúdo dinâmico** na World Wide Web (WWW).

**O QUE É E PARA QUE SERVER O FULL-STACK:** O termo *Full-Stack* se refere a um **Profissional (ou conjunto de tecnologias)** que atua tanto no *Back-End* quanto no *Front-End* de uma aplicação. Ou seja, é *alguém capaz de desenvolver uma aplicação completa*, desde o visual (interface do usuário) até a lógica interna, banco de dados e servidor.

**O QUE É E PARA QUE SERVER O DEVOPS:** O termo *DevOps* é a união das palavras **Dev (Desenvolvimento) + Ops (Operações/Infraestrutura)**, e representa uma *Cultura de Integração* entre equipes de *Desenvolvimento e Infraestrutura*. O objetivo do **DevOps** é: *automatizar, agilizar e melhorar todo o ciclo de vida de software*: **do código à produção**, com foco em entrega contínua, qualidade, segurança e colaboração.

[![Apache2 Server](http://img.youtube.com/vi/p6fnF1fZ1j4/0.jpg)](https://www.youtube.com/watch?v=p6fnF1fZ1j4 "Apache2 Server")

Link da vídeo aula: https://www.youtube.com/watch?v=p6fnF1fZ1j4

## 01_ Instalando o Apache2 Server e PHP 8.x no Ubuntu Server
```bash
#atualizando as listas do Apt
sudo apt update

#instalando as dependências do Apache2 Server
#opção da contra barra (\): criar uma quebra de linha no terminal
sudo apt install git vim perl python2 python3 unzip pwgen xz-utils bzip2 curl ghostscript zlib1g \
zlib1g-dev apt-transport-https
```

**OBSERVAÇÃO IMPORTANTE:** POR MOTIVO DE COMPATIBILIDADE, FOI REMOVIDO A *NUMERAÇÃO DA VERSÃO DO PHP* DESSE PROCEDIMENTO, TODO O CENÁRIO IRÁ INSTALAR SEMPRE A ÚLTIMA VERSÃO DISPONÍVEL NO UBUNTU SERVER, VERSÃO ATUALIZADA DO PHP NO UBUNTU SERVER 22.04: **8.1 (ATUALIZADO EM: 26/09/2024)**.

**OBSERVAÇÃO IMPORTANTE:** FOI ADICIONAR MAIS *DEPENDÊNCIAS DOS PACOTES DO PHP*, CONFORME VÁRIOS RELATOS NO GITHUB E NO CANAL DO YOUTUBE DO BORA PARA PRÁTICA, AS DEPENDÊNCIAS DO **WORDPRESS** E DO **GLPI HELP DESK** FORAM ADICIONADAS NESSE PROCEDIMENTO PARA FACILITAR A IMPLEMENTAÇÃO DESSAS FERRAMENTAS, LEMBRANDO QUE NOS PROCEDIMENTOS DE INSTALAÇÃO DESSAS SOLUÇÕES AINDA CONTINUA COM ESSAS DEPENDÊNCIAS.

```bash
#instalando o Apache2 Server, PHP 8.x e suas dependências (SUPORTE EXTRA DE DEPENDÊNCIAS)
#opção da contra barra (\): criar uma quebra de linha no terminal
sudo apt install apache2 apache2-utils apache2-bin apache2-data php php-cli php-common php-mysql \
php-opcache php-readline php-bcmath php-curl php-intl php-mbstring php-xml php-zip php-soap php-json \
php-imagick libapache2-mod-php libapr1 libaprutil1-ldap libaprutil1 libaprutil1-dbd-sqlite3 php-dev \
php-pear libmcrypt-dev php-gd php-imap php-memcache php-pspell php-tidy php-xmlrpc php-ldap php-cas \
php-apcu xmlrpc-api-utils php-bz2

#habilitando os módulos do Apache2 Server (NÃO COMENTADO NO VÍDEO)
#opção da contra barra (\): criar uma quebra de linha no terminal
sudo a2enmod cgi alias authz_host deflate dir expires headers mime rewrite autoindex \
negotiation setenvif

#reiniciando o serviço do Apache2 Server
#opções do comando systemctl: restart (Stop and then start one or more units)
sudo systemctl restart apache2
```

## 02_ Verificando o Serviço e Versão do Apache2 Server e do PHP no Ubuntu Server
```bash
#verificando o serviço do Apache2 Server
#opções do comando systemctl: status (runtime status information), restart (Stop and then start one or more units),
#stop (Stop (deactivate) one or more units), start (Start (activate) one or more units), reload (Asks all units 
#listed on the command line to reload their configuration)
sudo systemctl status apache2
sudo systemctl restart apache2
sudo systemctl reload apache2
sudo systemctl stop apache2
sudo systemctl start apache2

#analisando os Log's e mensagens de erro do Servidor do Apache2 (NÃO COMENTADO NO VÍDEO)
#opção do comando journalctl: x (catalog), e (pager-end), u (unit)
sudo journalctl -xeu apache2

#verificando os arquivos de configuração do Apache2 Server (NÃO COMENTADO NO VÍDEO)
#opção do comando apache2ctl: configtest (Run a configuration file syntax test)
sudo apache2ctl configtest 
```

**OBSERVAÇÃO IMPORTANTE:** Por que sempre é necessário verificar a versão do serviço de rede que você está implementando ou configurando no Servidor Ubuntu Server, devido as famosas falhas de segurança chamadas de: *CVE (Common Vulnerabilities and Exposures)*, com base na versão utilizada podemos pesquisar no site do **Ubuntu Security CVE Reports:** https://ubuntu.com/security/cves as falhas de segurança encontradas e corrigidas da versão do nosso aplicativo, o que ela afeta, se foi corrigida e como aplicar a correção.

```bash
#verificando a versão do Apache2 Server
#opção do comando apache2ctl: -V (version)
sudo apache2ctl -V

#verificando a versão do PHP
#opção do comando php: -v (version)
sudo php -v
```

## 03_ Verificando a Porta de Conexão do Apache2 Server no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** no Ubuntu Server as Regras de Firewall utilizando o comando: __` iptables `__ ou: __` ufw `__ está desabilitado por padrão **(INACTIVE)**, caso você tenha habilitado algum recurso de Firewall é necessário fazer a liberação do *Fluxo de Entrada (INPUT), Porta (PORT) e Protocolo (PROTOCOL) TCP* do Serviço corresponde nas tabelas do firewall e testar a conexão.

```bash
#verificando a porta padrão TCP-80 do Apache2 Server
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'80' -sTCP:LISTEN
```

## 04_ Localização dos Arquivos de Configuração do Apache2 Server e do PHP 8.x no Ubuntu Server
```bash
/etc/apache2/                  <-- Diretório de configuração do Apache2 Server
/etc/apache2/apache2.conf      <-- Arquivo de configuração do Apache2 Server
/etc/apache2/ports.conf        <-- Arquivo de configuração das Portas do Apache2 Server
/etc/apache2/sites-available/  <-- Diretório padrão dos Sites Acessíveis do Apache2 Server
/etc/apache2/conf-available/   <-- Diretório padrão das Configurações Acessíveis do Apache2 Server
/etc/php/                      <-- Diretório de configuração do PHP 7.x ou 8.x
/etc/php/8.x/apache2/php.ini   <-- Arquivo de configuração do PHP 8.x do Apache2 Server
/var/www/html/                 <-- Diretório padrão das Hospedagem de Site do Apache2 Server
/var/log/apache2/              <-- Diretório padrão dos Logs do Apache2 Server
```

## 05_ Adicionando o Usuário Local no Grupo Padrão do Apache2 Server no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** você pode substituir a variável de ambiente: __`$USER`__ pelo nome do usuário existente no sistema para adicionar no Grupo desejado.

```bash
#adicionando o usuário local (logado) no grupo do Apache2 Server
#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
sudo usermod -a -G www-data $USER

#fazendo login em um novo grupo do Apache2 Server
newgrp www-data

#verificando os identificadores de usuário e grupos
id

#verificando as informações do grupo WWW-DATA do Apache2 Server
#opção do comando getent: group (the database system group)
sudo getent group www-data

#recomendo fazer logout do usuário para testar as permissões de grupos
#OBSERVAÇÃO: você pode utilizar o comando: exit, logout ou tecla de atalho: Ctrl+D
exit
```

**OBSERVAÇÃO IMPORTANTE:** caso a conexão do SSH trave, você pode utilizar os caracteres de escape para finalizar conexões SSH.

```bash
#forçando um logout/logoff utilizando os caracteres: ~ (til) e . (ponto)
~.
```

## 06_ Criando um diretório de Teste do HTML e PHP do Apache2 Server no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** SEMPRE TRABALHAR COM __`DIRETÓRIOS DE PROJETOS DE SITES`__ QUANDO VOCÊ ESTÁ DESENVOLVENDO APLICAÇÕES UTILIZANDO AS LINGUAGENS __`HTML5, CSS5, JAVASCRIPT, PHP7/8, ETC.`__ DEVIDO A ESTRUTURA DE ARQUIVOS/DIRETÓRIOS QUE SERÃO CRIADOS E CONECTADOS NA CONSTRUÇÃO DO SITE.

**OBSERVAÇÃO IMPORTANTE:** SEMPRE CRIAR ARQUIVOS E DIRETÓRIOS TUDO EM: __`minúsculo`__ NÃO UTILIZAR: __`acentuação, caracteres especiais, espaço em branco, etc`__ CRIAR ARQUIVOS E DIRETÓRIOS COM NOMES __`pequenos e objetivos`__. LEMBRE-SE QUE O GNU/LINUX É: __`CASE SENSITIVE`__.

```bash
#acessando o diretório padrão dos Sites do Apache2 Server (DocumentRoot)
cd /var/www/html

#criando o diretório de teste das páginas HTML e PHP
#opção do comando mkdir: -v (verbose)
sudo mkdir -v teste

#alterando as permissões do diretório de teste
#opção do comando chmod: -R (recursive), -v (verbose), 2775 (Set-GID=2,User=RWX,Group=RWS,Other=R-X)
#opções das permissões: R (read), W (write), X (execute), S (Set-Group ID)
sudo chmod -Rv 2775 teste/

#alterando o dono e grupo do diretório de teste
#opção do comando chown: -R (recursive), -v (verbose), root (User), . (separate), www-date (group)
sudo chown -Rv root.www-data teste/

#listando o diretório criado do site teste
#opção do comando ls: -l (long listing), -h (human-readable)
ls -lh

#acessando o diretório criado do site teste
cd teste
```

## 07_ Criando páginas HTML e PHP para testar o Apache2 Server no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** nesse exemplo vamos editar os arquivos: *teste.html, teste.php e phpinfo.php* utilizando o Editor de Texto em Linha de Comando: __`vim`__.

**OBSERVAÇÃO IMPORTANTE:** no Microsoft Windows utilizando o *Powershell* no processo de copiar e colar o código HTML ou PHP ele desconfigura o código, recomendo utilizar no Windows o software **PuTTY ou Git Bash** para editar os códigos ou copiar e colar. No Linux Mint e macOS essa falha não acontece.

**OBSERVAÇÃO:** tanto no Microsoft Windows como no GNU/Linux (Linux Mint, Ubuntu Desktop, etc...) ou no macOS recomendo sempre utilizar o *Editor de Texto em Modo Gráfico IDE Microsoft Visual Studio*, por padrão ele já entende toda a codificação: *HTML, PHP, JavaScript, JSON, etc...*, facilitando a criação e modificação dos arquivos desse curso.

```bash
#criando o arquivo em HTML
#OBSERVAÇÃO: ALTERAR O NOME DO ARQUIVO PARA O SEU PRIMEIRO NOME TUDO EM MINÚSCULO
sudo vim seu_nome.html

#entrando no modo de edição do editor de texto VIM
INSERT
```
```html
<!-- Início do código HTML: declaração do tipo de arquivo que será enviado para a navegador -->
<!-- Mais informações acesse: https://www.w3schools.com/tags/tag_doctype.ASP -->
<!DOCTYPE html>
    <!-- Tag HTML: Define a raiz de um documento HTML -->
    <!-- Mais informações acesse: https://www.w3schools.com/tags/tag_html.asp -->
    <html lang="pt-br">
        <!-- Tag HEAD: Define um cabeçalho para um documento ou seção -->
        <!-- Mais informações acesse: https://www.w3schools.com/tags/tag_header.asp -->
        <head>
            <!-- Tag TITLE: Define um título para o documento -->
            <!-- Mais informações acesse: https://www.w3schools.com/tags/tag_title.asp -->
            <title>Teste da Linguagem HTML</title>
            <!-- Tag META: Define metadados sobre um documento HTML -->
            <!-- Mais informações acesse: https://www.w3schools.com/tags/tag_meta.asp -->
            <meta charset="utf-8">
        <!-- Fechamento da Tag: HEAD -->
        </head>
        <!-- Tag BODY: Define o corpo do documento -->
        <!-- Mais informações acesse: https://www.w3schools.com/tags/tag_body.asp -->
        <body>
            <!-- Tag H1: Define títulos HTML -->
            <!-- Mais informações acesse: https://www.w3schools.com/tags/tag_hn.asp -->
            <h1>Teste da Linguagem HTML (HyperText Markup Language)</h1>
            <!-- Tag BR: Define uma única quebra de linha -->
            <!-- Mais informações acesse: https://www.w3schools.com/tags/tag_br.asp -->
            Autor......: Robson Vaamonde<br>
            Editado por: SEU NOME AQUI<br>
            <!-- Tag: A Define um hiperlink -->
            <!-- Mais informações acesse: https://www.w3schools.com/tags/tag_a.asp -->
            LinkedIn...: <a href="https://www.linkedin.com/in/robson-vaamonde-0b029028/">Robson Vaamonde</a><br>
            Site.......: <a href="http://procedimentosemti.com.br/">procedimentosemti.com.br</a><br>
            Facebook...: <a href="https://www.facebook.com/ProcedimentosEmTI"> Procedimentos Em TI</a><br>
            Facebook...: <a href="https://www.facebook.com/BoraParaPratica">Bora Para Pratica</a><br>
            Instagram..: <a href="https://www.instagram.com/procedimentoem/?hl=pt-br">Procedimentos Em TI</a><br>
            YouTube....: <a href="https://www.youtube.com/BoraParaPratica">Bora Para Pratica</a><br>
        <!-- Fechamento da Tag: BODY -->
        </body>
    <!-- Fechamento da Tag: HTML -->
    </html>
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>

#criando o arquivo em PHP
#OBSERVAÇÃO: ALTERAR O NOME DO ARQUIVO PARA O SEU PRIMEIRO NOME TUDO EM MINÚSCULO
sudo vim seu_nome.php

#entrando no modo de edição do editor de texto VIM
INSERT
```
```php
<!DOCTYPE html>
    <html lang="pt-br">
        <head>
            <title>Teste da Linguagem PHP</title>
            <meta charset="utf-8">
        </head>
        <body>
            <!-- Início do script PHP: ?php -->
            <!-- Mais informações acesse: https://www.w3schools.com/php/php_syntax.asp -->
            <?php 
                // Função ECHO: Imprimir uma ou mais strings na saída padrão
                // Mais informações acesse: https://www.w3schools.com/php/func_string_echo.asp
                echo '<h1>Teste da Linguagem HTML (HyperText Markup Language)</h1>';
                echo 'Autor......: Robson Vaamonde<br>';
                echo 'Editado por: SEU NOME AQUI<br>';
                echo 'LinkedIn...: https://www.linkedin.com/in/robson-vaamonde-0b029028/<br>';
                echo 'Site.......: http://procedimentosemti.com.br/<br>';
                echo 'Facebook...: https://www.facebook.com/ProcedimentosEmTI<br>';
                echo 'Facebook...: https://www.facebook.com/BoraParaPratica<br>';
                echo 'Instagram..: https://www.instagram.com/procedimentoem/<br>';
                echo 'YouTube....: https://youtube.com/BoraParaPratica<br>'; 
            // Fechamento do Script PHP
            ?>
        </body>
    </html>
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>

#criando o arquivo de informações do PHP
sudo vim phpinfo.php

#entrando no modo de edição do editor de texto VIM
INSERT
```
```php
<?php
// Função do PHP para gerar a página de documentação e parâmetros do PHP e do Apache2 Server
// Mais informações acesse: https://www.php.net/phpinfo
phpinfo(); 
?>
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>
```

## 08_ Testando o acesso ao Apache2 Server e o PHP no Terminal e no Navegador

**OBSERVAÇÃO:** Tabela de referência dos Códigos do HTTP mais comuns para tester no Terminal ou no Navegador.

| Código | Significado                                     |
| ------ | ----------------------------------------------- |
| 200    | OK (Sucesso)                                    |
| 301    | Moved Permanently (Redirecionamento permanente) |
| 302    | Found (Redirecionamento temporário)             |
| 403    | Forbidden (Acesso negado)                       |
| 404    | Not Found (Não encontrado)                      |
| 500    | Internal Server Error                           |

```bash
#testando o acesso as páginas do Apache2 Server (NÃO COMENTADO NO VÍDEO)
#opção do comando curl: -I (Fetch the headers only)
#saída do comando curl: HTTP/1.1 200 OK (Sucesso total, servidor está respondendo corretamente)
curl -I http://127.0.0.1:80/

#testando o acesso ao diretório de teste do Apache2 Server (NÃO COMENTADO NO VÍDEO)
#opção do comando curl: -I (Fetch the headers only), -L (Reports that the requested page has moved 
#to a different location)
#saída do comando curl: HTTP/1.1 301 Moved Permanently (É um redirecionamento permanente)
#saída do comando curl: HTTP/1.1 200 OK (Sucesso total, servidor está respondendo corretamente)
curl -I -L http://127.0.0.1:80/teste
```
```bash
#utilizar os navegadores para testar as páginas HTML e PHP
firefox ou google chrome: http://endereço_ipv4_ubuntuserver
firefox ou google chrome: http://endereço_ipv4_ubuntuserver/teste/
```

========================================DESAFIOS=========================================

**#09_ DESAFIO-01:** CRIAR UM NOVO DIRETÓRIO NA RAIZ DO APACHE2 EM: __`/var/www/html`__ COM: __`seunome`__ (TUDO EM MINÚSCULO - SOMENTE O PRIMEIRO NOME, EXEMPLO: robson) PARA UM NOVO SITE, DENTRO DO SEU DIRETÓRIO CRIAR UMA NOVA PÁGINA EM HTML CHAMADA: __`index.html`__ (TUDO EM MINÚSCULA), ADICIONAR MAIS OPÇÕES (MÍNIMO DE 03 OPÇÕES NOVAS) DO HTML5 (VEJA O SITE W3SCHOOLS) E COLOCAR __`02 (DUAS) IMAGENS`__ NA PÁGINA.

**#10_ DESAFIO-02:** NO SEU NOVO DIRETÓRIO CRIAR UM ARQUIVO EM PHP CHAMADO: __`seunome.php`__, ADICIONAR __`MAIS OPÇÕES DO PHP (MÍNIMO DE 02 OPÇÕES NOVAS)`__ (VEJA O SITE W3SCHOOLS) TESTAR NO SEU NAVEGADOR AS MUDANÇAS. **DICA-01:** FAZER OS *HYPERLINK* DAS PÁGINAS: __`index.html`__ COM A PÁGINA PHP __`seunome.php`__ PARA FACILITAR O ACESSO E COMEÇAR UM PROJETO DE SITE. **DICA-02:** RECOMENDO PESQUISAR A FUNÇÃO DE *DATA E HORA* DO PHP PARA ADICIONAR NA PÁGINA OU OUTRAS FUNÇÕES DO SEU INTERESSE.

**#11_ DESAFIO-03:** ADICIONAR O USUÁRIO: __`admin`__ E O USUÁRIO: __`seu_usuário`__ CRIADOS NO SISTEMA NA ETAPA DE CONFIGURAÇÃO NO *OPENSSH* NO GRUPO DO APACHE2 __`www-data`__, TESTAR AS PERMISSÕES DE ACESSO NOS DIRETÓRIOS DO APACHE2 E NOS DIRETÓRIOS DOS SITES CRIADOS.

**#12_ NOVO DESAFIO-04:** CONHECER O PROJETO: *https://profreehost.com/*, CRIAR UMA CONTA: *Free Register Now*, FAZER AS CONFIGURAÇÕES BÁSICAS DO SEU DOMÍNIO E REPLICAR OS __`DESAFIOS 01 E 02`__ NO SITE ON-LINE (CLOUD). **OBSERVAÇÃO:** UTILIZAR O DOMÍNIO: __`unaux.com`__ PARA A CRIAÇÃO DO DOMÍNIO (MENOS RESTRIÇÃO DE ACESSO).

=========================================================================================

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO APACHE2 SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do Apache2 realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/02-apache2.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafioapache2 #desafioapache