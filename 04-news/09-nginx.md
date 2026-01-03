#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 23/09/2025<br>
#Data de atualização: 03/01/2026<br>
#Versão: 0.03<br>

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO NGINX SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do NGINX realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/09-nginx.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafionginx

Conteúdo estudado nesse desafio:<br>
#01_ Instalando o NGINX Server e PHP 8.x no Ubuntu Server<br>
#02_ Verificando o Serviço e Versão do NGINX Server e do PHP no Ubuntu Server<br>
#03_ Verificando a Porta de Conexão do NGINX Server no Ubuntu Server<br>
#04_ Localização dos Arquivos de Configuração do NGINX Server e do PHP 8.x no Ubuntu Server<br>
#05_ Adicionando o Usuário Local no Grupo Padrão do NGINX Server no Ubuntu Server<br>
#06_ Configurando o suporte ao PHP-FPM no NGINX Server no Ubuntu Server<br>
#07_ Criando um diretório de Teste do HTML e PHP do NGINX Server no Ubuntu Server<br>
#08_ Criando páginas HTML e PHP para testar o NGINX Server no Ubuntu Server<br>
#09_ Testando o acesso ao NGINX Server e o PHP no Terminal e no Navegador<br>
#10_ Desafios do NGINX Server.<br>

Site Oficial do NGINX: https://nginx.org/<br>
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

**PERGUNTA PARA A IA**
```bash
Prompt-01: qual o nome do software mais utilizado no Brasil e no Mundo para hospedagem de páginas de
Internet (html, css, javascript, php, etc.)? Qual o seu percentual de uso para aplicações emergentes.
```

**O QUE É E PARA QUE SERVER O NGINX SERVER:** O NGINX Server é um servidor web de alto desempenho que também pode atuar como proxy reverso, balanceador de carga, servidor de e-mail (IMAP/POP3/SMTP) e cache de conteúdo. Ele foi criado para ser rápido, leve e escalável, ideal para lidar com grande volume de conexões simultâneas sem consumir muitos recursos do servidor.

**O QUE É E PARA QUE SERVER O HTTP:** O *HTTP (Hyper Text Transfer Protocol)* é um padrão de mensagens que permite a comunicação entre navegadores e servidores web. Ele é a base da internet e é usado para transferir dados, como o conteúdo de sites e chamadas de **API (Application Programming Interface)**, utiliza o *Protocolo TCP (Transmission Control Protocol) na porta Padrão 80*.

**O QUE É E PARA QUE SERVER O HTTPS:** O *HTTPS (Hyper Text Transfer Protocol Secure)* é uma versão segura do protocolo HTTP. Ele é usado para criptografar a comunicação entre um site e um navegador web, utiliza o *Protocolo TCP (Transmission Control Protocol) na porta Padrão 443*.

**O QUE É E PARA QUE SERVER O HTML:** O *HTML (Hypertext Markup Language)* é uma linguagem de marcação utilizada na construção de páginas na Web. Documentos HTML podem ser interpretados por navegadores. A tecnologia é fruto da junção entre os padrões **HyTime e SGML**. HyTime é um padrão para a representação estruturada de hipermídia e conteúdo baseado em tempo.

**O QUE É E PARA QUE SERVER O CSS:** O *CSS (Cascading Style Sheets)* é um mecanismo para adicionar estilos (cores, fontes, espaçamento, etc.) a uma página web aplicado diretamente nas **tags HTML** ou ficar contido dentro dessas tags. Também é possível, adicionar estilos adicionando um link para um arquivo CSS que contém os estilos.

**O QUE É E PARA QUE SERVER O PHP:** O *PHP (Hypertext Preprocessor, originalmente Personal Home Page)* é uma linguagem interpretada livre, usada originalmente apenas para o desenvolvimento de aplicações presentes e atuantes no lado do servidor, capazes de gerar **conteúdo dinâmico** na World Wide Web (WWW).

**O QUE É E PARA QUE SERVER O FULL-STACK:** O termo *Full-Stack* se refere a um **Profissional (ou conjunto de tecnologias)** que atua tanto no *Back-End* quanto no *Front-End* de uma aplicação. Ou seja, é *alguém capaz de desenvolver uma aplicação completa*, desde o visual (interface do usuário) até a lógica interna, banco de dados e servidor.

