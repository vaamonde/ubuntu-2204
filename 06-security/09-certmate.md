#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 11/01/2026<br>
#Data de atualização: 11/01/2026<br>
#Versão: 0.01<br>

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO CERTMATE SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do CertMate realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/27-certmate.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiocertmate

Conteúdo estudado nesse desafio:<br>
#01_ 

Site Oficial do CertMate: https://www.certmate.org/<br>
Github Oficial do Projeto CertMate: https://github.com/fabriziosalmi/certmate<br>

**Sites de IA (Inteligência Artificial) indicados para os Desafios**<br>
OpenAI ChatGPT: https://chatgpt.com<br>
Microsoft Copilot: https://copilot.microsoft.com<br>
Google Gemini: https://gemini.google.com<br>
DeepSeek: https://chat.deepseek.com/<br>
x.AI Grok: https://grok.com/<br>

**O QUE É E PARA QUE SERVER O CERTMATE:** .

[![CertMate](http://img.youtube.com/vi//0.jpg)]( "CertMate")

Link da vídeo aula: 

## 01_ Instalando as dependências do CertMate no Ubuntu Server
```bash
#atualizando as listas do Apt
#opção do comando apt: update (Resynchronize the package index files from their sources)
sudo apt update

#instalando as dependências do CertMate no Ubuntu Server
#opção do comando apt: install (install is followed by one or more package names)
#opção da contra barra (\): criar uma quebra de linha no terminal
sudo apt install python3 python3-pip python3-venv python3-dev build-essential libssl-dev libffi-dev
```

## 03_ Baixando o CertMate do Github no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** o executável e os arquivos de configuração do *CertMate* sofre alteração o tempo todo, sempre acessar o projeto do Github para verificar a última versão do software no Link: https://github.com/fabriziosalmi/certmate/releases

```bash
#download do CertMate do Github (Link atualizado no dia 11/01/2026)
#opção do comando wget: -O (output file)
wget -O certmate.tar.gz https://github.com/fabriziosalmi/certmate/archive/refs/tags/v1.6.2.tar.gz

#listando o download do arquivo do CertMate
#opção do comando ls: -l (long listing), -h (human-readable)
#opção do caractere curinga * (asterisco): Qualquer coisa
ls -lh certmate*
```

## 04_ Descompactando e instalando o CertMate no Ubuntu Server
```bash
#descompactando o arquivo do CertMate
#opção do comando tar: -z (gzip), -x (extract), -v (verbose), -f (file)
#opção do caractere curinga * (asterisco): Qualquer coisa
tar -zxvf certmate.tar.gz

#movendo o conteúdo do diretório do CertMate para o diretório /opt
#opção do comando mv: -v (verbose)
sudo mv -v certmate-*/ /opt/certmate
```

## 05_ Atualizando os arquivos de configuração do CertMate no Ubuntu Server
```bash
#download do arquivo de configuração da Inicialização do CertMate
sudo wget -v -O /etc/systemd/system/certmate.service https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/certmate.service
```

## 06_ Criando o Usuário de Serviço do CertMate no Ubuntu Server
```bash
#criando o usuário de serviço do CertMate
#opção do comando useradd: -m (create-home), -d (home-dir), -U (user-group), -s (shell)
sudo useradd -m -d /opt/certmate -U -s /bin/false certmate
```

## 07_ Alterando as Permissões do Diretório do CertMate no Ubuntu Server
```bash
#alterando as permissões de dono e grupo do diretório do CertMate
#opção do comando chown: -R (recursive), -v (verbose), certmate:certmate (user and group)
sudo chown -Rv certmate:certmate /opt/certmate
```

## 26_ Configurando o Ambiente Virtual e instalando as Dependências do CertMate no Ubuntu Server
```bash
#acessando o diretório de instalação do CertMate no Ubuntu Server
cd /opt/certmate

#criando o ambiente virtual de instalação do CertMate
python3 -m venv venv

#ativando o ambiente virtual Python (modo ativo) do CertMate
source venv/bin/activate
```

========================================DESAFIOS=========================================

**#12_ DESAFIO-01:** 

=========================================================================================

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO NETRONOME SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do Netronome realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/26-netronome.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafionetronome


