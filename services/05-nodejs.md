#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 16/01/2023<br>
#Data de atualização: 17/01/2023<br>
#Versão: 0.02<br>

Site Oficial do Node.JS: https://nodejs.org/en/<br>
Site Oficial do NPM: https://www.npmjs.com/

Site Oficial do W3C School HTML5: https://www.w3schools.com/html/default.asp<br>
Site Oficial do W3C School CSS: https://www.w3schools.com/css/default.asp<br>
Site Oficial do W3C School JavaScript: https://www.w3schools.com/js/default.asp<br>
Site Oficial do W3C School PHP: https://www.w3schools.com/php/default.asp

#01_ Instalando as Dependências do Node.JS<br>

	#atualizando as listas do Apt
	sudo apt update
	
	#instalando as dependências do Node.JS
	sudo apt install git vim curl gcc g++ make software-properties-common build-essential ca-certificates

#02_ Instalando a Versão LTS do Node.JS<br>

	#opção do comando curl: -f (fail), -s (silent), -S (show-error), -L (location)
	#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
	#opção do comando sudo: -E (preserve-env)
	sudo curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash
	sudo apt install nodejs

#03_ Verificando as Versões do Node.JS e NPM<br>

	#opção do comando node: -v (version)
	#opção do comando npm: -v (version)
	sudo node -v
	sudo npm -v

#04_ Criando um Projeto Simples para Testar o Node.JS<br>

	#opção do comando mkdir: -v (verbose)
	mkdir -v nodejs-hello
	cd nodejs-hello
		
		#opção do comando npm: init (create package.json file), -y (yes)
		#opção do comando npm: install (install package in directory)
		#opção do comando ls: -l (list), -h (human-readable)
		npm init -y
		npm install express
		ls -lh

#05_ Editando o Projeto Simples do Node.JS<br>

	vim index.js

```js
// Criando as variáveis do Express e App do Node.JS
var express = require ('express'); 
var app = express();

// Mensagem que será mostrada no browser (navegador) 
app.get('/', function (req, res) {
	res.send('Robson Vaamonde #BoraParaPrática!!!');
});

// Porta padrão utilizada pela aplicação do Node.JS
app.listen(3000, function() {
	console.log('Aplicativo de exemplo ouvindo na porta 3000');
});
```

#06_ Executando o Projeto Simples do Node.JS<br>

	node index.js &

#07_ Verificando a Porta de Conexão do Node.JS<br>

	#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
	sudo lsof -nP -iTCP:'3000' -sTCP:LISTEN

#08_ Acessando o Projeto Simples do Node.JS<br>

	firefox ou google chrome: http://endereço_ipv4_ubuntuserver:3000

#09_ Finalizando a Execução do Projeto Simples do Node.JS<br>

	jobs
	fg %1
	Ctrl + C