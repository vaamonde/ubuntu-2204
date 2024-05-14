#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 16/04/2024<br>
#Data de atualização: 14/05/2024<br>
#Versão: 0.12<br>

OBSERVAÇÃO IMPORTANTE: COMENTAR NO VÍDEO DO VISUAL STUDIO SE VOCÊ CONSEGUIU INTEGRAR COM 
A SEGUINTE FRASE: Integração do Visual Studio realizado com sucesso!!! #BoraParaPrática

COMPARTILHAR O SELO DA IMPLEMENTAÇÃO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM)
MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DA IMPLEMENTAÇÃO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/14-vscode.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver 
#ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiovscode #integracaovscode

Conteúdo estudado nessa implementação:<br>
#01_ Instalando as Dependências do Microsoft Visual Studio Code no Linux Mint<br>
#02_ Download e Instalação do Microsoft Visual Studio Code no Linux Mint e Windows<br>
#03_ Instalando a Extensão do Remote SSH e Explorer no Linux Mint e Windows<br>
#04_ Habilitando o Suporte ao Encaminhamento de Portas no OpenSSH Server<br>
#05_ Configurando a Extensão do Remote SSH no Linux Mint e Windows<br>


Site Oficial do Visual Studio Code: https://code.visualstudio.com/<br>
Site Oficial do Visual Studio Code Web: https://vscode.dev/<br>
Link do Marketplace: https://marketplace.visualstudio.com/VSCode

O QUE É E PARA QUE SERVER O VSCODE: O Visual Studio Code é um editor de código-fonte desenvolvido<br>
pela Microsoft para Windows, Linux e macOS. Ele inclui suporte para depuração, controle de<br> 
versionamento Git incorporado, realce de sintaxe, complementação inteligente de código, snippets e<br> 
refatoração de código. 

[![Visual Studio](http://img.youtube.com/vi//0.jpg)]( "Visual Studio")

Link da vídeo aula: 

#01_ Instalando as Dependências do Microsoft Visual Studio Code VSCode no Linux Mint<br>

	#instalando as dependências do VSCode no Linux Mint
	sudo apt update
	sudo apt install vim git python2 python3 cloc

#02_ Download e Instalação do Microsoft Visual Studio Code VSCode no Linux Mint e Windows<br>

	#link de download no Linux Mint
	https://code.visualstudio.com/download
		Versão: .deb (Debian, Ubuntu 64 Bits)
			Salvar aquivo

	#link de download no Microsoft Windows
	https://code.visualstudio.com/download
		Versão: Windows (Windows 10, 11)
			Salvar aquivo

#03_ Instalando a Extensão do Remote SSH e Explorer no Linux Mint e Windows<br>

	#adicionado as extensões do Remote SSH e Explorer no VSCode
	vscode
		Extensões
			Pesquisar:
				Remote - SSH (Instalar)
				Remote Explorer (Instalar)

#04_ Habilitando o Suporte ao Encaminhamento de Portas no OpenSSH Server<br>

	#editando o arquivo de configuração do OpenSSH Server
	sudo vim /etc/ssh/sshd_config
	INSERT

		#comentar as variáveis: ClientAliveInterval e ClientAliveCountMax a partir da linha: 104
		#ClientAliveInterval 1800
		#ClientAliveCountMax 3

		#habilitar o recurso na variável: AllowTcpForwarding de: no para: yes na linha: 138
		AllowTcpForwarding yes
	
	#salvar e sair do arquivo
	ESC SHIFT :x <Enter>

	#testando o arquivo de configuração do OpenSSH SERVER
	#opção do comando sshd: -t (text mode check configuration)
	sudo sshd -t

	#reiniciar o serviço do OpenSSH Server
	sudo systemctl restart ssh
	sudo systemctl status ssh

	#analisando os Log's e mensagens de erro do Servidor do OpenSSH (NÃO COMENTADO NO VÍDEO)
	#opção do comando journalctl: -t (identifier), x (catalog), e (pager-end), u (unit)
	sudo journalctl -t sshd
	sudo journalctl -xeu ssh

#05_ Configurando a Extensão do Remote SSH no Linux Mint e Windows<br>

	#configurando a integração com o Ubuntu Server no Linux Mint
	vscode
		Extensões
			Search: Remote SSH <Install>
	
		Remote Explorer
			Remotes (Tunnels/SSH)
				SSH: +(New Remote)
					Enter SSH Connection Command: vaamonde@172.16.1.20
					Select SSH configuration file to update: /home/SEU_USUÁRIO/.ssh/config
					<Refresh>

				172.16.1.20 (Connect in Current Windows)
					Select the platform of the remote host: Linux
					Enter password for: vaamonde@172.16.1.20: pti@201

		<Open Folder>
			nodejs-hello <OK>
				Enter password for: vaamonde@172.16.1.20: pti@2018
				(YES) Trust the authors of all files in the parent folder

	#configurando a integração com o Ubuntu Server no Windows 10
	vscode
		Extensões
			Search: Remote SSH <Install>

		Remote Explorer
			Remotes (Tunnels/SSH)
				SSH: +(New Remote)
					Enter SSH Connection Command: vaamonde@172.16.1.20
					Select SSH configuration file to update: C:\Users\SEU_USUÁRIO\.ssh\config
					<Refresh>
				172.16.1.20 (Connect in Current Windows)
					Select the platform of the remote host: Linux
					Enter password for: vaamonde@172.16.1.20: pti@2018

		<Open Folder>
			nodejs-hello <OK>
				Enter password for: vaamonde@172.16.1.20: pti@2018
				(YES) Trust the authors of all files in the parent folder

#05_ Fazendo o Fork de um Projeto de Site do Github e Clonando no Ubuntu Server<br>

	Conhecendo o Projeto do Aluno: João Vitor Andrade (Técnico em Informática SENAC-SP)
	LinkedIn: https://www.linkedin.com/in/jo%C3%A3o-vitor-andrade-289216271/
	Github: https://github.com/andradejao/
	Repositório: https://github.com/andradejao/outlawgames
	Site: https://andradejao.github.io/outlawgames/

	#fazendo um Fork (garfada) do Projeto do João Vitor Andrade
	Repositório: https://github.com/andradejao/outlawgames
		Clique em: Fork
	
	#acessando o diretório Raiz do Apache2 no Ubuntu Server
	cd /var/www/html

	#clonando o projeto do Github no Ubuntu Server
	sudo git clone https://github.com/vaamonde/outlawgames

	#alterando as permissões dos diretórios e arquivos
	#opção do comando chown: -R (recursive), -f (silent), -v (verbose), www-data (user), www-data (group)
	#opção do comando find: . (path), -type d (directory), , type f (file), -exec (execute command)
	#opção do comando chmod: -v (verbose), 2775 (Set-GID=2, Dono=RWX, Grupo=RWS, Outros=R-X)
	#opção do comando chmod: -v (verbose), 2664 (Set-GID=2, Dono=RW-, Grupo=RWS, Outros=R--)
	#opção do comando {} \;: executa comandos em lote e aplica as permissões para cada arquivo/diretório em loop
	sudo chown -Rfv www-data.www-data /var/www/html/outlawgames/
	sudo find /var/www/html/outlawgames/. -type d -exec chmod -v 2775 {} \;
	sudo find /var/www/html/outlawgames/. -type f -exec chmod -v 2664 {} \;

	#testando o site via navegador
	firefox ou google chrome: http://endereço_ipv4_ubuntuserver/outlawgames

=========================================================================================

OBSERVAÇÃO IMPORTANTE: COMENTAR NO VÍDEO DO VISUAL STUDIO SE VOCÊ CONSEGUIU INTEGRAR COM 
A SEGUINTE FRASE: Integração do Visual Studio realizado com sucesso!!! #BoraParaPrática

COMPARTILHAR O SELO DA IMPLEMENTAÇÃO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM)
MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DA IMPLEMENTAÇÃO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/14-vscode.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver 
#ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiovscode #integracaovscode