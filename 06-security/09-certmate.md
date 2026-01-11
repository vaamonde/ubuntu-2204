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
#01_ Instalando as dependências do CertMate no Ubuntu Server<br>
#02_ Baixando o CertMate do Github no Ubuntu Server<br>
#03_ Descompactando e instalando o CertMate no Ubuntu Server<br>
#04_ Atualizando os arquivos de configuração do CertMate no Ubuntu Server<br>
#05_ Configurando o Ambiente Virtual e instalando as Dependências do CertMate no Ubuntu Server<br>
#06_ Criando o Usuário de Serviço do CertMate no Ubuntu Server<br>
#07_ Alterando as Permissões do Diretório do CertMate no Ubuntu Server<br>
#08_ Habilitando o Serviço do CertMate no Ubuntu Server<br>
#09_ Verificando o Serviço e Versão do CertMate no Ubuntu Server<br>
#10_ Verificando a Porta de Conexão do CertMate no Ubuntu Server<br>
#11_ Localização dos Arquivos de Configuração do CertMate no Ubuntu Server<br>
#12_ Adicionado o Usuário Local no Grupo Padrão do CertMate no Ubuntu Server<br>
#13_ Testando o acesso ao CertMate no Terminal e no Navegador<br>
#14_ Conhecendo as opções de gerenciamento do CertMate via navegador<br>

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
sudo apt install python3 python3-pip python3-venv python3-dev build-essential libssl-dev \
libffi-dev certbot openssl
```

## 02_ Baixando o CertMate do Github no Ubuntu Server

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

## 03_ Descompactando e instalando o CertMate no Ubuntu Server
```bash
#descompactando o arquivo do CertMate
#opção do comando tar: -z (gzip), -x (extract), -v (verbose), -f (file)
#opção do caractere curinga * (asterisco): Qualquer coisa
tar -zxvf certmate.tar.gz

#movendo o conteúdo do diretório do CertMate para o diretório /opt
#opção do comando mv: -v (verbose)
sudo mv -v certmate-*/ /opt/certmate
```

## 04_ Atualizando os arquivos de configuração do CertMate no Ubuntu Server
```bash
#download do arquivo de configuração da Inicialização do CertMate
sudo wget -v -O /etc/systemd/system/certmate.service https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/certmate.service
```

## 05_ Configurando o Ambiente Virtual e instalando as Dependências do CertMate no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** RECOMENDO QUE O AMBIENTE VIRTUAL DE INSTALAÇÃO DO CERTMATE SEJA FEITO UTILIZANDO O USUÁRIO: __`root`__ PARA FACILITAR A INSTALAÇÃO DAS DEPENDÊNCIAS E CONFIGURAÇÕES DO PYTHON.

```bash
#mudando para o usuário Root do Ubuntu Server
#opção do comando sudo: -i (login)
sudo -i

#acessando o diretório de instalação do CertMate no Ubuntu Server
cd /opt/certmate

#criando o ambiente virtual de instalação do CertMate
#opção do comando python3: -m ()
python3 -m venv venv

#ativando o ambiente virtual do Python (modo ativo) do CertMate
source venv/bin/activate

#atualizando o gerenciador de pacotes pip dentro do ambiente virtual
#opção do comando python: -m (module), pip install (install module), --upgrade (upgrade module)
python -m pip install --upgrade pip

#instalando todas as dependências Python listadas no arquivo requirements.txt
#opção do comando pip: install (install module), -r (requirement)
pip install -r requirements.txt

#atualizando os arquivos de configuração do ambiente virtual do CertMate
#opção do comando cp: -v (verbose)
cp -v .env.example .env

#testando a inicialização do serviço do CertMate no ambiente virtual
#pressione: Ctrl+C para abortar a inicialização do serviço
python app.py

#desativando o ambiente virtual Python (voltando ao shell normal) do CertMate
deactivate

#saindo do usuário root do Ubuntu Server
exit
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

## 08_ Habilitando o Serviço do CertMate no Ubuntu Server
```bash
#habilitando o serviço do CertMate no Ubuntu Server
#opções do comando systemctl: daemon-reload (Reload the systemd manager configuration), 
#enable (Enable one or more units), start (Start (activate) one or more units)
sudo systemctl daemon-reload
sudo systemctl enable certmate
sudo systemctl start certmate
```

