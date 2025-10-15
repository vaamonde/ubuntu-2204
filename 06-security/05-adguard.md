#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 14/10/2025<br>
#Data de atualização: 14/10/2025<br>
#Versão: 0.02<br>

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO ADGUARD HOME SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do AdGuard Home realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/24-adguard.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafioadguard #desafioadguardhome

Conteúdo estudado nesse desafio:<br>
#01_ Instalando AdGuard Home utilizando o script automatizado no Ubuntu Server<br>
#02_ Verificando o Serviço e Versão do AdGuard no Ubuntu Server<br>
#03_ Verificando as Portas de Conexão do DNS e do AdGuard Home no Ubuntu Server<br>
#04_ Localização dos Arquivos de Configuração do CMS Wordpress no Ubuntu Server<br>
#05_ Desativando a Resolução de Nomes de DNS do Systemd Resolved no Ubuntu Server<br>
#06_ Configurando e acessando o AdGuard Home remotamente via navegador<br>
#07_ Verificando novamente as Portas de Conexão do DNS e do AdGuard Home no Ubuntu Server<br>

Site Oficial do AdGuard: https://adguard.com/pt_br/welcome.html<br>

**Sites de IA (Inteligência Artificial) indicados para os Desafios**<br>
OpenAI ChatGPT: https://chatgpt.com<br>
Microsoft Copilot: https://copilot.microsoft.com<br>
Google Gemini: https://gemini.google.com<br>
DeepSeek: https://chat.deepseek.com/<br>
x.AI Grok: https://grok.com/<br>

**O QUE É E PARA QUE SERVER O ADGUARD HOME:** O AdGuard Home é um servidor DNS local com foco em bloqueio de anúncios, rastreadores, sites maliciosos e domínios indesejados, funcionando como uma camada de proteção e privacidade para toda a rede.

