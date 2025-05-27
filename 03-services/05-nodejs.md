#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 16/01/2023<br>
#Data de atualização: 27/05/2025<br>
#Versão: 0.26<br>

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO NODEJS SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do Node.JS realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/05-nodejs.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafionodejs #desafiojavascript

Conteúdo estudado nesse desafio:<br>
#01_ Instalando as Dependências do Node.JS no Ubuntu Server;<br>
#02_ Adicionando o Repositório do Node.JS e do NPM (Node Packet Manager) no Ubuntu Server;<br>
#03_ Instalando a Versão LTS do Node.JS e do NPM (Node Packet Manager) no Ubuntu Server;<br>
#04_ Verificando as Versões do Node.JS e NPM (Node Package Manager) no Ubuntu Serve;<br>
#05_ Criando um Projeto Simples para Testar o Node.JS no Ubuntu Server;<br>
#06_ Criando um Projeto Simples do Node.JS no Ubuntu Server;<br>
#07_ Executando o Projeto Simples do Node.JS utilizando o Express no Ubuntu Server;<br>
#08_ Verificando a Porta de Conexão do Node.JS Express no Ubuntu Server;<br>
#09_ Acessando o Projeto Simples do Node.JS via Navegador;<br>
#10_ Finalizando a Execução do Projeto Simples do Node.JS Express no Ubuntu Server;<br>
#11_ Entendendo a Estrutura do Projeto Simples do Node.JS Express no Ubuntu Server;<br>
#12_ Desafio de uma Nova Aplicação do Node.JS.<br>

Site Oficial do Node.JS: https://nodejs.org/en/<br>
Site Oficial do NPM: https://www.npmjs.com/<br>
Github do Nodesource: https://github.com/nodesource/distributions#debian-and-ubuntu-based-distributions

**Site Oficial do W3C (World Wide Web Consortium) School**<br>
Site Oficial do W3C School HTML5: https://www.w3schools.com/html/default.asp<br>
Site Oficial do W3C School CSS: https://www.w3schools.com/css/default.asp<br>
Site Oficial do W3C School JavaScript: https://www.w3schools.com/js/default.asp<br>
Site Oficial do W3C School PHP: https://www.w3schools.com/php/default.asp<br>
Site Oficial do W3C School SQL: https://www.w3schools.com/sql/default.asp<br>
Site Oficial do W3C School Node.JS: https://www.w3schools.com/nodejs/<br>

**Sites de IA (Inteligência Artificial) indicados para os Desafios**<br>
OpenAI ChatGPT: https://chatgpt.com<br>
Microsoft Copilot: https://copilot.microsoft.com<br>
Google Gemini: https://gemini.google.com<br>
DeepSeek: https://chat.deepseek.com/<br>
x.AI Grok: https://grok.com/<br>

**O QUE É E PARA QUE SERVER O NODE.JS:** O Node.js é um ambiente de execução de código *JavaScript* no lado do servidor, construído sobre o motor V8, que é o mesmo usado no navegador Google Chrome. Ele permite que desenvolvedores criem aplicativos rápidos e escaláveis utilizando JavaScript fora do navegado

**O QUE É E PARA QUE SERVER O JAVASCRIPT:** O *JavaScript* é uma linguagem de programação interpretada, dinâmica e orientada a objetos, amplamente utilizada para adicionar interatividade, lógica e funcionalidades avançadas em páginas web. Ele é executado diretamente nos navegadores e, com o advento de tecnologias como o Node.js, também pode ser usado no back-end e em outros ambiente

**EM QUAL CATEGORIA SE ENQUADRA O PROFISSIONAL NODE.JS:** 🔧 Desenvolvedor Back-End, 🌐 Desenvolvedor Full-Stack, ☁️ DevOps ou SRE (Site Reliability Engineering - Engenharia de Confiabilidade de Sites), 🤖 Desenvolvedor de Bots ou Automações CI/CD (Continuous Integration (Integração Contínua)/Continuous Delivery (Entrega Contínua)), 📡 Engenheiro de APIs (Application Programming Interface - Interface de Programação de Aplicações) / Integrações.

