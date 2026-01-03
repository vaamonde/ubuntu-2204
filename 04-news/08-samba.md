#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 29/05/2025<br>
#Data de atualização: 03/01/2026<br>
#Versão: 0.02<br>

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO SAMBA SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do Samba realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/21-samba.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiosamba #desafiosambashare

Conteúdo estudado nesse desafio:<br>
#01_ Instalando o Samba Server no Ubuntu Server;<br>
#02_ Verificando o Serviço e Versão do Samba Server no Ubuntu Server;<br>
#03_ Verificando as Portas de Conexão do Samba Server no Ubuntu Server;<br>
#04_ Localização dos Arquivos de Configuração do Samba Server no Ubuntu Server;<br>
#05_ Criando a estrutura de Diretórios do Samba Server no Ubuntu Server;<br>
#06_ Atualizando o arquivo de Configuração do Samba Server no Ubuntu Server;<br>
#07_ Editando o o arquivo de Configuração do Samba Server no Ubuntu Server;<br>
#08_ Listando os compartilhamento de Pastas no Samba Server no Ubuntu Server;<br>

Site Oficial do SAMBA: https://www.samba.org/

**Sites de IA (Inteligência Artificial) indicados para os Desafios**<br>
OpenAI ChatGPT: https://chatgpt.com<br>
Microsoft Copilot: https://copilot.microsoft.com<br>
Google Gemini: https://gemini.google.com<br>
DeepSeek: https://chat.deepseek.com/<br>
x.AI Grok: https://grok.com/<br>

**O QUE É E PARA QUE SERVER O SAMBA:** O Samba Server é uma solução de software livre que permite que máquinas Linux e Unix compartilhem arquivos e impressoras com computadores que utilizam o sistema Windows, além de também atuar como um Controlador de Domínio (AD).

**O QUE É E PARA QUE SERVER O SMB:** Também chamado de CIFS (Common Internet File System) nas versões mais antigas. É o protocolo principal utilizado para compartilhamento de arquivos, impressoras e recursos de rede. Permite que máquinas Windows, Linux e macOS acessem arquivos e pastas como se estivessem locais.

**O QUE É E PARA QUE SERVER O NetBIOS:** Utilizado para descoberta de serviços e nomes na rede local, principalmente em redes antigas. Funciona sobre as portas 137 (UDP), 138 (UDP) e 139 (TCP). Cada vez mais sendo substituído pelo uso do SMB direto na porta 445 (TCP), que não depende de NetBIOS.

**O QUE É E PARA QUE SERVER O LDAP:** O LDAP (Lightweight Directory Access Protocol) quando o Samba atua como Controlador de Domínio (AD), ele usa LDAP para gerenciar: Banco de dados de usuários, Grupos, Políticas de autenticação e permissões. 

**O QUE É E PARA QUE SERVER O KERBEROS:** Protocolo de autenticação segura, usado quando o Samba funciona como Active Directory Domain Controller. Proporciona Single Sign-On (SSO), ou seja, autenticação única para acesso a múltiplos recursos na rede.

**O QUE É E PARA QUE SERVER O DNS:** O DNS (Domain Name Service)é essencial para funcionamento do domínio Active Directory. O Samba incorpora um servidor DNS interno ou pode se integrar a servidores externos. Responsável pela resolução de nomes dentro do domínio.

**O QUE É E PARA QUE SERVER O NTP:** O NTP (Network Time Protocol) faz a sincronização de data e hora nos dispositivos finais. Fundamental para o funcionamento do Kerberos, que exige que todas as máquinas no domínio estejam com os relógios sincronizados.

