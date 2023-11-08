#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 16/01/2023<br>
#Data de atualização: 23/04/2023<br>
#Versão: 0.06<br>

OBSERVAÇÃO IMPORTANTE: COMENTAR NO VÍDEO DO APACHE2 SE VOCÊ CONSEGUIU FAZER O DESAFIO COM 
A SEGUINTE FRASE: Desafio do Apache2 realizado com sucesso!!! #BoraParaPrática

Site Oficial do Apache2: https://httpd.apache.org/<br>
Site Oficial do PHP (7.x ou 8.x): https://www.php.net/

Site Oficial do W3C School HTML5: https://www.w3schools.com/html/default.asp<br>
Site Oficial do W3C School CSS: https://www.w3schools.com/css/default.asp<br>
Site Oficial do W3C School JavaScript: https://www.w3schools.com/js/default.asp<br>
Site Oficial do W3C School PHP: https://www.w3schools.com/php/default.asp

O Servidor HTTP Apache ou Servidor Apache ou HTTP Daemon Apache ou somente Apache, é o servidor<br>
web livre criado em 1995 por um grupo de desenvolvedores da NCSA, tendo como base o servidor<br>
web NCSA HTTPd criado por Rob McCool.

#01_ Instalando o Apache2 Server e PHP 8.x<br>

	#atualizando as listas do Apt
	sudo apt update
	
	#instalando as dependências do Apache2 Server
	sudo apt install git vim perl python2 python3 unzip ghostscript zlib1g zlib1g-dev apt-transport-https

	#instalando o Apache2 Server e PHP 8.x
	sudo apt install apache2 apache2-utils apache2-bin apache2-data php8.1 php8.1-cli php8.1-common \
	php8.1-mysql php8.1-opcache php8.1-readline php8.1-common php8.1-bcmath php8.1-curl php8.1-intl \
	php8.1-mbstring php8.1-xml php8.1-zip php8.1-soap php-imagick php-json libapache2-mod-php libapr1 \
	libapache2-mod-php8.1 libaprutil1 libaprutil1-dbd-sqlite3 libaprutil1-ldap

#02_ Verificando o Serviço e Versão do Apache2 Server e do PHP<br>

	#verificando o serviço do Apache2 Server
	sudo systemctl status apache2
	sudo systemctl restart apache2
	sudo systemctl stop apache2
	sudo systemctl start apache2

	#verificando as versões do Apache2 Server e do PHP
	#opção do comando apache2ctl: -V (version)
	#opção do comando php: -v (version)
	sudo apache2ctl -V
	sudo php -v

#03_ Verificando a Porta de Conexão do Apache2 Server<br>

	#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
	sudo lsof -nP -iTCP:'80' -sTCP:LISTEN

#04_ Localização dos Arquivos de Configuração do Apache2 Server e do PHP 8.x<br>

	/etc/apache2/                  <-- Diretório de configuração do Apache 2 Server
	/etc/apache2/apache2.conf      <-- Arquivo de configuração do Apache 2 Server
	/etc/apache2/sites-available/  <-- Diretório padrão dos Sites Acessíveis do Apache 2 Server
	/etc/apache2/conf-available/   <-- Diretório padrão das Configurações Acessíveis do Apache 2 Server
	/etc/php/                      <-- Diretório de configuração do PHP 7.x ou 8.x
	/etc/php/8.1/apache2/php.ini   <-- Arquivo de configuração do PHP 8.x do Apache 2 Server
	/var/www/html/                 <-- Diretório padrão das Hospedagem de Site do Apache 2 Server
	/var/log/apache2/              <-- Diretório padrão dos Logs do Apache 2 Server

#05_ Adicionado o Usuário Local no Grupo Padrão do Apache2 Server<br>

	#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
	sudo usermod -a -G www-data $USER
	newgrp www-data
	id
	
	#recomendo fazer logout do usuário para testar as permissões de grupos 
	logout
	exit
	Ctrl + D

	#OBSERVAÇÃO IMPORTANTE: caso a conexão SSH trave, utile os caracteres de escape para 
	finalizar conexões SSH.
	#caracteres: ~ (til) e . (ponto)
	~.

#06_ Criando um diretório de Teste do HTML e PHP no Apache2 Server<br>

	#acessando o diretório padrão dos Sites do Apache2 Server
	cd /var/www/html
	
		#opção do comando mkdir: -v (verbose)
		sudo mkdir -v teste
		
		#opção do comando chmod: -v (verbose), 775 (User=RWX,Group=RWX,Other=R-X)
		sudo chmod -v 775 teste/
		
		#opção do comando chown: -v (verbose), root (User), . (separate), www-date (group)
		sudo chown -v root.www-data teste/
		
		#acessando o diretório criado
		cd teste