**O QUE É E PARA QUE SERVER O DEVOPS:** O termo *DevOps* é a união das palavras **Dev (Desenvolvimento) + Ops (Operações/Infraestrutura)**, e representa uma *Cultura de Integração* entre equipes de *Desenvolvimento e Infraestrutura*. O objetivo do **DevOps** é: *automatizar, agilizar e melhorar todo o ciclo de vida de software*: **do código à produção**, com foco em entrega contínua, qualidade, segurança e colaboração.

[![Nginx Server](http://img.youtube.com/vi//0.jpg)]( "Nginx Server")

Link da vídeo aula: 

## 01_ Instalando o NGINX Server e PHP 8.x no Ubuntu Server
```bash
#atualizando as listas do Apt
#opção do comando apt: update (Resynchronize the package index files from their sources)
sudo apt update

#instalando as dependências do NGINX Server
#opção do comando apt: install (install is followed by one or more package names)
#opção da contra barra (\): criar uma quebra de linha no terminal
sudo apt install git vim perl python2 python3 unzip pwgen xz-utils bzip2 curl ghostscript zlib1g \
zlib1g-dev apt-transport-https
```

**OBSERVAÇÃO IMPORTANTE:** POR MOTIVO DE COMPATIBILIDADE, FOI REMOVIDO A *NUMERAÇÃO DA VERSÃO DO PHP* DESSE PROCEDIMENTO, TODO O CENÁRIO IRÁ INSTALAR SEMPRE A ÚLTIMA VERSÃO DISPONÍVEL NO UBUNTU SERVER, VERSÃO ATUALIZADA DO PHP NO UBUNTU SERVER 22.04: **8.1 (ATUALIZADO EM: 26/09/2024)**.

```bash
#instalando o NGINX Server, PHP 8.x e suas dependências (SUPORTE EXTRA DE DEPENDÊNCIAS)
#opção da contra barra (\): criar uma quebra de linha no terminal
sudo apt install nginx nginx-common nginx-core php-cli php-common php-mysql php-fpm php-opcache \
php-readline php-bcmath php-curl php-intl php-mbstring php-xml php-zip php-soap php-json php-bz2 \
php-imagick php-dev php-pear php-gd php-imap php-memcache php-pspell php-tidy php-xmlrpc php-cas \
php-ldap php-apcu php-gmp 
```

## 02_ Verificando o Serviço e Versão do NGINX Server e do PHP no Ubuntu Server
```bash
#verificando o serviço do NGINX Server no Ubuntu Server
#opções do comando systemctl: status (runtime status information), restart (Stop and then start one or more units),
#stop (Stop (deactivate) one or more units), start (Start (activate) one or more units), reload (Asks all units 
#listed on the command line to reload their configuration)
sudo systemctl status nginx
sudo systemctl restart nginx
sudo systemctl reload nginx
sudo systemctl stop nginx
sudo systemctl start nginx

#verificando o serviço do PHP-FPM  no Ubuntu Server
#opções do comando systemctl: status (runtime status information), restart (Stop and then start one or more units),
#stop (Stop (deactivate) one or more units), start (Start (activate) one or more units), reload (Asks all units 
#listed on the command line to reload their configuration)
sudo systemctl status php8.1-fpm
sudo systemctl restart php8.1-fpm
sudo systemctl reload php8.1-fpm
sudo systemctl stop php8.1-fpm
sudo systemctl start php8.1-fpm

#analisando os Log's e mensagens de erro do Servidor do NGINX Server
#opção do comando journalctl: x (catalog), e (pager-end), u (unit)
sudo journalctl -xeu nginx

#analisando os Log's e mensagens de erro do Servidor do PHP-FPM
#opção do comando journalctl: x (catalog), e (pager-end), u (unit)
sudo journalctl -xeu php8.1-fpm

#verificando o arquivo de configuração do NGINX Server
#opção do comando nginx: -t (Do not run, just test the configuration file)
sudo nginx -t

#verificando o arquivo de configuração do PHP-FPM
#opção do comando php: -i (PHP information)
sudo php -i 
```

**OBSERVAÇÃO IMPORTANTE:** Por que sempre é necessário verificar a versão do serviço de rede que você está implementando ou configurando no Servidor Ubuntu Server, devido as famosas falhas de segurança chamadas de: *CVE (Common Vulnerabilities and Exposures)*, com base na versão utilizada podemos pesquisar no site do **Ubuntu Security CVE Reports:** https://ubuntu.com/security/cves as falhas de segurança encontradas e corrigidas da versão do nosso aplicativo, o que ela afeta, se foi corrigida e como aplicar a correção.

```bash
#verificando a versão do NGINX Server
#opção do comando nginx: -V (full version)
sudo nginx -V

#verificando a versão do PHP
#opção do comando php: -v (version)
sudo php -v
```

## 03_ Verificando a Porta de Conexão do NGINX Server no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** no Ubuntu Server as Regras de Firewall utilizando o comando: __` iptables `__ ou: __` ufw `__ está desabilitado por padrão **(INACTIVE)**, caso você tenha habilitado algum recurso de Firewall é necessário fazer a liberação do *Fluxo de Entrada (INPUT), Porta (PORT) e Protocolo (PROTOCOL) TCP* do Serviço corresponde nas tabelas do firewall e testar a conexão.

```bash
#verificando a porta padrão TCP-80 do NGINX Server
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'80' -sTCP:LISTEN
```

## 04_ Localização dos Arquivos de Configuração do NGINX Server e do PHP 8.x no Ubuntu Server
```bash
/etc/nginx/                     <-- Diretório de configuração do NGINX Server
/etc/nginx/nginx.conf           <-- Arquivo de configuração do NGINX Server
/etc/nginx/conf.d/              <-- Diretório padrão das configurações do NGINX Server
/etc/nginx/modules-available/   <-- Diretório padrão dos módulos disponíveis do NGINX Server
/etc/nginx/modules-enabled/     <-- Diretório padrão dos módulos habilitados no NGINX Server
/etc/nginx/sites-available/     <-- Diretório padrão dos sites disponíveis do NGINX Server
/etc/nginx/sites-enabled/       <-- Diretório padrão dos sites habilitados no NGINX Server
/etc/nginx/snippets/            <-- Diretório padrão dos fragmentos de configuração reutilizáveis do NGINX Server
/etc/php/                       <-- Diretório de configuração do PHP 7.x ou 8.x
/etc/php/8.x/fpm/php.ini        <-- Arquivo de configuração do PHP-FPM 8.x do NGINX Server
/var/www/html/                  <-- Diretório padrão das Hospedagem de Site do NGINX Server
/var/log/nginx/                 <-- Diretório padrão dos Logs do NGINX Server
```

## 05_ Adicionando o Usuário Local no Grupo Padrão do NGINX Server no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** você pode substituir a variável de ambiente: __`$USER`__ pelo nome do usuário existente no sistema para adicionar no Grupo desejado.

```bash
#adicionando o usuário local (logado) no grupo do NGINX Server
#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
sudo usermod -a -G www-data $USER

#fazendo login em um novo grupo do NGINX Server
newgrp www-data

#verificando os identificadores de usuário e grupos
id

#verificando as informações do grupo WWW-DATA do NGINX Server
#opção do comando getent: group (the database system group)
sudo getent group www-data

#recomendo fazer logout do usuário para testar as permissões de grupos
#OBSERVAÇÃO: você pode utilizar o comando: exit, logout ou tecla de atalho: Ctrl+D
exit
```

## 06_ Configurando o suporte ao PHP-FPM no NGINX Server no Ubuntu Server
```bash
#fazendo o backup do site padrão do NGINX Server
#opção do comando cp: -v (verbose)
sudo cp -v /etc/nginx/sites-available/default /etc/nginx/sites-available/default.old

#atualizando o arquivo de configuração do NGINX Server do Github
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/nginx/sites-available/default https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/default

#editando o arquivo de configuração do NGINX Server
sudo vim /etc/nginx/sites-available/default

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
#habilitando a porta de conexão HTTP 80 na linha: 19
# Escuta na porta 80 (HTTP) em IPv4 e define como servidor padrão
listen 80 default_server;

#habilitando o recurso de processamento de páginas PHP na linha: 42
# Encaminha as requisições PHP para o socket do PHP-FPM 8.1
fastcgi_pass unix:/run/php/php8.1-fpm.sock;
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <ENTER>
```
```bash
#verificando os arquivos de configuração do NGINX Server
#opção do comando nginx: -t (Do not run, just test the configuration file)
sudo nginx -t

#reiniciando e verificando o serviço do NGINX Server
#opções do comando systemctl: status (runtime status information), restart (Stop and then 
#start one or more units)
sudo systemctl restart nginx
sudo systemctl status nginx

#analisando os Log's e mensagens de erro do Servidor do NGINX Server
#opção do comando journalctl: x (catalog), e (pager-end), u (unit)
sudo journalctl -xeu nginx
```

## 07_ Criando um diretório de Teste do HTML e PHP do NGINX Server no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** SEMPRE TRABALHAR COM __`DIRETÓRIOS DE PROJETOS DE SITES`__ QUANDO VOCÊ ESTÁ DESENVOLVENDO APLICAÇÕES UTILIZANDO AS LINGUAGENS __`HTML5, CSS5, JAVASCRIPT, PHP7/8, ETC.`__ DEVIDO A ESTRUTURA DE ARQUIVOS/DIRETÓRIOS QUE SERÃO CRIADOS E CONECTADOS NA CONSTRUÇÃO DO SITE.

**OBSERVAÇÃO IMPORTANTE:** SEMPRE CRIAR ARQUIVOS E DIRETÓRIOS TUDO EM: __`minúsculo`__ NÃO UTILIZAR: __`acentuação, caracteres especiais, espaço em branco, etc`__ CRIAR ARQUIVOS E DIRETÓRIOS COM NOMES __`pequenos e objetivos`__. LEMBRE-SE QUE O GNU/LINUX É: __`CASE SENSITIVE`__.

```bash
#acessando o diretório padrão dos Sites do NGINX Server (DocumentRoot)
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

## 08_ Criando páginas HTML e PHP para testar o NGINX Server no Ubuntu Server

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
// Função do PHP para gerar a página de documentação e parâmetros do PHP e do NGINX Server
// Mais informações acesse: https://www.php.net/phpinfo
phpinfo(); 
?>
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>
```

## 09_ Testando o acesso ao NGINX Server e o PHP no Terminal e no Navegador

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
#testando o acesso as páginas do NGINX Server
#opção do comando curl: -I (Fetch the headers only)
#saída do comando curl: HTTP/1.1 200 OK (Sucesso total, servidor está respondendo corretamente)
curl -I http://127.0.0.1:80/

#testando o acesso ao diretório de teste do NGINX Server
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

**#10_ DESAFIO-01:** CRIAR UM NOVO DIRETÓRIO NA RAIZ DO NGINX EM: __`/var/www/html`__ COM: __`seunome`__ (TUDO EM MINÚSCULO - SOMENTE O PRIMEIRO NOME, EXEMPLO: robson) PARA UM NOVO SITE, DENTRO DO SEU DIRETÓRIO CRIAR UMA NOVA PÁGINA EM HTML CHAMADA: __`index.html`__ (TUDO EM MINÚSCULA), ADICIONAR MAIS OPÇÕES (MÍNIMO DE 03 OPÇÕES NOVAS) DO HTML5 (VEJA O SITE W3SCHOOLS) E COLOCAR __`02 (DUAS) IMAGENS`__ NA PÁGINA.

**#11_ DESAFIO-02:** NO SEU NOVO DIRETÓRIO CRIAR UM ARQUIVO EM PHP CHAMADO: __`seunome.php`__, ADICIONAR __`MAIS OPÇÕES DO PHP (MÍNIMO DE 02 OPÇÕES NOVAS)`__ (VEJA O SITE W3SCHOOLS) TESTAR NO SEU NAVEGADOR AS MUDANÇAS. **DICA-01:** FAZER OS *HYPERLINK* DAS PÁGINAS: __`index.html`__ COM A PÁGINA PHP __`seunome.php`__ PARA FACILITAR O ACESSO E COMEÇAR UM PROJETO DE SITE. **DICA-02:** RECOMENDO PESQUISAR A FUNÇÃO DE *DATA E HORA* DO PHP PARA ADICIONAR NA PÁGINA OU OUTRAS FUNÇÕES DO SEU INTERESSE.

**#12_ DESAFIO-03:** ADICIONAR O USUÁRIO: __`admin`__ E O USUÁRIO: __`seu_usuário`__ CRIADOS NO SISTEMA NA ETAPA DE CONFIGURAÇÃO DO *OPENSSH SERVER* NO GRUPO DO NGINX __`www-data`__, TESTAR AS PERMISSÕES DE ACESSO NOS DIRETÓRIOS DO NGINX E NOS DIRETÓRIOS DOS SITES CRIADOS.

**#13_ NOVO DESAFIO-04:** CONHECER O PROJETO: *https://profreehost.com/*, CRIAR UMA CONTA: *Free Register Now*, FAZER AS CONFIGURAÇÕES BÁSICAS DO SEU DOMÍNIO E REPLICAR OS __`DESAFIOS 01 E 02`__ NO SITE ON-LINE (CLOUD). **OBSERVAÇÃO:** UTILIZAR O DOMÍNIO: __`unaux.com`__ PARA A CRIAÇÃO DO DOMÍNIO (MENOS RESTRIÇÃO DE ACESSO).

=========================================================================================

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO NGINX SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do NGINX realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/09-nginx.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafionginx