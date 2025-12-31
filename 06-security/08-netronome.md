#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 30/12/2025<br>
#Data de atualização: 30/12/2025<br>
#Versão: 0.01<br>

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO NETRONOME SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do Netronome realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/26-netronome.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafionetronome

Conteúdo estudado nesse desafio:<br>
#01_ 

Site Oficial do Netronome: https://netrono.me/<br>
Github Oficial do Projeto: https://github.com/autobrr/netronome

**Sites de IA (Inteligência Artificial) indicados para os Desafios**<br>
OpenAI ChatGPT: https://chatgpt.com<br>
Microsoft Copilot: https://copilot.microsoft.com<br>
Google Gemini: https://gemini.google.com<br>
DeepSeek: https://chat.deepseek.com/<br>
x.AI Grok: https://grok.com/<br>

**O QUE É E PARA QUE SERVER O NETRONOME:** .

[![Netronome](http://img.youtube.com/vi//0.jpg)]( "Netronome")

Link da vídeo aula: 

## 01_ Instalando as dependências do Netronome Server no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** o tempo todo o Librespeed-Cli sofre alteração, antes de fazer o download do arquivo verifique a versão no link: https://launchpad.net/ubuntu/+source/librespeed-cli

```bash
#atualizando as listas do Apt
#opção do comando apt: update (Resynchronize the package index files from their sources)
sudo apt update

#instalando as dependências do Netronome Server no Ubuntu Server
#opção do comando apt: install (install is followed by one or more package names)
#opção da contra barra (\): criar uma quebra de linha no terminal
sudo apt install iperf3 traceroute mtr vnstat apache2 php

#baixando a dependência do Librespeed-Cli do Site Oficial do Ubuntu (link atualizado em: 30/12/2025)
#opção do comando wget: -O (output file name)
wget -O librespeed-cli.deb https://launchpad.net/ubuntu/+archive/primary/+files/librespeed-cli_1.0.12-1_amd64.deb

#instalando a dependência do Librespeed-Cli no Ubuntu Server
#opção do comando dpkg: -i (install)
sudo dpkg -i librespeed-cli.deb
```

## 02_ Instalando o Netronome Server do Projeto do Github no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** o tempo todo o Netronome sofre alteração, antes de fazer o download do arquivo verifique a versão no link: https://github.com/autobrr/netronome/releases/

```bash
#baixando o Netronome Server do Github (link atualizando em: 30/12/2025)
#opção do comando wget: -O (output file name)
wget -O netronome.deb https://github.com/autobrr/netronome/releases/download/v0.8.0/netronome_0.8.0_linux_amd64.deb

#instalando o Netronome Server no Ubuntu Server
#opção do comando dpkg: -i (install)
sudo dpkg -i netronome.deb
```

## 03_ Configurando o Netronome Server no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** recomendo que o procedimento abaixo seja feito utilizando o usuário: __`root`__ do Ubuntu Server para facilitar a instalação e configuração do *Netronome Server*.

```bash
#mudando para o usuário Root do Ubuntu Server
#opção do comando sudo: -i (login)
sudo -i

#gerando o arquivo de configuração do Netronome Server
#opção do comando netronome: generate-config (Generate a default configuration file)
netronome generate-config
```

## 05_ Atualizando os arquivos de configuração do Netronome Server no Ubuntu Server
```bash
#download do arquivo de configuração do Netronome Server
#opção do comando wget: -v (verbose), -O (output file)
wget -v -O /root/.config/netronome/config.toml https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/config.toml

#download do arquivo de configuração do Librespeed Server
#opção do comando wget: -v (verbose), -O (output file)
wget -v -O /root/.config/netronome/librespeed-servers.json https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/librespeed-servers.json

#download do arquivo da Base de Dados de GeoIP Lite ANS (link atualizado em: 30/12/2025)
#projeto oficial do Github: https://github.com/P3TERX/GeoLite.mmdb
#opção do comando wget: -v (verbose), -O (output file)
wget -v -O /root/.config/netronome/GeoLite2-ASN.mmdb https://git.io/GeoLite2-ASN.mmdb

#download do arquivo da Base de Dados de GeoIP Lite Country (link atualizado em: 30/12/2025)
#projeto oficial do Github: https://github.com/P3TERX/GeoLite.mmdb
#opção do comando wget: -v (verbose), -O (output file)
wget -v -O /root/.config/netronome/GeoLite2-Country.mmdb https://git.io/GeoLite2-Country.mmdb

#download do arquivo de serviço do Netronome Server
#opção do comando wget: -v (verbose), -O (output file)
wget -v -O /etc/systemd/system/netronome.service https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/netronome.service

#download do arquivo de serviço do IPerf3 Server
#opção do comando wget: -v (verbose), -O (output file)
wget -v -O /etc/systemd/system/iperf3.service https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/iperf3.service
```



========================================DESAFIOS=========================================

**#08_ DESAFIO-01:** 

=========================================================================================

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO NETRONOME SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do Netronome realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/26-netronome.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafionetronome


