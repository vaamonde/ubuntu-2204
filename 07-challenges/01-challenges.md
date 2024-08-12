#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 28/04/2024<br>
#Data de atualização: 12/08/2024<br>
#Versão: 0.03<br>

=========================================================================================<br>
############################### 01-openssh.md CHALLENGES ################################<br>
=========================================================================================<br>

#11_ DESAFIO-01: PERMITIR QUE O USUÁRIO: admin SE CONECTE REMOTAMENTE NO SERVIDOR UBUNTU
SERVER VIA SSH UTILIZANDO O POWERSHELL, PUTTY OU TERMINAL NO LINUX.

	#editar o arquivo de configuração do OpenSSH
	sudo vim /etc/ssh/sshd_config +77
	INSERT

		AllowUsers vaamonde admin
		AllowGroups vaamonde admin

	#salvar e sair do arquivo
	ESC SHIFT :x <Enter>

	#reiniciar o serviço do OpenSSH Server
	sudo systemctl restart ssh
	sudo systemctl status ssh

#12_ DESAFIO-02: CRIAR UM USUÁRIO COM O SEU NOME, EXEMPLO: robson (TUDO EM MINÚSCULO),
FAZER O MESMO PROCEDIMENTO PARA ADICIONAR O SEU USUÁRIO AO GRUPO: sudo E PERMITIR QUE O
SEU USUÁRIO ACESSE O SERVIDOR UBUNTU SERVER VIA SSH.

	#criando o usuário Robson
		sudo adduser robson
			New password: pti@2018
			Retype new password: pti@2018
				Full Name []: Robson Vaamonde
				Room Number []: <Enter>
				Work Phone []: <Enter>
				Home Phone []: <Enter>
				Other []: <Enter>
			Is the information correct? [Y/n] y <Enter>
	
	#listando o usuário criado com o comando getent
	sudo getent passwd robson

	#adicionando o usuário Robson ao grupo do SUDO
	sudo usermod -aG sudo robson

	#verificando os grupos do usuário Robson
	sudo groups robson

	#editar o arquivo de configuração do OpenSSH
	sudo vim /etc/ssh/sshd_config +77
	INSERT

		AllowUsers vaamonde admin robson
		AllowGroups vaamonde admin robson

	#salvar e sair do arquivo
	ESC SHIFT :x <Enter>

	#reiniciar o serviço do OpenSSH Server
	sudo systemctl restart ssh
	sudo systemctl status ssh

=========================================================================================<br>
############################ 02-apache2-server.md CHALLENGES ############################<br>
=========================================================================================<br>

#09_ DESAFIO-01: CRIAR UM NOVO DIRETÓRIO NA RAIZ DO APACHE2 EM: /var/www/html COM: seu_nome
(TUDO EM MINÚSCULO) PARA UM NOVO SITE, DENTRO DO SEU DIRETÓRIO CRIAR UM NOVA PÁGINA EM HTML
CHAMADA: index.html (TUDO EM MINÚSCULA), ADICIONAR MAIS OPÇÕES DO HTML (VEJA O SITE W3SCHOOLS)
E COLOCAR 02 (DUAS) IMAGENS NA PÁGINA.

	#acessando o diretório do Apache2 Server
	cd /var/www/html

	#criando o diretório com o seu nome
	sudo mkdir -v robson
	
	#alterando as permissões do diretório de robson
	sudo chmod -Rv 2775 robson/
		
	#alterando o dono e grupo do diretório de robson
	sudo chown -Rv root.www-data robson/
	
	#acessando o diretório robson
	cd robson/

	#criando uma página em HTML com o seu nome
	sudo vim index.html
	INSERT

```html
<!DOCTYPE html>
	<html lang="pt-br">
		<head>
			<title>Nova Página Index HTML do Desafio</title>
			<meta charset="utf-8">
		</head>
		<body>
			<h1>Nova Página Index HTML do Desafio</h1>
			Autor: Robson Vaamonde<br>
			Editado por: Robson Vaamonde<br>
			Linkedin: <a href="https://www.linkedin.com/in/robson-vaamonde-0b029028/">Robson Vaamonde</a><br>
			Site: <a href="http://procedimentosemti.com.br/">procedimentosemti.com.br</a><br>
			Facebook: <a href="https://www.facebook.com/ProcedimentosEmTI"> Procedimentos Em TI</a><br>
			Facebook: <a href="https://www.facebook.com/BoraParaPratica">Bora Para Pratica</a><br>
			Instagram: <a href="https://www.instagram.com/procedimentoem/?hl=pt-br">Procedimentos Em TI</a><br>
			YouTube: <a href="https://www.youtube.com/BoraParaPratica">Bora Para Pratica</a><br>
			<h1>Novos Recursos do HTML</h1>
			<!-- Adicionando os novos recursos do HTML -->
				<img src="https://hermes.dio.me/assets/articles/beea2f49-fb44-4778-8cb0-69101a5113ab.png" alt="COMO FUNCIONA O HTML" width="600" height="400"><br>
				<img src="https://hermes.dio.me/assets/articles/50a9f5e9-1ac3-40d9-8559-def8b46e981f.png" alt="ESTRUTURA BÁSICA" width="600" height="400"><br>
				<a href="http://172.16.1.20/robson/robson.php">Página em PHP</a>
		</body>
	</html>
```
	#salvar e sair do arquivo
	ESC SHIFT :x <Enter>

#10_ DESAFIO-02: NO SEU NOVO DIRETÓRIO CRIAR UM ARQUIVO EM PHP CHAMADO: seunome.php, ADICIONAR
MAIS OPÇÕES DO PHP (VEJA O SITE W3SCHOOLS) TESTAR NO SEU NAVEGADOR. DICA: FAZER O HYPERLINK
DAS PÁGINAS: index.html COM A PÁGINA PHP seunome.php PARA FACILITAR O ACESSO E COMEÇAR UM 
PROJETO DE SITE.

	#criando uma página em PHP com o seu nome
	sudo vim robson.php
	INSERT

```php
<!DOCTYPE html>
	<html lang="pt-br">
		<head>
			<title>Nova Página em PHP do Desafio</title>
			<meta charset="utf-8">
		</head>
		<body>
			<h1>Nova Página em PHP do Desafio</h1>
			Autor: Robson Vaamonde<br>
			Editado por: Robson Vaamonde<br>
			Linkedin: <a href="https://www.linkedin.com/in/robson-vaamonde-0b029028/">Robson Vaamonde</a><br>
			Site: <a href="http://procedimentosemti.com.br/">procedimentosemti.com.br</a><br>
			Facebook: <a href="https://www.facebook.com/ProcedimentosEmTI"> Procedimentos Em TI</a><br>
			Facebook: <a href="https://www.facebook.com/BoraParaPratica">Bora Para Pratica</a><br>
			Instagram: <a href="https://www.instagram.com/procedimentoem/?hl=pt-br">Procedimentos Em TI</a><br>
			YouTube: <a href="https://www.youtube.com/BoraParaPratica">Bora Para Pratica</a><br>
			<h1>Novos Recursos do PHP</h1>
			<!-- Adicionando os novos recursos do PHP -->
			<?php
				// Obtém a data atual
				$dataAtual = date('d/m/Y');
				echo "Data atual: " . $dataAtual . "<br>";

				// Obtém a hora atual
				$horaAtual = date('H:i:s');
				echo "Hora atual: " . $horaAtual . "<br>";

				// Obtém a data e hora atual combinadas
				$dataHoraAtual = date('d/m/Y H:i:s');
				echo "Data e hora atual: " . $dataHoraAtual . "<br>";
			?>
			<a href="http://172.16.1.20/robson/">Página em HTML</a>
		</body>
	</html>
```

	#salvar e sair do arquivo
	ESC SHIFT :x <Enter>

#11_ DESAFIO-03: ADICIONAR O USUÁRIO: admin E O USUÁRIO: seu_usuário CRIADOS NO SISTEMA NO 
GRUPO DO APACHE2, TESTAR AS PERMISSÕES DE ACESSO NOS DIRETÓRIOS DO APACHE2 E NOS DIRETÓRIOS 
DOS SITES CRIADOS.

	#adicionando o usuário Admin e Robson ao grupo do Apache2
	sudo usermod -aG www-data admin
	sudo usermod -aG www-data robson

#12_ #12_ NOVO DESAFIO-04:** CONHECER O PROJETO: *https://www.infinityfree.com/*, CRIAR UMA 
CONTA: *Free Register*, FAZER AS CONFIGURAÇÕES BÁSICAS DO SEU DOMÍNIO E REPLICAR OS DESAFIO-01 
E 02 NO SITE ON-LINE (CLOUD).

	#acessando o site do InfinityFree
	https://www.infinityfree.com/

	#criando uma conta no InfinityFree
	<Register>

	#criando o cadastro no Site do InfinityFree
	Email address: SEU_EMAIL
	Password: SUA_SENHA
	Confirm Password: CONFIRMA_SUA_SENHA
	(X) Ive read and agree to the terms of service
	(X) Confirme que é humano (CloudFlare)
	<Sign Up>

	#validando o email recebido da InfinityFree
	Clique no Link: <Verify Email Address>

	#criando um nova conta de site na InfinityFree
	<Create Account>

	#configuração da conta na InfinityFree
	Step 1: Choose Hosting Plan: InfinityFree <Create Now>
	Step 2: Domain Name:
	  Domain Type: Subdomain
	  Subdomain: vaamonde
	  Domain Extension: infinityfreeapp.com
	<Check Availability>
	Step 3: Additional Information
	  Account Label: Primeiro Site do Vaamonde
	  Account Username: (generated automatically)
	  Account Password: SUA_SENHA_SEGURA
	  Email Consent: I Approved
	  (X) Confirme que é humano (CloudFlare)
	<Create Account>
	Step 4: Done
	<Finish>

	#email da confirmação do site do InfinityFree
	Domínio: vaamonde.infinityfreeapp.com

	#OBSERVAÇÃO IMPORTANTE: A CRIAÇÃO DO SITE E LIBERAÇÃO DO ENDEREÇO IP PÚBLICO PODE
	#DEMORA CERCA DE 72HS, AGUARDE PARA QUE O SEU DOMÍNIO SEJA LIBERADO O ACESSO E VOCÊ
	#CONSIGA CRIAR SUAS PÁGINAS.

=========================================================================================<br>
############################# 02-mysql-server.md CHALLENGES #############################<br>
=========================================================================================<br>

#12_ DESAFIO-01: CRIAR UM BANCO DE DADOS COM O: seu_nome (TUDO EM MINÚSCULO), DENTRO DESSE 
BANCO DE DADOS CRIAR UMA TABELA COM O: seu_nome (TUDO EM MINÚSCULO) COM AS SEGUINTES COLUNAS: 
Nome (Tipo Texto) e Idade (Tipo Numérico) (TUDO EM MINÚSCULO), DENTRO DESSA TABELA CRIAR UM 
REGISTRO COM: Seu Nome e Sua Idade (VEJA O SITE W3SCHOOLS). OBSERVAÇÃO IMPORTANTE: NÃO PRECISA 
CRIAR CHAVE PRIMÁRIA (Primary Key) NA SUA TABELA.

	#acessar o MySQL Server como Root
	sudo mysql -u root -p

```sql
/* criando o banco de dados robson */
CREATE DATABASE robson;

/* verificando os banco de dados criados */
SHOW DATABASES;

/* acessando o banco de dados robson */
USE robson;

/* criando uma tabela robson com os campos nome e idade */
CREATE TABLE robson (
	nome VARCHAR(50),
	idade INT
);

/* verificando a tabela criada robson */
SHOW TABLES;

/* verificando a descrição da tabela criada robson */
DESC robson;

/* inserindo os dados na tabela robson */
INSERT INTO robson (
	nome, 
	idade
)
VALUES (
	'Robson Vaamonde', 
	45
);

/* verificando as informações cadastradas na tabela robson */
SELECT * FROM robson;
```

#13_ DESAFIO-02: ADICIONAR O USUÁRIO: admin E O USUÁRIO: seu_usuário CRIADOS NO PROCEDIMENTO
DE CONFIGURAÇÃO DO OPENSSH NO GRUPO DO MYSQL PARA ADMINISTRAR O SERVIDOR SEM A NECESSIDADE 
DO COMANDO SUDO.

	#adicionando o usuário Admin e Robson ao grupo do Apache2
	sudo usermod -aG mysql admin
	sudo usermod -aG mysql robson

#14_ DESAFIO-03: CRIAR MAIS UM USUÁRIO NO MYSQL COM O SEU NOME: seu_nome, CONFIGURAR TODAS
AS PERMISSÕES IGUAIS AO USUÁRIO DBA, TESTAR A CONEXÃO NO TERMINAL.

	#acessar o MySQL Server como Root
	sudo mysql -u root -p

```sql
/* criando o usuário Robson Localhost */
CREATE USER 'robson'@'localhost' IDENTIFIED WITH mysql_native_password BY 'pti@2018';

/* alterando as permissões do usuário Robson Localhost */
GRANT ALL ON *.* TO 'robson'@'localhost';

/* aplicando todas as mudanças na base de dados */
FLUSH PRIVILEGES;

/* Verificando o Usuário Robson criado no Banco de Dados MySQL Server*/
SELECT user,host FROM mysql.user WHERE user='robson';

/* saindo do MySQL Client Console */
exit
```

	#se logando com o usuário Robson para testar a conexão com o MySQL Server
	sudo mysql -u robson -p

```sql
/* visualizando as bases de dados do MySQL */
SHOW DATABASES;

/* saindo do MySQL Client Console */
exit
```

#15_ DESAFIO-04: CRIAR OS USUÁRIO: dba E SEU NOME: seu_nome, CONFIGURAR TODAS AS PERMISSÕES
IGUAIS AO USUÁRIO ROOT REMOTO, TESTAR A CONEXÃO NO TERMINAL, MYSQL WORKBENCH E VSCODE.

	#acessar o MySQL Server como Root
	sudo mysql -u root -p

```sql
/* criando os usuários dba e robson remoto no  MySQL Server */
CREATE USER 'dba'@'%' IDENTIFIED WITH mysql_native_password BY 'pti@2018';
GRANT ALL ON *.* TO 'dba'@'%';
CREATE USER 'robson'@'%' IDENTIFIED WITH mysql_native_password BY 'pti@2018';
GRANT ALL ON *.* TO 'robson'@'%';
FLUSH PRIVILEGES;

/* verificando os usuários Remoto do MySQL Server */
SELECT user,host FROM mysql.user where host = '%';
exit
```

#16_ DESAFIO-04: CONHECER O PROJETO: DB4Free https://www.db4free.net/, NA OPÇÃO DE BANCO 
DE DADOS, FAZER A CRIAÇÃO DE UM BANCO DE DADOS GRATUITO NA NUVEM (CLOUD) SEGUINDO O MESMO
DESAFIO-01 DA ETAPA: 12 E DEPOIS TESTAR A CONEXÃO NO MYSQL WORKBENCH E VSCODE.

	#acessar o site do DB4Free
	https://www.db4free.net/
		Clicar em: Criar uma conta
			Cadastre-se:
				Nome do banco de dados MySQL: robson
				Nome de usuário MySQL: SEU_USUÁRIO
				Senha do MySQL: SUA_SENHA
				Confirmação de senha do MySQL: SUA_SENHA
				E-mail: SEU_EMAIL@SEU_DOMÍNIO.COM
				(Enable) Li e concordo com os termos de uso.
			<Cadastre-se>
	
	#acessar o email de confirmação da conta e do banco DB4Free
	Você receberá um e-mail para confirmação de seu cadastro.
		Clicar no link: https://www.db4free.net/confirm.php?create=XXXXXXXXX
	
	#acessando o PhPMyAdmin do DB4Free
	https://www.db4free.net/phpMyAdmin/
		 Idioma (Language): Português (Brasil) - Português (Brazil)
		 Usuário: SEU_USUÁRIO
		 Senha: SUA_SENHA
	
	#criando a tabela no banco de dados robson no PhPMySQLAdmin
	clicar no Banco: robson
		Clicar em: <Criar nova tabela>
			Nome da tabela: robson
			Número de colunas: 2
		<Criar>
	
	#criando os campos da tabela robson no banco de dados robson
	Nome: nome - Tipo: VARCHAR - 50
	Nome: idade - Tipo: INT - 3
	<Salvar>

	#inserir os dados na tabela robson no banco de dados robson
	clicar em: Inserir
		Coluna: nome - Valor: Robson Vaamonde
		Coluna: idade - Valor: 45
	<Executar>

	#visualizar os dados cadastrados na tabela robson no banco de dados robson
	clicar em: Visualizar

	#conectando o DB4Free no MySQL Workbench
	MySQL Workbench
		MySQL Connections: (+)
			Connection name: DB4Free
			Connection Method:
				Parameters
					Hostname: db4free.net
					Port: 3306
					Username: SEU_USUÁRIO
					Password: <Store in Keychain>
						Password: SUA_SENHA <OK>
					<Test Connection>
						<Continue Anyway>
						<OK>
				Advanced
					Timeout: 1000
		<OK>
	
	#conectando o DB4Free no Visual Studio Code VSCode
	Visual Studio Code
		Database
			<+ Add Connection>
				Connect to server
					Name: DB4Free
				Server Type
					MySQL Server
				Config
					Host: db4free.net
					Port: 3306
					Username: SEU_USUÁRIO
					Password: SUA_SENHA
			<Save>
		<+ Connect>

=========================================================================================<br>
############################## 03-wordpress.md CHALLENGES ###############################<br>
=========================================================================================<br>

#07_ DESAFIO-01: FAZER A INSTALAÇÃO DE UM NOVO TEMA DO WORDPRESS, FAZER A CRIAÇÃO DE 02 (DUAS)
POSTAGEM NO WORDPRESS DE QUALQUER CONTEÚDO ADICIONANDO PELO MENOS UMA IMAGEM.

	#acessar o site Wordpress
	http://172.16.1.20/wp/wp-login.php
		Usuário: admim
		Senha: pti@2018
		<Acessar>

	#instalando um novo Tema do Wordpress
	Painel
		Aparência
			Temas
				<Adicionar novo tema>
					Tema: Twenty Seventeen <Instalar>
					<Ativar>
	
	#criando as duas postagem no Wordpress no tema Twenty Seventeen
	Painel
		Posts
			<Adicionar novo Post>
				Adicionar Título: Nova Postagem no Wordpress
				Digite / para escolher o bloco: Adicionando uma nova postagem no Wordpress
				Digite / para escolher o bloco: Clicar no + (MAIS)
					Imagem: Inserir a partir de uma URL
						Colar ou digitar a URL: https://hermes.dio.me/assets/articles/beea2f49-fb44-4778-8cb0-69101a5113ab.png <Aplicar>
				Digite / para escolher o bloco: Clicar no + (MAIS)
					Imagem: Inserir a partir de uma URL
						Colar ou digitar a URL: https://hermes.dio.me/assets/articles/50a9f5e9-1ac3-40d9-8559-def8b46e981f.png <Aplicar>
			<Publicar>
				<Publicar>
				<Ver Post>

#08_ DESAFIO-02: FAZER A INSTALAÇÃO E CONFIGURAÇÃO DE 02 (DOIS) PLUGINS DO WORDPRESS MAIS USADO
NO DIA A DIA O: Wordfence Security E: W3 Total Cache.

	#adicionado o Plugin do Wordfence Security
	Painel
		Plugins
			<Adicionar Plugin>
				Pesquisar Plugin: Wordfence Security <Instalar agora>
				<Ativar>

	#configurando o Wordfence Security
	Complete a instalação do Wordfence
		<OBTER SUA LICENÇA DO WORDFENCE>
			FREE: <GET FREE LICENSE>
				<I'm OK waiting 30 days for protection from new threats>
					Site URL: http://172.16.1.20/wp
					Email: SEU_EMAIL@SEU_DOMÍNIO
					Would you like WordPress security and vulnerability alerts sent to you via email? NO
					(ENABLE) I have read and agree to, as applicable
					<Register>
				Check your email: Install Your Wordfence License
					Automatic Installation: <Install My License Automatically>
						Instalar Wordfence
							E-mail: SEU_EMAIL@SEU_DOMÍNIO
							Chave da licença: SUA_CHAVE_DE_LICENÇA
						<INSTALAR LICENÇA>
				Licença gratuita instalada
					<IR PARA O PAINEL>
						Você quer que o Wordfence esteja atualizado automaticamente? < Sim, ativar a atualização automática.>
						Para tornar seu site o mais seguro possível, reserve um momento para otimizar o firewall de aplicativos da web do Wordfence: <CLIQUE AQUI PARA CONFIGURAR>
							<BAIXAR .HTACCESS>
								Otimizar o firewall do Wordfence: <CONTINUAR>
							<FECHAR>
	
	#adicionado o Plugin do W3 Total Cache
	Painel
		Plugins
			<Adicionar Plugin>
				Pesquisar Plugin: W3 Total Cache <Instalar agora>
				<Ativar>
	
	#configurando o Plugin do W3 Total Cache
	Painel
		Performance
			Total Cache Setup Guide
				By allowing us to collect data about how W3 Total Cache is used: <ACCEPT>
				Welcome to the W3 Total Cache Setup Guide! <NEXT>
				Page Cache: <Test Page Cache> <SKIP>
			Please execute commands manually: <VIEW REQUIRED CHANGE>
				COPIAR AS MUDANÇAS DO ARQUIVO: WP-CONFIG.PHP
					/** Enable W3 Total Cache */
					define('WP_CACHE', true); // Added by W3 Total Cache
			<HIDE REQUIRED CHANGE>

	#editando o arquivo de configuração do Wordpress
	sudo vim /var/www/html/wp/wp-config.php +
	INSERT

		#colar o conteúdo a partir da linha: 101
		/** Enable W3 Total Cache */
		define('WP_CACHE', true); // Added by W3 Total Cache
	
	#salvar e sair do arquivo
	ESC SHIFT :x <Enter>

	#reiniciar o serviço do Apache2 Server
	sudo systemctl restart apache2
	sudo systemctl status apache2

#09_ DESAFIO-03: NO TEMA QUE VOCÊ INSTALOU, VERIFICAR A POSSIBILIDADE DE ADICIONAR OS ÍCONES DO
GITHUB, LINKEDIN E FACEBOOK, ADICIONAR TAMBÉM OS LINKS PARA O SITE CRIADO NO DESAFIO DO APACHE2,
FACILITANDO O ACESSO A SUAS PÁGINAS CRIADAS EM HTML E PHP E COMEÇAR A CRIAR UM SISTEMA DE GESTÃO
UNIFICADA DE PÁGINAS DE INTERNET QUE SERÁ UTILIZADO EM TODO ESSE CURSO.

	#adicionado o Plugin do Social Media Share Buttons
	Painel
		Plugins
			<Adicionar Plugin>
				Pesquisar Plugin: Social Media Share Buttons & Social Sharing Icons <Instalar Agora>
				<Ativar>

	#configurando o Social Media Share Buttons
	Painel
		Ultimate Social Media Icons
			<Allow & Continue>
				1 Quais ícones você deseja mostrar em seu site?
					(ENABLE) Facebook
					(ENABLE) YouTUBE
					(ENABLE) LinkedIn
				<Salvar>
				2 O que você deseja que os ícones façam?
					Facebook: 
						(ENABLE) Visitar minha página do Facebook em: https://www.facebook.com/ProcedimentosEmTi
					Youtube:
						(ENABLE) Visitar minha página do Youtube em: https://www.youtube.com/boraparapratica
					LinkedIn: 
						(ENABLE) Visitar minha página do Linkedin em: https://www.linkedin.com/in/robson-vaamonde-0b029028/
				<Salvar>
				3 Onde eles devem ser exibidos?
					Flutuando nas páginas do seu site: Inferior direito
				<Salvar>
			<Save All Settings>

	#adicionado o Plugin do WP Social Widget 
	Painel
		Plugins
			<Adicionar Plugin>
				Pesquisar Plugin: WP Social Widget
			<Ativar>
	
	#personalizando o sistema com WP Social Widget
	Painel
		Aparência
			Widgets
				Rodapé 2
				<+ Adicionar bloco>
					<Navegar por todos>
						Widgets
							WP Social Widget
								Title: Facebook Procedimentos em TI
								Open Social Profile Links in: Blank (New Tab) Page
								(ENABLE) Icon Circle:
								Click on social icon to show social link field(s): Facebook
								Facebook link: https://www.facebook.com/ProcedimentosEmTi
				<+ Adicionar bloco>
					<Navegar por todos>
						Widgets
							WP Social Widget
								Title: LinkedIn Robson Vaamonde
								Open Social Profile Links in: Blank (New Tab) Page
								(ENABLE) Icon Circle:
								Click on social icon to show social link field(s): LinkedIn
								Facebook link: https://www.linkedin.com/in/robson-vaamonde-0b029028/
				<+ Adicionar bloco>
					<Navegar por todos>
						Widgets
							WP Social Widget
								Title: Github Robson Vaamonde
								Open Social Profile Links in: Blank (New Tab) Page
								(ENABLE) Icon Circle:
								Click on social icon to show social link field(s): Github
								Facebook link: https://github.com/vaamonde
				<+ Adicionar bloco>
					<Navegar por todos>
						Widgets
							WP Social Widget
								Title: YouTUBE Bora para Prática
								Open Social Profile Links in: Blank (New Tab) Page
								(ENABLE) Icon Circle:
								Click on social icon to show social link field(s): YouTUBE
								Facebook link: https://www.youtube.com/boraparapratica
			<Atualizar>

#10_ DESAFIO-04: FAZER A INSTALAÇÃO DE UM NOVO SITE WORDPRESS, SEGUINDO OS PROCEDIMENTOS ABAIXO:

A) Path New Site: /var/www/html/site<br>
B) Database Name: newsite<br>
C) User and Password Database: newsite<br>
D) Wordpress Template Install: Astra

	#acessando diretório temporário do Ubuntu Server
	cd /tmp

	#baixando o Wordpress do site Oficial
	wget -O site.zip https://br.wordpress.org/latest-pt_BR.zip

	#descompactando o arquivo do WordPress
	unzip site.zip

	#movendo o conteúdo do WordPress para o diretório do Apache2 Server
	#opção do comando mv: -v (verbose)
	sudo mv -v wordpress/ /var/www/html/site/

	#alterando as permissões dos diretórios e arquivos do WordPress
	sudo chown -Rfv www-data.www-data /var/www/html/site/
	sudo find /var/www/html/site/. -type d -exec chmod -v 2775 {} \;
	sudo find /var/www/html/site/. -type f -exec chmod -v 2664 {} \;

	#acessando o diretório do WordPress
	cd /var/www/html/site/

	#criando o arquivo de configuração do banco de dados do WordPress
	sudo cp -v wp-config-sample.php wp-config.php

	#editando o arquivo de configuração do WordPress
	sudo vim wp-config.php
	INSERT

