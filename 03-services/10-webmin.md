#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 20/04/2023<br>
#Data de atualização: 23/04/2023<br>
#Versão: 0.03<br>

OBSERVAÇÃO IMPORTANTE: COMENTAR NO VÍDEO DO WEBMIN SE VOCÊ CONSEGUIU FAZER O DESAFIO COM 
A SEGUINTE FRASE: Desafio do Webmin realizado com sucesso!!! #BoraParaPrática

Site Oficial do Webmin: https://webmin.com/<br>

O Webmin é um painel de controle de gerenciamento de servidor baseado na web para sistemas 
operacionais do tipo Unix ou Linux, facilitando a administração e gestão dos servidores via
navegador, não precisando de conhecimentos avanças em Bash/Shell.

#01_ Instalando as Dependências do Webmin<br>

	#atualizando as lista do apt
	sudo apt update

	#instalando as dependências do Webmin
	sudo apt install perl libnet-ssleay-perl openssl libauthen-pam-perl libpam-runtime \
	libio-pty-perl apt-show-versions python2 python3 unzip apt-transport-https \
	software-properties-common

#02_ Adicionando o Repositório do Webmin no Ubuntu Server<br>

	#opção do comando curl: -o (output file)
	curl -o setup-repos.sh https://raw.githubusercontent.com/webmin/webmin/master/setup-repos.sh

	#executando o script de adicionar o repositório
	sudo sh setup-repos.sh

#03_ Instalando o Webmin<br>

	#atualizando as lista do apt com o novo repositório do Webmin
	sudo apt update

	#instalando o Webmin
	sudo apt install webmin
		Setup Webmin official repository? (y/N) y <Enter>

#04_ Habilitando o Serviço do Webmin<br>

	#habilitando o serviço do Webmin
	systemctl daemon-reload
	systemctl enable webmin
	systemctl start webmin

#05_ Verificando o Serviço e Versão do Webmin<br>

	#verificando o serviço do Webmin
	sudo systemctl status webmin
	sudo systemctl restart webmin
	sudo systemctl stop webmin
	sudo systemctl start webmin

	#verificando a versão do Webmin
	#opção do comando grep: -i (ignore-case)
	#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
	sudo apt list --installed | grep -i webmin 

#06_ Verificando a Porta de Conexão do Webmin<br>

	#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
	sudo lsof -nP -iTCP:'10000' -sTCP:LISTEN

#07_ Localização dos diretórios principais do Webmin<br>

	/var/webmin/*  <-- Diretório dos arquivos de Log's do serviço do Webmin

#08_ Testando o Webmin no navegador<br>

	firefox ou google chrome: https://endereço_ipv4_ubuntuserver:10000

	Username: vaamonde
	Password: pti@2018 
	<Sign In>

#09_ Configurações Básicas do Webmin<br>

	#Atualizando o Módulos de Serviços do Web
	Webmin
		Refresh Modules

	#Alterando a Linguagem do Webmin
	Webmin
		Webmin Configuration
			Language and Locale
				Lannguage: português (Brasil)
			<Change Language>
	
	#Alterando o Tema para Night/Black do Webmin
	Webmin
		Ícone: Day/night mode toggle (Alt + L)

#10_ DESAFIO: FAZER A INSTALAÇÃO E CONFIGURAÇÃO DO SOFTWARE COCKPIT NO UBUNTU SERVER,
ANALISAR AS DIFERENÇAS ENTRE O WEBMIN E O COCKPIT.

OBSERVAÇÃO IMPORTANTE: COMENTAR NO VÍDEO DO WEBMIN SE VOCÊ CONSEGUIU FAZER O DESAFIO COM 
A SEGUINTE FRASE: Desafio do Webmin realizado com sucesso!!! #BoraParaPrática