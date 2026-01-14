Autor: Robson Vaamonde<br>
Procedimentos em TI: http://procedimentosemti.com.br<br>
Bora para Prática: http://boraparapratica.com.br<br>
Robson Vaamonde: http://vaamonde.com.br<br>
Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
LinkedIn Robson Vaamonde: https://www.linkedin.com/in/robson-vaamonde-0b029028/<br>
Github Procedimentos em TI: https://github.com/vaamonde<br>
Data de criação: 18/01/2023<br>
Data de atualização: 07/01/2026<br>
Versão: 0.26<br>
Testado e homologado no GNU/Linux Ubuntu Server 22.04.x LTS

Release Ubuntu Server 22.04.5: https://fridge.ubuntu.com/2024/09/13/ubuntu-22-04-5-lts-released/<br>
Release Ubuntu Server 22.04.4: https://fridge.ubuntu.com/2024/02/22/ubuntu-22-04-4-lts-released/<br>
Release Ubuntu Server 22.04.3: https://fridge.ubuntu.com/2023/08/11/ubuntu-22-04-3-lts-released/<br>
Release Ubuntu Server 22.04.2: https://fridge.ubuntu.com/2023/02/24/ubuntu-22-04-2-lts-released/<br>
Release Ubuntu Server 22.04.1: https://fridge.ubuntu.com/2022/08/12/ubuntu-22-04-1-lts-released/<br>
Release Ubuntu Server 22.04: https://fridge.ubuntu.com/2022/04/01/ubuntu-22-04-jammy-jellyfish-final-beta-released/

Release Notes Ubuntu Server 22.04.x: https://discourse.ubuntu.com/t/jammy-jellyfish-release-notes/24668<br>
Ubuntu Advantage for Infrastructure: https://ubuntu.com/advantage<br>
Ciclo de Lançamento do Ubuntu Server: https://ubuntu.com/about/release-cycle<br>
Releases All Ubuntu Server: https://wiki.ubuntu.com/Releases

Conteúdo estudado nessa instalação:<br>
#01_ Primeira etapa: Download da ISO do Ubuntu Server 22.04.x LTS;<br>
#02_ Segunda etapa: Criação da Máquina Virtual do UbuntuWebserver no Oracle VirtualBOX;<br>
#03_ Terceira Etapa: Configurações da Máquina Virtual do UbuntuWebserver;<br>
#04_ Quarta Etapa: Iniciando a Instalação do Ubuntu Server 22.04.x LTS (localizar a ISO);<br>
#05_ Quinta Etapa: Instalação e Configuração do Ubuntu Server 22.04.x LTS;<br>
#06_ Sexta Etapa: Acessando o Ubuntu Server pela primeira vez via Terminal.<br>

**Sites de IA (Inteligência Artificial) indicados para os Desafios**<br>
OpenAI ChatGPT: https://chatgpt.com<br>
Microsoft Copilot: https://copilot.microsoft.com<br>
Google Gemini: https://gemini.google.com<br>
DeepSeek: https://chat.deepseek.com/<br>
x.AI Grok: https://grok.com/<br>

**PERGUNTA PARA A IA**
```bash
Prompt-01: Qual sistema operacional que mais se destacada em serviços para Web Site Local
(on-premises) e Cloud (nuvem) no Brasil e no Mundo, por que ele é o mais usado?
```
```bash
Prompt-02: Qual distribuição GNU/Linux lidera o mercado de servidores Locais (on-premises)
e Nuvem (cloud) no Brasil e no mundo? por que essas distribuições são as mais usadas?
```
```bash
Prompt-03: Quais as principais Big Techs no Brasil e no mundo que utiliza o GNU/Linux?
```
```bash
Prompt-04: estava recentemente em um evento de Infraestrutura de Redes, surgiu uma dúvida? qual
o exato momento da Infra utilizando Cloud e Infra utilizando On-Premises (local) no Brasil? foi
comentado que o custo para manter uma Infra em Cloud está muito caro e as empresas estão pensando
em voltar para o On-Premises (misto entre Cloud e Local tipo Hibrido)? Isso é verdade? Tem algum
relatório ou estatísticas para isso? Sei que é difícil prever o futuro (sei que você não sabe
disso e não foi feito para isso) mais vale a pena voltar para os servidores locais novamente?
Como por exemplo: Windows Server Local (Active Directory), Servidores de Arquivos (File Server e 
Storage), Firewall/Proxy e Links Redundantes, etc... Vale a pena voltar a estudar e se aprofundar 
no seguimento de Infraestrutura local?
```

