#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 28/04/2024<br>
#Data de atualização: 28/04/2024<br>
#Versão: 0.01<br>

=============================================
######### 01-openssh.md CHALLENGES ##########
=============================================

#11_ DESAFIO-01: PERMITIR QUE O USUÁRIO: admin SE CONECTE REMOTAMENTE NO SERVIDOR UBUNTU
SERVER VIA SSH UTILIZANDO O POWERSHELL, PUTTY OU TERMINAL NO LINUX.

	#editar o arquivo de configuração do OpenSSH
	sudo vim /etc/ssh/sshd_config +77
	INSERT

		AllowUsers vaamonde admin
		AllowGroups vaamonde admin

	#salvar e sair do arquivo
	ESC SHIFT :x <Enter>

	#reiniciar o serviço do OpenSSH Server
	sudo systemctl restart ssh
	sudo systemctl status ssh

#12_ DESAFIO-02: CRIAR UM USUÁRIO COM O SEU NOME, EXEMPLO: robson (TUDO EM MINÚSCULO),
FAZER O MESMO PROCEDIMENTO PARA ADICIONAR O SEU USUÁRIO AO GRUPO: sudo E PERMITIR QUE O
SEU USUÁRIO ACESSE O SERVIDOR UBUNTU SERVER VIA SSH.

	#criando o usuário Robson
		sudo adduser robson
			New password: pti@2018
			Retype new password: pti@2018
				Full Name []: Robson Vaamonde
				Room Number []: <Enter>
				Work Phone []: <Enter>
				Home Phone []: <Enter>
				Other []: <Enter>
			Is the information correct? [Y/n] y <Enter>
	
	#listando o usuário criado com o comando getent
	sudo getent passwd robson

	#adicionando o usuário Admin ao grupo do SUDO
	sudo usermod -aG sudo robson

	#verificando os grupos do usuário Admin
	sudo groups robson

	#editar o arquivo de configuração do OpenSSH
	sudo vim /etc/ssh/sshd_config +77
	INSERT

		AllowUsers vaamonde admin robson
		AllowGroups vaamonde admin robson

	#salvar e sair do arquivo
	ESC SHIFT :x <Enter>

	#reiniciar o serviço do OpenSSH Server
	sudo systemctl restart ssh
	sudo systemctl status ssh

=========================================================================================
############################ 02-apache2-server.md CHALLENGES ############################
=========================================================================================

#09_ DESAFIO-01: CRIAR UM NOVO DIRETÓRIO NA RAIZ DO APACHE2 EM: /var/www/html COM: seu_nome
(TUDO EM MINÚSCULO) PARA UM NOVO SITE, DENTRO DO SEU DIRETÓRIO CRIAR UM NOVA PÁGINA EM HTML
CHAMADA: index.html (TUDO EM MINÚSCULA), ADICIONAR MAIS OPÇÕES DO HTML (VEJA O SITE W3SCHOOLS)
E COLOCAR 02 (DUAS) IMAGENS NA PÁGINA.

	#acessando o diretório do Apache2 Server
	cd /var/www/html

	#criando o diretório com o seu nome
	sudo mkdir -v robson
	
	#alterando as permissões do diretório de robson
	sudo chmod -Rv 2775 robson/
		
	#alterando o dono e grupo do diretório de robson
	sudo chown -Rv root.www-data robson/
	
	#acessando o diretório robson
	cd robson/

	#criando uma página em HTML com o seu nome
	sudo vim index.html
	INSERT