```php
#alterar os valores das variáveis "define" a partir da linha: 23

#alterar o valor da variável: DB_NAME do nome do banco de dados na linha: 23
define( 'DB_NAME', 'newsite' );

#alterar o valor da variável: DB_USER do nome do usuário de autenticação do banco de dados na linha: 26
define( 'DB_USER', 'newsite' );

#alterar o valor da variável: DB_PASSWORD da senha do usuário do banco de dados na linha: 29
define( 'DB_PASSWORD', 'newsite' );

#configuração do Salt do WordPress site: https://api.wordpress.org/secret-key/1.1/salt/
#mais informações sobre o Salt's do WordPress: https://www.hostinger.com.br/tutoriais/wordpress-salt
#copiar o conteúdo do Salt e colocar a partir da linha: 53
#OBSERVAÇÃO IMPORTANTE: remover as linhas existentes de: 53 até: 60 antes de copiar/colar as
#novas linhas do Salt, utilizar a opção: dd do Editor de Texto VIM. 
```

	#salvar e sair do arquivo
	ESC SHIFT :x <Enter>

	#reiniciar o serviço do Apache2 Server
	sudo systemctl restart apache2
	sudo systemctl status apache2

	#opções do comando mysql: -u (user), -p (password)
	sudo mysql -u root -p

```sql
/* Criando o Banco de Dados Wordpress */
CREATE DATABASE newsite;

/* Criando o usuário da Base de Dados do WordPress */
CREATE USER 'newsite' IDENTIFIED WITH mysql_native_password BY 'newsite';

/* Aplicando as permissões de acesso do usuário WordPress */
GRANT USAGE ON *.* TO 'newsite';
GRANT ALL PRIVILEGES ON newsite.* TO 'newsite';
FLUSH PRIVILEGES;

/* Verificando o Usuário Wordpress criado no Banco de Dados MySQL Server*/
SELECT user,host FROM mysql.user WHERE user='newsite';

/* Visualizando as bases de dados do MySQL */
SHOW DATABASES;

/* Acessando o Banco de Dados wordpress */
USE newsite;

/* Saindo do Banco de Dados */
exit
```

	#se logando com o usuário newsite para testar a conexão com o MySQL Server
	sudo mysql -u newsite -p

