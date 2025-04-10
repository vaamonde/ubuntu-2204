#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 20/04/2023<br>
#Data de atualização: 03/04/2025<br>
#Versão: 0.14<br>

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO WEBMIN SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do Webmin realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/10-webmin.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiowebmin #desafiocockpit

Conteúdo estudado nesse desafio:<br>
#01_ Instalando as Dependências do Webmin no Ubuntu Server;<br>
#02_ Adicionando o Repositório do Webmin no Ubuntu Server;<br>
#03_ Instalando o Webmin no Ubuntu Server;<br>
#04_ Habilitando o Serviço do Webmin no Ubuntu Server;<br>
#05_ Verificando o Serviço e Versão do Webmin no Ubuntu Server;<br>
#06_ Verificando a Porta de Conexão do Webmin no Ubuntu Server;<br>
#07_ Localização dos diretórios principais do Webmin no Ubuntu Server;<br>
#08_ Testando o Webmin no navegador;<br>
#09_ Configurações Básicas do Webmin;<br>
#10_ Desafios do Webmin e Cockpit.<br>

**Sites de IA (Inteligência Artificial) indicados para os Desafios**<br>
OpenAI ChatGPT: https://chatgpt.com<br>
Microsoft Copilot: https://copilot.microsoft.com<br>
Google Gemini: https://gemini.google.com<br>
DeepSeek: https://chat.deepseek.com/<br>
x.AI Grok: https://grok.com/<br>

Site Oficial do Webmin: https://webmin.com/<br>

**O QUE É E PARA QUE SERVER O WEBMIN:** O Webmin é um painel de controle de gerenciamento de servidor baseado na web para sistemas operacionais do tipo Unix ou Linux, facilitando a administração e gestão dos servidores via navegador, não precisando de conhecimentos avanças em Bash/Shell.