## 09_ Verificando o Serviço e Versão do CertMate no Ubuntu Server
```bash
#verificando o serviço do CertMate no Ubuntu Server
#opções do comando systemctl: status (runtime status information), restart (Stop and then 
#start one or more units), stop (Stop (deactivate) one or more units), start (Start (activate) 
#one or more units)
sudo systemctl status certmate
sudo systemctl restart certmate
sudo systemctl stop certmate
sudo systemctl start certmate

#analisando os Log's e mensagens de erro do CertMate
#opção do comando journalctl: x (catalog), e (pager-end), u (unit)
sudo journalctl -xeu certmate
```

**OBSERVAÇÃO IMPORTANTE:** Por que sempre é necessário verificar a versão do serviço de rede que você está implementando ou configurando no Servidor Ubuntu Server, devido as famosas falhas de segurança chamadas de: *CVE (Common Vulnerabilities and Exposures)*, com base na versão utilizada podemos pesquisar no site do **Ubuntu Security CVE Reports:** https://ubuntu.com/security/cves as falhas de segurança encontradas e corrigidas da versão do nosso aplicativo, o que ela afeta, se foi corrigida e como aplicar a correção.

```bash
#verificando a versão do CertMate
sudo
```

## 10_ Verificando a Porta de Conexão do CertMate no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** no Ubuntu Server as Regras de Firewall utilizando o comando: __` iptables `__ ou: __` ufw `__ está desabilitado por padrão **(INACTIVE)**, caso você tenha habilitado algum recurso de Firewall é necessário fazer a liberação do *Fluxo de Entrada (INPUT), Porta (PORT) e Protocolo (PROTOCOL) TCP* do Serviço corresponde nas tabelas do firewall e testar a conexão.

```bash
#verificando a porta padrão TCP-8000 do CertMate
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'8000' -sTCP:LISTEN
```

## 11_ Localização dos Arquivos de Configuração do CertMate no Ubuntu Server
```bash
/opt/certmate                      <-- Diretório de configuração dos certificados do CertMate
/opt/certmate/.env                 <-- Arquivo de configuração das variáveis do CertMate
/opt/certmate/backups              <-- Diretório dos backups do CertMate
/opt/certmate/certificates         <-- Diretório dos certificados do CertMate
/opt/certmate/data                 <-- Diretório da base de dados de configuração do CertMate
/opt/certmate/data/settings.json   <-- Arquivo de configuração padrão do CertMate
/opt/certmate/logs                 <-- Diretório dos logs dos certificados do CertMate
```

## 12_ Adicionado o Usuário Local no Grupo Padrão do CertMate no Ubuntu Server
```bash
#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
#OBSERVAÇÃO IMPORTANTE: você pode substituir a variável de ambiente $USER pelo
#nome do usuário existente no sistema para adicionar no Grupo desejado.
sudo usermod -a -G certmate $USER

#verificando informações do grupo CERTMATE do CertMate no Ubuntu Server
#opção do comando getent: group (the database system group)
sudo getent group certmate
```

## 13_ Testando o acesso ao CertMate no Terminal e no Navegador

**OBSERVAÇÃO:** Tabela de referência dos Códigos do HTTP mais comuns para tester no Terminal ou no Navegador.

| Código | Significado                                     |
| ------ | ----------------------------------------------- |
| 200    | OK (Sucesso)                                    |
| 301    | Moved Permanently (Redirecionamento permanente) |
| 302    | Found (Redirecionamento temporário)             |
| 403    | Forbidden (Acesso negado)                       |
| 404    | Not Found (Não encontrado)                      |
| 500    | Internal Server Error                           |

```bash
#testando o acesso as páginas do CertMate
#opção do comando curl: -I (Fetch the headers only)
curl -I http://127.0.0.1:8000/
```
```bash
#utilizar os navegadores para testar o acesso ao CertMate
firefox ou google chrome: http://endereço_ipv4_ubuntuserver:8000
```

## 14_ Conhecendo as opções de gerenciamento do CertMate via navegador

| Opção | Descrição |
|-------|-----------|
| 🔧 Certificates | Exibe informações de criação dos certificados criados |
| 📦 Settings | Interface para configurar a forma de geração dos certificados |

========================================DESAFIOS=========================================

**#15_ DESAFIO-01:** 

=========================================================================================

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO CERTMATE SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do CertMate realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/27-certmate.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiocertmate