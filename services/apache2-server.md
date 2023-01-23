#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 16/01/2023<br>
#Data de atualização: 17/01/2023<br>
#Versão: 0.02<br>

Site Oficial do Apache2: https://httpd.apache.org/<br>
Site Oficial do PHP (7.x ou 8.x): https://www.php.net/

Site Oficial do W3C School HTML5: https://www.w3schools.com/html/default.asp<br>
Site Oficial do W3C School CSS: https://www.w3schools.com/css/default.asp<br>
Site Oficial do W3C School JavaScript: https://www.w3schools.com/js/default.asp<br>
Site Oficial do W3C School PHP: https://www.w3schools.com/php/default.asp

#02_ Instalando o Apache 2 e PHP 8.x<br>

	sudo apt install git vim perl python2 python3 unzip ghostscript zlib1g zlib1g-dev apt-transport-https

	sudo apt install apache2 apache2-utils apache2-bin apache2-data php8.1 php8.1-cli php8.1-common \
	php8.1-mysql php8.1-opcache php8.1-readline php8.1-common php8.1-bcmath php8.1-curl php8.1-intl \
	php8.1-mbstring php8.1-xml php8.1-zip php8.1-soap php-imagick php-json libapache2-mod-php libapr1 \
	libapache2-mod-php8.1 libaprutil1 libaprutil1-dbd-sqlite3 libaprutil1-ldap

#03_ Verificando o Serviço e Versão do Apache 2 e do PHP<br>

	sudo systemctl status apache2
	sudo systemctl restart apache2
	sudo systemctl stop apache2
	sudo systemctl start apache2

	sudo apache2 -V (Server)
	sudo php --version (PHP)

#04_ Verificando a Porta de Conexão do Apache 2<br>

	#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
	sudo lsof -nP -iTCP:'80' -sTCP:LISTEN

#05_ Localização dos Arquivos de Configuração do Apache 2 e do PHP 8.x<br>

	/etc/apache2/ <-- Diretório de configuração do Apache 2 Server
	/etc/apache2/apache2.conf <-- Arquivo de configuração do Apache 2 Server
	/etc/apache2/sites-available/ <-- Diretório padrão do Sites Acessíveis do Apache 2 Server
	/etc/apache2/conf-available/ <-- Diretório padrão das Configurações Acessíveis do Apache 2 Server
	/etc/php/ <--- Diretório de configuração do PHP 7.x ou 8.x
	/etc/php/7.4/apache2/php.ini <-- Arquivo de configuração do PHP 7.x do Apache 2 Server
	/etc/php/8.1/apache2/php.ini <-- Arquivo de configuração do PHP 8.x do Apache 2 Server
	/var/www/html/ <-- Diretório padrão das Hospedagem de Site do Apache 2 Server
	/var/log/apache2/ <-- Diretório padrão dos Logs do Apache 2 Server

#06_ Adicionado o Usuário Local no Grupo Padrão do Apache2 Server<br>

	#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
	sudo usermod -a -G www-data $USER
	newgrp www-data
	id
	
	#recomendado reinicializar a máquina para aplicar as permissões
	sudo reboot

#07_ Criando um diretório de Teste do HTML e PHP no Linux Mint<br>

	cd /var/www/html
	
		#opção do comando mkdir: -v (verbose)
		sudo mkdir -v teste
		#opção do comando chmod: -v (verbose), 775 (User=RWX,Group=RWX,Other=R-X)
		sudo chmod -v 775 teste/
		#opção do comando chown: -v (verbose), root (User), . (separate), www-date (group)
		sudo chown -v root.www-data teste/
		cd teste

#08_ Criando páginas HTML e PHP para testar o Apache2 Server<br>

	#OBSERVAÇÃO IMPORTANTE: nesse exemplo vamos editar o arquivo teste.html, teste.php
	e phpinfo.php utilizando o Vim.

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

```php
<?php
	/** Módulo do PHP para gerar a página de documentação e parâmetros do PHP*/
	phpinfo(); 
?>
```

#09_ Testando o Apache2 e o PHP no navegador<br>

	firefox ou google chrome: http://endereçco_ipv4_ubuntuserver
	firefox ou google chrome: http://endereçco_ipv4_ubuntuserver/teste/
