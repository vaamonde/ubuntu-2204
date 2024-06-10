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
Data de atualização: 10/06/2024<br>
Versão: 0.12<br>
Testado e homologado no GNU/Linux Ubuntu Server 22.04.x LTS

Release Notes Ubuntu Server 22.04.x: https://discourse.ubuntu.com/t/jammy-jellyfish-release-notes/24668<br>
Ubuntu Advantage for Infrastructure: https://ubuntu.com/advantage<br>
Ciclo de Lançamento do Ubuntu Server: https://ubuntu.com/about/release-cycle<br>
Releases All Ubuntu Server: https://wiki.ubuntu.com/Releases

[![Instalação Ubuntu Server](http://img.youtube.com/vi/qnMol8-wvq8/0.jpg)](https://www.youtube.com/watch?v=qnMol8-wvq8 "Instalação Ubuntu Server")

Link da vídeo aula: https://www.youtube.com/watch?v=qnMol8-wvq8

#01_ Primeira etapa: Download da ISO do Ubuntu Server 22.04.x LTS

A) Link de download do Ubuntu Server: https://releases.ubuntu.com/22.04/<br>
B) Versão do download Ubuntu Server: ubuntu-22.04.4-live-server-amd64.iso (Link atualizado em 16/02/2024)<br>
C) Arquitetura do Ubuntu Server: AMD64 (64-bit)<br>
D) Tipo de instalação: DVD Image (ISO) Installer

#02_ Segunda etapa: Criação da Máquina Virtual no Oracle VirtualBOX<br>

A) Link de download do Oracle VirtualBOX: https://www.virtualbox.org/wiki/Downloads<br>
B) Vídeo de instalação do VirtualBOX no Linux Mint: https://www.youtube.com/watch?v=yTihvAaaxpU<br>
C) Atualização do VirtualBOX no Linux Mint: https://www.youtube.com/watch?v=DU47PLFSxpA

	Oracle VirtualBOX.
	
	01. Ferramentas;
	<Novo>

	02. Nome e Sistema Operacional:
		Nome: UbuntuWebserver
		Pasta da Máquina: #PATH_PADRÃO\UbuntuWebserver (altere conforme a sua necessidade)
		Tipo: Linux
		Versão: Ubuntu (64-bit)
	<Próximo>

	03. Tamanho da memória:
		Tamanho: 4096MB (altere conforme a sua necessidade, mínimo 2048MB)
	<Próximo>

	04. Disco Rígido:
		Criar um novo disco rígido virtual agora
	<Criar>

	05. Tipo de arquivo de disco rígido
		VDI (VirtualBOX Disk Image)
	<Próximo>

	06. Armazenamento em disco rígido físico
		Dinamicamente alocado
	<Próximo>

	07. Localização e tamanho do arquivo
		Localização: (deixar o padrão do sistema)
		Tamanho do disco: 50GB (altere conforme a sua necessidade, mínimo 50GB)
	<Criar>

#03_ Terceira Etapa: Configurações da Máquina Virtual UbuntuWebserver

	Oracle VirtualBOX
	
	01. Selecionar a Maquina Virtual: UbuntuWebserver
		Propriedades/Configurações

	02. Sistema
		Placa Mãe
			Recurso Estendidos
				Relógio da máquina retorno hora UTC: Off (Desabilitar)
		Processador
			Processadores: 02 CPUs
			Recursos Estendidos: Habilitar PAE/NX
			                     Habilitar VT-x/AMD-v Aninhado 

	03. Monitor
		Tela (S)
			Memória de Vídeo: 128MB
			Aceleração: On (Habilitar) Habilitar Aceleração 3D

	04. Áudio
		Habilitar Áudio: Off (Desabilitar)

	05. Rede
		Adaptador 1 (LAN)
			Habilitar Placa de Rede: On (Habilitar)
			Conectado a: Placa em modo Bridge
			Nome: Intel(R) Ethernet Connection (Placa de Rede On-Board)
			OBSERVAÇÃO: VERIFIQUE QUAL PLACA DE REDE VOCÊ ESTÁ USANDO NO SEU EQUIPAMENTO
			QUE ESTÁ CONECTADO NA SUA REDE LOCAL, PODE SER PLACA DE REDE CABEADA OU PLACA
			SEM-FIO (RECOMENDO SEMPRE PLACA DE REDE CABEADA, MELHOR DESEMPENHO).
	<OK>

