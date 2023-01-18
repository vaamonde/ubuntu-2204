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
Data de atualização: 18/01/2023<br>
Versão: 0.01<br>
Testado e homologado no GNU/Linux Ubuntu Server 22.04.1 LTS

Release Notes Ubuntu Server 20.04.4: https://discourse.ubuntu.com/t/jammy-jellyfish-release-notes/24668<br>
Ubuntu Advantage for Infrastructure: https://ubuntu.com/advantage<br>
Ciclo de Lançamento do Ubuntu Server: https://ubuntu.com/about/release-cycle

Primeira etapa: Download da ISO do Ubuntu Server 20.04.4 LTS

01. Link de download do Ubuntu Server: https://releases.ubuntu.com/22.04/
02. Versão do download Ubuntu Server: ubuntu-22.04.1-live-server-amd64.iso (09/08/2022)
03. Arquitetura do Ubuntu Server: AMD64 (64-bit)
04. Tipo de instalação: DVD Image (ISO) Installer

Segunda etapa: Criação e Configuração da Máquina Virtual no Oracle VirtualBOX<br>
Link de download do Oracle VirtualBOX: https://www.virtualbox.org/wiki/Downloads

	_ 01. Ferramentas;
	_		Novo
	_ 02. Nome e Sistema Operacional:
	_		Nome: UbuntuServer
	_		Pasta da Máquina: (deixar o padrão do sistema)
	_		Tipo: Linux
	_		Versão: Ubuntu (64-bit)
	_	<Próximo>
	_ 03. Tamanho da memória:
	_		Tamanho: 4096MB
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
	_		Tamanho do disco: 50GB
	_	<Criar>
	_ 08. Configurações da Máquina Virtual UbuntuServer (Propriedades/Configurações)
	_	Sistema
	_		Placa Mãe
	_			Recurso Estendidos
	_				Relógio da máquina retorno hora UTC: Desabilitar
	_		Processador
	_			Processadores: 02 CPUs
	_			Recursos Estendidos: Habilitar PAE/NX
	_								 Habilitar VT-x/AMD-v Aninhado 
	_	Monitor
	_		Tela
	_			Memória de Vídeo: 128MB
	_			Aceleração: Habilitar Aceleração 3D
	_	Áudio
	_		Habilitar Áudio: Desabilitar
	_	Rede
	_		Adaptador 1 (LAN)
	_			Habilitar Placa de Rede
	_			Conectado a: Rede Interna
	_			Nome: (deixar o padrão do sistema: intnet)
	_	<OK>

Terceira etapa: Iniciando a Instalação do Ubuntu Server 22.04.1 LTS (localizar a ISO)

	_ 01. VM  UbuntuServer: Iniciar
	_ 02. Selecione o disco rígido de boot
	_ 		Selecionar um arquivo de disco óptico virtual
	_ 03. Seletor de Discos Ópticos
	_ 		Acrescentar
	_ 		Selecione o arquivo de disco óptico virtual: ubuntu-22.04.1-live-server-amd64.iso
	_ 	<Abrir>
	_ 04. Not Attached
	_ 		Selecionar: ubuntu-22.04.1-live-server-amd64.iso
	_ 	<Escolher>
	_ <Iniciar>

Quarta etapa: Instalação e Configuração do Ubuntu Server 22.04.1 LTS<br>
Instalação do Ubuntu Server: https://ubuntu.com/server/docs/installation

	_ 01. Use UP, DOWN and ENTER keys to select your language
	_ 		English - <Enter>
	_ 02. Installer update available
	_		<Continue without updating>
	_ 03. Keyboard configuration
	_ 		Layout: [English (US)] ou [Portuguese (Brazil)]
	_ 		Variant: [English (US)] ou [Portuguese (Brazil)]
	_ 	<Done>
	_ 04. Network connections
	_ 		enp0s3 eth <Enter>
	_ 			Edit IPv4 <Enter>
	_ 				IPv4 Method: Manual <Enter>
	_ 					Subnet: 172.16.1.0/24 <Tab>
	_ 					Address: 172.16.1.20 <Tab>
	_ 					Gateway: 172.16.1.254 <Tab>
	_ 					Name servers: 172.16.1.254 <Tab>
	_ 					Search domains: pti.intra
	_ 				<Save>
	_ 	<Done>
	_ 05. Configure proxy
	_	<Done>
	_ 06. Configure Ubuntu archive mirror
			Mirror: http://us.archive.ubuntu.com/ubuntu <-- resolve o problema de lentidão -->
		<Done>
	_ 07. Guided storage configuration
	_	(X) Use an entire disk
	_		[VBOX_HARDISK local disk 50.000G]
	_		(X) Set up this disk as an LVM group
	_	<Done>
	_ 08. Storage configuration
	_	USED DEVICES
	_		ubuntu-lv	new, to be formatted as ext4, mounted at /	24.498G 
	_			Edit
	_				Name: ubuntu-lv
	_				Size: 48.996G
	_				Format: ext4
	_				Mount: /
	_			<Save>
	_	<Done>
	_	Confirm destructive action
	_		<Continue>
	_ 09. Profile setup
	_ 		Your name: Robson Vaamonde <Tab>
	_ 		Your server's name: ptispo01ws01 <Tab>
	_ 		Pick a username: vaamonde <Tab>
	_ 		Choose a passwords: pti@2018 <Tab>
	_ 		Confirm your passwords: pti@2018
	_ 	<Done>
	_ 10. Enable Ubuntu Advantage
	_	<Done>
	_ 11. SSH Setup
	_ 		Install OpenSSH server: ON <Space>
	_ 		Import SSH identity: No <Tab>
	_ 	<Done>
	_ 12. Featured Server Snaps
	_	<Done>
	_ 13. Install complete!
	_	<Reboot Now>
	_ 14. Please remove the installation medium, then press ENTER - <Enter>