#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 24/05/2024<br>
#Data de atualização: 24/05/2024<br>
#Versão: 0.01<br>

OBSERVAÇÃO IMPORTANTE: COMENTAR NO VÍDEO DO GLPI SE VOCÊ CONSEGUIU IMPLEMENTAR COM 
A SEGUINTE FRASE: Implementação do GLPI realizado com sucesso!!! #BoraParaPrática

COMPARTILHAR O SELO DA IMPLEMENTAÇÃO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM)
MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DA IMPLEMENTAÇÃO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/17.glpi.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver 
#ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafioglpi #desafioglpihelpdesk

Conteúdo estudado nessa implementação:<br>
#01_ Instalando as Dependências do GLPI Help Desk<br>
#02_ Criando a Base de Dados do GLPI Help Desk<br>
#03_ Baixando o Projeto do GLPI Help Desk do Github<br>
#04_ Descompactando e instalando o GLPI Help Desk no Apache2 Server<br>
#05_ Atualizando os Arquivos de Configuração do GLPI Help Desk<br>

Site Oficial do GLPI Project: https://glpi-project.org/pt-br/<br>

GLPI é um sistema de código aberto para Gerenciamento de Ativos de TI, rastreamento de<br>
problemas e central de serviços. Este software é escrito em PHP e distribuído sob a GNU<br>
General Public License. Como uma tecnologia de código aberto, qualquer pessoa pode executar,<br>
modificar ou desenvolver o código.

[![GLPI](http://img.youtube.com/vi//0.jpg)]( "GLPI")

Link da vídeo aula: 

#01_ Instalando as Dependências do GLPI Help Desk<br>

	#OBSERVAÇÃO IMPORTANTE: O GLPI POSSUI AS DEPENDÊNCIAS DO BANCO DE DADOS MYSQL SERVER
	#E DO APACHE2 SERVER, ESSES APLICATIVOS JÁ FORAM INSTALADO NAS ETAPAS: 02 DO APACHE2 
	#SERVER E PHP E NA ETAPA: 03 DO MYSQL SERVER 8.

	#atualizando as lista do apt
	sudo apt update

	#instalando as dependências do GLPI Help Desk
	#opção da contra barra (\): criar uma quebra de linha no terminal
	sudo apt install php-curl php-gd php-intl php-pear php-imagick php-imap php-memcache php-pspell \
	php-mysql php-tidy php-xmlrpc php-mbstring php-ldap php-cas php-apcu php-json php-xml php-cli \
	libapache2-mod-php xmlrpc-api-utils xz-utils bzip2 unzip curl php-soap php-common php-bcmath \
	php-zip php-bz2

#02_ Criando a Base de Dados do GLPI Help Desk<br>

	#opções do comando mysql: -u (user), -p (password)
	sudo mysql -u root -p

```sql
/* Criando o Banco de Dados GLPI Help Desk */
CREATE DATABASE glpi10;

/* Criando o usuário da Base de Dados do GLPI Help Desk */
CREATE USER 'glpi10' IDENTIFIED WITH mysql_native_password BY 'glpi10';

/* Aplicando as permissões de acesso do usuário GLPI Help Desk */
GRANT USAGE ON *.* TO 'glpi10';
GRANT ALL PRIVILEGES ON glpi10.* TO 'glpi10';
FLUSH PRIVILEGES;

/* Verificando o Usuário GLPI Help Desk criado no Banco de Dados MySQL Server*/
SELECT user,host FROM mysql.user WHERE user='glpi10';

/* Visualizando as bases de dados do MySQL */
SHOW DATABASES;

/* Acessando o Banco de Dados GLPI Help Desk */
USE glpi10;

/* Saindo do Banco de Dados */
exit
```

	#se logando com o usuário glpi10 para testar a conexão com o MySQL Server
	#opções do comando mysql: -u (user), -p (password)
	sudo mysql -u glpi10 -p

```sql

/* visualizando a base de dados do GLPI Help Desk */
SHOW DATABASES;
USE glpi10;
exit
```

#03_ Baixando o Projeto do GLPI Help Desk do Github<br>

	#Link Oficial das versões do GLPI Help Desk: https://github.com/glpi-project/

	#acessando diretório temporário do Ubuntu Server
	cd /tmp

	#download da última versão do GLPI Help Desk (link atualizado em 24/05/2024)
	#OBSERVAÇÃO IMPORTANTE: o tempo todo o GLPI Help Desk sofre alteração, antes
	#de fazer o download do arquivo verifique a versão no link: https://github.com/glpi-project/glpi/releases
	#opção do comando wget: -v (verbose), -O (output file)
	wget -v -O glpi.tgz https://github.com/glpi-project/glpi/releases/download/10.0.15/glpi-10.0.15.tgz

#04_ Descompactando e instalando o GLPI Help Desk no Apache2 Server<br>

	#descompactando o download do arquivo do GLPI Help Desk
	#opção do comando tar: -x (extract), -z (gzip), -v (verbose), -f (file), -C (directory)
	tar -xzvf glpi.tgz
	
	#movendo o conteúdo do diretório do GLPI Help Desk para o diretório /var/www/html
	#opção do comando mv: -v (verbose)
	sudo mv -v glpi/ /var/www/html/

	#alterando as permissões dos diretórios e arquivos do GLPI Help Desk
	#opção do comando chown: -R (recursive), -f (silent), -v (verbose), www-data (user), www-data (group)
	#opção do comando find: . (path), -type d (directory), , type f (file), -exec (execute command)
	#opção do comando chmod: -v (verbose), 775 (Dono=RWX, Grupo=RWX, Outros=R-X)
	#opção do comando chmod: -v (verbose), 644 (Dono=RW-, Grupo=R--, Outros=R--)
	#opção do comando {} \;: executa comandos em lote e aplica as permissões para cada arquivo/diretório em loop
	sudo chown -Rfv www-data.www-data /var/www/html/glpi/
	sudo find /var/www/html/glpi/. -type d -exec chmod -v 755 {} \;
	sudo find /var/www/html/glpi/. -type f -exec chmod -v 644 {} \;
	sudo chmod -Rv 777 /var/www/html/glpi/files/_log

#05_ Atualizando os Arquivos de Configuração do GLPI Help Desk<br>

	#download dos principais arquivos de configuração do GLPI Help Desk
	#opção do comando wget: -v (verbose), -O (output file)
	
	#download do arquivo de configuração do GLPI Help Desk
	sudo wget -v -O /etc/apache2/conf-available/glpi.conf 
	
	#download do arquivo de agendamento do CRON GLPI Help Desk
	sudo wget -v -O /etc/cron.d/glpi-cron

#06_ 

=========================================================================================

OBSERVAÇÃO IMPORTANTE: COMENTAR NO VÍDEO DO GLPI SE VOCÊ CONSEGUIU IMPLEMENTAR COM 
A SEGUINTE FRASE: Implementação do GLPI realizado com sucesso!!! #BoraParaPrática

COMPARTILHAR O SELO DA IMPLEMENTAÇÃO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM)
MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DA IMPLEMENTAÇÃO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/17.glpi.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver 
#ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafioglpi #desafioglpihelpdesk