[![Webmin](http://img.youtube.com/vi/QEpOrGZbEl8/0.jpg)](https://www.youtube.com/watch?v=QEpOrGZbEl8 "Webmin")

Link da vídeo aula: https://www.youtube.com/watch?v=QEpOrGZbEl8

## 01_ Instalando as Dependências do Webmin no Ubuntu Server
```bash
#atualizando as lista do apt
sudo apt update

#instalando as dependências do Webmin
#opção da contra barra (\): criar uma quebra de linha no terminal
sudo apt install perl libnet-ssleay-perl openssl libauthen-pam-perl libpam-runtime \
libio-pty-perl apt-show-versions python2 python3 unzip apt-transport-https libdbi-perl \
software-properties-common libdbd-mysql-perl
```

## 02_ Adicionando o Repositório do Webmin no Ubuntu Server
```bash
#opção do comando curl: -o (output file)
curl -o setup-repos.sh https://raw.githubusercontent.com/webmin/webmin/master/setup-repos.sh

#executando o script de adicionar o repositório
sudo sh setup-repos.sh
  Setup repository? (y/N) y <Enter>
```

## 03_ Instalando o Webmin no Ubuntu Server
```bash
#atualizando as lista do apt com o novo repositório do Webmin
sudo apt update

#instalando o Webmin
#opção do comando apt: --install-recommends (Consider suggested packages as a dependency for installing)
sudo apt install --install-recommends webmin
```

## 04_ Habilitando o Serviço do Webmin no Ubuntu Server
```bash
#habilitando o serviço do Webmin
sudo systemctl daemon-reload
sudo systemctl enable webmin
sudo systemctl start webmin
```

## 05_ Verificando o Serviço e Versão do Webmin no Ubuntu Server
```bash
#verificando o serviço do Webmin
sudo systemctl status webmin
sudo systemctl restart webmin
sudo systemctl stop webmin
sudo systemctl start webmin

#analisando os Log's e mensagens de erro do Servidor do OpenSSH (NÃO COMENTADO NO VÍDEO)
#opção do comando journalctl: -t (identifier), -x (catalog), -e (pager-end), -u (unit)
sudo journalctl -t webmin
sudo journalctl -xeu webmin
```

**OBSERVAÇÃO IMPORTANTE:** Por que sempre é necessário verificar a versão do serviço de rede que você está implementando ou configurando no Servidor Ubuntu Server, devido as famosas falhas de segurança chamadas de: *CVE (Common Vulnerabilities and Exposures)*, com base na versão utilizada podemos pesquisar no site do **Ubuntu Security CVE Reports:** https://ubuntu.com/security/cves as falhas de segurança encontradas e corrigidas da versão do nosso aplicativo, o que ela afeta, se foi corrigida e como aplicar a correção

```bash
#verificando a versão do Webmin
#opção do comando grep: -i (ignore-case)
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
sudo apt list --installed | grep -i webmin 
```

## 06_ Verificando a Porta de Conexão do Webmin no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** no Ubuntu Server as Regras de Firewall utilizando o comando: __` iptables `__ ou: __` ufw `__ está desabilitado por padrão **(INACTIVE)**, caso você tenha habilitado algum recurso de Firewall é necessário fazer a liberação do *Fluxo de Entrada (INPUT), Porta (PORT) e Protocolo (PROTOCOL) TCP* do Serviço corresponde nas tabelas do firewall e testar a conexão.

```bash
#verificando a porta padrão TCP-10000 do Webmin
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'10000' -sTCP:LISTEN
```

## 07_ Localização dos diretórios principais do Webmin no Ubuntu Server
```bash
/etc/webmin/*   <-- Diretório dos arquivos de Configuração do serviço do Webmin
/var/webmin/*   <-- Diretório dos arquivos de Logs do serviço do Webmin
```

## 08_ Testando o Webmin no navegador
```bash
#acessar via navegador o Webmin
firefox ou google chrome: https://endereço_ipv4_ubuntuserver:10000

Username: seu_usuário
Password: sua_senha
<Sign In>
```

## 09_ Configurações Básicas do Webmin
```bash
#Atualizando o Módulos de Serviços do Web
Webmin
  Refresh Modules

#Alterando a Linguagem do Webmin
Webmin
  Webmin Configuration
    Language and Locale
      Language: português (Brasil)
      Locale: português (Brasil)
    <Change Language>

#Alterando o Tema para Night/Black do Webmin
Webmin
  Ícone: Day/night mode toggle (atalho: Alt + L)

#Conectando no Banco de Dados MySQL Server
Webmin
  Servidores
    Servidor de base de dados MySQL
      Usuário: root
      Senha: sua_senha
    <Salvar>
```

========================================DESAFIOS=========================================

**#10_ DESAFIO-01:** FAZER A INSTALAÇÃO E CONFIGURAÇÃO DO SOFTWARE __`COCKPIT`__ NO UBUNTU SERVER, ANALISAR AS DIFERENÇAS ENTRE O WEBMIN E O COCKPIT OU SUGERIR UMA NOVA SOLUÇÃO DE ADMIN GUI (Graphical User Interface) WEB PARA A ADMINISTRAÇÃO DO UBUNTU SERVER, COMENTAR NA DESCRIÇÃO DESSE VÍDEO.

**#11_ DESAFIO-02:** ADICIONAR O MONITORAMENTO DAS PORTAS DO WEBMIN E DO COCKPIT NO __`NETDATA`__.

**#12_ DESAFIO-03:** ESTUDAR O MATERIAL DE MONITORAMENTO DO __`HTTP ENDPOINT`__ DO NETDATA PARA VERIFICAR OS STATUS DE PÁGINA DE TODOS OS SERVIÇOS CONFIGURADO ATÉ AGORA, VERIFICAR O LINK: https://learn.netdata.cloud/docs/data-collection/synthetic-checks/http-endpoints

**#13_ DESAFIO-04:** ADICIONAR O HYPER LINK NO WORDPRESS PARA FACILITAR O ACESSO AO WEBMIN E COCKPIT IGUAL A TODOS OS DESAFIOS FEITO ATÉ AGORA.

=========================================================================================

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO WEBMIN SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do Webmin realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/10-webmin.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiowebmin #desafiocockpit