#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 16/01/2023<br>
#Data de atualização: 03/04/2025<br>
#Versão: 0.24<br>

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO WORDPRESS SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do WordPress realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/04-wordpress.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiowordpress #desafiocms

Conteúdo estudado nesse desafio:<br>
#01_ Instalando as Dependências do CMS WordPress no Ubuntu Server;<br>
#02_ Criando a Base de Dados do WordPress no MySQL Server;<br>
#03_ Fazendo o download do WordPress e descompactando o seu conteúdo no diretório padrão do Apache2 Server no Ubuntu Server;<br>
#04_ Localização dos Arquivos de Configuração do CMS Wordpress no Ubuntu Server;<br>
#05_ Editando o arquivo de conexão com o Banco de Dados e Salt do CMS WordPress;<br>
#06_ Habilitando os módulos do Apache2 Server utilizados pelo CMS WordPress no Ubuntu Server;<br>
#07_ Acessando e configurando o CMS WordPress via navegador;<br>
#08_ Correções de Falhas de Acesso ao CMS Wordpress ou Migração de Servidores;<br>
#09_ Desafio de Postagem, Temas e Plugins do CMS WordPress.<br>

Site Oficial do Apache2: https://httpd.apache.org/<br>
Site Oficial do PHP (7.x ou 8.x): https://www.php.net/<br>
Site Oficial do MySQL: https://www.mysql.com/<br>
Site Oficial do WordPress: https://br.wordpress.org/

**Site Oficial do W3C (World Wide Web Consortium) School**<br>
Site Oficial do W3C School HTML5: https://www.w3schools.com/html/default.asp<br>
Site Oficial do W3C School CSS: https://www.w3schools.com/css/default.asp<br>
Site Oficial do W3C School JavaScript: https://www.w3schools.com/js/default.asp<br>
Site Oficial do W3C School PHP: https://www.w3schools.com/php/default.asp<br>
Site Oficial do W3C School SQL: https://www.w3schools.com/sql/default.asp

**Sites de IA (Inteligência Artificial) indicados para os Desafios**<br>
OpenAI ChatGPT: https://chatgpt.com<br>
Microsoft Copilot: https://copilot.microsoft.com<br>
Google Gemini: https://gemini.google.com<br>
DeepSeek: https://chat.deepseek.com/<br>
x.AI Grok: https://grok.com/<br>

**O QUE É E PARA QUE SERVER O WORDPRESS:** O WordPress é um sistema de gerenciamento de conteúdo *CMS (Content Management System)* de código aberto, amplamente utilizado para criar, editar e gerenciar **Sites**, **Blogs** e **E-Commerce** de forma intuitiva, sem a necessidade de conhecimento avançado em programação. Ele é baseado em *PHP* e utiliza o *MySQL ou MariaDB* como banco de dados.

**O QUE É E PARA QUE SERVER O CMS:** O *CMS (Content Management System)*, ou Sistema de Gerenciamento de Conteúdo, é uma plataforma que permite criar, editar, organizar e publicar conteúdos de maneira fácil e intuitiva, *sem a necessidade de conhecimento técnico avançado em programação*. É amplamente utilizado para gerenciar sites, blogs e até lojas virtuais.

**O QUE É E PARA QUE SERVER WEB DESIGNER:** Um *Web Designer* é o profissional responsável por criar o *Layout Visual e a Experiência de Uso (UX/UI) de Sites*, blogs, portais e lojas virtuais. **Ele não é necessariamente programador**, mas entende de *Design, Usabilidade, Estrutura Visual e Ferramentas Web* para criar interfaces que sejam bonitas, funcionais e responsivas (adaptadas a diferentes telas).