```sql

/* visualizando a base de dados do WordPress */
SHOW DATABASES;
USE newsite;
exit
```

	#acessando o gerenciados do Wordpress via Navegador
	firefox ou google chrome: http://172.16.1.20/site

	#Informações que serão solicitadas na configuração via Web do WordPress
	Português do Brasil: Continuar;
	Informação necessária
		Título do site: Novo Site Wordpress;
		Nome de usuário: SEU_USUÁRIO;
		Senha: SUA_SENHA;
		Confirme a senha: On (Habilitado) Confirmar o uso de uma senha fraca;
		O seu e-mail: SEU_EMAIL@SEU_DOMÍNIO; 
	<Instalar WordPress>
	<Acessar>

	#Tela de login do WordPress
	firefox ou google chrome: http://172.16.1.20/site/wp-login.php
		Nome de usuário ou endereço de email: SEU_USUÁRIO
		Senha: SUA_SENHA
		Lembrar-me: On (Habilitado)
		<Acessar>
	
	#Configuração dos Links Permanentes do WordPress
	Configurações
		Links permanentes
			Configurações de Links Permanentes
				Configurações Comuns
					Estrutura de Links Permanentes
						ON (Selecionar): Padrão (http://172.16.1.20/site/?=123)
		<Salvar Alterações>
	
	#instalando um novo Tema do Wordpress Astra
	Painel
		Aparência
			Temas
				<Adicionar novo tema>
					Tema: Astra <Instalar>
					<Ativar>

=========================================================================================<br>
################################ 05-nodejs.md CHALLENGES ################################<br>
=========================================================================================<br>

#10_ DESAFIO-01: FAZER A CRIAÇÃO DE UM NOVO PROJETO DO NODE.JS EXPRESS, CRIAR UM DIRETÓRIO COM:
seu_nome (TUDO EM MINÚSCULO) NA RAIZ DO PERFIL DO SEU USUÁRIO: /home/seu_usuário, CRIAR UMA 
PÁGINA DENTRO DO SEU DIRETÓRIO CHAMADA: seunome.js (TUDO EM MINÚSCULO), MUDAR A MENSAGEM NO 
BROWSER PARA: Meu novo projeto em Node.JS - Seu Nome, MUDAR A PORTA DO PROJETO PARA 3030 E
ADICIONAR MAIS ALGUM RECURSO DO NODE.JS NO SEU PROJETO (VEJA O SITE W3SCHOOLS)

	#criando o diretório do novo projeto do Node.JS
	mkdir -v /home/vaamonde/robson

	#acessando o diretório do novo projeto robson
	cd /home/vaamonde/robson/

	#inicializando o diretório robson do Node.JS
	npm init -y
	
	#instalando o Módulo/Pacote Express do Node.JS
	npm install express

	#listando o conteúdo do diretório robson do Node.JS
	ls -lha

	#criando o arquivo robson.js do novo projeto do Node.JS
	vim robson.js
	INSERT

```js
// Criando as variáveis do Express e do App do Node.JS
var express = require ('express'); 
var app = express();

// Mensagem que será mostrada no browser (navegador) 
app.get('/', function (req, res) {
    // Obtém a data e hora atual
    var dataHoraAtual = new Date().toLocaleString();
    // Mensagem que será enviada com a data e hora atual
    var mensagem = 'Meu novo projeto em Node.JS - Robson Vaamonde<br>Data e hora atual: ' + dataHoraAtual;
    res.send(mensagem);
});

// Porta padrão utilizada pela aplicação do Node.JS
app.listen(3030, function() {
	console.log('Aplicativo de exemplo ouvindo na porta 3030');
});
```

	#salvar e sair do arquivo
	ESC SHIFT :x <Enter>

	#executando o novo projeto em background
	node robson.js &

	#verificando se a aplicação e porta está disponível
	sudo lsof -nP -iTCP:'3030' -sTCP:LISTEN

	#acessando o projeto via navegador
	firefox ou google chrome: http://172.16.1.20:3030

#11_ DESAFIO-02: DEIXAR OS DOIS PROJETOS DO NODE.JS RODANDO EM SEGUNDO PLANO (BACKGROUND),
NO WORDPRESS CRIAR OS HYPER LINKS PARA OS PROJETOS IGUAL QUE FOI FEITO NO DESAFIO-03 DO
WORDPRESS PARA AS PÁGINAS HTML E PHP, NÃO ESQUEÇA DE TESTAR O ACESSO.

	#acessando o primeiro projeto do Node.Js
	cd /home/vaamonde/nodejs-hello

	#executando o projeto em background
	node index.js &

	#verificando se a aplicação e porta está disponível
	sudo lsof -nP -iTCP:'3000' -sTCP:LISTEN

	#acessando o projeto via navegador
	firefox ou google chrome: http://172.16.1.20:3000

	#acessar o site Wordpress
	http://172.16.1.20/wp/wp-login.php
		Usuário: admim
		Senha: pti@2018
		<Acessar>

	#personalizar a menu do tema do Wordpress
	Painel
		Aparência
			Temas
				Twenty Seventeen: <Personalizar>
					Menus
						<Criar novo menu>
							Nome do menu: Principais Links
							Localizações de menu: (ENABLE) Menu do Topo
							<Seguinte>
						<Adicionar Itens>
							Páginas: Início
						<Adicionar Itens>
							Links Personalizados
								URL: http://172.16.1.20:3000
								Texto do link: Projeto Node.JS
							<Adicionar ao menu>
						<Adicionar Itens>
							Links Personalizados
								URL: http://172.16.1.20:3030
								Texto do link: Novo Projeto Node.JS
							<Adicionar ao menu>
					<Publicar>

=========================================================================================<br>
########################### 06-tomcat-server.md CHALLENGES ##############################<br>
=========================================================================================<br>

#16_ DESAFIO-01: FAZER A CRIAÇÃO DE 02 (DOIS) NOVOS USUÁRIOS PARA ADMINISTRAR O APACHE TOMCAT SERVER
PRIMEIRO USUÁRIO: tomcat10 (TUDO EM MINÚSCULO) SENHA: tomcat10, SEGUNDO USUÁRIO: seu_nome (TUDO EM 
MINÚSCULO) SENHA: sua_senha, TESTAR O ACESSO AO TOMCAT COM OS USUÁRIOS E VERIFICAR SE ESTÃO TENDO
DIREITOS PARA ADMINISTRAR O SERVIDOR. OBSERVAÇÃO IMPORTANTE: RECOMENDO UTILIZAR DOIS NAVEGADORES
DIFERENTES PARA ESSE TESTE, POIS O USUÁRIO E SENHA DO TOMCAT GERALMENTE FICA EM CACHE NO NAVEGADOR.

	#editando o arquivo de criação de usuários do Tomcat
	sudo vim /opt/tomcat/conf/tomcat-users.xml +
	INSERT

```xml
<!-- criando o usuário tomcat10 com a mesma senha -->
<user username="tomcat10" password="tomcat10" roles="manager-gui,manager,admin-gui,admin,tomcat,role1"/>
<!-- criando o usuário robson com a mesma senha -->
<user username="robson" password="robson" roles="manager-gui,manager,admin-gui,admin,tomcat,role1"/>
```

	#salvar e sair do arquivo
	ESC SHIFT : x <Enter>

	#reiniciando e verificando o serviço do Apache Tomcat Server
	sudo systemctl restart tomcat10
	sudo systemctl status tomcat10

	#testando no navegador os usuários criados
	firefox ou google chrome: http://172.16.1.20:8080
		<Manager App>
			Nome do usuário: NOVO_USUÁRIO_TOMCAT
			Senha: SENHA_DO_USUÁRIO

#17: DESAFIO-02: ADICIONAR O USUÁRIO: admin E O SEU: seu_usuário NO GRUPO DO TOMCAT PARA ADMINISTRAR
O APACHE TOMCAT SERVER SEM PRECISAR DO COMANDO SUDO.

	#adicionando o usuário Admin e Robson ao grupo do TomCAT10 Server
	sudo usermod -aG tomcat admin
	sudo usermod -aG tomcat robson

=========================================================================================<br>
############################# 07-war-tomcat.md CHALLENGES ###############################<br>
=========================================================================================<br>

#08_ DESAFIO-01: FAZER O DOWNLOAD E O DEPLOY DA APLICAÇÃO JAVA: Hello World DO PROJETO DO 
GITHUB: https://github.com/vaamonde/ubuntu-2204/tree/main/war - APÓS O DEPLOY SERÁ CRIADO 
O LINK DO APP: http://endereço_ipv4_ubuntuserver:8080/helloworld/

	Link do download: https://github.com/vaamonde/ubuntu-2204/blob/main/war/helloworld.war
	Opção: Download raw file

	#instalando a nova aplicação
	firefox ou google chrome: http://172.16.1.20:8080
		<Manager App>
			Nome do usuário: NOVO_USUÁRIO_TOMCAT
			Senha: SENHA_DO_USUÁRIO

	#adicionando um nova aplicação WAR no Tomcat
	WAR file to deploy
		Select WAR file to upload: helloworld.war
		<Deploy>
	
	#testando a nova aplicação WAR
	http://172.16.1.20:8080/helloworld/

#09_ DESAFIO-02: DELETAR A BASE DE DADOS: dbagenda E O USUÁRIO: dbagenda DO MYSQL SERVER
(VEJA O SITE W3SCHOOLS), RECRIAR NOVAMENTE A BASE DE DADOS E USUÁRIO, IMPORTAR O BACKUP
E TESTAR A CONEXÃO NO NAVEGADOR.

	#se logando com o usuário root no MySQL Server
	sudo mysql -u root -p

```sql
/* deletando a base de dados DBAgenda */
SHOW DATABASES;
DROP DATABASE dbagenda;

/* deletando o usuário DBAgenda */
SELECT user,host FROM mysql.user WHERE user='dbagenda';
DROP USER 'dbagenda'@'localhost';

/* recriando o Banco de Dados DBAgenda */
CREATE DATABASE dbagenda;

/* recriando o Usuário Agenda com a Senha Agenda do Banco de Dados Agenda*/
CREATE USER 'dbagenda'@'localhost' IDENTIFIED WITH mysql_native_password BY 'dbagenda';
GRANT USAGE ON *.* TO 'dbagenda'@'localhost';
GRANT ALL PRIVILEGES ON dbagenda.* TO 'dbagenda'@'localhost';
FLUSH PRIVILEGES;

/* verificando o Usuário Agenda criado no Banco de Dados MySQL Server*/
SELECT user,host FROM mysql.user WHERE user='dbagenda';

/* acessando o Banco de Dados DBAgenda */
USE dbagenda;

/* recriando a Tabela Contatos no Banco de Dados DBAgenda */
CREATE TABLE contatos (
	idcon int NOT NULL AUTO_INCREMENT,
	nome varchar(50) NOT NULL,
	fone varchar(15) NOT NULL,
	email varchar(50) DEFAULT NULL,
	PRIMARY KEY (idcon)
);

/* verificando as informações das Tabelas */
SHOW TABLES;
DESC contatos;

/* saindo do Banco de Dados */
exit
```

	#restaurando o backup do banco de dados DBAgenda
	sudo mysql -u root -p dbagenda < bkp-dbagenda.sql

	#acessando o MySQL Server com o usuário dbagenda
	sudo mysql -u dbagenda -p

```sql
#comandos básicos de verificação da base de dados e tabelas do MySQL
SHOW DATABASES;
USE dbagenda;
SHOW TABLES;

#verificando todos os registros da Tabela Contatos
SELECT * FROM contatos;
exit
```

	#acessar novamente a aplicação para verificar se voltou os registros
	firefox ou google chrome: http://172.16.1.20:8080/agenda

#10_ DESAFIO-03: FAZER O UNDEPLOY DA APLICAÇÃO: dbagenda E FAZER O DEPLOY NOVAMENTE,
VERIFICAR SE O NOME MANTEVE O MESMO E O ACESSO AO BANCO DE DADOS FOI FEITO COM SUCESSO.

	#instalando a nova aplicação
	firefox ou google chrome: http://172.16.1.20:8080
		<Manager App>
			Nome do usuário: NOVO_USUÁRIO_TOMCAT
			Senha: SENHA_DO_USUÁRIO
	
	#fazer o undeploy da aplicação Agenda
	Applications
		/agenda <Undeploy>
	
	#fazer o deploy da aplicação Agenda
	WAR file to deploy
		<Procurar> agenda.war
		<Deploy>

	#testando novamente a aplicação Agenda
	http://172.16.1.20:8080/agenda/

#11_ DESAFIO-04: ADICIONAR OS LINKS DOS DESAFIOS DO WAR TOMCAT DA AGENDA E DO SAMPLE NO 
WORDPRESS PARA FACILITAR O ACESSO A TODAS AS APLICAÇÕES E COMEÇAR A CRIAR UMA INTEGRAÇÃO 
DE TODAS AS TECNOLOGIAS ESTUDAS ATÉ AGORA.

	#acessar o site Wordpress
		http://172.16.1.20/wp/wp-login.php
			Usuário: admim
			Senha: pti@2018
			<Acessar>

		#personalizar a menu do tema do Wordpress
		Painel
			Aparência
				Temas
					Twenty Seventeen: <Personalizar>
						Menus
						<Adicionar Itens>
							Links Personalizados
								URL: http://172.16.1.20:8080/agenda/
								Texto do link: Projeto DBAgenda Java
							<Adicionar ao menu>
					<Publicar>

=========================================================================================<br>
############################### 08-mongodb.md CHALLENGES ################################<br>
=========================================================================================<br>

#18_ DESAFIO-01: CRIAR UM BANCO DE DADOS COM O: seu_nome (TUDO EM MINÚSCULO), DENTRO DESSE BANCO 
DE DADOS CRIAR UM COLLECTION CHAMADO: cadastro (TUDO EM MINÚSCULO) E DENTRO DESSE COLLECTION
INSERIR OS DOCUMENTS: nome: Seu Nome, idade: Sua Idade LISTAR AS INFORMAÇÕES NO VSCODE OU NO
COMPASS (VEJA O SITE W3SCHOOLS).

	#acessando o MongoDB via MongoSH
	sudo mongosh admin -u admin -p

	#listando as bases de dados no MongoDB
	show dbs

	#criando a base de dados robson
	use robson

	#criação a coleção e inserindo os documentos
	db.cadastro.insertOne({ nome: "Robson", idade: 45 });

	#visualizando os documentos da coleção cadastro
	db.cadastro.find();

	#saindo do MongoSH
	exit

#19_ DESAFIO-02: CONHECER O PROJETO: MongoDB Atlas, FAZER O CADASTRO NO SITE OFFICIAL PARA A 
CRIAÇÃO DE UMA CONTA FREE NO LINK: https://www.mongodb.com/cloud/atlas/register, ESCOLHER A
OPÇÃO: LEARN FREE, FINALIZAR O CADASTRO CRIANDO UM USUÁRIO E FAZER A CRIAÇÃO DO MESMO BANCO
DE DADOS DO DESAFIO-O1, TESTAR A CONEXÃO NO MONGODB COMPASS E NO VSCODE. OBSERVAÇÃO: VEJA A
DOCUMENTAÇÃO NA OPÇÃO DE: CONNECT EM: MongoDB for VS Code, CUIDADO PRINCIPALMENTE COM AS
OPÇÕES DE CARACTERES ESPECIAIS NA SENHA, VEJA A DOCUMENTAÇÃO ABAIXO:

	#criando uma conta no MongoDB Atlas
	Link: https://www.mongodb.com/cloud/atlas/register
		OBSERVAÇÃO: UTILIZAR UMA CONTA DO GOOGLE OU FAZER A CRIAÇÃO DE UMA CONTA INDEPENDENTE,
		CASO UTILIZE UMA CONTA DO GOOGLE A SENHA DO USUÁRIO SERÁ A MESMA SENHA DO GOOGLE PARA
		SE AUTENTICAR NO MONGODB COMPASS OU NO VISUAL STUDIO.

	#criando uma nova conexão com o MongoDB Server
	MongoDB Compass
		<New connection+>
			New Connection
				URL: mongodb://172.16.120:27017
			Advanced Connection Options
				Connection String Scheme
					mongodb
				Host:
					172.16.1.20:27017
			Authentication
				Username/Password
					Username: admin
					Password: pti@2018
					Authentication Database: admin
				Authentication Mechanism
					Default
			<Save & Connect>

	#configurando a conexão com o MongoDB Server
	VSCode
		MongoDB
			CONNECTIONS
				Add Connection
					Advanced Connection String: <Open From>
						New Connection
							General
								Connection Type: Standalone
								Hostname: 172.16.1.20
								Port: 27017
								Authentication: Username/Password
									Username: admin
									Password: pti@2018
									Authentication Database: admin
						<Connect>
					<Close>

#20_ DESAFIO-03: ADICIONAR O USUÁRIO: admin E O: seu_usuário CRIADOS NO DESAFIO DO OPENSSH NO
GRUPO DO MONGODB PARA FACILITAR A ADMINISTRAÇÃO E GERENCIAMENTO SEM A NECESSIDADE DO SUDO

	#adicionando o usuário Admin e Robson ao grupo do MongoDB
	sudo usermod -aG mongodb admin
	sudo usermod -aG mongodb robson

=========================================================================================<br>
############################### 09-netdata.md CHALLENGES ################################<br>
=========================================================================================<br>

#13_ DESAFIO-01: FAZER A INTEGRAÇÃO DO NETDATA CLIENT COM O NETDATA CLOUD, UTILIZE O VÍDEO DE 
INTEGRAÇÃO: 15-netdata.sh Configurando o Netdata Cloud integrado com o Netdata Agent, LINK:
https://www.youtube.com/watch?v=5MrH8L5cSIU

	Link para fazer o cadastro no Netdata Cloud: https://app.netdata.cloud/sign-in
		OBSERVAÇÃO: Você pode utilizar uma conta do Google para criar seu conta no Netdata
		Cloud, facilitando o acesso e gerenciamento dos Netdata Agentes instalados.
	
	#integração do Netdata Cloud com o Netdata Agent
	Integrations
		Operating System
			Linux
				Wget: COPIAR_O_CÓDIGO DE INTEGRAÇÃO_NETDATA_CLOUD

	#acessar o ubuntu via SSH
	ssh vaamonde@172.16.1.20

	#colar o código de integração no terminal
	CTRL + V ou CTRL + SHIFT + V ou BOTÃO DIREITO DO MOUSE: COLAR <ENTER>
		OBSERVAÇÃO: INTEGRAÇÃO SERÁ FEITA AUTOMATICAMENTE COM BASE NO SEU TOLKEN DE ACESSO
		AO PROJETO DO NETDATA CLOUD. O PROCESSO DE SINCRONISMO DEMORA UM POUCO.

	#acessar novamente o Netdata Cloud para verificar a integração
	Netdata Cloud
		Home: Total nodes 1
		Nodes: Live wsvaamonde.pti.intra

#14_ DESAFIO-02: ADICIONAR O USUÁRIO: admin E O: seu_usuário CRIADOS NO DESAFIO DO OPENSSH NO
GRUPO DO NETDATA PARA FACILITAR A ADMINISTRAÇÃO E GERENCIAMENTO SEM A NECESSIDADE DO SUDO.

	#adicionando o usuário Admin e Robson ao grupo do Netdata
	sudo usermod -aG netdata admin
	sudo usermod -aG netdata robson

#15_ DESAFIO-03: ADICIONAR O HYPER LINK NO WORDPRESS PARA FACILITAR O ACESSO AO NETDATA, IGUAL
A TODOS OS DESAFIOS FEITO ATÉ AGORA.

	#acessar o site Wordpress
	http://172.16.1.20/wp/wp-login.php
		Usuário: admim
		Senha: pti@2018
		<Acessar>

		#personalizar a menu do tema do Wordpress
		Painel
			Aparência
				Temas
					Twenty Seventeen: <Personalizar>
						Menus
						<Adicionar Itens>
							Links Personalizados
								URL: http://172.16.1.20:19999
								Texto do link: Projeto Netdata
							<Adicionar ao menu>
					<Publicar>

=========================================================================================<br>
################################ 10-webmin.md CHALLENGES ################################<br>
=========================================================================================<br>

#10_ DESAFIO-01: FAZER A INSTALAÇÃO E CONFIGURAÇÃO DO SOFTWARE COCKPIT NO UBUNTU SERVER,
ANALISAR AS DIFERENÇAS ENTRE O WEBMIN E O COCKPIT OU SUGERIR UMA NOVA SOLUÇÃO DE ADMIN
GUI (Graphical User Interface) WEB PARA A ADMINISTRAÇÃO DO UBUNTU SERVER, COMENTAR NA
DESCRIÇÃO DESSE VÍDEO.

	#instalando o software Cockpit no Ubuntu Server
	sudo apt update
	sudo apt install --install-recommends cockpit

	#habilitando serviço do cockpit
	sudo systemctl daemon-reload
	sudo systemctl status cockpit-service

	#verificando a versão instalada do cockpit
	sudo apt list --installed | grep -i cockpit 

	#verificando a porta de conexão do cockpit
	sudo lsof -nP -iTCP:'9090' -sTCP:LISTEN

	#acessando o cockpit via navegador
	http://172.16.1.20:9090
		Nome do Usuário: vaamonde
		Senha: pti@2018
		<Entrar>

#11_ DESAFIO-02: ADICIONAR O MONITORAMENTO DAS PORTAS DO WEBMIN E DO COCKPIT NO NETDATA.

	#acessando o diretório do Netdata
	cd /etc/netdata

	#editando o arquivo de configuração do Port Check
	sudo ./edit-config go.d/portcheck.conf

		jobs:
		  - name: wsvaamonde
		    host: 172.16.1.20
		    ports: [22, 80, 3306, 8080, 9090, 10000, 19999, 27017]
	
	#salvar e sair
	CTRL + X
		Y <Enter>
	
	#reiniciar o serviço do netdata
	sudo systemctl restart netdata
	sudo systemctl status netdata

	#acessando o netdata para verificar o recurso do Port Check (8 Serviços)
	http://172.16.1.20:19999

#12_ DESAFIO-03: ESTUDAR O MATERIAL DE MONITORAMENTO DO HTTP ENDPOINT DO NETDATA PARA
VERIFICAR OS STATUS DE PÁGINA DE TODOS OS SERVIÇOS CONFIGURADO ATÉ AGORA, VERIFICAR O
LINK: https://learn.netdata.cloud/docs/data-collection/synthetic-checks/http-endpoints

	#acessando o diretório do Netdata
	cd /etc/netdata

	#editando o arquivo de configuração do Port Check
	sudo ./edit-config go.d/httpcheck.conf

	jobs:
	  - name: apache2
	    url: http://172.16.1.20

	  - name: wordpress
	    url: http://172.16.1.20/wp

	  - name: tomcat
	    url: http://172.16.1.20:8080

	  - name: netdata
	    url: http://172.16.1.20:19999

	  - name: webmin
	    url: http://172.16.1.20:10000
	    tls_skip_verify: yes

	  - name: cockpit
	    url: http://172.16.1.20:9090
	    tls_skip_verify: yes

	#salvar e sair
	CTRL + X
		Y <Enter>
	
	#reiniciar o serviço do netdata
	sudo systemctl restart netdata
	sudo systemctl status netdata

	#acessando o netdata para verificar o recurso do Http Check (6 instances)
	http://172.16.1.20:1999

	#pausar o serviço de monitoramento em tempo real
	<CLICK TO PAUSE>

	#atualizar o cache da pagina
	CTRL + R ou F5

#13_ DESAFIO-04: ADICIONAR O HYPER LINK NO WORDPRESS PARA FACILITAR O ACESSO AO WEBMIN E
COCKPIT IGUAL A TODOS OS DESAFIOS FEITO ATÉ AGORA.

	#acessar o site Wordpress
	http://172.16.1.20/wp/wp-login.php
		Usuário: admim
		Senha: pti@2018
		<Acessar>

		#personalizar a menu do tema do Wordpress
		Painel
			Aparência
				Temas
					Twenty Seventeen: <Personalizar>
						Menus
						<Adicionar Itens>
							Links Personalizados
								URL: https://172.16.1.20:10000
								Texto do link: Projeto Webmin
							<Adicionar ao menu>
						<Adicionar Itens>
							Links Personalizados
								URL: https://172.16.1.20:9090
								Texto do link: Projeto Cockpit
							<Adicionar ao menu>
					<Publicar>