[![Node.JS](http://img.youtube.com/vi/1JOs_qALw6I/0.jpg)](https://www.youtube.com/watch?v=1JOs_qALw6I "Node.JS")

Link da vídeo aula: https://www.youtube.com/watch?v=1JOs_qALw6I

## 01_ Instalando as Dependências do Node.JS no Ubuntu Server
```bash
#atualizando as listas do Apt
sudo apt update

#instalando as dependências do Node.JS
#opção da contra barra (\): criar uma quebra de linha no terminal
sudo apt install git vim curl gnupg gcc g++ make software-properties-common tree \
build-essential ca-certificates apt-transport-https
```

## 02_ Adicionando o Repositório do Node.JS e do NPM (Node Packet Manager) no Ubuntu Server

Repositório Oficial do Node.JS via Nodesource: https://deb.nodesource.com/

**OBSERVAÇÃO IMPORTANTE:** é indicado utilizar sempre a versão *LTS (Long Time Support)* do Node.JS em servidores de Produção, consulte sempre a versão LTS no Site Oficial do Node.JS no Link: https://nodejs.org/en e no Link: https://nodejs.org/en/about/previous-releases

```bash
#Script de configuração do Repositório do Node.JS foi descontinuado, não é mais indicado
#utilizar esse script em servidores de produção.
#opção do comando curl: -f (fail), -s (silent), -S (show-error), -L (location)
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
#opção do comando sudo: -E (preserve-env)
#sudo curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash

#Adicionando a Chave GPG do Node.JS via Nodesource (DESATIVADO DEVIDO A INCOMPATIBILIDADE DE VERSÃO)
#opção do comando curl: -f (fail), -s (silent), -S (show-error), -L (location)
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
#opção do comando gpg: -o (output file)
#opção da contra barra (\): criar uma quebra de linha no terminal
#curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /usr/share/keyrings/nodesource.gpg

#Adicionando o Repositório do Node.JS no Ubuntu Server (link atualizado em 10/01/2025) (DESATIVADO DEVIDO A INCOMPATIBILIDADE DE VERSÃO)
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
#opção da contra barra (\): criar uma quebra de linha no terminal
#echo "deb [signed-by=/usr/share/keyrings/nodesource.gpg] https://deb.nodesource.com/node_22.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list

#Script de configuração do Repositório do Node.JS (INDICADO A SUA UTILIZAÇÃO)
#opção do comando curl: -f (fail), -s (silent), -S (show-error), -L (location)
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
#opção do comando sudo: -E (preserve-env)
sudo curl -fsSL https://deb.nodesource.com/setup_22.x | sudo -E bash
```

## 03_ Instalando a Versão LTS do Node.JS e do NPM (Node Packet Manager) no Ubuntu Server
```bash
#atualizando as listas do Apt com o novo repositório do Node.JS
sudo apt update

#Instalando o Node.JS e NPM (Node Package Manager)
sudo apt install nodejs
```

## 04_ Verificando as Versões do Node.JS e NPM (Node Package Manager) no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** Por que sempre é necessário verificar a versão do serviço de rede que você está implementando ou configurando no Servidor Ubuntu Server, devido as famosas falhas de segurança chamadas de: *CVE (Common Vulnerabilities and Exposures)*, com base na versão utilizada podemos pesquisar no site do **Ubuntu Security CVE Reports:** https://ubuntu.com/security/cves as falhas de segurança encontradas e corrigidas da versão do nosso aplicativo, o que ela afeta, se foi corrigida e como aplicar a correção.

```bash
#opção do comando node: -v (version)
#opção do comando npm: -v (version)
sudo node -v
sudo npm -v
```

## 05_ Criando um Projeto Simples para Testar o Node.JS no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** SEMPRE TRABALHAR COM *DIRETÓRIOS DE PROJETOS* QUANDO VOCÊ ESTÁ DESENVOLVENDO APLICAÇÕES UTILIZANDO O *FRAMEWORKS NODE.JS* DEVIDO AS DEPENDÊNCIAS E ESTRUTURA DE ARQUIVOS/DIRETÓRIOS QUE SERÃO CRIADOS NO MOMENTO DA INICIALIZAÇÃO DO PROJETO.

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
#mais informações acesse: https://docs.npmjs.com/cli/v11/commands/npm-init
npm init -y

#Instalando o Módulo/Pacote Express do Node.JS
#opção do comando npm: install (install package in directory)
#mais informações acesse: https://docs.npmjs.com/cli/v11/commands/npm-install
npm install express

#Listando o conteúdo do diretório do projeto do Node.JS
#opção do comando ls: -l (long listing), -h (human-readable), -a (all files)
ls -lha
```

## 06_ Criando um Projeto Simples do Node.JS no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** nesse exemplo vamos editar o arquivo: *index.js* utilizando o Editor de Texto em Linha de Comando: __`vim`__.

**OBSERVAÇÃO IMPORTANTE:** no Microsoft Windows utilizando o *Powershell* no processo de copiar e colar o código HTML ou PHP ele desconfigura o código, recomendo utilizar no Windows o software **PuTTY ou Git Bash** para editar os códigos ou copiar e colar. No Linux Mint e macOS essa falha não acontece.

**OBSERVAÇÃO:** tanto no Microsoft Windows como no GNU/Linux (Linux Mint, Ubuntu Desktop, etc...) ou no macOS recomendo sempre utilizar o *Editor de Texto em Modo Gráfico IDE Microsoft Visual Studio*, por padrão ele já entende toda a codificação: *HTML, PHP, JavaScript, JSON, etc...*, facilitando a criação e modificação dos arquivos desse curso.

```bash
#Criando o arquivo index.js do projeto do Node.JS
vim index.js

#entrando no modo de edição do editor de texto VIM
INSERT
```
```js
//Projeto simples do Node.JS e Express para testar o Servidor Ubuntu
//Versão: 1.0 - Data de atualização: 06/05/2025 - Dev: Robson Vaamonde

//===== Bloco das Variáveis do Node.JS =====

//Importando o Módulo Express
//require('express'): importa o módulo Express, que é um framework para criar servidores
//web de forma simples e rápida no Node.js.
//var express =: atribui a funcionalidade do módulo à variável express
//O require() é uma função do Node.js usada para importar bibliotecas externas ou arquivos.
var express = require ('express');

//Criando uma Instância do Aplicativo
//express(): cria uma instância do servidor Express.
//app: será usado para configurar rotas, middlewares e controlar a lógica da aplicação.
var app = express();

//===== Bloco da Rota GET do Node.JS =====

//Definindo uma Rota GET (Mensagem que será mostrada no browser (navegador))
//app.get('/'): define uma rota HTTP do tipo GET para o caminho / (raiz).
//function(req, res) {...}: função callback que trata a requisição (req) e envia uma resposta (res).
//req (request): contém informações da requisição do cliente (navegador, Postman, etc).
//res (response): usado para enviar a resposta ao cliente.
//res.send(...): envia uma mensagem de texto como resposta HTTP. Essa mensagem aparecerá no
//navegador quando o usuário acessar o servidor pela rota /.
app.get('/', function (req, res) {
  res.send('Seu Nome e Sobrenome #BoraParaPrática!!!');
});

//===== Bloco do Servidor Express do Node.JS =====

//Iniciando o Servidor (Porta padrão 3000 utilizada pela aplicação do Node.JS)
//app.listen(3000, ...): inicia o servidor na porta 3000, que será usada para aceitar conexões HTTP.
//função callback exibe uma mensagem no terminal para indicar que o servidor está ativo.
//Porta 3000 é comumente usada para testes locais em projetos Node.js.
app.listen(3000, function() {
  console.log('Aplicativo de exemplo ouvindo na porta 3000');
});
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>
```

## 07_ Executando o Projeto Simples do Node.JS utilizando o Express no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** existe também o comando: __`bg`__ que faz a mesma coisa do caractere: *& (E-Comercial)* colocando a aplicação em **background** e liberando o terminal.

```bash
#opção do comando &: background
node index.js &
```

## 08_ Verificando a Porta de Conexão do Node.JS Express no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** no Ubuntu Server as Regras de Firewall utilizando o comando: __` iptables `__ ou: __` ufw `__ está desabilitado por padrão **(INACTIVE)**, caso você tenha habilitado algum recurso de Firewall é necessário fazer a liberação do *Fluxo de Entrada (INPUT), Porta (PORT) e Protocolo (PROTOCOL) TCP* do Serviço corresponde nas tabelas do firewall e testar a conexão.

```bash
#verificando a porta padrão TCP-3000 do Node.JS Express
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'3000' -sTCP:LISTEN
```

## 09_ Testando e acessando o Projeto Simples do Node.JS via Terminal e Navegador

**OBSERVAÇÃO:** Tabela de referência dos Códigos do HTTP mais comuns para tester no Terminal ou no Navegador.

| Código | Significado                                     |
| ------ | ----------------------------------------------- |
| 200    | OK (Sucesso)                                    |
| 301    | Moved Permanently (Redirecionamento permanente) |
| 302    | Found (Redirecionamento temporário)             |
| 400    | Bad Request (solicitação malformada)            |
| 403    | Forbidden (Acesso negado)                       |
| 404    | Not Found (Não encontrado)                      |
| 500    | Internal Server Error                           |

```bash
#testando o acesso as páginas do Node.JS (NÃO COMENTADO NO VÍDEO)
#opção do comando curl: -I (Fetch the headers only)
curl -I http://127.0.0.1:19999/
```
```bash
#utilizar os navegadores para testar o Node.JS
firefox ou google chrome: http://endereço_ipv4_ubuntuserver:3000
```

## 10_ Finalizando a Execução do Projeto Simples do Node.JS Express no Ubuntu Server
```bash
#verificando os processos em segundo plano (background)
jobs

#trazendo o processo em segundo plano (background) do Node.JS para o primeiro plano (foreground)
fg

#finalizando o processo do Node.JS Express
Ctrl + C
```

**OBSERVAÇÃO IMPORTANTE:** caso você não consiga trazer os processos que estão em *Segundo Plano (Background)* para o *Primeiro Plano (Foreground)* para finalizar o processo, você pode utilizar o comando: *ps -u* e na coluna: **PID** finalizar o processo com o comando: *kill -9 PID*

```bash
#exemplo de finalizar o processo utilizando o comando ps para descobrir o PID (Process ID)
#opção do comando ps: -u (userlist)
ps -u

#opção do comando kill: -9 (Kill all processes you can kill)
kill -9 PID_ID
```

## 11_ Entendendo a Estrutura do Projeto Simples do Node.JS Express no Ubuntu Server

```bash
#Listando o conteúdo do diretório do projeto do Node.JS
#opção do comando ls: -l (long listing), -h (human-readable), -a (all files)
ls -lha
```

| Arquivo/Diretório | Descrição |
|-------------------|-----------|
| index.js | Arquivo principal do servidor e serviço do Node.js |
| package.json | Arquivo de configuração do projeto Node.js |
| package-lock.json | Arquivo das versões dos pacotes do projeto Node.js |
| node_modules/ | Diretório dos pacotes e dependências do projeto Node.js |

```bash
#Verificando a Árvore do Projeto do Node.JS
#opção do comando tree: s (Print the size of each file in bytes along with the name), 
#h (Print the size of each file but in a more human readable way), --sort=size (Sort 
#the output by type instead of name) --du (For each directory report its size as the 
#accumulation of sizes of all its files and sub-directories)
tree -sh --sort=size --du
```

========================================DESAFIOS=========================================

**#12_ DESAFIO-01:** FAZER A CRIAÇÃO DE UM NOVO PROJETO DO NODE.JS EXPRESS, CRIAR UM DIRETÓRIO COM: __`seu_nome`__ (TUDO EM MINÚSCULO) NA RAIZ DO PERFIL DO SEU USUÁRIO: __`/home/seu_usuário`__, CRIAR UMA PÁGINA DENTRO DO SEU DIRETÓRIO CHAMADA: __`seunome.js`__ (TUDO EM MINÚSCULO), MUDAR A MENSAGEM NO BROWSER PARA: __`Meu novo projeto em Node.JS - Seu Nome e Sobrenome`__, MUDAR A PORTA DO PROJETO PARA __`3030`__ , ADICIONAR MAIS RECURSOS DO NODE.JS NO SEU PROJETO (VEJA O SITE W3SCHOOLS), COMO POR EXEMPLO: *Data e Hora Dinâmica*, ADICIONAR __`02 (DUAS) IMAGENS`__ E FAZER OS **HYPER LINKS** PARA ACESSAR O CMS WORDPRESS.

**#13_ DESAFIO-02:** DEIXAR OS DOIS PROJETOS DO NODE.JS RODANDO EM SEGUNDO PLANO (BACKGROUND), NO WORDPRESS CRIAR OS HYPER LINKS PARA OS PROJETOS SEGUINDO O MESMO PROCEDIMENTO DO *DESAFIO-03 DO WORDPRESS* PARA AS PÁGINAS *HTML E PHP*, NÃO ESQUEÇA DE TESTAR O ACESSO.

=========================================================================================

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO NODEJS SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do Node.JS realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/05-nodejs.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafionodejs #desafiojavascripe
