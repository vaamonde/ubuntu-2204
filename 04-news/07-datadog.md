#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 22/04/2024<br>
#Data de atualização: 03/01/2026<br>
#Versão: 0.11<br>

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO DATADOG SE VOCÊ CONSEGUIU IMPLEMENTAR COM A SEGUINTE FRASE: *Implementação do Datadog realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DA IMPLEMENTAÇÃO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DA IMPLEMENTAÇÃO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/17-datadog.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver 
#ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiodatadog #desafiodatadogagent

Conteúdo estudado nessa implementação:<br>
#01_ Criando uma conta no Site Oficial do Datadog On-Line;<br>
#02_ Baixando a Instalando o Agente no Ubuntu Server;<br>
#03_ Baixando a Instalando os Agentes no Linux Mint e Windows 10.

Site Oficial do Datadog: https://www.datadoghq.com/<br>

**O QUE É E PARA QUE SERVER O DATADOG:** O Datadog é uma plataforma de monitoramento e segurança em nuvem usada para coletar, visualizar e analisar métricas, logs e rastreamento de aplicações em tempo real. Ele é amplamente utilizado por equipes de DevOps, SRE e Segurança para garantir observabilidade completa de infraestruturas modernas, incluindo servidores, containers, aplicações e redes.

[![Datadog](http://img.youtube.com/vi/tmcyPRGSHf4/0.jpg)](https://www.youtube.com/watch?v=tmcyPRGSHf4 "Datadog")

Link da vídeo aula: https://www.youtube.com/watch?v=tmcyPRGSHf4

## 01_ Criando uma conta no Site Oficial do Datadog On-Line

**OBSERVAÇÃO IMPORTANTE:** Diferente dos outros sistemas de monitoramento de servidores, o Datadog utilizada sua estrutura em Cloud para monitorar e gerenciar as métricas dos serviços de rede utilizando apenas os agentes para o envio das informações.

```bash
#criando uma Conta Free no Datadog
Link dos valores de contas: https://www.datadoghq.com/pricing/
    Clique em: Free - Starting At $0 <START FREE TRIAL>
```

**OBSERVAÇÃO:** a conta Free do Datadog permite manter as métricas dos servidores por apenas **1 (um) dia** e conectar apenas **05 (cinco) Agentes (Hosts) de Monitoramento**, para uma empresa pequena é mais do que suficiente.

```bash
#criando o cadastro no Site do Datadog (NÃO PRECISA DE CARTÃO DE CRÉDITO)
Get Started with Datadog
    Region:
        Where do you want your data housed?: United Stated (US5-Central)
    Email: SEU_EMAIL@SEU_PROVEDOR
    Full Name: SEU NOME COMPLETO
    Company: NOME DA SUA EMPRESA
    Password: SEU_PASSWORD
    Phone: SEU_TELEFONE (NÃO É OBRIGATÓRIO)
<Sign Up>

#OBSERVAÇÃO IMPORTANTE: Será enviado para o seu e-mail o código de verificação do
#cadastro no site do Datadog, copiar o código e colar no campo de verificação.
Please Confirm Your Email
    Email Verification Code: COPIAR O SEU CÓDIGO ENVIADO POR EMAIL E COLAR NO CAMPO DE VERIFICAÇÃO
<Submit>

#OBSERVAÇÃO IMPORTANTE: Você pode prosseguir com as configuração de Stack (Pilha)
#de serviços de rede a serem monitorados, esses recursos podem ser configurados
#depois.
Tell us about your stack
  <Next>
```

## 02_ Baixando a Instalando o Agente no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** Para você prosseguir e necessário fazer a instalação do *Agent do Datadog* copiando as informações de como instalar no GNU/Linux, sendo a forma mais simples utilizar o recurso de instalação automática. Nesse método é adicionado automaticamente a **Key (Chave)** de integração com o site do Datadog.

```bash
Install your first Datadog Agent
    Ubuntu
        Install or Update to the latest Agent 7 version on Ubuntu
        DD_API_KEY=SEU_TOKEN_AQUI DD_SITE="us5.datadoghq.com" bash -c "$(curl -L https://s3.amazonaws.com/dd-agent/scripts/install_script_agent7.sh)"
<Finish>

#verificando o serviços do Datadog Agent no Ubuntu Server
#opção do comando systemctl: status (runtime status information),
sudo systemctl status datadog-agent

#verificando a versão do Datadog Agent no Ubuntu Server
#opção do comando datadog-agent: version (Print version info)
sudo datadog-agent version

#verificando o status de conexão do Datadog Agent no Ubuntu Server
#opção do comando datadog-agent: status (List of commands to display the status of the Datadog Agent)
sudo datadog-agent status

#checando as informações do Datadog Agent no Ubuntu Server
#opção do comando datadog-agent: diagnose (Execute connectivity diagnosis on your system)
sudo datadog-agent diagnose
```

**OBSERVAÇÃO IMPORTANTE:** Após alguns minutos e mostrado o *Host (Computador)* no Dashboard padrão do Datadog, aguardar até o Agente se comunicar com o site e enviar as métricas.

## 03_ Baixando a Instalando os Agentes no Linux Mint e Windows 10

### Instalação do Agente do Datadog no GNU/Linux Mint 

```bash
#instalando o Agent no Linux Mint do site do Datadog
Datadog
    Integrations
        Agent
            Run this command to install or update...
            DD_API_KEY=SEU_TOKEN_AQUI DD_SITE="us5.datadoghq.com" bash -c "$(curl -L https://s3.amazonaws.com/dd-agent/scripts/install_script_agent7.sh)"

#verificando o serviços do Datadog Agent no Ubuntu Server
#opção do comando systemctl: status (runtime status information),
sudo systemctl status datadog-agent

#verificando a versão do Datadog Agent no Ubuntu Server
#opção do comando datadog-agent: version (Print version info)
sudo datadog-agent version

#verificando o status de conexão do Datadog Agent no Ubuntu Server
#opção do comando datadog-agent: status (List of commands to display the status of the Datadog Agent)
sudo datadog-agent status

#checando as informações do Datadog Agent no Ubuntu Server
#opção do comando datadog-agent: diagnose (Execute connectivity diagnosis on your system)
sudo datadog-agent diagnose
```

### Instalação do Agente do Datadog no GNU/Linux Mint 
```bash
#instalando o Agent no Windows 10 do site do Datadog
Datadog
    Integrations
        Agent
            Installing on Windows
                <Download the Datadog Agent installer>
            Copiar sua KEY em: Follow the prompts, accept the license agreement, and enter your Datadog API key
            Copiar seu Datadog Region: us5.datadoghq.com

#instalando o Datadog Agent no Windows 10
Download
    Executar o software: datadog-agent-7-latest.amd64.msi
    Welcome to the Datadog Agent Setup Wizard <Next>
    Software Licensing: (ON) I accept the therms in the license agreement. <Next>
    Custom Setup: <Next>
    Datadog API Key: COLAR_SUA_API_KEY <Next>
    Datadog Region: us5.datadoghq.com <Next>
    Datadog Agent User Account: <Next>
    Ready to install Datadog Agent: <Install>
    Completed the Datadog Agent Setup Wizard: <Finish>

#verificando o serviço do Datadog Agent
firefox ou google chrome: http://127.0.0.1:5002/

#verificando o serviço do Datadog Agent no Powershell
Get-Service datadogagent

#verificando a porta de conexão do Datadog Agent no Powershell
#opção do comando netstat: -a (Display All connections), -n (Display addresses and port numbers)
netstat -an | findstr 5002
```

=========================================================================================

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO DATADOG SE VOCÊ CONSEGUIU IMPLEMENTAR COM A SEGUINTE FRASE: *Implementação do Datadog realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DA IMPLEMENTAÇÃO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DA IMPLEMENTAÇÃO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/17-datadog.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiodatadog #desafiodatadogagent