#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 16/01/2023<br>
#Data de atualização: 13/08/2024<br>
#Versão: 0.19<br>

OBSERVAÇÃO IMPORTANTE: COMENTAR NO VÍDEO DO NODEJS SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: Desafio do Node.JS realizado com sucesso!!! #BoraParaPrática

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/05-nodejs.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafionodejs #desafiojavascript

Conteúdo estudado nesse desafio:<br>
#01_ Instalando as Dependências do Node.JS<br>
#02_ Adicionando o Repositório do Node.JS e do NPM (Node Packet Manager)<br>
#03_ Instalando a Versão LTS do Node.JS e do NPM (Node Packet Manager)<br>
#04_ Verificando as Versões do Node.JS e NPM (Node Package Manager)<br>
#05_ Criando um Projeto Simples para Testar o Node.JS<br>
#06_ Criando um Projeto Simples do Node.JS<br>
#07_ Executando o Projeto Simples do Node.JS utilizando o Express<br>
#08_ Verificando a Porta de Conexão do Node.JS Express<br>
#09_ Acessando o Projeto Simples do Node.JS<br>
#10_ Finalizando a Execução do Projeto Simples do Node.JS<br>
#11_ Desafio de uma Nova Aplicação do Node.JS.

Site Oficial do Node.JS: https://nodejs.org/en/<br>
Site Oficial do NPM: https://www.npmjs.com/<br>
Github do Nodesource: https://github.com/nodesource/distributions#debian-and-ubuntu-based-distributions

Site Oficial do W3C School HTML5: https://www.w3schools.com/html/default.asp<br>
Site Oficial do W3C School CSS: https://www.w3schools.com/css/default.asp<br>
Site Oficial do W3C School JavaScript: https://www.w3schools.com/js/default.asp<br>
Site Oficial do W3C School PHP: https://www.w3schools.com/php/default.asp<br>
Site Oficial do W3C School Node.JS: https://www.w3schools.com/nodejs/

O QUE É E PARA QUE SERVER NODE.JS: O Node.js é um software de código aberto, multiplataforma, baseado no interpretador V8 do Google e que permite a execução de códigos JavaScript fora de um navegador web. A principal característica do Node.js é sua arquitetura assíncrona e orientada por eventos.

