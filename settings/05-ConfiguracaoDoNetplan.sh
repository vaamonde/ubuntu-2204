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
#Data de atualização: 18/01/2023
#Versão: 0.01
#Testado e homologado no GNU/Linux Ubuntu Server 22.04.1 LTS
#
# Configuração da Placa de Rede no GNU/Linux Ubuntu 20.04.x LTS
# UDEV (userspace /dev) responsável por controlar os dispositivos do
# sistema utilizando o Systemd para nomear as Placas de Rede no Ubuntu
# Site: https://netplan.io/examples
#
# Instalando as dependências das Interfaces de Rede (Placa de Rede)
sudo apt update
sudo apt install bridge-utils ifenslave net-tools
#
# Verificando os dispositivos PCI de Placa de Rede instalados
# opções do comando lspci: -v (verbose), -s (show)
# opção do comando grep: -i (ignore-case)
sudo lspci -v | grep -i ethernet
sudo lcpci -v -s 00:03.0
#
# Verificando os detalhes do hardware de Placa de Rede instalada
sudo lshw -class network
sudo lshw -class network | grep "logical name"
#
# Verificando as configurações de endereçamento da Placa de Rede instalada
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
sudo systemd-resolve --status
sudo systemd-resolve --statistics
#
# Diretório padrão das configurações da Placa de Rede no Ubuntu Server
cd /etc/netplan/
#
# Arquivos de configuração da Placa de Rede no Ubuntu Server utilizando
# o Netplan. OBSERVAÇÃO: o nome do arquivo pode mudar dependendo da versão
# do Ubuntu Server.
/etc/netplan/50-cloud-init.yaml #Padrão Ubuntu Server 18.04.x LTS
/etc/netplan/00-installer-config.yaml #Padrão Ubuntu Server 20.04.x LTS
#
# OBSERVAÇÃO IMPORTANTE: o arquivo de configuração o Netplan e baseado no
# formato de serialização de dados legíveis YAML (Yet Another Markup Language)
# utilizado pelo linguagem de programação Python, muito cuidado com espaços e
# tabulação e principalmente sua indentação.
#
# Configuração do endereçamento IPv4 Dynamic (Dinâmico)
network:
  ethernets:
    enp0s3:
      dhcp4: true
  version: 2
#	
# Aplicando as configurações e verificando o status da Placa de Rede
sudo netplan --debug try
sudo netplan --debug apply
sudo netplan ip leases enp0s3
sudo systemd-resolve --status
sudo ifconfig enp0s3
sudo ip address show enp3s0 
sudo route -n
sudo ip route
#
# Configuração do endereçamento IPv4 Static (Estático)
# Configuração do Endereço IPv4 e dos Servidores de DNS na mesma linha
# utilizando os [] (Colchetes)
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
#
# Aplicando as configurações e verificando o status da Placa de Rede
sudo netplan --debug try
sudo netplan --debug apply
sudo systemd-resolve --status
sudo ifconfig enp0s3
sudo ip address show enp3s0 
sudo route -n
sudo ip route