#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 28/04/2024<br>
#Data de atualização: 28/04/2024<br>
#Versão: 0.01<br>

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

	#adicionando o usuário Admin ao grupo do SUDO
	sudo usermod -aG sudo robson

	#verificando os grupos do usuário Admin
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

=========================================================================================<br>
############################## 03-wordpress.md CHALLENGES ###############################<br>
=========================================================================================<br>