[![Node.JS](http://img.youtube.com/vi/1JOs_qALw6I/0.jpg)](https://www.youtube.com/watch?v=1JOs_qALw6I "Node.JS")

Link da vídeo aula: https://www.youtube.com/watch?v=1JOs_qALw6I

#01_ Instalando as Dependências do Node.JS<br>
```bash
#atualizando as listas do Apt
sudo apt update

#instalando as dependências do Node.JS
#opção da contra barra (\): criar uma quebra de linha no terminal
sudo apt install git vim curl gnupg gcc g++ make software-properties-common \
build-essential ca-certificates
```

#02_ Adicionando o Repositório do Node.JS e do NPM (Node Packet Manager)<br>
```bash
#adicionando o repositório do Node.JS via Nodesource: https://deb.nodesource.com/

#Script de configuração do Repositório do Node.JS foi descontinuado, não é mais indicado
#utilizar esse script em servidores de produção.
#opção do comando curl: -f (fail), -s (silent), -S (show-error), -L (location)
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
#opção do comando sudo: -E (preserve-env)
#sudo curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash

#Adicionando a Chave GPG do Node.JS via Nodesource
#opção do comando curl: -f (fail), -s (silent), -S (show-error), -L (location)
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
#opção do comando gpg: -o (output file)
#opção da contra barra (\): criar uma quebra de linha no terminal
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /usr/share/keyrings/nodesource.gpg

#Adicionando o Repositório do Node.JS no Ubuntu Server
#OBSERVAÇÃO IMPORTANTE: é indicado utilizar sempre a versão LTS (Long Time Support) do
#Node.JS em servidores de Produção, consulte sempre a versão LTS no Site Oficial do Node 
#no Link: https://nodejs.org/en e no Link: https://nodejs.org/en/about/previous-releases
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
#opção da contra barra (\): criar uma quebra de linha no terminal
echo "deb [signed-by=/usr/share/keyrings/nodesource.gpg] https://deb.nodesource.com/node_20.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list
```

#03_ Instalando a Versão LTS do Node.JS e do NPM (Node Packet Manager)<br>
```bash
#Instalando o Node.JS e NPM (Node Package Manager)
sudo apt update
sudo apt install nodejs
```

#04_ Verificando as Versões do Node.JS e NPM (Node Package Manager)<br>
```bash
#opção do comando node: -v (version)
#opção do comando npm: -v (version)
sudo node -v
sudo npm -v
```

#05_ Criando um Projeto Simples para Testar o Node.JS<br>
```bash
#criando o diretório do projeto de teste do Node.JS no perfil do seu usuário
#opção do comando mkdir: -v (verbose)
mkdir -v nodejs-hello

#Listando o diretório criado do projeto do Node.JS
#opção do comando ls: -l (long listing), -h (human-readable)
ls -lh

#acessando o diretório do projeto do Node.JS
cd nodejs-hello/

#Inicializando o diretório do Projeto do Node.JS
#opção do comando npm: init (create package.json file), -y (yes)
npm init -y

#Instalando o Módulo/Pacote Express do Node.JS
#opção do comando npm: install (install package in directory)
npm install express

#Listando o conteúdo do diretório do projeto do Node.JS
#opção do comando ls: -l (long listing), -h (human-readable), -a (all)
ls -lha
```

#06_ Criando um Projeto Simples do Node.JS<br>
```bash
#OBSERVAÇÃO IMPORTANTE: no Microsoft Windows utilizando o Powershell no processo de copiar e 
#colar o código JavaScript ele desconfigura o código, recomendo no Windows utilizar o software 
#PuTTY ou Git Bash para editar os códigos ou copiar e colar. No Linux Mint e macOS essa falha 
#não acontece.

#OBSERVAÇÃO: tanto no Microsoft Windows como no GNU/Linux (Linux Mint, Ubuntu Desktop, etc) ou
#no macOS recomendo sempre utilizar o Editor de Texto em Modo Gráfico IDE Microsoft Visual Studio, 
#por padrão ele já entende toda a codificação HTML, PHP, JavaScript, JSON, etc..., facilitando 
#a criação e modificação arquivos desse curso.

#Criando o arquivo index.js do projeto do Node.JS
vim index.js
INSERT
```
```js
// Criando as variáveis do Express e do App do Node.JS
var express = require ('express'); 
var app = express();

// Mensagem que será mostrada no browser (navegador) 
app.get('/', function (req, res) {
	res.send('Seu Nome e Sobrenome #BoraParaPrática!!!');
});

// Porta padrão utilizada pela aplicação do Node.JS
app.listen(3000, function() {
	console.log('Aplicativo de exemplo ouvindo na porta 3000');
});
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>
```

#07_ Executando o Projeto Simples do Node.JS utilizando o Express<br>
```bash
#opção do comando &: background
#OBSERVAÇÃO IMPORTANTE: existe também o comando: bg que faz a mesma coisa do caractere: & 
#(E-Comercial) colocando a aplicação em background e liberando o terminal.
node index.js &
```

#08_ Verificando a Porta de Conexão do Node.JS Express<br>
```bash
#OBSERVAÇÃO IMPORTANTE: no Ubuntu Server as Regras de Firewall utilizando o comando: 
#iptables ou: ufw está desabilitado por padrão (INACTIVE), caso você tenha habilitado 
#algum recurso de Firewall é necessário fazer a liberação do Fluxo de Entrada, Porta 
#e Protocolo TCP do Serviço corresponde nas tabelas do firewall e testar a conexão..

#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'3000' -sTCP:LISTEN
```

#09_ Acessando o Projeto Simples do Node.JS<br>
```bash
#utilizar os navegadores para testar o Node.JS
firefox ou google chrome: http://endereço_ipv4_ubuntuserver:3000
```

#10_ Finalizando a Execução do Projeto Simples do Node.JS<br>
```bash
#verificando os processos em segundo plano (background)
jobs

#trazendo o processo em segundo plano do Node.JS para o primeiro plano (foreground)
fg

#finalizando o processo do Node.JS Express
Ctrl + C

#OBSERVAÇÃO IMPORTANTE: caso você não consiga trazer os processos que estão em Segundo
#Plano (Background) para o Primeiro Plano (Foreground) para finalizar o processo, você
#pode utilizar o comando: ps -u e na coluna: PID finalizar o processo com o comando:
#kill -9 PID

#exemplo de finalizar o processo utilizando o comando ps para descobrir o PID (Process ID)
#opção do comando ps: -u (userlist)
ps -u

#opção do comando kill: -9 (Kill all processes you can kill)
kill -9 15939
```

========================================DESAFIOS=========================================

**#11_ DESAFIO-01:** FAZER A CRIAÇÃO DE UM NOVO PROJETO DO NODE.JS EXPRESS, CRIAR UM DIRETÓRIO COM: __`seu_nome`__ (TUDO EM MINÚSCULO) NA RAIZ DO PERFIL DO SEU USUÁRIO: __`/home/seu_usuário`__, CRIAR UMA PÁGINA DENTRO DO SEU DIRETÓRIO CHAMADA: __`seunome.js`__ (TUDO EM MINÚSCULO), MUDAR A MENSAGEM NO BROWSER PARA: __`Meu novo projeto em Node.JS - Seu Nome e Sobrenome`__, MUDAR A PORTA DO PROJETO PARA __`3030`__ E ADICIONAR MAIS ALGUM RECURSO DO NODE.JS NO SEU PROJETO (VEJA O SITE W3SCHOOLS), ADICIONAR 01 (UMA) IMAGEM E FAZER O HYPER LINK PARA O WORDPRESS.

**#11_ DESAFIO-02:** DEIXAR OS DOIS PROJETOS DO NODE.JS RODANDO EM SEGUNDO PLANO (BACKGROUND), NO WORDPRESS CRIAR OS HYPER LINKS PARA OS PROJETOS IGUAL QUE FOI FEITO NO DESAFIO-03 DO WORDPRESS PARA AS PÁGINAS HTML E PHP, NÃO ESQUEÇA DE TESTAR O ACESSO.

=========================================================================================

OBSERVAÇÃO IMPORTANTE: COMENTAR NO VÍDEO DO NODEJS SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: Desafio do Node.JS realizado com sucesso!!! #BoraParaPrática

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/05-nodejs.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafionodejs #desafiojavascripe