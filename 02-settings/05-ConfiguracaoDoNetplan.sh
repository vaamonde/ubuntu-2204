#Autor: Robson Vaamonde
#Procedimentos em TI: http://procedimentosemti.com.br
#Bora para Prática: http://boraparapratica.com.br
#Robson Vaamonde: http://vaamonde.com.br
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica
#LinkedIn Robson Vaamonde: https://www.linkedin.com/in/robson-vaamonde-0b029028/
#Github Procedimentos em TI: https://github.com/vaamonde
#Data de criação: 18/01/2023
#Data de atualização: 20/04/2023
#Versão: 0.03
#Testado e homologado no GNU/Linux Ubuntu Server 22.04.x LTS
#
# Configuração da Placa de Rede no GNU/Linux Ubuntu 20.04.x LTS UDEV (userspace /dev) 
# responsável por controlar os dispositivos do sistema utilizando o Systemd para nomear 
# as Placas de Rede no Ubuntu - Site: https://netplan.io/examples
#
# Instalando as ferramentas de Interface de Rede (Placa de Rede) no Ubuntu Server
sudo apt update
sudo apt install bridge-utils ifenslave net-tools
#
# Verificando os dispositivos PCI de Placa de Rede instalados
# opções do comando lspci: -v (verbose), -s (show)
# opção do comando grep: -i (ignore-case)
# opção do redirecionador | (pipe): Conecta a saída padrão com a entrada padrão de outro comando
sudo lspci -v | grep -i ethernet
#
# Verificando os detalhes do hardware de Placa de Rede instalada
sudo lshw -class network
#
# Verificando as configurações de endereçamento IP da Placa de Rede instalada
# opção do comando ifconfig: -a (all)
sudo ifconfig -a
sudo ip address show
#
# Verificando as configurações de Gateway (route)
# opção do comando route: -n (number)
sudo route -n
sudo ip route
#
# Verificando as informações de cache dos Servidores DNS (resolução de nomes)
sudo resolvectl
#
# Netplan é um utilitário para configurar facilmente a rede em um sistema Linux. 
# Você simplesmente cria uma descrição YAML das interfaces de rede necessárias e 
# o que cada uma deve ser configurada para fazer. A partir desta descrição, o 
# Netplan irá gerar toda a configuração necessária para a ferramenta de renderização 
# escolhida.
#
# Diretório padrão das configurações da Placa de Rede no Ubuntu Server
cd /etc/netplan/
ls -lh
#
# Arquivos de configuração da Placa de Rede no Ubuntu Server utilizando o Netplan. 
# OBSERVAÇÃO: o nome do arquivo pode mudar dependendo da versão do Ubuntu Server.
# /etc/netplan/00-installer-config.yaml #Padrão Ubuntu Server 22.04.x LTS
#
# OBSERVAÇÃO IMPORTANTE: o arquivo de configuração do Netplan e baseado no formato 
# de serialização de dados legíveis YAML (Yet Another Markup Language) utilizado 
# pela linguagem de programação Python, muito cuidado com o uso de espaços e tabulação
# e principalmente sua indentação.
#
# Configuração do endereçamento IPv4 Dynamic (Dinâmico)
sudo vim 00-installer-config.yaml

INSERT

network:
  ethernets:
    enp0s3:
      dhcp4: true
  version: 2

#salvar e sair do arquivo
ESC SHIFT : x <Enter>
#
# Aplicando as configurações e verificando o status da Placa de Rede
# opção do comando route: -n (numeric)
sudo netplan --debug apply
sudo netplan ip leases enp0s3
sudo ifconfig enp0s3
sudo ip address show enp3s0 
sudo route -n
sudo ip route
sudo resolvectl
#
# Configuração do endereçamento IPv4 Static (Estático)
# Configuração do Endereço IPv4 e dos Servidores de DNS na mesma linha
# utilizando os [] (Colchetes)
sudo vim 00-installer-config.yaml

INSERT

network:
  ethernets:
    enp0s3:
      dhcp4: false
      addresses: [10.26.44.XXX/24]
      gateway4: 10.26.44.1
      nameservers:
        addresses: [8.8.8.8, 8.8.4.4]
        search: [senac.intra]
  version: 2

#salvar e sair do arquivo
ESC SHIFT : x <Enter>
#
# Aplicando as configurações e verificando o status da Placa de Rede
# opção do comando route: -n (numeric)
sudo netplan --debug apply
sudo ifconfig enp0s3
sudo ip address show enp3s0 
sudo route -n
sudo ip route
sudo resolvectl
#
# Adicionando as informações de pesquisa de IP e nome no servidor no arquivo hosts
sudo vim /etc/hosts
	INSERT
		
		#adicionar o endereço IPv4 e nome FQDN do seu servidor na linha 3
		127.0.0.1     wsseunome.senac.intra     wsseunome
		10.26.44.XXX  wsseunome.senac.intra     wsseunome
	
	#salvar e sair do arquivo
	ESC SHIFT : x <Enter>
#
# Reinicializando o servidor para aplicar as mudanças
sudo reboot
#
# Checando as informações do servidor
# opção do comando hostname: -A (all-fqdns), -d (domain), -i (ip address)
sudo hostname
sudo hostname -A
sudo hostname -d
sudo hostname -i