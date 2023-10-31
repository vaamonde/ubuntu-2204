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
Data de atualização: 31/10/2023<br>
Versão: 0.09<br>
Testado e homologado no GNU/Linux Ubuntu Server 22.04.x LTS

Release Notes Ubuntu Server 22.04.x: https://discourse.ubuntu.com/t/jammy-jellyfish-release-notes/24668<br>
Ubuntu Advantage for Infrastructure: https://ubuntu.com/advantage<br>
Ciclo de Lançamento do Ubuntu Server: https://ubuntu.com/about/release-cycle<br>
Releases All Ubuntu Server: https://wiki.ubuntu.com/Releases

Primeira etapa: Download da ISO do Ubuntu Server 22.04.x LTS

01. Link de download do Ubuntu Server: https://releases.ubuntu.com/22.04/
02. Versão do download Ubuntu Server: ubuntu-22.04.3-live-server-amd64.iso (10/08/2023)
03. Arquitetura do Ubuntu Server: AMD64 (64-bit)
04. Tipo de instalação: DVD Image (ISO) Installer

Segunda etapa: Criação e Configuração da Máquina Virtual no Oracle VirtualBOX<br>
Link de download do Oracle VirtualBOX: https://www.virtualbox.org/wiki/Downloads<br>
Vídeo de instalação do VirtualBOX no Linux Mint: https://www.youtube.com/watch?v=yTihvAaaxpU<br>
Atualização do VirtualBOX no Linux Mint: https://www.youtube.com/watch?v=DU47PLFSxpA

	_ 01. Ferramentas;
	_	<Novo>

	_ 02. Nome e Sistema Operacional:
	_		Nome: UbuntuWebserver
	_		Pasta da Máquina: #PATH_PADRÃO\UbuntuWebserver (altere conforme a sua necessidade)
	_		Tipo: Linux
	_		Versão: Ubuntu (64-bit)
	_	<Próximo>

	_ 03. Tamanho da memória:
	_		Tamanho: 4096MB (altere conforme a sua necessidade, mínimo 2048MB)
	_	<Próximo>

	_ 04. Disco Rígido:
	_		Criar um novo disco rígido virtual agora
	_	<Criar>

	_ 05. Tipo de arquivo de disco rígido
	_		VDI (VirtualBOX Disk Image)
	_	<Próximo>

	_ 06. Armazenamento em disco rígido físico
	_		Dinamicamente alocado
	_	<Próximo>

	_ 07. Localização e tamanho do arquivo
	_		Localização: (deixar o padrão do sistema)
	_		Tamanho do disco: 50GB (altere conforme a sua necessidade, mínimo 50GB)
	_	<Criar>

	_ 08. Configurações da Máquina Virtual UbuntuWebserver (Propriedades/Configurações)
	_	Sistema
	_		Placa Mãe
	_			Recurso Estendidos
	_				Relógio da máquina retorno hora UTC: Off (Desabilitar)
	_		Processador
	_			Processadores: 02 CPUs
	_			Recursos Estendidos: Habilitar PAE/NX
	_			                     Habilitar VT-x/AMD-v Aninhado 
	_	Monitor
	_		Tela (S)
	_			Memória de Vídeo: 128MB
	_			Aceleração: On (Habilitar) Habilitar Aceleração 3D
	_	Áudio
	_		Habilitar Áudio: Off (Desabilitar)
	_	Rede
	_		Adaptador 1 (LAN)
	_			Habilitar Placa de Rede: On (Habilitar)
	_			Conectado a: Placa em modo Bridge
	_			Nome: Intel(R) Ethernet Connection (Placa de Rede On-Board)
				OBSERVAÇÃO: VERIFIQUE QUAL PLACA DE REDE VOCÊ ESTÁ USANDO NO SEU EQUIPAMENTO
				QUE ESTÁ CONECTADO NA SUA REDE LOCAL, PODE SER PLACA DE REDE CABEADA OU PLACA
				SEM-FIO (RECOMENDO SEMPRE PLACA DE REDE CABEADA, MELHOR DESEMPENHO).
	_	<OK>