#04_ Quarta Etapa: Iniciando a Instalação do Ubuntu Server 22.04.x LTS (localizar a ISO)

	01. VM UbuntuWebserver: 
		<Iniciar>
	
	02. Selecione o disco rígido de boot
		Selecionar um arquivo de disco óptico virtual
	
	03. Seletor de Discos Ópticos
		Acrescentar
		Selecione o arquivo de disco óptico virtual: ubuntu-22.04.4-live-server-amd64.iso
	<Abrir>
	
	04. Not Attached
		Selecionar: ubuntu-22.04.4-live-server-amd64.iso
	<Escolher>
	<Iniciar>

#05 Quinta Etapa: Instalação e Configuração do Ubuntu Server 22.04.x LTS<br>

A) Instalação do Ubuntu Server: https://ubuntu.com/server/docs/installation

	01. *Try or Install Ubuntu Server
	<Enter>

	02. Use UP, DOWN and ENTER keys to select your language
		English (recomendado utilizar sempre a opção em Inglês)
	<Enter>
	
	03. Installer update available
		<Continue without updating>
	
	04. Keyboard configuration
		Layout: [English (US)] ou [Portuguese (Brazil)] (altere conforme a sua necessidade)
		Variant: [English (US)] ou [Portuguese (Brazil)] (altere conforme a sua necessidade)
	<Done>

	05. Choose type of install
		(X) Ubuntu Server
	<Done>

	06. Network connections
		enp0s3 eth (o nome lógico da placa de rede muda de equipamento para equipamento)
		DHCPv4 172.16.1.XXX/24 (altere conforme a sua necessidade)
		OBSERVAÇÃO IMPORTANTE: VERIFICAR O ENDEREÇO IPv4 QUE VOCÊ ESTÁ USANDO NA SUA REDE 
		INTERNA PARA ADAPTAR NO SEU CENÁRIO.
	<Done>
	
	07. Configure proxy
	<Done>
	
	08. Configure Ubuntu archive mirror
		Mirror: http://br.archive.ubuntu.com/ubuntu
		OBSERVAÇÃO IMPORTANTE: CASO QUEIRA TROCAR O MIRROR DO UBUNTU DO BRASIL PARA O
		OFICIAL NO US, SUBSTITUA A URL DE: http://br.archive.ubuntu.com/ubuntu PARA A
		URL: http://us.archive.ubuntu.com/ubuntu
	<Done>

	09. Guided storage configuration
		(X) Use an entire disk
			[VBOX_HARDISK local disk 50.000G]
			(X) Set up this disk as an LVM group
	<Done>
	
	10. Storage configuration
		USED DEVICES
			ubuntu-lv	new, to be formatted as ext4, mounted at /	24G <Enter>
				Edit <Enter>
					Name: ubuntu-lv
					Size (max 47.996G): 47.996G
					Format: ext4
					Mount: /
				<Save>
	<Done>
		Confirm destructive action
	<Continue>
	
	11. Profile setup
		OBSERVAÇÃO: ALTERAR OS DADOS DO NOME DO SERVIDOR, USUÁRIO E SENHA PARA O SEU CENÁRIO.
		Your name: Seu Nome e Sobrenome <Tab>
		Your server's name: wsvaamonde <Tab>
		Pick a username: vaamonde <Tab>
		Choose a passwords: pti@2018 <Tab>
		Confirm your passwords: pti@2018
	<Done>
	
	12. Upgrade to Ubuntu Pro
		(X) Skip for now
	<Continue>
	
	13. SSH Setup
		Install OpenSSH server: ON (Habilitar) <Space>
		Import SSH identity: No
	<Done>
	
	14. Featured Server Snaps
	<Done>
	
	15. Install complete!
	<Reboot Now>
	
	16. Please remove the installation medium, then press ENTER:
	<Enter>

#06_ Sexta Etapa: Acessando o Ubuntu Server pela primeira vez<br>

AGUARDAR A INICIALIZAÇÃO TOTAL DO UBUNTU SERVER, NO FINAL SERÁ GERADO VÁRIAS CHAVES 
DE AUTENTICAÇÃO DO SSH SERVER, PRESSIONE <ENTER> PARA APARECER A TELA DE LOGIN.

	01. Tela de Login do Ubuntu Server
		wsvaamonde login: vaamonde <Enter> (altere para o seu usuário)
		Password: pti@2018 <Enter> (altere para o seu usuário)