```html
<!DOCTYPE html>
	<html lang="pt-br">
		<head>
			<title>Nova Página Index HTML do Desafio</title>
			<meta charset="utf-8">
		</head>
		<body>
			<h1>Nova Página Index HTML do Desafio</h1>
			Autor: Robson Vaamonde<br>
			Editado por: Robson Vaamonde<br>
			Linkedin: <a href="https://www.linkedin.com/in/robson-vaamonde-0b029028/">Robson Vaamonde</a><br>
			Site: <a href="http://procedimentosemti.com.br/">procedimentosemti.com.br</a><br>
			Facebook: <a href="https://www.facebook.com/ProcedimentosEmTI"> Procedimentos Em TI</a><br>
			Facebook: <a href="https://www.facebook.com/BoraParaPratica">Bora Para Pratica</a><br>
			Instagram: <a href="https://www.instagram.com/procedimentoem/?hl=pt-br">Procedimentos Em TI</a><br>
			YouTube: <a href="https://www.youtube.com/BoraParaPratica">Bora Para Pratica</a><br>
			<h1>Novos Recursos do HTML</h1>
			<!-- Adicionando os novos recursos do HTML -->
				<img src="https://hermes.dio.me/assets/articles/beea2f49-fb44-4778-8cb0-69101a5113ab.png" alt="COMO FUNCIONA O HTML" width="600" height="400"><br>
				<img src="https://hermes.dio.me/assets/articles/50a9f5e9-1ac3-40d9-8559-def8b46e981f.png" alt="ESTRUTURA BÁSICA" width="600" height="400"><br>
				<a href="http://172.16.1.20/robson/robson.php">Página em PHP</a>
		</body>
	</html>
```
	#salvar e sair do arquivo
	ESC SHIFT :x <Enter>

#10_ DESAFIO-02: NO SEU NOVO DIRETÓRIO CRIAR UM ARQUIVO EM PHP CHAMADO: seunome.php, ADICIONAR
MAIS OPÇÕES DO PHP (VEJA O SITE W3SCHOOLS) TESTAR NO SEU NAVEGADOR. DICA: FAZER O HYPERLINK
DAS PÁGINAS: index.html COM A PÁGINA PHP seunome.php PARA FACILITAR O ACESSO E COMEÇAR UM 
PROJETO DE SITE.

	#criando uma página em PHP com o seu nome
	sudo vim robson.php
	INSERT

```php
<!DOCTYPE html>
	<html lang="pt-br">
		<head>
			<title>Nova Página em PHP do Desafio</title>
			<meta charset="utf-8">
		</head>
		<body>
			<h1>Nova Página em PHP do Desafio</h1>
			Autor: Robson Vaamonde<br>
			Editado por: Robson Vaamonde<br>
			Linkedin: <a href="https://www.linkedin.com/in/robson-vaamonde-0b029028/">Robson Vaamonde</a><br>
			Site: <a href="http://procedimentosemti.com.br/">procedimentosemti.com.br</a><br>
			Facebook: <a href="https://www.facebook.com/ProcedimentosEmTI"> Procedimentos Em TI</a><br>
			Facebook: <a href="https://www.facebook.com/BoraParaPratica">Bora Para Pratica</a><br>
			Instagram: <a href="https://www.instagram.com/procedimentoem/?hl=pt-br">Procedimentos Em TI</a><br>
			YouTube: <a href="https://www.youtube.com/BoraParaPratica">Bora Para Pratica</a><br>
			<h1>Novos Recursos do PHP</h1>
			<!-- Adicionando os novos recursos do PHP -->
			<?php
				// Obtém a data atual
				$dataAtual = date('d/m/Y');
				echo "Data atual: " . $dataAtual . "<br>";

				// Obtém a hora atual
				$horaAtual = date('H:i:s');
				echo "Hora atual: " . $horaAtual . "<br>";

				// Obtém a data e hora atual combinadas
				$dataHoraAtual = date('d/m/Y H:i:s');
				echo "Data e hora atual: " . $dataHoraAtual . "<br>";
			?>
			<a href="http://172.16.1.20/robson/">Página em HTML</a>
		</body>
	</html>
```

	#salvar e sair do arquivo
	ESC SHIFT :x <Enter>

#11_ DESAFIO-03: ADICIONAR O USUÁRIO: admin E O USUÁRIO: seu_usuário CRIADOS NO SISTEMA NO 
GRUPO DO APACHE2, TESTAR AS PERMISSÕES DE ACESSO NOS DIRETÓRIOS DO APACHE2 E NOS DIRETÓRIOS 
DOS SITES CRIADOS.

	#adicionando o usuário Admin e Robson ao grupo do Apache2
	sudo usermod -aG www-data admin
	sudo usermod -aG www-data robson