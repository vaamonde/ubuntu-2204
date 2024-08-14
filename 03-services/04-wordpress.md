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
#Versão: 0.19<br>

OBSERVAÇÃO IMPORTANTE: COMENTAR NO VÍDEO DO WORDPRESS SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: Desafio do WordPress realizado com sucesso!!! #BoraParaPrática

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/04-wordpress.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiowordpress #desafiocms

Conteúdo estudado nesse desafio:<br>
#01_ Instalado as Dependências do WordPress;<br>
#02_ Criando a Base de Dados e Usuário no MySQL Server;<br>
#03_ Baixando o WordPress do Site Oficial;<br>
#04_ Descompactando e Movendo o conteúdo do Site para o Apache2;<br>
#05_ Alterando as Permissões de Arquivos e Diretórios do WordPress;<br>
#06_ Configurando o Arquivo WP-CONFIG.PHP do WordPress;<br>
#07_ Habilitado os Módulos do Apache2;<br>
#08_ Acessando o WordPress e fazendo sua Pré-Configuração;<br>
#09_ Desafio de Postagem, Temas e Plugins do CMS WordPress.

Site Oficial do Apache2: https://httpd.apache.org/<br>
Site Oficial do PHP (7.x ou 8.x): https://www.php.net/<br>
Site Oficial do MySQL: https://www.mysql.com/<br>
Site Oficial do WordPress: https://br.wordpress.org/

Site Oficial do W3C School HTML5: https://www.w3schools.com/html/default.asp<br>
Site Oficial do W3C School CSS: https://www.w3schools.com/css/default.asp<br>
Site Oficial do W3C School JavaScript: https://www.w3schools.com/js/default.asp<br>
Site Oficial do W3C School PHP: https://www.w3schools.com/php/default.asp

WordPress é um sistema livre e aberto de gestão de conteúdo para internet, baseado em PHP com banco de dados MySQL, executado em um servidor interpretador, voltado principalmente para a criação de páginas eletrônicas e blogs online.

