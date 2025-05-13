#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 16/01/2023<br>
#Data de atualização: 13/05/2025<br>
#Versão: 0.26<br>

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO WAR-TOMCAT SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do War-Tomcat realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/07-tomcat-war.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiotomcat #desafiowartomcat

Conteúdo estudado nesse desafio:<br>
#01_ Fazendo o download do WAR do Apache Tomcat Server desenvolvido em JavaEE;<br>
#02_ Acessando o Apache TomCAT Server pelo Navegador;<br>
#03_ Fazendo o Deploy da Aplicação Agenda de Contatos no Apache TomCAT Server;<br>
#04_ Criando a Base de Dados no MySQL Server do projeto da Agenda em Java;<br>
#05_ Testando o acesso a Base de Dados DBAgenda com o usuário dbagenda;<br>
#06_ Acessando novamente a Aplicação Agenda via Navegador e adicionando Registros;<br>
#07_ Fazendo o Backup e Restore do Banco de Dados DBAgenda no MySQL Serve;<br>
#08_ Desafio de Deploy de Aplicações Java Web no Apache TomCAT Server.<br>

Site Oficial do Apache2: https://httpd.apache.org/<br>
Site Oficial do Apache Tomcat: https://tomcat.apache.org/<br>
Site Oficial do OpenJDK: https://openjdk.org/<br>
Site Oficial do Java: https://www.java.com/pt-BR/<br>
Site Oficial do Eclipse IDE: https://eclipseide.org/

**Site Oficial do W3C (World Wide Web Consortium) School**<br>
Site Oficial do W3C School HTML5: https://www.w3schools.com/html/default.asp<br>
Site Oficial do W3C School CSS5: https://www.w3schools.com/css/default.asp<br>
Site Oficial do W3C School JavaScript: https://www.w3schools.com/js/default.asp<br>
Site Oficial do W3C School Java24: https://www.w3schools.com/java/default.asp

**Sites de IA (Inteligência Artificial) indicados para os Desafios**<br>
OpenAI ChatGPT: https://chatgpt.com<br>
Microsoft Copilot: https://copilot.microsoft.com<br>
Google Gemini: https://gemini.google.com<br>
DeepSeek: https://chat.deepseek.com/<br>
x.AI Grok: https://grok.com/<br>

**O QUE É E PARA QUE SERVER O JAVA ECLIPSE:** Na verdade, *"Java Eclipse"* é uma forma popular de se referir ao *Eclipse IDE (Integrated Development Environment)* voltado para desenvolvimento em Java. Ou seja: Eclipse é uma IDE gratuita e de código aberto usada principalmente para programar em Java, mas também suporta outras linguagens como C, C++, Python, PHP e muito mais.

**O QUE É E PARA QUE SERVER O JAVAEE:** O *Java EE (Java Platform, Enterprise Edition)*, atualmente chamado de *Jakarta EE*, é uma plataforma de desenvolvimento voltada para a criação de aplicações corporativas robustas, escaláveis e seguras em Java.

**O QUE É E PARA QUE SERVER O ARQUIVO WAR:** Em engenharia de software, um arquivo *WAR* é um arquivo **JAR** usado para distribuir uma coleção de *JavaServer Pages, Servlets Java, classes Java, arquivos XML, bibliotecas de tag, páginas web estáticas* e outros recursos que, juntos, constituem uma aplicação web.

**O QUE É E PARA QUE SERVER A SEGURANÇA DA INFORMAÇÃO COM ÊNFASE EM BACKUP:** Os pilares base do conceito de *Segurança da Informação*, com ênfase em backup, são os seguintes: __`Confidencialidade`__ (Garantir que os dados só sejam acessados por pessoas autorizadas), __`Integridade`__ (Assegurar que a informação não seja alterada ou corrompida, seja acidentalmente ou de forma maliciosa), __`Disponibilidade`__ (Garantir que a informação esteja acessível sempre que necessária), __`Autenticidade`__ (Garantir que os dados sejam autênticos e a fonte de origem seja confiável) e __`Responsabilidade / Rastreabilidade`__ (Rastrear quem fez o quê, quando e como).

