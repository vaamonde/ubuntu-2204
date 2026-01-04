#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 02/06/2025<br>
#Data de atualização: 03/01/2026<br>
#Versão: 0.03<br>

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

**O QUE É E PARA QUE SERVER O CLOUDFLARE ZERO TRUST:** O Cloudflare Zero Trust é uma plataforma de segurança que protege acessos a redes corporativas, aplicações e dados, sem depender de uma rede privada (VPN) tradicional. Ela se baseia no conceito de Zero Trust, que significa: *“Nunca confie, sempre verifique.”* Ou seja, em vez de confiar automaticamente em quem está dentro da rede (como acontece em redes tradicionais), tudo e todos são verificados constantemente, independente de onde estão — na sede da empresa, em casa, em coworkings ou viajando.

[![CloudFlare](http://img.youtube.com/vi//0.jpg)]( "CloudFlare")

Link da vídeo aula: 

## 01_ Criando uma Conta Free do CloudFlare

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

**OBSERVAÇÃO IMPORTANTE:** mesmo utilizando uma conta __`FREE`__ será necessário cadastrar um __`CARTÃO DE CRÉDITO INTERNACIONAL`__ para concluir a configuração do CloudFlare Zero Trust.

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

## 02_ Instalando o CloudFlare Tunnel Client no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** o tempo todo o CloudFlare Tunnel Client sofre alteração, antes de fazer o download do arquivo verifique a versão no link: https://github.com/cloudflare/cloudflared/releases/

Link Oficial das versões do CloudFlare Tunnel Client: https://github.com/cloudflare/cloudflared/

```bash
#atualizando as listas do Apt
sudo apt update

#download da última versão do CloudFlare Tunnel Client (link atualizado em 02/06/2025)
wget -v -O cloudflared.deb https://github.com/cloudflare/cloudflared/releases/download/2025.5.0/cloudflared-linux-amd64.deb

#instalando o CloudFlare Tunnel Client no Ubuntu Server
#opção do comando dpkg: -i (install)
sudo dpkg -i cloudflared.deb
```

## 03_ Verificando a Versão do CloudFlare Tunnel Client no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** Por que sempre é necessário verificar a versão do serviço de rede que você está implementando ou configurando no Servidor Ubuntu Server, devido as famosas falhas de segurança chamadas de: *CVE (Common Vulnerabilities and Exposures)*, com base na versão utilizada podemos pesquisar no site do **Ubuntu Security CVE Reports:** https://ubuntu.com/security/cves as falhas de segurança encontradas e corrigidas da versão do nosso aplicativo, o que ela afeta, se foi corrigida e como aplicar a correção.

```bash
#verificando a versão do CloudFlare Tunnel Client
#opção do comando cloudflared: --version (version agent cloudflare)
sudo cloudflared --version
```

## 04_ Criando o Túnel com o CloudFlare no Ubuntu Server

```bash
#autenticando o CloduFlare Tunnel Client no Dashboard
sudo cloudflared tunnel login

#copiar o link que será gerado e colocar no seu navegador
Please open the following URL and log in with your Cloudflare account:
```

========================================DESAFIOS=========================================

**#12_ DESAFIO-01:** 

=========================================================================================

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO CLOUDFLARE SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do CloudFlare realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/22-cloudflare.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiocloudflare #desafiocloudflaretunnel
