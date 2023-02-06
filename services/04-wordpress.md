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
Site Oficial do PHP (7.x ou 8.x): https://www.php.net/<br>
Site Oficial do MySQL: https://www.mysql.com/<br>
Site Oficial do Wordpress: https://br.wordpress.org/

Site Oficial do W3C School HTML5: https://www.w3schools.com/html/default.asp<br>
Site Oficial do W3C School CSS: https://www.w3schools.com/css/default.asp<br>
Site Oficial do W3C School JavaScript: https://www.w3schools.com/js/default.asp<br>
Site Oficial do W3C School PHP: https://www.w3schools.com/php/default.asp

#01_ Instalando as Dependências do Wordpress<br>

	#atualizando as listas do Apt
	sudo apt update
	
	#instalando as dependências do Wordpress
	sudo apt install php8.1-bcmath php8.1-mbstring  php8.1-dev php8.1-curl php8.1-mysql \
	php8.1-xml php8.1-zip php8.1-soap php8.1-imagick php8.1-intl php-json php-pear unzip \
	pwgen libmcrypt-dev ghostscript libapache2-mod-php zlib1g zlib1g-dev

#02_ Criando a Base de Dados do Wordpress<br>

	#opções do comando mysql: -u (user), -p (password)
	sudo mysql -u root -p

	#criando a base de dados do Wordpress
	CREATE DATABASE wordpress;

	#criando o usuário do Wordpress
	CREATE USER 'wordpress' IDENTIFIED WITH mysql_native_password BY 'wordpress';
	
	#aplicando as permissões do usuário Wordpress
	GRANT USAGE ON *.* TO 'wordpress';
	GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress';
	FLUSH PRIVILEGES;
	exit

	#opções do comando mysql: -u (user), -p (password)
	sudo mysql -u wordpress -p

	#visualizando as bases de dados
	SHOW DATABASES;
	exit

#03_ Fazendo o download do Wordpress e descompactando o seu conteúdo<br>

	#acessando diretório temporário
	cd /tmp

	#fazendo o download do Wordpress do site Oficial do Brasil
	#opção do comando wget: -O (output-document)
	wget -O wordpress.zip https://br.wordpress.org/latest-pt_BR.zip

	#descompactando o arquivo do Wordpress
	unzip wordpress.zip

	#movendo o conteúdo do Wordpress para o Apache2
	#opção do comando mv: -v (verbose)
	sudo mv -v wordpress/ /var/www/html/wp/

	#alterando as permissões dos diretórios e arquivos do Wordpress
	#opção do comando chown: -R (recursive), -f (silent), -v (verbose), www-data (user), www-data (group)
	#opção do comando find: . (path), -type d (directory), , type f (file), -exec (execute command)
	#opção do comando chmod: -v (verbose), 755 (Dono=RWX,Grupo=R-X,Outros=R-X)
	#opção do comando chmod: -v (verbose), 644 (Dono=RW-,Grupo=R--,Outros=R--)
	#opção do comando {} \;: executa comandos em lote e aplicar as permissões para cada arquivo/diretório em loop
	sudo chown -Rfv www-data.www-data /var/www/html/wp/
	sudo find /var/www/html/wp/. -type d -exec chmod -v 755 {} \;
	sudo find /var/www/html/wp/. -type f -exec chmod -v 644 {} \;

#04_ Editando o arquivo de conexão com o Banco de Dados do Wordpress<br>

	#acessando o diretório do Wordpress
	cd /var/www/html/wp/

	#criando o arquivo de configuração do banco de dados do Wordpress
	#opção do comando cp: -v (verbose)
	cp -v wp-config-sample.php wp-config.php

	#editando o arquivo de configuração do Wordpress
	vim wp-config.php

	#alterar os valores das variáveis "define" a partir da linha 23
	INSERT
		
		#variável do nome do banco de dados
		define( 'DB_NAME', 'wordpress' );
		
		#variável do nome do usuário de autenticação do banco de dados
		define( 'DB_USER', 'wordpress' );
		
		#variável da senha do usuário do banco de dados
		define( 'DB_PASSWORD', 'wordpress' );
	
	ESC SHIFT :x

#05_ Habilitar os módulos do Apache2 utilizados pelo Wordpress

	#habilitar os módulos do Apache2
	sudo a2enmod cgi alias authz_host deflate dir expires headers mime rewrite autoindex negotiation setenvif

	#reiniciar o serviço do Apache2
	sudo systemctl restart apache2
	sudo systemctl status apache2

#06_ Acessando e configurando o Wordpress no navegador<br>

	firefox ou google chrome: http://endereço_ipv4_ubuntuserver/wp

	#Informações que serão solicitadas na configuração via Web do WordPress
	Português do Brasil: Continuar;
	Informação necessária
		Título do site: Seu Nome;
		Nome de usuário: admin;
		Senha: 123@senac;
		Confirme a senha: Confirmar o uso de uma senha fraca;
		O seu e-mail: admin@senac.intra; 
	<Instalar WordPress>