[![AdGuard Home](http://img.youtube.com/vi//0.jpg)]( "AdGuard Home")

Link da vídeo aula: 


## 01_ Instalando AdGuard Home utilizando o script automatizado no Ubuntu Server
```bash
#instalando o AdGuard via script da comunidade automatizado (Mais simples e eficiente)
#opções do comando curl: -s (silent), -S (show error), -L (location)
#opções do comando sh: -s (stdin), -- (the first argument to set), -v (verbose)
#opção do redirecionador de saída | (piper): 
curl -s -S -L https://raw.githubusercontent.com/AdguardTeam/AdGuardHome/master/scripts/install.sh | sudo sh -s -- -v
```

## 02_ Verificando o Serviço e Versão do AdGuard no Ubuntu Server
```bash
#verificando o serviço do AdGuard Home
#opções do comando AdGuardHome: -s (service) status (runtime status information), restart (Stop and then start one
#or more units), stop (Stop (deactivate) one or more units), start (Start (activate) one or more units), reload 
#(reload as service), install (install as service), uninstall (uninstall as service)
sudo /opt/AdGuardHome/AdGuardHome -s start
sudo /opt/AdGuardHome/AdGuardHome -s stop
sudo /opt/AdGuardHome/AdGuardHome -s restart
sudo /opt/AdGuardHome/AdGuardHome -s reload
sudo /opt/AdGuardHome/AdGuardHome -s status
sudo /opt/AdGuardHome/AdGuardHome -s install
sudo /opt/AdGuardHome/AdGuardHome -s uninstall

#analisando os Log's e mensagens de erro do Servidor do  AdGuard Home
#opção do comando journalctl: x (catalog), e (pager-end), u (unit)
sudo journalctl -xeu AdGuardHome
```

**OBSERVAÇÃO IMPORTANTE:** Por que sempre é necessário verificar a versão do serviço de rede que você está implementando ou configurando no Servidor Ubuntu Server, devido as famosas falhas de segurança chamadas de: *CVE (Common Vulnerabilities and Exposures)*, com base na versão utilizada podemos pesquisar no site do **Ubuntu Security CVE Reports:** https://ubuntu.com/security/cves as falhas de segurança encontradas e corrigidas da versão do nosso aplicativo, o que ela afeta, se foi corrigida e como aplicar a correção.

```bash
#verificando a versão do  AdGuard Home
#opção do comando AdGuardHome: --version (version)
sudo /opt/AdGuardHome/AdGuardHome --version
```

## 03_ Verificando as Portas de Conexão do DNS e do AdGuard Home no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** no Ubuntu Server as Regras de Firewall utilizando o comando: __` iptables `__ ou: __` ufw `__ está desabilitado por padrão **(INACTIVE)**, caso você tenha habilitado algum recurso de Firewall é necessário fazer a liberação do *Fluxo de Entrada (INPUT), Porta (PORT) e Protocolo (PROTOCOL) TCP* do Serviço corresponde nas tabelas do firewall e testar a conexão.

```bash
#verificando a porta padrão TCP-53 e 3000 e UDP-53 do AdGuard Home
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'53,3000' -sTCP:LISTEN
sudo lsof -nP -iTCP:'53'
```

## 04_ Localização dos Arquivos de Configuração do CMS Wordpress no Ubuntu Server
```bash
/opt/AdGuardHome/              <-- Diretório padrão das configurações do AdGuard Home
/opt/AdGuardHome/AdGuardHome   <-- Executável do AdGuard Home
/opt/AdGuardHome/data/         <-- Diretório das informações do AdGuard Home
```

## 05_ Desativando a Resolução de Nomes de DNS do Systemd Resolved no Ubuntu Server
```bash
#criando o diretório de configuração do AdGuard Home do Systemd Resolved no Ubuntu Server
#opção do comando mkdir: -v (verbose)
sudo mkdir -v /etc/systemd/resolved.conf.d/

#atualizando o arquivo de configuração do AdGuard Home do Systemd Resolved do Github
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/systemd/resolved.conf.d/adguardhome.conf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/adguardhome.conf

#fazendo um backup do arquivo de configuração do resolv.conf no Ubuntu Server
#opção do comando mv: -v (verbose)
sudo mv -v /etc/resolv.conf /etc/resolv.conf.old

#criando o link simbolico do arquivo de configuração do resolv.conf no Ubuntu Server
#opção do comando ln: -s (symbolic link)
sudo ln -s /run/systemd/resolve/resolv.conf /etc/resolv.conf

#reiniciando o serviço do Systemd Resolved no Ubuntu Server
#opção do comando systemctl: reload-or-restart (Reload one or more units if they support it)
sudo systemctl reload-or-restart systemd-resolved

#verificando o status do serviço do Systemd Resolved no Ubuntu Server
#opção do comando systemctl: status (Show terse runtime status information about one or more units)
sudo systemctl status systemd-resolved
```

## 06_ Configurando e acessando o AdGuard Home remotamente via navegador
```bash
#utilizar os navegadores para configurar o AdGuard Home
firefox ou google chrome: http://endereço_ipv4_ubuntuserver:3000

01/05 - Bem-vindo(a) ao AdGuard Home!
<Começar>

02/05 - Interface web de administrador
  Interface de escuta: Todas interfaces
  Porta: 80
  Servidor DNS
    Interface de escuta: Todas interfaces
    Porta: 53
<Proximo>

03/05 - Autenticação
  Nome de usuário: seu_usuário
  Senha: sua_senha
  Confirmar senha: confirmar_sua_senha
<Próximo>

04/05 - Configure seus dispositivos
<Próximo>

05/05 - Parabéns!
<Abrir painel>

AdGuard Home
  Nome de usuário: seu_usuário
  Senha: sua_senha
<Entrar>
```

## 07_ Verificando novamente as Portas de Conexão do DNS e do AdGuard Home no Ubuntu Server
```bash
#verificando a porta padrão TCP-53 e 80 e UDP-53 do AdGuard Home
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'53,80' -sTCP:LISTEN
sudo lsof -nP -iTCP:'53'
```

========================================DESAFIOS=========================================

**#08_ DESAFIO-01:** 

=========================================================================================

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO ADGUARD HOME SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do AdGuard Home realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/24-adguard.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafioadguard #desafioadguardhome