[![WordPress](http://img.youtube.com/vi/J6xVAocGyZg/0.jpg)](https://www.youtube.com/watch?v=J6xVAocGyZg "WordPress")

Link da vídeo aula: https://www.youtube.com/watch?v=J6xVAocGyZg

#01_ Instalando as Dependências do WordPress<br>
```bash
#atualizando as listas do Apt
sudo apt update

#instalando as dependências do WordPress
#opção da contra barra (\): criar uma quebra de linha no terminal
sudo apt install php8.1-bcmath php8.1-mbstring  php8.1-dev php8.1-curl php8.1-mysql \
php8.1-xml php8.1-zip php8.1-soap php8.1-imagick php8.1-intl php-json php-pear unzip \
pwgen libmcrypt-dev ghostscript libapache2-mod-php zlib1g zlib1g-dev
```

#02_ Criando a Base de Dados do WordPress no MySQL Server<br>
```bash
#opções do comando mysql: -u (user), -p (password)
sudo mysql -u root -p
```
```sql
/* Criando o Banco de Dados com o nome Wordpress */
/* OBSERVAÇÃO IMPORTANTE: ALTERAR O NOME DA BASE DE DADOS CONFORME NECESSIDADE */
CREATE DATABASE wordpress;

/* Criando o usuário e senha da Base de Dados do WordPress */
/* OBSERVAÇÃO IMPORTANTE: ALTERAR O NOME DO USUÁRIO E SENHA CONFORME NECESSIDADE */
/* NESSE CENÁRIO ESTÁ SENDO CRIADO UM USUÁRIO REMOTO, QUANDO NÃO SE ADICIONA A OPÇÃO
LOCALHOST OU % (PORCENTAGEM) NA CRIAÇÃO DE USUÁRIOS NO MYSQL, ELE ENTENDE QUE O 
USUÁRIO SERÁ REMOTO, ADICIONANDO AUTOMATICAMENTE O CARÁCTER DE % NA CRIAÇÃO */
CREATE USER 'wordpress' IDENTIFIED WITH mysql_native_password BY 'wordpress';

/* Aplicando as permissões de acesso do usuário WordPress */
/* OBSERVAÇÃO IMPORTANTE: ALTERAR O NOME DO USUÁRIO CONFORME NECESSIDADE */
GRANT USAGE ON *.* TO 'wordpress';
GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress';
FLUSH PRIVILEGES;

/* Verificando o Usuário Wordpress criado no Banco de Dados MySQL Server*/
SELECT user,host FROM mysql.user WHERE user='wordpress';

/* Visualizando as bases de dados do MySQL */
SHOW DATABASES;

/* Acessando o Banco de Dados wordpress */
USE wordpress;

/* Saindo do Banco de Dados */
exit
```
```bash
#se logando com o usuário wordpress para testar a conexão com o MySQL Server
#opções do comando mysql: -u (user), -p (password)
sudo mysql -u wordpress -p
```
```sql
/* visualizando a base de dados do WordPress */
SHOW DATABASES;
USE wordpress;
exit
```

#03_ Fazendo o download do WordPress e descompactando o seu conteúdo no diretório padrão do Apache2 Server<br>
```bash
#acessando diretório temporário do Ubuntu Server
cd /tmp

#fazendo o download do WordPress do site Oficial do Brasil
#opção do comando wget: -O (output-document)
wget -O wordpress.zip https://br.wordpress.org/latest-pt_BR.zip

#descompactando o arquivo do WordPress
unzip wordpress.zip

#OBSERVAÇÃO IMPORTANTE: ALTERAR O CAMINHO DO DESTINO CONFORME NECESSIDADE
#movendo o conteúdo do WordPress para o diretório do Apache2 Server
#opção do comando mv: -v (verbose)
sudo mv -v wordpress/ /var/www/html/wp/

#OBSERVAÇÃO IMPORTANTE: ALTERAR O CAMINHO DA ALTERAÇÃO DAS PERMISSÕES CONFORME NECESSIDADE
#alterando as permissões dos diretórios e arquivos do WordPress
#opção do comando chown: -R (recursive), -f (silent), -v (verbose), www-data (user), www-data (group)
#opção do comando find: . (path), -type d (directory), type f (file), -exec (execute command)
#opção do comando chmod: -v (verbose), 2775 (Set-GID=2, Dono=RWX, Grupo=RWS, Outros=R-X)
#opção do comando chmod: -v (verbose), 2664 (Set-GID=2, Dono=RW-, Grupo=RWS, Outros=R--)
#opção do comando {} \;: executa comandos em lote e aplica as permissões para cada arquivo/diretório em loop
sudo chown -Rfv www-data.www-data /var/www/html/wp/
sudo find /var/www/html/wp/. -type d -exec chmod -v 2775 {} \;
sudo find /var/www/html/wp/. -type f -exec chmod -v 2664 {} \;
```

#04_ Editando o arquivo de conexão com o Banco de Dados e Salt do WordPress<br>
```bash
#acessando o diretório do WordPress
cd /var/www/html/wp/

#criando o arquivo de configuração do banco de dados do WordPress
#opção do comando cp: -v (verbose)
sudo cp -v wp-config-sample.php wp-config.php

#editando o arquivo de configuração do WordPress
sudo vim wp-config.php
INSERT
```
```php
#alterar os valores das variáveis "define" a partir da linha: 23

#alterar o valor da variável: DB_NAME do nome do banco de dados na linha: 23
define( 'DB_NAME', 'wordpress' );

#alterar o valor da variável: DB_USER do nome do usuário de autenticação do banco de dados na linha: 26
define( 'DB_USER', 'wordpress' );

#alterar o valor da variável: DB_PASSWORD da senha do usuário do banco de dados na linha: 29
define( 'DB_PASSWORD', 'wordpress' );

#configuração do Salt do WordPress site: https://api.wordpress.org/secret-key/1.1/salt/
#mais informações sobre o Salt's do WordPress: https://www.hostinger.com.br/tutoriais/wordpress-salt
#copiar o conteúdo do Salt e colocar a partir da linha: 51
#OBSERVAÇÃO IMPORTANTE: remover as linhas existentes de: 51 até: 58 antes de copiar/colar as
#novas linhas do Salt, utilizar a opção: dd do Editor de Texto VIM. 
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>
```

#05_ Habilitando os módulos do Apache2 Server utilizados pelo WordPress<br>
```bash
#habilitando os módulos do Apache2 Server
#opção da contra barra (\): criar uma quebra de linha no terminal
sudo a2enmod cgi alias authz_host deflate dir expires headers mime rewrite \
autoindex negotiation setenvif

#reiniciar o serviço do Apache2 Server
sudo systemctl reload apache2
sudo systemctl status apache2

#analisando os Log's e mensagens de erro do Servidor do Apache2 (NÃO COMENTADO NO VÍDEO)
#opção do comando journalctl: x (catalog), e (pager-end), u (unit)
sudo journalctl -xeu apache2
```

#06_ Acessando e configurando o WordPress via navegador<br>
```bash
#utilizar os navegadores para testar o acesso ao Wordpress
firefox ou google chrome: http://endereço_ipv4_ubuntuserver/wp

#Informações que serão solicitadas na configuração via Web do WordPress
Português do Brasil: Continuar;
Informação necessária
  Título do site: Seu Nome e Sobrenome;
  Nome de usuário: admin;
  Senha: pti@2018;
  Confirme a senha: On (Habilitado) Confirmar o uso de uma senha fraca;
  O seu e-mail: admin@ptin.intra; 
<Instalar WordPress>
<Acessar>

#Tela de login do WordPress
firefox ou google chrome: http://endereço_ipv4_ubuntuserver/wp/wp-login.php
  Nome de usuário ou endereço de email: admin
  Senha: pti@2018
  Lembrar-me: On (Habilitado)
  <Acessar>

#OBSERVAÇÃO IMPORTANTE: como não estamos utilizando servidores DNS e nem Domínio/Subdomínio
#é recomendado alterar as configurações de Links Permanente do Wordpress, com isso resolvemos
#uma falha de JSON (JavaScript Object Notation) na hora de salvar as mudanças no Wordpress.

#Configuração dos Links Permanentes do WordPress
Configurações
  Links permanentes
    Configurações de Links Permanentes
      Configurações Comuns
        Estrutura de Links Permanentes
          ON (Selecionar): Padrão (http://endereço_ipv4_ubuntuserver/wp/?=123)
  <Salvar Alterações>

#Tela do site do WordPress
firefox ou google chrome: http://endereço_ipv4_ubuntuserver/wp/

#OBSERVAÇÃO IMPORTANTE: Quando você faz a implementação do Wordpress em uma rede Local ou Cloud,
#e precisa fazer a migração do Site para outra Rede com configurações diferentes, o Wordpress não
#atualiza automaticamente os endereços IPv4 ou nome de Domínio que estão registrados na tabela de
#configuração do Wordpress no MySQL Server, sendo necessário fazer essa atualização manualmente
#conforme Script SQL abaixo: NÃO COMENTADO NO VÍDEO, USAR ESSA OPÇÃO SOMENTE SE NECESSÁRIO.

#Mais informações acesse o Link dos Desenvolvedores do Wordpress:
Link: https://developer.wordpress.org/advanced-administration/upgrade/migrating/

#se logando no MySQL Server com o usuário e senha Wordpress
#opções do comando mysql: -u (user), -p (password)
sudo mysql -u wordpress -p
```
```sql
/* Utilizar o banco de dados do Wordpress */
USE wordpress;

/* Alterar os endereços IPv4 ou Nome do Domínio conforme a sua necessidade */
/* OBSERVAÇÃO IMPORTANTE: RECOMENDO APLICAR AS ATUALIZAÇÕES UMA DE CADA VEZ */ 
UPDATE wp_options SET option_value = replace(option_value, 'IPv4.ANTIGO', 'IPv4.NOVO') WHERE option_name = 'home' OR option_name = 'siteurl'; 
UPDATE wp_posts SET guid = replace(guid, 'IPv4.ANTIGO','IPv4.NOVO'); 
UPDATE wp_posts SET post_content = replace(post_content, 'IPv4.ANTIGO', 'IPv4.NOVO'); 
UPDATE wp_postmeta SET meta_value = replace(meta_value,'IPv4.ANTIGO','IPv4.NOVO');

/* Sair do Mysql Server e Testar novamente o Site do Wordpress no navegador */ 
exit
```

========================================DESAFIOS=========================================

**#07_ DESAFIO-01:** FAZER A INSTALAÇÃO DE UM NOVO __`TEMA`__ DO WORDPRESS, FAZER A CRIAÇÃO DE __`02 (DUAS)`__ POSTAGEM NO WORDPRESS DE QUALQUER CONTEÚDO ADICIONANDO PELO MENOS __`DUAS IMAGEM`__ EM CADA POSTAGEM.

**#08_ DESAFIO-02:** FAZER A INSTALAÇÃO E CONFIGURAÇÃO DE __`02 (DOIS) PLUGINS`__ DO WORDPRESS MAIS USADO NO DIA A DIA O: __`Wordfence Security FREE: (GET FREE LICENSE)`__ E: __`W3 Total Cache`__ (OBSERVAÇÃO: NÃO PRECISA FAZER AS CONFIGURAÇÕES, APENAS A INSTALAÇÃO).

**#09_ DESAFIO-03:** NO TEMA QUE VOCÊ INSTALOU, VERIFICAR A POSSIBILIDADE DE ADICIONAR OS __`ÍCONES DO GITHUB, LINKEDIN E FACEBOOK`__, ADICIONAR TAMBÉM OS LINKS PARA O SITE CRIADO NO DESAFIO DO __`APACHE2`__, FACILITANDO O ACESSO A SUAS PÁGINAS CRIADAS EM __`HTML E PHP`__ E COMEÇAR A CRIAR UM SISTEMA DE GESTÃO UNIFICADA DE PÁGINAS DE INTERNET QUE SERÁ UTILIZADO EM TODO ESSE CURSO.

**#10_ DESAFIO-04:** FAZER A INSTALAÇÃO DE UM NOVO SITE DO WORDPRESS, SEGUINDO OS PROCEDIMENTOS ABAIXO:

|         Descrição           |     Informação     |
|-----------------------------|--------------------|
| Path New Site               | /var/www/html/site |
| Database Name               | newsite            |
| User and Password Database  | newsite            |
| User and Password Wordpress | super              |
| Wordpress Template Install  | Astra              |

**OBSERVAÇÃO IMPORTANTE:** CONFORME COMENTADO E RELATADO POR ALGUNS USUÁRIOS QUE ESTÃO FAZENDO OS DESAFIOS DO WORDPRESS, APÓS INSTALAR E CONFIGURAR OS PLUGINS OU TEMAS, O WORDPRESS DEPOIS DE ALGUM TEMPO PEDE PARA ATUALIZAR O SISTEMA, APÓS A ATUALIZAÇÃO, O SISTEMA DO WORDPRESS FICA FORA DO AR (INDISPONÍVEL) E APRESENTA A SEGUINTE MENSAGEM NO NAVEGADOR: *Momentaneamente indisponível para manutenção programada. Confira novamente em um minuto.* ESSA FALHA ESTÁ ASSOCIADA NO MOMENTO DE APLICAR A ATUALIZAÇÃO DO WORDPRESS, ELE TIRA O SITE DO AR PARA DEPOIS VOLTAR COM AS MUDANÇAS, MAIS PODE ACONTECER DELE NÃO VOLTAR, PARA CORRIGIR ESSA FALHA DIGITE OS COMANDOS ABAIXO (SOMENTE SE NECESSÁRIO):
```bash
#acessar o diretório do site do Wordpress
cd /var/www/html/wp

#listar o arquivo oculto de manutenção do Wordpress
#opção do comando ls: -l (list), -h (human-readable), -a (all)
ls -lha .maintenance

#remover o arquivo oculto de manutenção do Wordpress
#opção do comando rm: -v (verbose)
sudo rm -v .maintenance

#fazer um Reload do serviço do Apache2
sudo systemctl reload apache2

#testar novamente o Site, atualizar a página com Ctrl+R ou F5
firefox ou google chrome: http://endereço_ipv4_ubuntuserver/wp/
```

=========================================================================================

OBSERVAÇÃO IMPORTANTE: COMENTAR NO VÍDEO DO WORDPRESS SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: Desafio do WordPress realizado com sucesso!!! #BoraParaPrática

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/04-wordpress.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiowordpress #desafiocms