[![Samba Server](http://img.youtube.com/vi//0.jpg)]( "Samba Server")

Link da vídeo aula: 

## 01_ Instalando o Samba Server no Ubuntu Server
```bash
#atualizando as listas do Apt
#opção do comando apt: update (Resynchronize the package index files from their sources)
sudo apt update

#instalando o Samba Server no Ubuntu Server
#opção do comando apt: install (install is followed by one or more package names)
sudo apt install samba samba-common samba-testsuite samba-vfs-modules smbclient acl
```

## 02_ Verificando o Serviço e Versão do Samba Server no Ubuntu Server
```bash
#verificando o serviço do Samba Server no Ubuntu Server
#opções do comando systemctl: status (runtime status information), restart (Stop and then 
#start one or more units), stop (Stop (deactivate) one or more units), start (Start (activate) 
#one or more units)
sudo systemctl status smbd nmbd
sudo systemctl restart smbd nmbd
sudo systemctl reload smbd nmbd
sudo systemctl stop smbd nmbd
sudo systemctl start smbd nmbd

#analisando os Log's e mensagens de erro do Samba Server
#opção do comando journalctl: x (catalog), e (pager-end), u (unit)
sudo journalctl -xeu smbd
sudo journalctl -xeu nmbd

#verificando os arquivos de configuração do Samba Server
#opção do comando testparm: -s (suppress-prompt)
sudo testparm -s
```

**OBSERVAÇÃO IMPORTANTE:** Por que sempre é necessário verificar a versão do serviço de rede que você está implementando ou configurando no Servidor Ubuntu Server, devido as famosas falhas de segurança chamadas de: *CVE (Common Vulnerabilities and Exposures)*, com base na versão utilizada podemos pesquisar no site do **Ubuntu Security CVE Reports:** https://ubuntu.com/security/cves as falhas de segurança encontradas e corrigidas da versão do nosso aplicativo, o que ela afeta, se foi corrigida e como aplicar a correção.

```bash
#verificando a versão do Samba Server SMB
#opção do comando smbd: -V (version)
sudo smbd -V

#verificando a versão do Samba Server NetBIOS
#opção do comando nmbd: -V (version)
sudo nmbd -V
```

## 03_ Verificando as Portas de Conexão do Samba Server no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** no Ubuntu Server as Regras de Firewall utilizando o comando: __` iptables `__ ou: __` ufw `__ está desabilitado por padrão **(INACTIVE)**, caso você tenha habilitado algum recurso de Firewall é necessário fazer a liberação do *Fluxo de Entrada (INPUT), Porta (PORT) e Protocolo (PROTOCOL) TCP* do Serviço corresponde nas tabelas do firewall e testar a conexão.

```bash
#verificando a porta padrão TCP-135, TCP-137, TCP-138, TCP-139 e TCP-445 do Samba Server
#135: End Point Mapper (DCE/RPC Locator Service), 137: NetBIOS Name Service, 138: NetBIOS 
#Datagram, 139: NetBIOS Session, 445: SMB (Server Message Block	
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'135-139,445' -sTCP:LISTEN
```

## 04_ Localização dos Arquivos de Configuração do Samba Server no Ubuntu Server
```bash
/etc/samba/           <-- Diretório das configurações do Samba Server
/etc/samba/smb.conf   <-- Arquivo de configuração do Samba Server
/var/log/samba/       <-- Diretório dos Logs do Samba Server
/var/run/samba/       <-- Diretório dos arquivos PID de Processo e Socket do Samba Server
```

## 05_ Criando a estrutura de Diretórios do Samba Server no Ubuntu Server
```bash
#criando o diretório Raiz da Pasta Compartilhada do Samba Server
#opções do comando mkdir: -p (parents), -v (verbose)
sudo mkdir -pv /wsvaamonde/samba/arquivos

#alterando as permissões de Dono e Grupo da Pasta Compartilhada do Samba Server
#opções do comando chown: -R (recursive), -v (verbose), nobody (user), nogroup (group)
sudo chown -Rv nobody:nogroup /wsvaamonde/samba/arquivos

#alterando as permissões de Dono, Grupo e Outros da Pasta Compartilhada do Samba Server
#opções do comando chmod: -R (recursive), -v (verbose), 2777 (RWX=User,RWS=Group,RWX=Others)
sudo chmod -Rv 2777 /wsvaamonde/samba/arquivos

#verificando as ACL (access control list) da Pasta Compartilhada do Samba Server
sudo getfacl /wsvaamonde/samba/arquivos

#testando a criação e escrita da arquivos da Pasta Compartilhada do Samba Server
#opção do comando sudo: -u (other-user)
sudo -u nobody touch /wsvaamonde/samba/arquivos/teste_guest.txt

#listando o conteúdo do diretório da Pasta Compartilhada do Samba Server
#opção do comando ls: -l (long listing format), -h (human-readable), -a (all)
ls -lha /wsvaamonde/samba/arquivos/
```

## 06_ Atualizando o arquivo de Configuração do Samba Server no Ubuntu Server
```bash
#fazendo um backup do arquivo de configuração do Samba Server
#opção do comando cp: -v (verbose)
sudo cp -v /etc/samba/smb.conf /etc/samba/smb.conf.old

#atualizando o arquivo de configuração do Samba Server do Github
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/samba/smb.conf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/smb.conf
```

## 07_ Editando o o arquivo de Configuração do Samba Server no Ubuntu Server
```bash
#editando o arquivo de configuração do Samba Server
sudo vim /etc/samba/smb.conf

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
#alterar o caminho e descrição da pasta compartilhada pública no Samba Server
# partir da linha: 32 até 38
[publica]
  comment = Pasta Publica
  path = /wsvaamonde/samba/arquivos
  browsable = yes
  guest ok = yes
  read only = no
  create mask = 0755
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>
```
```bash
#verificando os arquivos de configuração do Samba Server
#opção do comando testparm: -s (suppress-prompt)
sudo testparm -s

#reiniciando e verificando o serviço do Samba Server
#opções do comando systemctl: status (runtime status information), restart (Stop and then 
#start one or more units),
sudo systemctl restart smbd
sudo systemctl status smbd
```

## 08_ Listando o compartilhamento da Pasta Pública no Samba Server no Ubuntu Server
```bash
#listando todos os compartilhamentos do Samba Server
#opção do comando smbclient: -L (list), -U (user), % (anonymous)
sudo smbclient -L //localhost/publica -U %

#acessando a pasta compartilhada Pública do Samba Server
#opção do comando smbclient: -N (no-pass)
sudo smbclient //localhost/publica -N

#testando as acl's (access control list)da pasta compartilhada Pública do Samba Server
#opção do comando smbcacls: -U (user), % (anonymous)
sudo smbcacls //localhost/publica teste_guest.txt -U %

#verificando o status de acesso a pasta compartilhada Pública do Samba Server
sudo smbstatus

#testando a resolução do nome do servidor do Samba Server
#opção do comando nmblookup: -S (status)
sudo nmblookup -S wsvaamonde
```


========================================DESAFIOS=========================================

**#12_ DESAFIO-01:** 

=========================================================================================

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO SAMBA SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do Samba realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/21-samba.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiosamba #desafiosambashare
