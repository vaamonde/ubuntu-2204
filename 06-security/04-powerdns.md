#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 07/10/2025<br>
#Data de atualização: 07/10/2025<br>
#Versão: 0.01<br>

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO POWERDNS SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do PowerDNS realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/23-powerdns.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiopowerdns #desafiopowerdnsadmin

Conteúdo estudado nesse desafio:<br>
#01_ 

Site Oficial do PowerDNS: https://www.powerdns.com/<br>
Site Oficial do PowerDNS Admin: https://www.poweradmin.org/

**Sites de IA (Inteligência Artificial) indicados para os Desafios**<br>
OpenAI ChatGPT: https://chatgpt.com<br>
Microsoft Copilot: https://copilot.microsoft.com<br>
Google Gemini: https://gemini.google.com<br>
DeepSeek: https://chat.deepseek.com/<br>
x.AI Grok: https://grok.com/<br>

**O QUE É E PARA QUE SERVER O DNS:** O DNS (Domain Name System) é o sistema que traduz nomes de domínio em endereços IP, funcionando como uma “agenda telefônica da Internet”. Quando você digita www.google.com, o DNS é quem descobre o endereço IP real do servidor onde o site está hospedado, permitindo que seu computador se conecte a ele.

**O QUE É E PARA QUE SERVER O POWERDNS:** O PowerDNS é uma alternativa avançada ao BIND9 (da ISC.org), desenvolvido para oferecer melhor desempenho, escalabilidade e integração com bancos de dados. Ele é open source, multiplataforma e amplamente utilizado em provedores de Internet, data centers e grandes empresas.

**O QUE É E PARA QUE SERVER O POWERDNS ADMIN:** O PowerDNS-Admin é uma interface web moderna e intuitiva desenvolvida para gerenciar servidores PowerDNS de forma simples, visual e organizada. Ele é o “painel de controle” do PowerDNS — ideal para quem não quer (ou não precisa) editar arquivos de zona manualmente no terminal.