**O QUE É E PARA QUE SERVER O ON-PREMISES:** O "on-premises" se refere a uma infraestrutura de TI que está localizada fisicamente nas instalações da empresa. Isso significa que os servidores, bancos de dados, aplicações e demais recursos de TI são hospedados, gerenciados e mantidos internamente pela equipe da empresa, em vez de serem executados em uma nuvem pública como AWS, Azure ou Google Cloud.

**O QUE É E PARA QUE SERVER O CLOUD:** O Cloud Computing (Computação em Nuvem) é um modelo de TI que permite o acesso remoto a servidores, armazenamento, bancos de dados, redes e softwares por meio da internet. Em vez de manter servidores e infraestrutura física dentro da empresa (on-premises), tudo é hospedado em datacenters de provedores de nuvem, como AWS, Microsoft Azure, Google Cloud, entre outros.

**O QUE É E PARA QUE SERVER A CANONICAL:** A Canonical Ltd. é uma empresa de tecnologia britânica fundada por Mark Shuttleworth em 2004. Ela é conhecida principalmente como a desenvolvedora do sistema operacional Ubuntu, uma das distribuições Linux mais populares do mundo.

**O QUE É E PARA QUE SERVER O UBUNTU SERVER:** O Ubuntu Server é uma versão do sistema operacional Ubuntu desenvolvida especificamente para servidores. Ele é baseado no Debian e é uma das distribuições Linux mais populares para servidores devido à sua estabilidade, segurança e facilidade de uso.

**O QUE É E PARA QUE SERVER O LTS:** LTS significa Long-Term Support (Suporte de Longo Prazo). Ele é um tipo de versão de software que recebe atualizações e suporte por um período estendido, geralmente de 3 a 5 anos ou mais, dependendo do projeto.

**O QUE É E PARA QUE SERVER O HWE:** O HWE (Hardware Enablement Stack) no Ubuntu é um conjunto de atualizações de kernel, drivers e bibliotecas que estendem o suporte a hardware mais recente nas versões LTS (Long-Term Support) do sistema.

[![Instalação Ubuntu Server](http://img.youtube.com/vi/qnMol8-wvq8/0.jpg)](https://www.youtube.com/watch?v=qnMol8-wvq8 "Instalação Ubuntu Server")

Link da vídeo aula: https://www.youtube.com/watch?v=qnMol8-wvq8

## 01_ Primeira etapa: Download da ISO do Ubuntu Server 22.04.x LTS

Link de download do Ubuntu Server: https://releases.ubuntu.com/22.04/

01) Versão do download Ubuntu Server: ubuntu-22.04.5-live-server-amd64.iso (Link atualizado em 12/09/2024)<br>
02) Arquitetura do Ubuntu Server: AMD64 (64-bit)<br>
03) Tipo de instalação: DVD Image (ISO) Installer<br>

## 02_ Segunda etapa: Criação da Máquina Virtual do Ubuntu Server no Oracle VirtualBOX

01) Link de download do Oracle VirtualBOX: https://www.virtualbox.org/wiki/Downloads<br>
02) Vídeo de instalação do VirtualBOX no Linux Mint: https://www.youtube.com/watch?v=yTihvAaaxpU<br>
03) Atualização do VirtualBOX no Linux Mint: https://www.youtube.com/watch?v=DU47PLFSxpA<br>

**OBSERVAÇÃO:** Utilizar o Oracle VirtualBOX Gerenciador (versão 7.x ou superior).

