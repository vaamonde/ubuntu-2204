#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 16/01/2023<br>
#Data de atualização: 12/08/2024<br>
#Versão: 0.17<br>

OBSERVAÇÃO IMPORTANTE: COMENTAR NO VÍDEO DO APACHE2 SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: Desafio do Apache2 realizado com sucesso!!! #BoraParaPrática

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/02-apache2.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafioapache2 #desafioapache

Conteúdo estudado nesse desafio:<br>
#01_ Instalado o Apache2 e PHP8 no Ubuntu Server;<br>
#02_ Verificando os Status do Serviço do Apache2;<br>
#03_ Verificando as Versões do Apache2 e PHP8;<br>
#04_ Verificando a Porta de Conexão do Apache2;<br>
#05_ Diretórios e Arquivos de Configuração do Apache2 e PHP8;<br>
#06_ Adicionando o Usuário Local no Grupo do Apache2;<br>
#07_ Criando um Projeto de Teste de Site no Apache2;<br>
#08_ Alterando as Permissões de Arquivos e Diretórios;<br>
#09_ Criando Páginas em HTML e PHP para testar o Apache2;<br>
#10_ Utilizando o VSCode para editar páginas HTML e PHP;<br>
#11_ Testando o acesso as Páginas no Navegador do Apache2;<br>
#12_ Desafio do Novo Projeto de Site e Usuários do Apache2.

Site Oficial do Apache2: https://httpd.apache.org/<br>
Site Oficial do PHP (7.x ou 8.x): https://www.php.net/

Site Oficial do W3C School HTML5: https://www.w3schools.com/html/default.asp<br>
Site Oficial do W3C School CSS: https://www.w3schools.com/css/default.asp<br>
Site Oficial do W3C School JavaScript: https://www.w3schools.com/js/default.asp<br>
Site Oficial do W3C School PHP: https://www.w3schools.com/php/default.asp

O Servidor HTTP (Hypertext Transfer Protocol) Apache ou Servidor Apache ou HTTP Daemon Apache ou somente Apache, é o servidor web livre criado em 1995 por um grupo de desenvolvedores da NCSA, tendo como base o servidor web NCSA HTTPd criado por Rob McCool.

HTML (Hypertext Markup Language) é uma linguagem de marcação utilizada na construção de páginas na Web. Documentos HTML podem ser interpretados por navegadores. A tecnologia é fruto da junção entre os padrões HyTime e SGML. HyTime é um padrão para a representação estruturada de hipermídia e conteúdo baseado em tempo.

PHP (Hypertext Preprocessor, originalmente Personal Home Page) é uma linguagem interpretada livre, usada originalmente apenas para o desenvolvimento de aplicações presentes e atuantes no lado do servidor, capazes de gerar conteúdo dinâmico na World Wide Web.

