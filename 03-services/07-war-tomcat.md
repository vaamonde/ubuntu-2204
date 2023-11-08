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
#Versão: 0.05<br>

OBSERVAÇÃO IMPORTANTE: COMENTAR NO VÍDEO DO WAR-TOMCAT SE VOCÊ CONSEGUIU FAZER O DESAFIO COM 
A SEGUINTE FRASE: Desafio do War-Tomcat realizado com sucesso!!! #BoraParaPrática

Site Oficial do Apache2: https://httpd.apache.org/<br>
Site Oficial do Apache Tomcat: https://tomcat.apache.org/<br>
Site Oficial do OpenJDK: https://openjdk.org/

Site Oficial do W3C School HTML5: https://www.w3schools.com/html/default.asp<br>
Site Oficial do W3C School CSS: https://www.w3schools.com/css/default.asp<br>
Site Oficial do W3C School JavaScript: https://www.w3schools.com/js/default.asp<br>
Site Oficial do W3C School Java: https://www.w3schools.com/java/default.asp

Github do projeto do Prof. José de Assis: https://github.com/professorjosedeassis

Em engenharia de software, um arquivo WAR é um arquivo JAR usado para distribuir uma coleção<br>
de JavaServer Pages, Servlets Java, classes Java, arquivos XML, bibliotecas de tag, páginas<br>
web estáticas e outros recursos que, juntos, constituem uma aplicação web.

#01_ Fazendo o download do WAR do Apache Tomcat Server desenvolvido em JavaEE<br>

	Acesse o Repositório: https://github.com/professorjosedeassis/javaEE
	Clique em: Releases
		Em assets, clique em: agenda.war para fazer o Download.

#02_ Acessando o Apache Tomcat pelo Navegador<br>

	firefox ou google chrome: http://endereço_ipv4_ubuntuserver:8080

#03_ Fazendo o Deploy da Aplicação no Apache Tomcat<br>

	Clique em: Manager App
		Usuário padrão: admin
		Senha padrão..: 123@senac
	<Fazer Login>

	Em: WAR file to deploy clique em: <Escolher arquivo>
	Localize o arquivo WAR na pasta: Download clique em: <Abrir>
	Finalize clicando em: <Deploy>

	Após o Deploy da aplicação a nova URL (Uniform Resource Locator) de acesso será: 
		firefox ou google chrome: http://endereço_ipv4_ubuntuserver:8080/agenda

#04_ Criando a Base de Dados no MySQL Server do projeto da Agenda em JavaEE<br>

	#opções do comando mysql: -u (user), -p (password)
	sudo mysql -u root -p

```sql
/* Criando o Banco de Dados DBAgenda */
CREATE DATABASE dbagenda;

/* Criando o Usuário Agenda com a Senha Agenda do Banco de Dados Agenda*/
CREATE USER 'dbagenda'@'localhost' IDENTIFIED WITH mysql_native_password BY 'dbagenda';
GRANT USAGE ON *.* TO 'dbagenda'@'localhost';
GRANT ALL PRIVILEGES ON dbagenda.* TO 'dbagenda'@'localhost';
FLUSH PRIVILEGES;

/* Acessando o Banco de Dados DBAgenda */
USE dbagenda;

/* Criando a Tabela Contatos no Banco de Dados DBAgenda */
CREATE TABLE contatos (
	idcon int NOT NULL AUTO_INCREMENT,
	nome varchar(50) NOT NULL,
	fone varchar(15) NOT NULL,
	email varchar(50) DEFAULT NULL,
	PRIMARY KEY (idcon)
);

/* Verificando as informações das Tabelas */
SHOW TABLES;
DESC contatos;

/* Saindo do Banco de Dados */
exit
```

#05_ Testando o acesso a Base de Dados DBAgenda com o usuário dbagenda<br>

	#opções do comando mysql: -u (user), -p (password)
	sudo mysql -u dbagenda -p

```sql
	SHOW DATABASES;
	USE dbagenda;
	SHOW TABLES;
	DESC contatos;
	exit
```

#06_ Fazendo o Backup e Restore do Banco de Dados MySQL Server<br>

	#opções do comando mysqldump: -u (user), -p (password)
	sudo mysqldump -u root -p dbagenda > bkp-dbagenda.sql

	#verificando o conteúdo do arquivo backupeado 
	sudo less bkp-dbagenda.sql

#07_ DESAFIO: FAZER O DOWNLOAD E O DEPLOY DA APLICAÇÃO JAVA: Sample Web Application DO PROJETO 
DO GITHUB: https://github.com/AKSarav/SampleWebApp/ - APÓS O DEPLOY SERÁ CRIADO O LINK DO APP:
http://endereço_ipv4_ubuntuserver:8080/SampleWebApp

LINK DO ARQUIVO WAR: https://github.com/AKSarav/SampleWebApp/raw/master/dist/SampleWebApp.war

OBSERVAÇÃO IMPORTANTE: COMENTAR NO VÍDEO DO WAR-TOMCAT SE VOCÊ CONSEGUIU FAZER O DESAFIO COM 
A SEGUINTE FRASE: Desafio do War-Tomcat realizado com sucesso!!! #BoraParaPrática