```bash
01) Ferramentas;
<Novo>

02) Nome da Máquina Virtual e Sistema Operacional:
    Nome: wsseunome (altere conforme a sua necessidade)
    Pasta (F): #PATH_PADRÃO\wsseunome (altere conforme a sua necessidade)
    Imagem ISO: <não selecionar>
    Edição: (sem informação)
    Tipo: Linux
    Versão: Ubuntu (64-bit)
<Próximo>

03) Hardware:
    Memória Base: 4096 MB (altere conforme a sua necessidade, mínimo 2048 MB)
    Processadores: 02 CPU (altere conforme a sua necessidade, mínimo 2 CPU)
    Habilitar EFI (SOs especiais apenas): OFF (Desligado)
<Próximo>

04) Disco Rígido Virtual:
    Criar um novo disco rígido virtual agora: ON (Selecionar)
      Tamanho do Disco: 50,00 GB (alterar conforme a sua necessidade, mínimo 50 GB)
    Pré-alocar Tamanho Total (F): OFF (Desativado) 
<Próximo>

05) Sumário
<Finalizar>
```

## 03_ Terceira Etapa: Configurações da Máquina Virtual do UbuntuWebserver

```bash
01) Selecionar a Máquina Virtual: wsseunome
<Configurações>

02) Selecione a Opção: Expert

03) Sistema
    Placa-Mãe
      Recurso Estendidos
      Relógio da máquina retorno hora UTC: OFF (Desabilitar)
    Processador
      Recursos Estendidos: Habilitar PAE/NX
                           Habilitar VT-x/AMD-v Aninhado 

04) Monitor
    Tela (S)
      Memória de Vídeo: 128MB
      Recursos Estendidos: Habilitar Aceleração 3D: ON (Habilitar)

05) Áudio
    Habilitar Áudio: OFF (Desabilitar)

06) Rede
    Adaptador 1 (LAN)
      Habilitar Placa de Rede: ON (Habilitar)
      Conectado a: Placa em modo Bridge
      Nome: Intel(R) Ethernet Connection (Placa de Rede On-Board)
      #OBSERVAÇÃO: VERIFIQUE QUAL PLACA DE REDE VOCÊ ESTÁ USANDO NO SEU EQUIPAMENTO
      #QUE ESTÁ CONECTADO NA SUA REDE LOCAL, PODE SER PLACA DE REDE CABEADA OU PLACA
      #DE REDE SEM-FIO (RECOMENDO SEMPRE PLACA DE REDE CABEADA, MELHOR DESEMPENHO).
<OK>
```

## 04_ Quarta Etapa: Iniciando a Instalação do Ubuntu Server 22.04.x LTS (localizar a ISO)

```bash
01. Selecionar a Máquina Virtual: wsseunome: 
<Iniciar>

02. VirtualBOX VM
    DVD: <Outro>
      #LOCALIZAR E SELECIONAR A IMAGEM DA ISO DO UBUNTU SERVER 22.04.x LTS
<Montar e Tentar Novo Boot>
```

## 05_ Quinta Etapa: Instalação e Configuração do Ubuntu Server 22.04.x LTS

Link Oficial da Documentação de Instalação do Ubuntu Server: https://ubuntu.com/server/docs/installation

**OBSERVAÇÃO IMPORTANTE:** O Boot Inicial do Ubuntu Server demora cerca de: __`30 (trinta segundos)`__ para iniciar a instalação padrão caso você não altere as opções de Boot.

**OBSERVAÇÃO:** Para parar o *Boot Inicial do Ubuntu Server* pressione: __`<Seta para Baixo>`__.

**DICA:** Entendendo as opções de inicialização do Ubuntu Server<br>

| Opção de Boot | Descrição |
| --------------|-----------|
| **Try or Install Ubuntu Server** | Inicia o instalador padrão do Ubuntu Server. Recomendado para a maioria das instalações. |
| **Ubuntu Server with the HWE kernel** | Inicia a instalação com o kernel HWE (Hardware Enablement), fornecendo suporte a hardwares mais recentes. Ideal para máquinas modernas ou servidores com hardware novo. |
| **Test memory** | Executa o Memtest86+ para testar a memória RAM do sistema. Útil para diagnósticos de estabilidade e problemas de hardware. |