[![PowerDNS](http://img.youtube.com/vi//0.jpg)]( "PowerDNS")

Link da vídeo aula: 

**OBSERVAÇÃO IMPORTANTE:** O POWERDNS SERVER E POWERDNS ADMIN POSSUI AS DEPENDÊNCIAS DO *BANCO DE DADOS MYSQL SERVER* E DO *FRAMEWORKS NODE.JS*, ESSES APLICATIVOS JÁ FORAM INSTALADO NAS ETAPAS: **03 DO MYSQL SERVER 8 E NA ETAPA 05 DO NODE.JS**.

**OBSERVAÇÃO IMPORTANTE:** É RECOMENDADO UTILIZADO O NGINX SERVER PARA AS CONFIGURAÇÕES DO POWERDNS ADMIN, CUIDADO COM A INSTALAÇÃO DO APACHE2 SERVER PARA NÃO ENTRAR EM CONFLITO NAS CONFIGURAÇÕES, RECOMENDADO INSTALAR O NGINX SERVER DE FORMA SIMPLES, SEM CONFIGURAÇÃO EXTRA DO PHP-FPM.

## 01_Instalando as dependências do PowerDNS Autoritativo, PowerDNS Recursivo e do PowerDNS Admin no Ubuntu Server
```bash
#atualizando as listas do Apt
#opção do comando apt: update (Resynchronize the package index files from their sources)
sudo apt update

#instalando as dependências do PowerDNS Autoritativo, Recursivo Admin no Ubuntu Serve
#opção do comando apt: install (install is followed by one or more package names)
#opção da contra barra (\): criar uma quebra de linha no terminal
sudo apt install nginx python3-dev libsasl2-dev libldap2-dev libssl-dev libxml2-dev libxslt1-dev \
libxmlsec1-dev libffi-dev pkg-config apt-transport-https virtualenv build-essential libmariadb-dev \
git python3-flask libpq-dev vim gnupg gcc g++ make software-properties-common tree build-essential \
ca-certificates apt-transport-https curl
```

## 02_ Baixando e instalando a Chave GPG do PowerDNS Auth e Recursor v5.0.x no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** o PowerDNS Authoritative e Recursor possui várias versões, para verificar as *chaves GPG* de cada versão acesse o link: https://repo.powerdns.com/

```bash
#download da Chave GPG do PowerDNS Authoritative (VERSÃO ESTÁVEL ATÉ O MOMENTO: 5.0.x EM: 07/10/2025)
#opção do comando curl: -f (fail), -s (silent), -S (show-error), -L (location)
#opção do redirecionador | (piper): Conecta a saída padrão com a entrada padrão de outro comando
#opção do comando gpg: -o (output)
curl -fsSL https://repo.powerdns.com/FD380FBB-pub.asc | sudo gpg --dearmor -o /usr/share/keyrings/powerdns-auth-5.0.gpg

#download da Chave GPG do PowerDNS Recursor (VERSÃO ESTÁVEL ATÉ O MOMENTO: 5.3.x EM: 07/10/2025)
#opção do comando curl: -f (fail), -s (silent), -S (show-error), -L (location)
#opção do redirecionador | (piper): Conecta a saída padrão com a entrada padrão de outro comando
#opção do comando gpg: -o (output)
curl -fsSL https://repo.powerdns.com/FD380FBB-pub.asc | sudo gpg --dearmor -o /usr/share/keyrings/powerdns-recur-5.3.gpg
```

## 03_ Criando o repositório do PowerDNS Auth e Recursor no Ubuntu Server
```bash
#criando o arquivo do repositório Apt do PowerDNS Authoritative no Ubuntu Server
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
echo "deb [signed-by=/usr/share/keyrings/powerdns-auth-5.0.gpg] http://repo.powerdns.com/ubuntu jammy-auth-50 main" | sudo tee /etc/apt/sources.list.d/pdns-auth.list

#criando o arquivo do repositório Apt do PowerDNS Recursos no Ubuntu Server
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
echo "deb [signed-by=/usr/share/keyrings/powerdns-recur-5.3.gpg] http://repo.powerdns.com/ubuntu jammy-rec-53 main" | sudo tee /etc/apt/sources.list.d/pdns-recur.list

#criando o arquivo de preferências do PowerDNS Server no Ubuntu Server
#opção do comando echo: -e (enable interpretation of backslash escapes)
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
#opção do caracter especial de escape \n: number line
echo -e "Package: pdns-* \nPin: origin repo.powerdns.com \nPin-Priority: 600" | sudo tee /etc/apt/preferences.d/pdns-server-50
```

## 04_ Atualizando as Lista do Apt com o novo Repositório do PowerDNS Server no Ubuntu Server
```bash
#atualizando as listas do Apt com o novo repositório
#opção do comando apt: update (Resynchronize the package index files from their sources)
sudo apt update
```

## 05_ Desativando o Serviço do SystemD e Resolução de DNS do ResolveD do Ubuntu Server
```bash
#parando o serviço do SystemtD ResolveD do Ubuntu Server
#opção do comando systemctl: stop (Stop (deactivate) one or more units specified on the command line)
sudo systemctl stop systemd-resolved

#desabilitando o serviço do SystemtD ResolveD do Ubuntu Server
#opções do comando systemctl: disable (Disables one or more units), --now (When used with disable, 
#the units will also be disabled service)
sudo systemctl disable --now systemd-resolved

#removendo o arquivo resolv.conf do Ubuntu Server
#opção do comando rm: -r (recursive), -f (force)
sudo rm -rf /etc/resolv.conf

#atualizando o arquivo resolv.conf com servidor DNS Temporário do Google
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf

#testando a resolução de nomes temporários do DNS no Ubuntu Server
sudo nslookup google.com
```

## 06_ Instalando o PowerDNS Server e PowerDNS Backend MySQL no Ubuntu Server
```bash
#instando o PowerDNS Server e PowerDNS Backend MySQL no Ubuntu Server
sudo apt install pdns-server pdns-recursor pdns-backend-mysql 
```

## 02_ Criando a Base de Dados do PowerDNS Server no MySQL Server no Ubuntu Server
```bash
#acessando o MySQL Server com o usuário Root
#opções do comando mysql: -u (user), -p (password)
sudo mysql -u root -p
```
```sql
/* Criando o Banco de Dados do PowerDNS com o nome: powerdns */
/* OBSERVAÇÃO IMPORTANTE: ALTERAR O NOME DA BASE DE DADOS CONFORME NECESSIDADE */
/* Mais informações acesse: https://www.w3schools.com/mysql/mysql_create_db.asp */
/* Mais informações acesse: https://dev.mysql.com/doc/refman/8.4/en/create-database.html */
CREATE DATABASE powerdns;
```

**OBSERVAÇÃO IMPORTANTE:** ALTERAR O NOME DO USUÁRIO E SENHA CONFORME SUA NECESSIDADE, NESSE CENÁRIO ESTÁ SENDO CRIADO UM USUÁRIO LOCAL, COM A OPÇÃO: __`LOCALHOST`__.

```sql
/* Criando o usuário e senha da Base de Dados do PowerDNS */
/* Mais informações acesse: https://dev.mysql.com/doc/refman/8.4/en/create-user.html */
CREATE USER 'powerdns'@'localhost' IDENTIFIED WITH mysql_native_password BY 'powerdns';

/* Aplicando as permissões de acesso do usuário PowerDNS */
/* OBSERVAÇÃO IMPORTANTE: ALTERAR O NOME DO USUÁRIO CONFORME NECESSIDADE */
/* Mais informações acesse: https://dev.mysql.com/doc/refman/8.4/en/grant.html */
GRANT USAGE ON *.* TO 'powerdns';
GRANT ALL PRIVILEGES ON powerdns.* TO 'powerdns';

/* aplicando todas as mudanças na base de dados */
/* Mais informações acesse: https://dev.mysql.com/doc/refman/8.4/en/flush.html */
FLUSH PRIVILEGES;

/* Verificando o Usuário do PowerDNS foi criado no Banco de Dados MySQL Server */
/* Mais informações acesse: https://www.w3schools.com/sql/sql_ref_select.asp */
SELECT user,host,authentication_string FROM mysql.user WHERE user='powerdns';

/* Visualizando as bases de dados do MySQL */
/* Mais informações acesse: https://dev.mysql.com/doc/refman/8.4/en/show-databases.html */
SHOW DATABASES;

/* Acessando o Banco de Dados powerdns */
/* Mais informações acesse: https://dev.mysql.com/doc/refman/9.0/en/use.html */
USE powerdns;

/* Saindo do Banco de Dados */
exit
```
```bash
#se logando com o usuário powerdns para testar a conexão com o MySQL Server
#opções do comando mysql: -u (user), -p (password)
sudo mysql -u powerdns -p
```
```sql
/* visualizando a base de dados do PowerDNS e acessando o Banco para testar a conexão */
SHOW DATABASES;
USE powerdns;
exit
```

## 05_ Testando o acesso a Base de Dados do PowerDNS Server no MySQL Server no Ubuntu Server
```bash
#conectando no banco de dados MySQL Server com o usuário powerdns
#opções do comando mysql: -u (user), -p (password)
sudo mysql -u powerdns -p
```
```sql
/* Listando os Bancos de Dados do MySQL Server */
SHOW DATABASES;

/* Acessando o Banco de Dados PowerDNS Server */
USE powerdns;

/* Saindo do Banco de Dados MySQL Server*/
exit
```

## 06_ Populando as Tabelas no Banco de Dados do PowerDNS Server utilizando o arquivo de Esquema do MySQL Server no Ubuntu Server
```bash
#importando o esquema e os dados iniciais do banco de dados do PowerDNS Server
#opção do redirecionador < (menor): Redireciona a entrada padrão (STDIN)
#opções do comando mysql: -u (user), -p (password), powerdns (database)
sudo mysql -u powerdns -p powerdns < /usr/share/pdns-backend-mysql/schema/schema.mysql.sql

#conectando no banco de dados MySQL Server com o usuário powerdns
#opções do comando mysql: -u (user), -p (password)
sudo mysql -u powerdns -p
```
```sql
/* Listando os Bancos de Dados do MySQL Server */
SHOW DATABASES;

/* Acessando o Banco de Dados PowerDNS Server */
USE powerdns;

/* Verificando as Tabelas criadas pelo Script */
SHOW TABLES;

/* Saindo do Banco de Dados MySQL Server*/
exit
```

## 13_ Localização dos diretórios principais do PowerDNS no Ubuntu Server
```bash
/etc/powerdns/*                        <-- Diretório dos arquivos de configuração do serviço do PowerDNS
/etc/powerdns/pdns.conf                <-- Arquivo de configuração principal do serviço do PowerDNS Authoritative
/etc/powerdns/recursor.conf            <-- Arquivo de configuração principal do serviço do PowerDNS Recursor
/etc/powerdns/pdns.d/                  <-- Diretório dos arquivos de configuração do PowerDNS Authoritative
/etc/powerdns/pdns.d/bind.conf         <-- Arquivo de configuração da Base de Dados do Bind9 DNS Server
/etc/powerdns/pdns.d/pdns-mysql.conf   <-- Arquivo de configuração da Base de Dados do MySQL Server
/etc/powerdns/recursor.d/              <-- Diretório dos arquivos de configuração do PowerDNS Recursor
/var/log/
```

## 10_ Adicionado o Usuário Local no Grupo Padrão do PowerDNS no Ubuntu Server
```bash
#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
#OBSERVAÇÃO IMPORTANTE: você pode substituir a variável de ambiente $USER pelo
#nome do usuário existente no sistema para adicionar no Grupo desejado.
sudo usermod -a -G pdns $USER

#verificando informações do grupo PDNS do PowerDNS
#opção do comando getent: group (the database system group)
sudo getent group pdns
```

## 07_ Atualizando os arquivos de configuração do PowerDNS Server no Ubuntu Server
```bash
#atualizando o arquivo de configuração do Bind9 DNS Server do Github
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/powerdns/pdns.d/bind.conf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/pdns-bind.conf

#atualizando o arquivo de configuração do MySQL Server do Github
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/powerdns/pdns.d/pdns-mysql.conf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/pdns-mysql.conf

#atualizando o arquivo de configuração do PowerDNS Authoritative do Github
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/powerdns/pdns.conf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/pdns.conf

#atualizando o arquivo de configuração do PowerDNS Recursor do Github
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/powerdns/recursor.conf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/recursor.conf
```



## 03_ Verificando o Serviço e Versão do Auditd no Ubuntu Server
```bash
#verificando o serviço do Auditd
#opções do comando systemctl: status (runtime status information), restart (Stop and then 
#start one or more units), stop (Stop (deactivate) one or more units), start (Start (activate) 
#one or more units)
sudo systemctl status auditd
sudo systemctl restart auditd
sudo systemctl reload auditd
sudo systemctl stop auditd
sudo systemctl start auditd

#analisando os Log's e mensagens de erro do Auditd
#opção do comando journalctl: x (catalog), e (pager-end), u (unit)
sudo journalctl -xeu auditd

#verificando os arquivos de configuração do Auditd
#opção do comando augenrules: --check (test if rules have changed and need updating without overwriting audit.rules)
sudo augenrules --check
```

**OBSERVAÇÃO IMPORTANTE:** Por que sempre é necessário verificar a versão do serviço de rede que você está implementando ou configurando no Servidor Ubuntu Server, devido as famosas falhas de segurança chamadas de: *CVE (Common Vulnerabilities and Exposures)*, com base na versão utilizada podemos pesquisar no site do **Ubuntu Security CVE Reports:** https://ubuntu.com/security/cves as falhas de segurança encontradas e corrigidas da versão do nosso aplicativo, o que ela afeta, se foi corrigida e como aplicar a correção.

```bash
#verificando as versões do Auditctl, Ausearch e Aureport
#opção do comandos auditctl, ausearch e aureport: -v (version)
sudo auditctl -v    #configuração das regras de auditoria do Auditd
sudo ausearch -v    #consultar eventos no log de auditoria do Auditd
sudo aureport -v    #gerar relatórios do sistema de auditoria do Auditd
```

## 04_ Localização dos Arquivos de Configuração do Auditd no Ubuntu Server
```bash
/etc/audit/                      <-- Diretório de configuração padrão do Auditd
/etc/audit/auditd.conf           <-- Arquivo de configuração padrão do serviço do Auditd
/etc/audit/plugins.d/            <-- Diretório dos plugins do Auditd
/etc/audit/rules.d/              <-- Diretório das regras do Auditd
/etc/audit/rules.d/audit.rules   <-- Arquivo de configuração padrão das regras do Auditd
/var/log/audit/                  <-- Diretório dos logs do Auditd
```

## 05_ Atualizando os arquivos de configuração do Auditd no Ubuntu Server
```bash
#fazendo o backup do arquivo de configuração do serviço do Auditd
#opção do comando cp: -v (verbose)
sudo cp -v /etc/audit/auditd.conf /etc/audit/auditd.conf.old

#atualizando o arquivo de configuração do Auditd do Github
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/audit/auditd.conf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/auditd.conf

#atualizando o arquivo de configuração das Regras do Auditd do Github
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/audit/rules.d/wsvaamonde.rules https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/wsvaamonde.rules
```

## 06_ Editando os arquivos de configuração do serviço e regras do Auditd no Ubuntu Server
```bash
#editar o arquivo de configuração do Auditd
sudo vim /etc/audit/auditd.conf

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
#alterar a linha: 61 variável do: name = pti.intra
name = pti.intra
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>

#editar o arquivo de regras do Auditd
sudo vim /etc/audit/rules.d/wsvaamonde.rules

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
#adicionar mais regras de monitoramento seguindo o padrão
-w arquivo_ou_diretório -p permissões -k chave_para_filtro
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>
```

## 07_ Atualizando as regras de auditoria do Auditd no Ubuntu Server
```bash
#reiniciando o serviço do Auditd no Ubuntu Server
#opções do comando systemctl: restart (Stop and then start one or more units), start (Start (activate) one or more units)
sudo systemctl restart auditd
sudo systemctl status auditd

#verificando se há alguma alteração de regra existente para carregar no Auditd
#opção do comando augenrules: --check (test if rules have changed and need updating without overwriting audit.rules)
sudo augenrules --check

#carregando e mesclando as regras do Auditd
#opção do comando augenrules: --load (load old or newly built rules into the kernel)
sudo augenrules --load

#verificando as regras de auditoria ativas do Auditd
#opção do comando auditctl: -l (List all rules 1 per line) 
sudo auditctl -l

#verificando o arquivo de mesclagem de regras do Auditd
#opção do comando cat: -n (number line)
sudo cat -n /etc/audit/audit.rules
```

## 08_ Consultando o arquivo de Log de Auditoria do Auditd no Ubuntu Server
```bash
#listando todo o conteúdo do arquivo de Log do Auditd no Ubuntu Server
#opção do comando cat: -n (number line)
sudo cat -n /var/log/audit/audit.log

#pesquisando no arquivo de log ocorrências no arquivo /etc/passwd
#opção do comando ausearch: -f (Search for an event based on the given filename)
sudo ausearch -f /etc/passwd

#pesquisando no arquivo de log ocorrências no arquivo /etc/passwd
#opção do comando ausearch: -k (Search for an event based on the given key string)
sudo ausearch -k passwd_changes
```

## 09_ Gerando os relatórios do arquivo de Log de Auditoria do Auditd no Ubuntu Server
```bash
#gerando o relatório de sumário do Auditd
sudo aureport

#gerando o relatório de modificações de contas no Auditd
#opção do comando aureport: -m (Report about account modifications)
sudo aureport -m 

#gerando o relatório de autenticação de contas no Auditd
#opção do comando aureport: -au (Report about authentication attempts)
sudo aureport -au
```

## 10_ Testando a regras de Auditoria do Auditd no Ubuntu Server
```bash
#monitoramento em tempo real de arquivo de log do Auditd no Ubuntu Server
#opção do comando tail: -f (output appended data as the file grows)
#opção do comando cat: -n (number all output lines)
#opção do redirecionador | (piper): Conecta a saída padrão com a entrada padrão de outro comando
sudo tail -f /var/log/audit/audit.log | cat -n

#autenticando remotamente via ssh no Ubuntu Server
ssh SEU_USUÁRIO_REMOTO@ENDEREÇO_IPV4_SERVIDOR

#adicionando um novo usuário de teste no Ubuntu Server
sudo useradd teste01

#removendo o usuário de teste no Ubuntu Server
sudo userdel teste01

#pesquisando no arquivo de log ocorrências no arquivo /etc/passwd
#opção do comando ausearch: -f (Search for an event based on the given filename)
#opção do redirecionador | (piper): Conecta a saída padrão com a entrada padrão de outro comando
sudo ausearch -f /etc/passwd | grep passwd

#pesquisando no arquivo de log ocorrências no arquivo /etc/passwd
#opção do comando ausearch: -k (Search for an event based on the given key string)
#opção do redirecionador | (piper): Conecta a saída padrão com a entrada padrão de outro comando
sudo ausearch -k passwd_changes | grep passwd
```

## 11_ Entendo a saída do Log de Auditoria do Auditd no Ubuntu Server

| **Campo**          | **Exemplo**                 | **Descrição**                                                             |
| ------------------ | --------------------------- | ------------------------------------------------------------------------- |
| **node**           | `wsvaamonde.pti.intra`      | Nome do host ou nó onde ocorreu o evento.                                 |
| **type**           | `CRED_DISP`                 | Tipo de evento. (Ex: `CRED_DISP` = descarte de credenciais no PAM).       |
| **msg=audit(...)** | `audit(1759411325.608:449)` | Metadados do evento: **timestamp UNIX.epoch.segundos : ID do evento**.    |
| **pid**            | `2431`                      | PID do processo que gerou o evento.                                       |
| **uid**            | `1000`                      | UID real do usuário que executou o processo.                              |
| **auid**           | `1000`                      | UID do usuário autenticado na sessão (quem fez login originalmente).      |
| **ses**            | `1`                         | Número da sessão de login associada ao evento.                            |
| **subj**           | `unconfined`                | Contexto de segurança (SELinux/AppArmor). `unconfined` = sem restrições.  |
| **op**             | `PAM:setcred`               | Operação realizada pelo PAM (ex: set de credenciais).                     |
| **grantors**       | `pam_permit`                | Módulos PAM envolvidos na decisão de autenticação.                        |
| **acct**           | `"root"`                    | Conta alvo da operação (usuário em nome de quem o comando foi executado). |
| **exe**            | `"/usr/bin/sudo"`           | Caminho do executável que disparou o evento.                              |
| **hostname**       | `?`                         | Nome do host remoto (quando aplicável). `?` = não informado.              |
| **addr**           | `?`                         | Endereço IP remoto (quando aplicável). `?` = não informado.               |
| **terminal**       | `/dev/pts/0`                | Terminal ou sessão TTY de onde partiu o comando.                          |
| **res**            | `success`                   | Resultado da operação (`success` ou `failed`).                            |
| **UID**            | `"vaamonde"`                | Nome de usuário correspondente ao **uid**.                                |
| **AUID**           | `"vaamonde"`                | Nome de usuário correspondente ao **auid**.                               |


| **Campo**          | **Exemplo**                 | **Descrição**                                                                          |
| ------------------ | --------------------------- | -------------------------------------------------------------------------------------- |
| **node**           | `wsvaamonde.pti.intra`      | Host/nó onde ocorreu o evento.                                                         |
| **type**           | `PATH`                      | Indica que o evento refere-se a uma operação em caminho de arquivo.                    |
| **msg=audit(...)** | `audit(1759411301.064:415)` | Timestamp e ID do evento.                                                              |
| **item**           | `2`                         | Índice do item de caminho (pode ter múltiplos caminhos em um evento único).            |
| **name**           | `"/etc/passwd+"`            | Nome do arquivo/diretório envolvido no evento.                                         |
| **inode**          | `1574525`                   | Número do inode no filesystem (identificador único do arquivo).                        |
| **dev**            | `fd:00`                     | Identificador do dispositivo de bloco onde o arquivo reside.                           |
| **mode**           | `0100644`                   | Permissões e tipo de arquivo em notação octal (`-rw-r--r--`).                          |
| **ouid**           | `0`                         | UID do dono original do arquivo (0 = root).                                            |
| **ogid**           | `0`                         | GID do grupo original do arquivo (0 = root).                                           |
| **rdev**           | `00:00`                     | Dispositivo especial associado (apenas para char/block devices).                       |
| **nametype**       | `DELETE`                    | Tipo de operação realizada sobre o nome do arquivo (ex: `CREATE`, `DELETE`, `NORMAL`). |
| **cap_fp**         | `0`                         | File capability permitted set (bitmask de capacidades).                                |
| **cap_fi**         | `0`                         | File capability inheritable set.                                                       |
| **cap_fe**         | `0`                         | File capability effective set.                                                         |
| **cap_fver**       | `0`                         | Versão das capabilities do arquivo.                                                    |
| **cap_frootid**    | `0`                         | Root ID para capacidades herdadas.                                                     |
| **OUID**           | `"root"`                    | Nome do usuário dono do arquivo (mapeado do ouid).                                     |
| **OGID**           | `"root"`                    | Nome do grupo dono do arquivo (mapeado do ogid).                                       |


========================================DESAFIOS=========================================

**#12_ DESAFIO-01:** 

=========================================================================================

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO AUDITD SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do Auditd realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/22-auditd.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafioauditd #desafioaudit #desafiosecurity