**O QUE É E PARA QUE SERVER O DUMP SQL:** O dump do SQL (MySQL ou MariaDB Server) é uma cópia de segurança (backup) de um banco de dados ou de toda a instância do SQL (Banco de Dados, Tabelas, etc.), geralmente exportada para um arquivo de texto que contém comandos SQL (como CREATE, INSERT, etc.) para recriar e repopular os dados, o resultado é um script SQL legível, que pode ser usado para restaurar o banco posteriormente.

[![WAR TomCAT](http://img.youtube.com/vi/DTduw0NKQvo/0.jpg)](https://www.youtube.com/watch?v=DTduw0NKQvo "WAR TomCAT")

Link da vídeo aula: https://www.youtube.com/watch?v=DTduw0NKQvo

## 01_ Fazendo o download do WAR do Apache Tomcat Server desenvolvido em JavaEE

**OBSERVAÇÃO IMPORTANTE:** o projeto da Agenda desenvolvida em **JavaEE** do *Prof.José de Assis* no seu Github está desatualizado, o projeto que está no Github foi feito na versão anterior do *Java e do Apache TomCAT*, para resolver esse problema ele **Compilou um novo WAR** que está no meu repositório do Github para essa aula.

Github do projeto do Prof. José de Assis: https://github.com/professorjosedeassis

Repositório do Projeto do Github do Prof. José de Assis: https://github.com/professorjosedeassis/javaEE 

**OBSERVAÇÃO:** esse novo *WAR do Projeto da Agenda* foi customizado e melhorado pela *Prof(a). Sirlene Sanches*, criando uma nova estrutura em **CSS** deixando o ambiente mais bonito.

```bash
#Download do arquivo WAR (DESCONTINUADO: NÃO RECOMENDO MAIS UTILIZAR ESSE ARQUIVO)
Clique em: Releases: https://github.com/professorjosedeassis/javaEE/releases
  Em assets, clique em: agenda.war para fazer o Download.
```

Download dos arquivos WAR (ATUALIZADOS PARA ESSA AULA)<br>
LINK DE DOWNLOAD DO NOVO ARQUIVO WAR: https://github.com/vaamonde/ubuntu-2204/tree/main/war

A) Arquivo: __`agenda.war`__ versão antiga atualizada pela Prof(a). Sirlene Sanches;<br>
B) Arquivo: __`agenda_bootstrap.war`__ versão nova atualizada pela Prof(a). Sirlene Sanches.<br>

## 02_ Acessando o Apache TomCAT Server pelo Navegador
```bash
#utilizar os navegadores para testar o WAR TomCAT
firefox ou google chrome: http://endereço_ipv4_ubuntuserver:8080
```

## 03_ Fazendo o Deploy da Aplicação Agenda de Contatos no Apache TomCAT Server
```bash
Clique em: Manager App
  Usuário padrão: admin
  Senha padrão..: sua_senha
<Fazer Login>

A) Em: WAR file to deploy clique em: <Escolher arquivo>
B) Localize o arquivo WAR na pasta: Download clique em: <Abrir>
C) Finalize clicando em: <Deploy>

Após o Deploy da aplicação a nova URL (Uniform Resource Locator) de acesso será:

#testando a aplicação agenda via navegador
firefox ou google chrome: http://endereço_ipv4_ubuntuserver:8080/agenda
```

**OBSERVAÇÃO IMPORTANTE:** acessando a aplicação Agenda pela primeira vez será apresentado uma *mensagem de erro de conexão e falha do Java*, esse erro está associado a **Conexão com o Banco de Dados no MySQL Server** que ainda não foi criado, após a sua criação o sistema irá funcionar perfeitamente.

## 04_ Criando a Base de Dados no MySQL Server do projeto da Agenda em JavaEE
```bash
#opções do comando mysql: -u (user), -p (password)
sudo mysql -u root -p
```
```sql
/* Criando o Banco de Dados DBAgenda */
CREATE DATABASE dbagenda;

/* Verificando a criação do Banco de Dados DBAgenda */
SHOW DATABASES;
```

**OBSERVAÇÃO IMPORTANTE:** POR MOTIVO DE SEGURANÇA SERÁ CRIADO UM USUÁRIO: __`LOCALHOST`__ NO BANCO DE DADOS MYSQL SERVER, *USUÁRIOS REMOTOS* SOMENTE SE O SERVIDOR DE BANCO DE DADOS NÃO ESTIVER NO MESMO SERVIDOR DE APLICAÇÃO.

```sql
/* Criando o Usuário DBAgenda com a Senha DBAgenda do Banco de Dados DBAgenda*/
CREATE USER 'dbagenda'@'localhost' IDENTIFIED WITH mysql_native_password BY 'dbagenda';
GRANT USAGE ON *.* TO 'dbagenda'@'localhost';
GRANT ALL PRIVILEGES ON dbagenda.* TO 'dbagenda'@'localhost';
FLUSH PRIVILEGES;

/* Verificando o Usuário DBAgenda criado no Banco de Dados MySQL Server*/
SELECT user,host FROM mysql.user WHERE user='dbagenda';

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

/* Verificando a Tabela Contatos criada no Banco de Dados DBAgenda */
SHOW TABLES;

/* Verificando as informações detalhadas da Tabela Contatos */
DESC contatos;

/* Saindo do Banco de Dados DBAgenda */
exit
```

## 05_ Testando o acesso a Base de Dados DBAgenda com o usuário DBAgenda
```bash
#opções do comando mysql: -u (user), -p (password)
sudo mysql -u dbagenda -p
```
```sql
/* comandos básicos de verificação da base de dados e tabelas do MySQL */
SHOW DATABASES;
USE dbagenda;
SHOW TABLES;
DESC contatos;
exit
```

## 06_ Acessando novamente a Aplicação DBAgenda via Navegador e adicionando Registros
```bash
#utilizar os navegadores para testar o WAR do Apache TomCAT
firefox ou google chrome: http://endereço_ipv4_ubuntuserver:8080/agenda
```

## 07_ Fazendo o Backup e Restore do Banco de Dados DBAgenda no MySQL Server

**OBSERVAÇÃO IMPORTANTE:** para esse teste, recomendo adicionar vários *Registros no Banco de Dados do DBAgenda*, depois testar os procedimentos de **Dump e Restore do Banco de Dados** e verificar se as informações ainda estão integras.

```bash
#acessando o MySQL Server via console
#opções do comando mysql: -u (user), -p (password)
sudo mysql -u dbagenda -p
```
```sql
/* comandos básicos de verificação da base de dados e tabelas do MySQL */
SHOW DATABASES;
USE dbagenda;
SHOW TABLES;

/* verificando todos os registros da Tabela Contatos do Banco de Dados DBAgenda */
SELECT * FROM contatos;

/* sair do MySQL Server */
exit
```
```bash
#fazendo o backup do banco de dados DBAgenda
#opções do comando mysqldump: -u (user), -p (password), database
#opção do redirecionador de saída >: Redireciona a saída padrão (STDOUT)
sudo mysqldump -u root -p dbagenda > bkp-dbagenda.sql

#verificando o conteúdo do arquivo backupeado do banco de dados DBAgenda
sudo less bkp-dbagenda.sql

#acessando o MySQL Server via console
#opções do comando mysql: -u (user), -p (password)
sudo mysql -u dbagenda -p
```
```sql
/* comandos básicos de verificação da base de dados e tabelas do MySQL */
SHOW DATABASES;
USE dbagenda;
SHOW TABLES;

/* verificando todos os registros da Tabela Contatos do Banco de Dados DBAgenda */
SELECT * FROM contatos;

/* removendo todos os registros da Tabela Contatos do Banco de Dados DBAgenda */
TRUNCATE TABLE contatos;
SELECT * FROM contatos;
exit
```

**OBSERVAÇÃO IMPORTANTE:** ATUALIZAR A PÁGINA DO SISTEMA DBAGENDA NO SEU NAVEGADOR PARA VERIFICAR SE TODOS OS REGISTRO FORAM DELETADOS (TRUNCADOS) DO BANCO DE DADOS.

```bash
#utilizar os navegadores para testar o WAR do Apache TomCAT
firefox ou google chrome: http://endereço_ipv4_ubuntuserver:8080/agenda
```

**OBSERVAÇÃO IMPORTANTE:** PARA ESSA SIMULAÇÃO, RECOMENDO ADICIONAR VÁRIOS REGISTROS NA TABELA CONTATOS, DEPOIS FAZER A RESTAURAÇÃO DO BANCO.

**CUIDADO!!!!!!** PARA ESSE PROCEDIMENTO, SERÁ REMOVIDO TODO O CONTEÚDO EXISTENTE E RESTAURADO O BACKUP ANTERIOR, OS DADOS DIGITADOS SERÃO PERDIDOS É OS NOVOS DADOS DO BACKUP SERÁ RESTAURADO.

```bash
#restaurando o backup do banco de dados DBAgenda
#opções do comando mysql: -u (user), -p (password)
#opção do redirecionador de entrada <: Redireciona a entrada padrão (STDIN)
sudo mysql -u root -p dbagenda < bkp-dbagenda.sql

#acessando o MySQL Server via console
#opções do comando mysql: -u (user), -p (password)
sudo mysql -u dbagenda -p
```
```sql
/* comandos básicos de verificação da base de dados e tabelas do MySQL */
SHOW DATABASES;
USE dbagenda;
SHOW TABLES;

/* verificando todos os registros da Tabela Contatos do Banco de Dados DBAgenda */
SELECT * FROM contatos;
exit
```
```bash
#acessar novamente a aplicação para verificar se voltou os registros
firefox ou google chrome: http://endereço_ipv4_ubuntuserver:8080/agenda
```

========================================DESAFIOS=========================================

**#08_ DESAFIO-01:** FAZER O DOWNLOAD E O DEPLOY DA APLICAÇÃO JAVA: __`Hello World`__ DO PROJETO DO GITHUB: https://github.com/vaamonde/ubuntu-2204/tree/main/war - APÓS O DEPLOY SERÁ CRIADO O LINK DO APP: http://endereço_ipv4_ubuntuserver:8080/helloworld/

**#09_ DESAFIO-02:** DELETAR A BASE DE DADOS: __`dbagenda`__ E O USUÁRIO: __`dbagenda`__ DO MYSQL SERVER (VEJA O SITE W3SCHOOLS), RECRIAR NOVAMENTE A BASE DE DADOS E USUÁRIO, IMPORTAR O BACKUP E TESTAR A CONEXÃO NO NAVEGADOR.

**#10_ DESAFIO-03:** FAZER O UNDEPLOY DA APLICAÇÃO: __`dbagenda`__ E FAZER O DEPLOY NOVAMENTE, VERIFICAR SE O NOME MANTEVE O MESMO E O ACESSO AO BANCO DE DADOS FOI FEITO COM SUCESSO.

**#11_ DESAFIO-04:** ADICIONAR OS LINKS DOS DESAFIOS DO *WAR TOMCAT DA AGENDA E DO SAMPLE NO WORDPRESS* PARA FACILITAR O ACESSO A TODAS AS APLICAÇÕES E COMEÇAR A CRIAR UMA INTEGRAÇÃO DE TODAS AS TECNOLOGIAS ESTUDADAS ATÉ AGORA.

=========================================================================================

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO WAR-TOMCAT SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do War-Tomcat realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/07-tomcat-war.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiotomcat #desafiowartomcat