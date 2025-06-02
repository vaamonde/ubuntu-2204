#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 02/06/2025<br>
#Data de atualização: 02/06/2025<br>
#Versão: 0.01<br>

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO CLOUDFLARE SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do CloudFlare realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/22-cloudflare.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiocloudflare #desafiocloudflaretunnel

Conteúdo estudado nesse desafio:<br>
#01_ 

Site Oficial do CloudFlare: https://www.cloudflare.com/pt-br/<br>
Documentação Oficial do CloudFlare Tunnel: https://developers.cloudflare.com/cloudflare-one/connections/connect-networks/<br>

**Sites de IA (Inteligência Artificial) indicados para os Desafios**<br>
OpenAI ChatGPT: https://chatgpt.com<br>
Microsoft Copilot: https://copilot.microsoft.com<br>
Google Gemini: https://gemini.google.com<br>
DeepSeek: https://chat.deepseek.com/<br>
x.AI Grok: https://grok.com/<br>

**O QUE É E PARA QUE SERVER O CLOUDFLARE:** O Cloudflare é uma plataforma global de serviços de rede e segurança, que oferece uma ampla gama de soluções para melhorar a performance, a segurança e a disponibilidade de sites, aplicações web, APIs e infraestruturas na internet.

**O QUE É E PARA QUE SERVER O CLOUDFLARE TUNNEL:** O Cloudflare Tunnel (anteriormente chamado de Argo Tunnel) é uma tecnologia da Cloudflare que permite criar um túnel seguro e criptografado entre o seu servidor (local, em casa, no escritório ou em nuvem) e a rede global da Cloudflare, sem precisar abrir portas no roteador, configurar NAT ou depender de IP público.

[![CloudFlare](http://img.youtube.com/vi//0.jpg)]( "CloudFlare")

Link da vídeo aula: 

## 01_ Criando uma Conta Free do CloudFlare Tunnel

Link oficial da criação da Conta no CloudFlare: https://dash.cloudflare.com/login

```bash
#Criando uma conta Free no CloudFlare
Clique em: Sign up
  Email: seu_email@seu_domínio.com
  Password: sua_senha
  Let us know you are human: (ON) Confirme que é humano
  <Sign up>

#Ativando a contra Free do CloudFlare
Será enviado para o seu email a Verificação do Cadastro com o Título:
  Título: Verify your email address
  Clique em: <Verifique seu e-mail>

#Acessando o Dashboard do CloudFlare
Link direto: https://dash.cloudflare.com
```

## 02_ Criando um Tunnel Zero Trust no CloudFlare
```bash
#Acessando o Dashboard do CloudFlare
Link direto: https://dash.cloudflare.com
  Clique em: <Start building>

#Criando um Zona Zero Trust para o Túnel do CloudFlare
Clique em: Zero Trust
  Choose your team name: seu_nome.cloudflareaccess.com <Next>
  Choose a plan: <Free $0 / seat / month> <Select plan>
  Choose a plan: Zero Trust Free <Proceed to payment>
```

## 02_ Instalando o CloudFlare Tunnel no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** o tempo todo o CloudFlare Tunnel sofre alteração, antes de fazer o download do arquivo verifique a versão no link: https://github.com/cloudflare/cloudflared/releases/

Link Oficial das versões do CloudFlare Tunnel: https://github.com/cloudflare/cloudflared/

```bash
#atualizando as listas do Apt
sudo apt update

#download da última versão do CloudFlare Tunnel (link atualizado em 02/06/2025)
wget -v -O cloudflared.deb https://github.com/cloudflare/cloudflared/releases/download/2025.5.0/cloudflared-linux-amd64.deb

#instalando o CloudFlare Tunnel no Ubuntu Server
#opção do comando dpkg: -i (install)
sudo dpkg -i cloudflared.deb
```

## 03_ Verificando a Versão do CloudFlare Tunnel no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** Por que sempre é necessário verificar a versão do serviço de rede que você está implementando ou configurando no Servidor Ubuntu Server, devido as famosas falhas de segurança chamadas de: *CVE (Common Vulnerabilities and Exposures)*, com base na versão utilizada podemos pesquisar no site do **Ubuntu Security CVE Reports:** https://ubuntu.com/security/cves as falhas de segurança encontradas e corrigidas da versão do nosso aplicativo, o que ela afeta, se foi corrigida e como aplicar a correção.

```bash
#verificando a versão do CloudFlare Tunnel
#opção do comando cloudflared: --version (version agent cloudflare)
sudo cloudflared --version
```

## 04_ Autenticando com sua Conta do CloudFlare Tunnel no Ubuntu Server

```bash
#autenticando o CloduFlare Tunnel Agent no Dashboard
sudo cloudflared tunnel login

#copiar o link que será gerado e colocar no seu navegador
Please open the following URL and log in with your Cloudflare account:

```

## 02_ Habilitando o Serviço do Fail2Ban no Ubuntu Server
```bash
#habilitando o serviço do Fail2Ban no Ubuntu Server
#opção do comando systemctl: daemon-reload (Reload the systemd manager configuration), 
#enable (Enable one or more units), start (Start (activate) one or more units)
sudo systemctl daemon-reload
sudo systemctl enable fail2ban
sudo systemctl start fail2ban
```

## 03_ Verificando o Serviço e Versão do Fail2Ban no Ubuntu Server
```bash
#verificando o serviço do Fail2Ban
#opções do comando systemctl: status (runtime status information), restart (Stop and then 
#start one or more units), stop (Stop (deactivate) one or more units), start (Start (activate) 
#one or more units)
sudo systemctl status fail2ban
sudo systemctl restart fail2ban
sudo systemctl reload fail2ban
sudo systemctl stop fail2ban
sudo systemctl start fail2ban

#analisando os Log's e mensagens de erro do Fail2Ban
#opção do comando journalctl: x (catalog), e (pager-end), u (unit)
sudo journalctl -xeu fail2ban

#verificando os arquivos de configuração do Fail2Ban
#opção do comando fail2ban-client: -t (test configuration)
sudo fail2ban-client -t
```



## 04_ Localização dos Arquivos de Configuração do Fail2Ban no Ubuntu Server
```bash
/etc/fail2ban/                <-- Diretório de configuração do Fail2Ban
/etc/fail2ban/action.d        <-- Diretório de configuração das Ações do Fail2Ban
/etc/fail2ban/filter.d/       <-- Diretório de configuração dos Filtros do Fail2Ban
/etc/fail2ban/jail.d          <-- Diretório de configuração das Regras do Fail2Ban
/etc/fail2ban/fail2ban.conf   <-- Arquivo de configuração do Serviços do Fail2Ban
/var/log/fail2ban.log         <-- Arquivo de Log do Serviço do Fail2Ban
/var/run/fail2ban/            <-- Diretório do PID de Processo e Socket do Fail2Ban
/var/lib/fail2ban/            <-- Diretório do Banco de Dados SQLite3 do Fail2Ban
```

## 05_ Atualizando os arquivos de configuração do Fail2Ban no Ubuntu Server
```bash
#atualizando o arquivo de configuração do Fail2Ban Local do Github
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/fail2ban/fail2ban.local https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/fail2ban.local

#atualizando o arquivo de configuração do Jail Local do Github
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/fail2ban/jail.local https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/jail.local

#atualizando o arquivo de configuração de Reincidência do Github
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/fail2ban/jail.d/recidive.conf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/recidive.conf
```


========================================DESAFIOS=========================================

**#12_ DESAFIO-01:** 

=========================================================================================

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO FAIL2BAN SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do Fail2Ban realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/21-fail2ban.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiofail2ban #desafiosecurityp