[![WordPress](http://img.youtube.com/vi/J6xVAocGyZg/0.jpg)](https://www.youtube.com/watch?v=J6xVAocGyZg "WordPress")

Link da vídeo aula: https://www.youtube.com/watch?v=J6xVAocGyZg

## 01_ Instalando as Dependências do CMS WordPress no Ubuntu Server
```bash
#atualizando as listas do Apt
sudo apt update
```

**OBSERVAÇÃO IMPORTANTE:** POR MOTIVO DE COMPATIBILIDADE, FOI REMOVIDO A *NUMERAÇÃO DA VERSÃO DO PHP* NESSE PROCEDIMENTO, TODO O CENÁRIO IRÁ INSTALAR SEMPRE A ÚLTIMA VERSÃO DISPONÍVEL NO UBUNTU SERVER, VERSÃO ATUALIZADA DO PHP NO UBUNTU SERVER 22.04: **8.1 (ATUALIZADO EM: 26/09/2024)**.

```bash
#instalando as dependências do WordPress
#opção da contra barra (\): criar uma quebra de linha no terminal
sudo apt install php-bcmath php-mbstring php-dev php-curl php-mysql php-xml php-zip \
php-soap php-imagick php-intl php-json php-pear unzip pwgen libmcrypt-dev ghostscript \
libapache2-mod-php zlib1g zlib1g-dev
```

## 02_ Criando a Base de Dados do WordPress no MySQL Server
```bash
#opções do comando mysql: -u (user), -p (password)
sudo mysql -u root -p
```
```sql
/* Criando o Banco de Dados com o nome Wordpress */
/* OBSERVAÇÃO IMPORTANTE: ALTERAR O NOME DA BASE DE DADOS CONFORME NECESSIDADE */
CREATE DATABASE wordpress;
```

**OBSERVAÇÃO IMPORTANTE:** ALTERAR O NOME DO USUÁRIO E SENHA CONFORME NECESSIDADE, NESSE CENÁRIO ESTÁ SENDO CRIADO UM USUÁRIO REMOTO, QUANDO NÃO SE ADICIONA A OPÇÃO: __`LOCALHOST`__ OU: __`% (PORCENTAGEM)`__ NA CRIAÇÃO DE USUÁRIOS NO MYSQL, ELE ENTENDE QUE O USUÁRIO SERÁ REMOTO, ADICIONANDO AUTOMATICAMENTE O CARÁCTER DE: __`% (PORCENTAGEM)`__ NA CRIAÇÃO DO USUÁRIO.

```sql
/* Criando o usuário e senha da Base de Dados do WordPress */
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

## 03_ Fazendo o download do WordPress e descompactando o seu conteúdo no diretório padrão do Apache2 Server no Ubuntu Server
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

## 04_ Localização dos Arquivos de Configuração do CMS Wordpress no Ubuntu Server
```bash
/var/www/html/wp/wp-admin/      <-- Diretório que contém os arquivos do painel administrativo;
/var/www/html/wp/wp-includes/   <-- Diretório que contém os arquivos centrais do core do WordPress;
/var/www/html/wp/wp-content/    <-- Diretório que contém os arquivos que você pode customizar:
                                    themes/: temas instalados, plugins/: plugins instalados e 
                                    uploads/: mídias enviadas (imagens, vídeos, PDFs, etc).
/var/www/html/wp/wp-content/    <-- Diretório que contém os Logs do CMS Wordpress se habilitado.
```

## 05_ Editando o arquivo de conexão com o Banco de Dados e Salt do CMS WordPress
```bash
#acessando o diretório do WordPress
cd /var/www/html/wp/

#criando o arquivo de configuração do banco de dados do WordPress
#opção do comando cp: -v (verbose)
sudo cp -v wp-config-sample.php wp-config.php

#editando o arquivo de configuração do WordPress
sudo vim wp-config.php

#entrando no modo de edição do editor de texto VIM
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
```

O **salt (ou "sal", em português) do WordPress** é uma string aleatória usada para *aumentar a segurança da autenticação dos usuários*. Ele é combinado com senhas e outras informações sensíveis antes de serem armazenadas ou processadas, **dificultando que sejam quebradas por ataques como brute-force ou rainbow tables**.

Link oficial para a geração do Salt do WordPress site: https://api.wordpress.org/secret-key/1.1/salt/

Mais informações sobre o Salt's do WordPress: https://www.hostinger.com.br/tutoriais/wordpress-salt

```php
#copiar o conteúdo do Salt e colocar a partir da linha: 51
#OBSERVAÇÃO IMPORTANTE: remover as linhas existentes de: 51 até: 58 antes de copiar/colar as
#novas linhas do Salt, utilizar a opção: dd do Editor de Texto VIM. 
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>
```

## 06_ Habilitando os módulos do Apache2 Server utilizados pelo CMS WordPress no Ubuntu Server
```bash
#habilitando os módulos do Apache2 Server
#opção da contra barra (\): criar uma quebra de linha no terminal
sudo a2enmod cgi alias authz_host deflate dir expires headers mime rewrite autoindex \
negotiation setenvif

#reiniciar o serviço do Apache2 Server
sudo systemctl reload apache2
sudo systemctl status apache2

#analisando os Log's e mensagens de erro do Servidor do Apache2 (NÃO COMENTADO NO VÍDEO)
#opção do comando journalctl: x (catalog), e (pager-end), u (unit)
sudo journalctl -xeu apache2
```

**OBSERVAÇÃO IMPORTANTE:** Por que sempre é necessário verificar a versão do serviço de rede que você está implementando ou configurando no Servidor Ubuntu Server, devido as famosas falhas de segurança chamadas de: *CVE (Common Vulnerabilities and Exposures)*, com base na versão utilizada podemos pesquisar no site do **Ubuntu Security CVE Reports:** https://ubuntu.com/security/cves as falhas de segurança encontradas e corrigidas da versão do nosso aplicativo, o que ela afeta, se foi corrigida e como aplicar a correção.

```bash
#verificando as versões do CMS Wordpress
#opção do comando grep: ^ (circunflexo) indica que a busca deve ocorrer no início da linha, 
#\$wp_version busca por linhas que começam com a variável $wp_version no código-fonte do WordPress
sudo grep ^\$wp_version /var/www/html/wp/wp-includes/version.php
```

## 07_ Acessando e configurando o CMS WordPress via navegador
```bash
#utilizar os navegadores para testar o acesso ao Wordpress
firefox ou google chrome: http://endereço_ipv4_ubuntuserver/wp

#Informações que serão solicitadas na configuração via Web do WordPress
Português do Brasil: Continuar;
Informação necessária
  Título do site: Seu Nome e Sobrenome;
  Nome de usuário: admin;
  Senha: sua_Senha;
  Confirme a senha: On (Habilitado) Confirmar o uso de uma senha fraca;
  O seu e-mail: admin@seu.domínio; 
<Instalar WordPress>
<Acessar>

#Tela de login do WordPress
firefox ou google chrome: http://endereço_ipv4_ubuntuserver/wp/wp-login.php
  Nome de usuário ou endereço de email: admin
  Senha: sua_senha
  Lembrar-me: On (Habilitado)
  <Acessar>
```

## 08_ Correções de Falhas de Acesso ao CMS Wordpress ou Migração de Servidores

**OBSERVAÇÃO IMPORTANTE:** como não estamos utilizando *Servidores DNS* e nem *Domínio/Subdomínio* é recomendado alterar as configurações de **Links Permanente do Wordpress**, com isso resolvemos uma falha de *JSON (JavaScript Object Notation)* na hora de salvar as mudanças no Wordpress.

```bash
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
```

**OBSERVAÇÃO IMPORTANTE:** Quando você faz a implementação do *CMS Wordpress* em uma __`Rede Local ou Cloud`__, e precisa fazer a migração do Site para outra Rede com configurações diferentes, o CMS Wordpress não atualiza automaticamente os endereços **IPv4 ou Nome de Domínio** que estão registrados na tabela de configuração do Wordpress no MySQL Server, sendo necessário fazer essa atualização manualmente conforme Script SQL abaixo: **NÃO COMENTADO NO VÍDEO, USAR ESSA OPÇÃO SOMENTE SE NECESSÁRIO.**

Mais informações acesse o Link dos Desenvolvedores do Wordpress: https://developer.wordpress.org/advanced-administration/upgrade/migrating/


```bash
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

**#09_ DESAFIO-01:** FAZER A INSTALAÇÃO DE UM NOVO __`TEMA`__ DO WORDPRESS, FAZER A CRIAÇÃO DE __`02 (DUAS)`__ POSTAGEM NO WORDPRESS DE QUALQUER CONTEÚDO ADICIONANDO PELO MENOS __`DUAS IMAGEM`__ EM CADA POSTAGEM.

**#10_ DESAFIO-02:** FAZER A INSTALAÇÃO E CONFIGURAÇÃO DE __`02 (DOIS) PLUGINS`__ DO WORDPRESS MAIS USADO NO DIA A DIA O: __`Wordfence Security FREE: (GET FREE LICENSE)`__ E: __`W3 Total Cache`__ (OBSERVAÇÃO: NÃO PRECISA FAZER AS CONFIGURAÇÕES, APENAS A INSTALAÇÃO).

**#11_ DESAFIO-03:** NO TEMA QUE VOCÊ INSTALOU, VERIFICAR A POSSIBILIDADE DE ADICIONAR OS __`ÍCONES DO GITHUB, LINKEDIN E FACEBOOK`__, ADICIONAR TAMBÉM OS LINKS PARA O SITE CRIADO NO DESAFIO DO __`APACHE2`__, FACILITANDO O ACESSO A SUAS PÁGINAS CRIADAS EM __`HTML E PHP`__ E COMEÇAR A CRIAR UM SISTEMA DE GESTÃO UNIFICADA DE PÁGINAS DE INTERNET QUE SERÁ UTILIZADO EM TODO ESSE CURSO.

**#12_ DESAFIO-04:** FAZER A INSTALAÇÃO DE UM NOVO SITE DO WORDPRESS, SEGUINDO OS PROCEDIMENTOS ABAIXO:

|         Descrição           |     Informação     |
|-----------------------------|--------------------|
| Path New Site               | /var/www/html/site |
| Database Name               | newsite            |
| User and Password Database  | newsite            |
| User and Password Wordpress | super              |
| Wordpress Template Install  | Astra              |

**OBSERVAÇÃO IMPORTANTE:** CONFORME COMENTADO E RELATADO POR ALGUNS USUÁRIOS QUE ESTÃO FAZENDO OS *DESAFIOS DO WORDPRESS*, APÓS INSTALAR E CONFIGURAR OS PLUGINS OU TEMAS, O WORDPRESS DEPOIS DE ALGUM TEMPO PEDE PARA ATUALIZAR O SISTEMA, APÓS A ATUALIZAÇÃO, O SISTEMA DO WORDPRESS FICA FORA DO AR (INDISPONÍVEL) E APRESENTA A SEGUINTE MENSAGEM NO NAVEGADOR: *Momentaneamente indisponível para manutenção programada. Confira novamente em um minuto.* ESSA FALHA ESTÁ ASSOCIADA NO MOMENTO DE APLICAR A ATUALIZAÇÃO DO WORDPRESS, ELE TIRA O SITE DO AR PARA DEPOIS VOLTAR COM AS MUDANÇAS, MAIS PODE ACONTECER DELE NÃO VOLTAR, PARA CORRIGIR ESSA FALHA DIGITE OS COMANDOS ABAIXO (SOMENTE SE NECESSÁRIO):
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

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO WORDPRESS SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do WordPress realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/04-wordpress.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiowordpress #desafiocms