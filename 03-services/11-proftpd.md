#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 24/05/2025<br>
#Data de atualização: 24/05/2025<br>
#Versão: 0.02<br>

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO PROFTPD SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do ProFTPD realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/20-proftpd.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafioproftpd #desafioftp

Conteúdo estudado nesse desafio:<br>
#01_ 

Site Oficial do ProFTPD: http://www.proftpd.org/

**Sites de IA (Inteligência Artificial) indicados para os Desafios**<br>
OpenAI ChatGPT: https://chatgpt.com<br>
Microsoft Copilot: https://copilot.microsoft.com<br>
Google Gemini: https://gemini.google.com<br>
DeepSeek: https://chat.deepseek.com/<br>
x.AI Grok: https://grok.com/<br>

**O QUE É E PARA QUE SERVER O FTP:** O *FTP (File Transfer Protocol)*, que em português é Protocolo de Transferência de Arquivos. É um protocolo de comunicação utilizado para transferir arquivos entre computadores em uma rede, seja ela local (LAN) ou na internet.

**O QUE É E PARA QUE SERVER O PROFTPD:** O *ProFTPD* é um servidor FTP avançado, gratuito e de código aberto, desenvolvido especialmente para sistemas UNIX e GNU/Linux. Ele implementa os protocolos FTP, FTPS (FTP sobre SSL/TLS) e também pode trabalhar com SFTP (via módulo mod_sftp), permitindo transferências seguras de arquivos.

[![ProFTPD Server](http://img.youtube.com/vi//0.jpg)]( "ProFTPD Server")

Link da vídeo aula: 

## 01_ Instalando o ProFTPD Server no Ubuntu Server
```bash
#atualizando as listas do Apt
sudo apt update

#instalando o ProFTPD Server no Ubuntu Server
sudo apt install proftpd-basic proftpd-core
```

## 02_ Verificando o Serviço e Versão do ProFTPD Server no Ubuntu Server
```bash
#verificando o serviço do ProFTPD Server
sudo systemctl status proftpd
sudo systemctl restart proftpd
sudo systemctl reload proftpd
sudo systemctl stop proftpd
sudo systemctl start proftpd

#analisando os Log's e mensagens de erro do Servidor do ProFTPD
#opção do comando journalctl: x (catalog), e (pager-end), u (unit)
sudo journalctl -xeu proftpd

#verificando os arquivos de configuração do ProFTPD Server
#opção do comando proftpd: -t (configtest), -d (--debug), 10 (debug level)
sudo proftpd -td10
```

**OBSERVAÇÃO IMPORTANTE:** Por que sempre é necessário verificar a versão do serviço de rede que você está implementando ou configurando no Servidor Ubuntu Server, devido as famosas falhas de segurança chamadas de: *CVE (Common Vulnerabilities and Exposures)*, com base na versão utilizada podemos pesquisar no site do **Ubuntu Security CVE Reports:** https://ubuntu.com/security/cves as falhas de segurança encontradas e corrigidas da versão do nosso aplicativo, o que ela afeta, se foi corrigida e como aplicar a correção.

```bash
#verificando a versão do ProFTPD Server
#opção do comando proftpd: -v (version)
sudo proftpd -v
```

## 03_ Verificando a Porta de Conexão do ProFTPD Server no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** no Ubuntu Server as Regras de Firewall utilizando o comando: __` iptables `__ ou: __` ufw `__ está desabilitado por padrão **(INACTIVE)**, caso você tenha habilitado algum recurso de Firewall é necessário fazer a liberação do *Fluxo de Entrada (INPUT), Porta (PORT) e Protocolo (PROTOCOL) TCP* do Serviço corresponde nas tabelas do firewall e testar a conexão.

```bash
#verificando a porta padrão TCP-21 do ProFTPD Server
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'21' -sTCP:LISTEN
```

## 04_ Localização dos Arquivos de Configuração do ProFTPD Server no Ubuntu Server
```bash
/etc/proftpd/               <-- Diretório de configuração do ProFTPD Server
/etc/proftpd/proftpd.conf   <-- Arquivo de configuração do ProFTPD Server
/etc/ftpusers               <-- Arquivo de usuários negados para conectar via FTP
/var/log/proftpd/           <-- Diretório padrão dos Logs do ProFTPD Server
```

## 06_ Atualizando os arquivos de configuração do ProFTPD Server no Ubuntu Server
```bash
#fazendo o backup do arquivo de configuração do ProFTPD Server
#opção do comando cp: -v (verbose)
sudo cp -v /etc/proftpd/proftpd.conf /etc/proftpd/proftpd.conf.old

#atualizando o arquivo de configuração do ProFTPD Server do Github
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/proftpd/proftpd.conf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/proftpd.conf

#editando o arquivo de configuração do ProFTPD Server
#mais informações veja a documentação oficial em: http://www.proftpd.org/docs/howto/ConfigFile.html
sudo vim /etc/proftpd/proftpd.conf

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
#alterar a variável ServerName na linha: 19 
#ServerName "wsvaamonde" para: NOME_DO_SEU_SERVIDOR
#OBSERVAÇÃO: ALTERAR O NOME DO SERVIDOR CONFORME A SUA NECESSIDADE
ServerName "NOME_DO_SEU_SERVIDOR"

#alterar a variável Allow from 172.16.1.0/24 na linha: 39
#OBSERVAÇÃO: ALTERAR O ENDEREÇO IPV4 DA SUA REDE LOCAL
Allow from SUA_REDE_LOCAL/CIDR
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>
```
```bash
#verificando os arquivos de configuração do ProFTPD Server
#opção do comando proftpd: -t (configtest), -d (--debug), 10 (debug level)
sudo proftpd -td10

#reiniciando e verificando o serviço do ProFTPD Server
sudo systemctl restart proftpd
sudo systemctl status proftpd

#analisando os Log's e mensagens de erro do Servidor do ProFTPD
#opção do comando journalctl: x (catalog), e (pager-end), u (unit)
sudo journalctl -xeu proftpd
```

========================================DESAFIOS=========================================

**#09_ DESAFIO-01:** 



=========================================================================================

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO PROFTPD SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do ProFTPD realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/20-proftpd.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafioproftpd #desafioftp