Terceira etapa: Iniciando a Instalação do Ubuntu Server 22.04.x LTS (localizar a ISO)

	_ 01. VM UbuntuWebserver: Iniciar
	
	_ 02. Selecione o disco rígido de boot
	_ 		Selecionar um arquivo de disco óptico virtual
	
	_ 03. Seletor de Discos Ópticos
	_ 		Acrescentar
	_ 		Selecione o arquivo de disco óptico virtual: ubuntu-22.04.3-live-server-amd64.iso
	_ 	<Abrir>
	
	_ 04. Not Attached
	_ 		Selecionar: ubuntu-22.04.3-live-server-amd64.iso
	_ 	<Escolher>
	_ <Iniciar>

Quarta etapa: Instalação e Configuração do Ubuntu Server 22.04.x LTS<br>
Instalação do Ubuntu Server: https://ubuntu.com/server/docs/installation

	_ 01. *Try or Install Ubuntu Server
	_	<Enter>

	_ 02. Use UP, DOWN and ENTER keys to select your language
	_ 	English - <Enter> (recomendado utilizar sempre a opção em Inglês)
	
	_ 03. Installer update available
	_	<Continue without updating>
	
	_ 04. Keyboard configuration
	_ 		Layout: [English (US)] ou [Portuguese (Brazil)] (altere conforme a sua necessidade)
	_ 		Variant: [English (US)] ou [Portuguese (Brazil)] (altere conforme a sua necessidade)
	_ 	<Done>

	_ 05. Choose type of install
	_		(X) Ubuntu Server
	_	<Done>

	_ 06. Network connections
	_		enp0s3 eth (o nome lógico da placa de rede muda de equipamento para equipamento)
	_		DHCPv4 172.16.1.XXX/24 (altere conforme a sua necessidade)
			OBSERVAÇÃO IMPORTANTE: VERIFICAR O ENDEREÇO IPv4 QUE VOCÊ ESTÁ USANDO NA SUA
			REDE INTERNA PARA ADAPTAR NO SEU CENÁRIO.
	_ 	<Done>
	
	_ 07. Configure proxy
	_	<Done>
	
	_ 08. Configure Ubuntu archive mirror
			Mirror: http://br.archive.ubuntu.com/ubuntu
			OBSERVAÇÃO IMPORTANTE: CASO QUEIRA TROCAR O MIRROR DO UBUNTU DO BRASIL PARA O
			OFICIAL NO US, SUBSTITUA A URL DE: http://br.archive.ubuntu.com/ubuntu PARA A
			URL: http://us.archive.ubuntu.com/ubuntu
	_	<Done>
	
	_ 09. Guided storage configuration
	_	(X) Use an entire disk
	_		[VBOX_HARDISK local disk 50.000G]
	_		(X) Set up this disk as an LVM group
	_	<Done>
	
	_ 10. Storage configuration
	_	USED DEVICES
	_		ubuntu-lv	new, to be formatted as ext4, mounted at /	24G <Enter>
	_			Edit <Enter>
	_				Name: ubuntu-lv
	_				Size (max 47.996G): 47.996G
	_				Format: ext4
	_				Mount: /
	_			<Save>
	_	<Done>
	_		Confirm destructive action
	_	<Continue>
	
	_ 11. Profile setup
	_ 		Your name: Seu Nome e Sobrenome <Tab>
	_ 		Your server's name: wsvaamonde <Tab>
	_ 		Pick a username: vaamonde <Tab>
	_ 		Choose a passwords: pti@2018 <Tab>
	_ 		Confirm your passwords: pti@2018
			OBSERVAÇÃO: ALTERAR OS DADOS DO NOME DO SERVIDOR, USUÁRIO E SENHA PARA O SEU
			CENÁRIO.
	_ 	<Done>
	
	_ 12. Upgrade to Ubuntu Pro
	_		(X) Skip for now
	_	<Continue>
	
	_ 13. SSH Setup
	_ 		Install OpenSSH server: ON (Habilitar) <Space>
	_ 		Import SSH identity: No
	_ 	<Done>
	
	_ 14. Featured Server Snaps
	_	<Done>
	
	_ 15. Install complete!
	_	<Reboot Now>
	
	_ 16. Please remove the installation medium, then press ENTER:
	_	<Enter>

	AGUARDAR A INICIALIZAÇÃO TOTAL DO UBUNTU SERVER, NO FINAL SERÁ GERADO VÁRIAS CHAVES 
	DE AUTENTICAÇÃO DO SSH SERVER, PRESSIONE <ENTER> PARA APARECER A TELA DE LOGIN.

	_ wsvaamonde login: vaamonde <Enter>
	_ Password: pti@2018 <Enter>