[![Apache2 Server](http://img.youtube.com/vi/p6fnF1fZ1j4/0.jpg)](https://www.youtube.com/watch?v=p6fnF1fZ1j4 "Apache2 Server")

Link da vídeo aula: https://www.youtube.com/watch?v=p6fnF1fZ1j4

#01_ Instalando o Apache2 Server e PHP 8.x<br>
```bash
#atualizando as listas do Apt
sudo apt update

#instalando as dependências do Apache2 Server
sudo apt install git vim perl python2 python3 unzip ghostscript zlib1g zlib1g-dev apt-transport-https

#instalando o Apache2 Server e PHP 8.x
#opção da contra barra (\): criar uma quebra de linha no terminal
sudo apt install apache2 apache2-utils apache2-bin apache2-data php8.1 php8.1-cli php8.1-common \
php8.1-mysql php8.1-opcache php8.1-readline php8.1-common php8.1-bcmath php8.1-curl php8.1-intl \
php8.1-mbstring php8.1-xml php8.1-zip php8.1-soap php-imagick php-json libapache2-mod-php libapr1 \
libapache2-mod-php8.1 libaprutil1 libaprutil1-dbd-sqlite3 libaprutil1-ldap
```

#02_ Verificando o Serviço e Versão do Apache2 Server e do PHP<br>
```bash
#verificando o serviço do Apache2 Server
sudo systemctl status apache2
sudo systemctl restart apache2
sudo systemctl reload apache2
sudo systemctl stop apache2
sudo systemctl start apache2

#analisando os Log's e mensagens de erro do Servidor do Apache2 (NÃO COMENTADO NO VÍDEO)
#opção do comando journalctl: x (catalog), e (pager-end), u (unit)
sudo journalctl -xeu apache2

#verificando as versões do Apache2 Server e do PHP
#opção do comando apache2ctl: -V (version)
#opção do comando php: -v (version)
sudo apache2ctl -V
sudo php -v
```

#03_ Verificando a Porta de Conexão do Apache2 Server<br>
```bash
#OBSERVAÇÃO IMPORTANTE: no Ubuntu Server as Regras de Firewall utilizando o comando: 
#iptables ou: ufw está desabilitado por padrão (INACTIVE), caso você tenha habilitado 
#algum recurso de Firewall é necessário fazer a liberação do Fluxo de Entrada, Porta 
#e Protocolo TCP do Serviço corresponde nas tabelas do firewall e testar a conexão.

#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'80' -sTCP:LISTEN
```

#04_ Localização dos Arquivos de Configuração do Apache2 Server e do PHP 8.x<br>
```bash
/etc/apache2/                  <-- Diretório de configuração do Apache 2 Server
/etc/apache2/apache2.conf      <-- Arquivo de configuração do Apache 2 Server
/etc/apache2/sites-available/  <-- Diretório padrão dos Sites Acessíveis do Apache 2 Server
/etc/apache2/conf-available/   <-- Diretório padrão das Configurações Acessíveis do Apache 2 Server
/etc/php/                      <-- Diretório de configuração do PHP 7.x ou 8.x
/etc/php/8.1/apache2/php.ini   <-- Arquivo de configuração do PHP 8.x do Apache 2 Server
/var/www/html/                 <-- Diretório padrão das Hospedagem de Site do Apache 2 Server
/var/log/apache2/              <-- Diretório padrão dos Logs do Apache 2 Server
```

#05_ Adicionando o Usuário Local no Grupo Padrão do Apache2 Server<br>
```bash
#adicionando o seu usuário no grupo do Apache2
#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
#OBSERVAÇÃO IMPORTANTE: você pode substituir a variável de ambiente $USER pelo
#nome do usuário existente no sistema para adicionar no Grupo desejado.
sudo usermod -a -G www-data $USER

#fazendo login em um novo grupo do Apache2
newgrp www-data

#verificando os identificadores de usuário e grupos
id

#verificando informações do grupo WWW-DATA
sudo getent group www-data

#recomendo fazer logout do usuário para testar as permissões de grupos
#OBSERVAÇÃO: você pode utilizar o comando: exit ou tecla de atalho: Ctrl+D
exit

#OBSERVAÇÃO IMPORTANTE: caso a conexão SSH trave, utilize os caracteres de escape para 
#finalizar conexões SSH.
#caracteres: ~ (til) e . (ponto)
~.
```

#06_ Criando um diretório de Teste do HTML e PHP no Apache2 Server<br>
```bash
#acessando o diretório padrão dos Sites do Apache2 Server (DocumentRoot)
cd /var/www/html

#criando o diretório de teste das páginas HTML e PHP
#opção do comando mkdir: -v (verbose)
sudo mkdir -v teste

#alterando as permissões do diretório de teste
#opção do comando chmod: -R (recursive), -v (verbose), 2775 (Set-GID=2,User=RWX,Group=RWS,Other=R-X)
sudo chmod -Rv 2775 teste/

#alterando o dono e grupo do diretório de teste
#opção do comando chown: -R (recursive), -v (verbose), root (User), . (separate), www-date (group)
sudo chown -Rv root.www-data teste/

#acessando o diretório criado de teste
cd teste
```

#07_ Criando páginas HTML e PHP para testar o Apache2 Server<br>
```bash
#OBSERVAÇÃO IMPORTANTE: nesse exemplo vamos editar os arquivos teste.html, teste.php e phpinfo.php 
#utilizando o Editor de Texto em Linha de Comando Vim.

#OBSERVAÇÃO IMPORTANTE: no Microsoft Windows utilizando o Powershell no processo de copiar e colar
#o código HTML ou PHP ele desconfigura o código, recomendo no Windows utilizar o software PuTTY ou
#Git Bash para editar os códigos ou copiar e colar. No Linux Mint e macOS essa falha não acontece.

#OBSERVAÇÃO: tanto no Microsoft Windows como no GNU/Linux (Linux Mint, Ubuntu Desktop, etc...) ou no
#macOS recomendo sempre utilizar o Editor de Texto em Modo Gráfico IDE Microsoft Visual Studio, por
#padrão ele já entende toda a codificação HTML, PHP, JavaScript, JSON, etc..., facilitando a criação
#e modificação dos arquivos desse curso.

#criando o arquivo em HTML
#OBSERVAÇÃO: ALTERAR O NOME DO ARQUIVO PARA O SEU PRIMEIRO NOME TUDO EM MINÚSCULO
sudo vim seu_nome.html
INSERT
```
```html
<!-- Início do código HTML: declaração do tipo de arquivo que será enviado para a navegador -->
<!DOCTYPE html>
	<!-- Tag HTML: Define a raiz de um documento HTML -->
	<html lang="pt-br">
		<!-- Tag HEAD: Define um cabeçalho para um documento ou seção -->
		<head>
			<!-- Tag TITLE: Define um título para o documento -->
			<title>Teste da Linguagem HTML</title>
			<!-- Tag META: Define metadados sobre um documento HTML -->
			<meta charset="utf-8">
		<!-- Fechamento da Tag: HEAD -->
		</head>
		<!-- Tag BODY: Define o corpo do documento -->
		<body>
			<!-- Tag H1: Define títulos HTML -->
			<!-- Tag BR: Define uma única quebra de linha -->
			<h1>Teste da Linguagem HTML (HyperText Markup Language)</h1>
			Autor: Robson Vaamonde<br>
			Editado por: SEU NOME AQUI<br>
			<!-- Tag: A Define um hiperlink -->
			LinkedIn: <a href="https://www.linkedin.com/in/robson-vaamonde-0b029028/">Robson Vaamonde</a><br>
			Site: <a href="http://procedimentosemti.com.br/">procedimentosemti.com.br</a><br>
			Facebook: <a href="https://www.facebook.com/ProcedimentosEmTI"> Procedimentos Em TI</a><br>
			Facebook: <a href="https://www.facebook.com/BoraParaPratica">Bora Para Pratica</a><br>
			Instagram: <a href="https://www.instagram.com/procedimentoem/?hl=pt-br">Procedimentos Em TI</a><br>
			YouTube: <a href="https://www.youtube.com/BoraParaPratica">Bora Para Pratica</a><br>
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
			<?php 
				// Função ECHO: Imprimir uma ou mais strings na saída padrão
				echo '<h1>Teste da Linguagem HTML (HyperText Markup Language)</h1>';
				echo 'Autor: Robson Vaamonde<br>';
				echo 'Editado por: SEU NOME AQUI<br>';
				echo 'LinkedIn: https://www.linkedin.com/in/robson-vaamonde-0b029028/<br>';
				echo 'Site: http://procedimentosemti.com.br/<br>';
				echo 'Facebook: https://www.facebook.com/ProcedimentosEmTI<br>';
				echo 'Facebook: https://www.facebook.com/BoraParaPratica<br>';
				echo 'Instagram: https://www.instagram.com/procedimentoem/<br>';
				echo 'YouTube: https://youtube.com/BoraParaPratica<br>'; 
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
INSERT
```
```php
<?php
	// Função do PHP para gerar a página de documentação e parâmetros do PHP
	phpinfo(); 
?>
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>
```

#08_ Testando o Apache2 Server e o PHP no navegador<br>
```bash
#utilizar os navegadores para testar suas páginas
firefox ou google chrome: http://endereço_ipv4_ubuntuserver
firefox ou google chrome: http://endereço_ipv4_ubuntuserver/teste/
```
========================================DESAFIOS=========================================

**#09_ DESAFIO-01:** CRIAR UM NOVO DIRETÓRIO NA RAIZ DO APACHE2 EM: __`/var/www/html`__ COM: __`seunome`__ (TUDO EM MINÚSCULO - SOMENTE O PRIMEIRO NOME, EXEMPLO: robson) PARA UM NOVO SITE, DENTRO DO SEU DIRETÓRIO CRIAR UMA NOVA PÁGINA EM HTML CHAMADA: __`index.html`__ (TUDO EM MINÚSCULA), ADICIONAR MAIS OPÇÕES DO HTML (VEJA O SITE W3SCHOOLS) E COLOCAR __`02 (DUAS) IMAGENS`__ NA PÁGINA.

**#10_ DESAFIO-02:** NO SEU NOVO DIRETÓRIO CRIAR UM ARQUIVO EM PHP CHAMADO: __`seunome.php`__, ADICIONAR __`MAIS OPÇÕES DO PHP`__ (VEJA O SITE W3SCHOOLS) TESTAR NO SEU NAVEGADOR. DICA-01: FAZER OS HYPERLINK DAS PÁGINAS: __`index.html`__ COM A PÁGINA PHP __`seunome.php`__ PARA FACILITAR O ACESSO E COMEÇAR UM PROJETO DE SITE. DICA-02: RECOMENDO PESQUISAR A FUNÇÃO DE DATA HORA DO PHP PARA ADICIONAR NA PÁGINA OU OUTRA FUNÇÃO DO SEU INTERESSE.

**#11_ DESAFIO-03:** ADICIONAR O USUÁRIO: __`admin`__ E O USUÁRIO: __`seu_usuário`__ CRIADOS NO SISTEMA NA ETAPA DE CONFIGURAÇÃO NO OPENSSH NO GRUPO DO __`APACHE2`__, TESTAR AS PERMISSÕES DE ACESSO NOS DIRETÓRIOS DO APACHE2 E NOS DIRETÓRIOS DOS SITES CRIADOS.

**#12_ NOVO DESAFIO-04:** CONHECER O PROJETO: *https://www.infinityfree.com/*, CRIAR UMA CONTA: *Free Register*, FAZER AS CONFIGURAÇÕES BÁSICAS DO SEU DOMÍNIO E REPLICAR OS __`DESAFIO-01 E 02`__ NO SITE ON-LINE (CLOUD). 

=========================================================================================

OBSERVAÇÃO IMPORTANTE: COMENTAR NO VÍDEO DO APACHE2 SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: Desafio do Apache2 realizado com sucesso!!! #BoraParaPrática

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/02-apache2.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafioapache2 #desafioapache