```bash
01) *Try or Install Ubuntu Server
<Enter>

02) Use UP, DOWN and ENTER keys to select your language
    English (recomendado utilizar sempre a opção em Inglês)
<Enter>

03) Installer update available
    Version 25.10 of the installer is now available (24.08.1 is currently running)
<Continue without updating>

04) Keyboard configuration
    Layout:  [English (US)] ou [Portuguese (Brazil)] (altere conforme a sua necessidade)
    Variant: [English (US)] ou [Portuguese (Brazil)] (altere conforme a sua necessidade)
             [English (US) - English (US, intl., with dead keys)] (suporte americano com acentuação)
<Done>

05) Choose type of install
    (X) Ubuntu Server (DEFAULT - Selecionado por padrão)
    ( ) Ubuntu Server (minimized)
    Additional options
      [ ] Search for third-party drivers
<Done>

06) Network connections
    enp0s3 eth - (o nome lógico da placa de rede pode mudar de equipamento para equipamento)
    DHCPv4 172.16.1.XXX/24 (endereço IPv4 pode mudar dependendo da sua rede)
    #OBSERVAÇÃO IMPORTANTE: VERIFICAR O ENDEREÇO IPv4 QUE VOCÊ ESTÁ USANDO NA SUA REDE 
    #INTERNA PARA ADAPTAR NO SEU CENÁRIO NA AULA DE CONFIGURAÇÃO DE REDE ESTÁTICA.
<Done>

07) Configure proxy
    Proxy address: (Default)
<Done>

08) Configure Ubuntu archive mirror
    Mirror: http://archive.ubuntu.com/ubuntu
    #OBSERVAÇÃO IMPORTANTE: CASO QUEIRA TROCAR O MIRROR DO UBUNTU DO BRASIL PARA O
    #OFICIAL NO US, SUBSTITUA A URL DE: http://br.archive.ubuntu.com/ubuntu PARA A
    #URL: http://us.archive.ubuntu.com/ubuntu
<Done>

09) Guided storage configuration
    (X) Use an entire disk (Default)
      [VBOX_HARDISK-XXXX local disk 50.000G]
      (X) Set up this disk as an LVM group (Default)
          [] Encrypt the LVM group with LUKS (Default - No (Não))
<Done>

10) Storage configuration
    USED DEVICES
      #SELECIONAR O LV (LOGICAL VOLUME) DA RAIZ (/ = ROOT) DO UBUNTU SERVER PARA EDITAR A PARTIÇÃO
      ubuntu-lv  new, to be formatted as ext4, mounted at /  24G <Enter>
      Edit <Enter>
          Name: ubuntu-lv
          Size (max 47.996G): 47.996G
          Format: ext4
          Mount: /
      <Save>
<Done>
    Confirm destructive action
<Continue>

11) Profile setup
    #OBSERVAÇÃO: ALTERAR OS DADOS DO NOME DO SERVIDOR, USUÁRIO E SENHA PARA O SEU CENÁRIO.
    Your name: Seu Nome e Sobrenome <Tab>
    Your servers name: wsseunome <Tab>
    Pick a username: seu_usuário <Tab>
    Choose a passwords: sua_senha_segura <Tab>
    Confirm your passwords: repetir_sua_senha <Tab>
<Done>

12) Upgrade to Ubuntu Pro
    (X) Skip Ubuntu Pro setup for now (Habilitar - será configurado posteriormente)
<Continue>

13) SSH Setup
    [X] Install OpenSSH server: ON (Habilitar - pressione <Space> para selecionar)
    Import SSH identity: No (Default)
<Done>

14) Featured Server Snaps
<Done>

15) Installing System
    #Aguardar o final de instalação do servidor

16) Installation complete!
<Reboot Now>

17) Please remove the installation medium, then press ENTER:
<Enter>
```

## 06_ Sexta Etapa: Acessando o Ubuntu Server pela primeira vez via Terminal

**OBSERVAÇÃO:** AGUARDAR A INICIALIZAÇÃO TOTAL DO UBUNTU SERVER, NO FINAL SERÁ GERADO VÁRIAS CHAVES DE AUTENTICAÇÃO DO SSH SERVER, PRESSIONE <ENTER> PARA APARECER A TELA DE LOGIN.

```bash
01) Tela de Login do Ubuntu Server
    Ubuntu 22.04.5 LTS wsseunome tty1
      wsseunome login: seu_usuário <Enter> (altere para o seu usuário)
      Password: sua_senha <Enter> (altere para a sua senha)
    seu_usuário@wsseunome:~$ (primeiro acesso ao Terminal do Ubuntu Server)
```