#07_ Criando páginas HTML e PHP para testar o Apache2 Server<br>

	#OBSERVAÇÃO IMPORTANTE: nesse exemplo vamos editar os arquivos teste.html, teste.php e phpinfo.php 
	utilizando o Editor de Texto em Linha de Comando Vim.

	#criando o arquivo em HTML
	sudo vim seu_nome.html
	INSERT

```html
<!DOCTYPE html>
	<html lang="pt-br">
		<head>
			<title>Teste da Linguagem HTML</title>
			<meta charset="utf-8">
		</head>
		<body>
			<h1>Teste da Linguagem HTML (HyperText Markup Language)</h1>
			Autor: Robson Vaamonde<br>
			Linkedin: <a href="https://www.linkedin.com/in/robson-vaamonde-0b029028/">Robson Vaamonde</a><br>
			Site: <a href="procedimentosemti.com.br">procedimentosemti.com.br</a><br>
			Facebook: <a href="facebook.com/ProcedimentosEmTI"> Procedimentos Em TI</a><br>
			Facebook: <a href="facebook.com/BoraParaPratica">Bora Para Pratica</a><br>
			Instagram: <a href="https://www.instagram.com/procedimentoem/?hl=pt-br">Procedimentos Em TI</a><br>
			YouTube: <a href="youtube.com/BoraParaPratica">Bora Para Pratica</a><br>
		</body>
	</html>
```
	#sair e salvar o arquivo
	ESC SHIFT :x <Enter>

	#criando o arquivo em PHP
	sudo vim seu_nome.php
	INSERT

```php
<!DOCTYPE html>
	<html lang="pt-br">
		<head>
			<title>Teste da Linguagem PHP</title>
			<meta charset="utf-8">
		</head>
		<body>
			<?php 
				echo '<h1>Teste da Linguagem HTML (HyperText Markup Language)</h1>';
				echo 'Autor: Robson Vaamonde<br>';
				echo 'Linkedin: linkedin.com/in/robson-vaamonde-0b029028/<br>';
				echo 'Site: procedimentosemti.com.br<br>';
				echo 'Facebook: facebook.com/ProcedimentosEmTI<br>';
				echo 'Facebook: facebook.com/BoraParaPratica<br>';
				echo 'Instagram: instagram.com/procedimentoem/<br>';
				echo 'YouTube: youtube.com/BoraParaPratica<br>'; 
			?>
		</body>
	</html>
```
	#sair e salvar o arquivo
	ESC SHIFT :x <Enter>

	#criando o arquivo de informações do PHP
	sudo vim phpinfo.php
	INSERT

```php
<?php
	/** Módulo do PHP para gerar a página de documentação e parâmetros do PHP*/
	phpinfo(); 
?>
```
	#sair e salvar o arquivo
	ESC SHIFT :x <Enter>

#08_ Testando o Apache2 Server e o PHP no navegador<br>

	#utilizar os navegadores para testar as páginas
	firefox ou google chrome: http://endereço_ipv4_ubuntuserver
	firefox ou google chrome: http://endereço_ipv4_ubuntuserver/teste/

#09_ DESAFIO-01: CRIAR UM NOVO DIRETÓRIO NA RAIZ DO APACHE2 EM: /var/www/html COM seu_nome (TUDO EM
MINÚSCULO) PARA UM NOVO SITE, CRIAR UM NOVA PÁGINA EM HTML CHAMADA: index.html (TUDO EM MINÚSCULA) 
NO SEU DIRETÓRIO, ADICIONAR MAIS OPÇÕES DO HTML (VEJA O SITE W3SCHOOLS) E COLOCAR 02 (DUAS) IMAGENS 
NA PÁGINA.

#10_ DESAFIO-02: NO SEU NOVO DIRETÓRIO CRIAR UM ARQUIVO EM PHP CHAMADO: seunome.php, ADICIONAR MAIS
OPÇÕES DO PHP (VEJA O SITE W3SCHOOLS) TESTAR NO SEU NAVEGADOR.

#11_ DESAFIO-03: ADICIONAR O USUÁRIO: admin E O SEU USUÁRIO CRIADO NO SISTEMA NO GRUPO DO APACHE2,
TESTAR AS PERMISSÕES E ACESSOS NOS DIRETÓRIOS DO APACHE 2 E DOS SITES.

OBSERVAÇÃO IMPORTANTE: COMENTAR NO VÍDEO DO APACHE2 SE VOCÊ CONSEGUIU FAZER O DESAFIO COM 
A SEGUINTE FRASE: Desafio do Apache2 realizado com sucesso!!! #BoraParaPrática