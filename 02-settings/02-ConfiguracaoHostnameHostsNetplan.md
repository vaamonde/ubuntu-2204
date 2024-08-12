#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 18/04/2023<br>
#Data de atualização: 12/08/2024<br>
#Versão: 0.09<br>

Release Notes Ubuntu Server 22.04.x: https://discourse.ubuntu.com/t/jammy-jellyfish-release-notes/24668<br>
Ubuntu Advantage for Infrastructure: https://ubuntu.com/advantage<br>
Ciclo de Lançamento do Ubuntu Server: https://ubuntu.com/about/release-cycle<br>
Releases All Ubuntu Server: https://wiki.ubuntu.com/Releases

Netplan é um utilitário para configurar facilmente a rede em um sistema Linux. Você simplesmente cria uma descrição YAML das interfaces de rede necessárias e o que cada uma deve ser configurada para fazer. A partir desta descrição o Netplan irá gerar toda a configuração necessária para a ferramenta de renderização escolhida.

Hostname: é usado para exibir o nome DNS do sistema e para exibir ou defina seu nome de host ou nome de domínio NIS. O arquivo /etc/hostname armazena as informações de nome de máquina e domínio no formato FQDN (Fully Qualified Domain Name)

FQDN, algumas vezes denominado nome de domínio absoluto, é um nome de domínio que especifica sua localização exata na árvore hierárquica do Domain Name System. Ele especifica todos os níveis de domínio, incluindo, pelo menos, um domínio de segundo nível e um domínio de nível superior.

Hosts: pesquisa de tabela estática para nomes de host, é utilizado quando não temos servidores DNS (Domain Name System) e fazermos o apontamento diretamente no arquivo localizado em /etc/hosts

[![Endereço IPv4 Ubuntu Server](http://img.youtube.com/vi/sKn5fTy1OHI/0.jpg)](https://www.youtube.com/watch?v=sKn5fTy1OHI "Endereço IPv4 Ubuntu Server")

Link da vídeo aula: https://www.youtube.com/watch?v=sKn5fTy1OHI

#01_ Alterando o nome FQDN (Fully Qualified Domain Name) do Ubuntu Server<br>
```bash
#editando o arquivo de configuração do Hostname
sudo vim /etc/hostname
INSERT
	
	#alterar o nome de domínio FQDN na linha 1
	#OBSERVAÇÃO IMPORTANTE: ALTERAR O NOME DO DOMÍNIO PARA O SEU CENÁRIO
	wsvaamonde.pti.intra

#salvar e sair do arquivo
ESC SHIFT : x <Enter>
```

#02_ Alterando as entradas no arquivo Hosts do Ubuntu Server<br>
```bash
#editando o arquivo de configuração do Hosts
sudo vim /etc/hosts
INSERT
	
	#adicionar o nome de domínio e apelido nas linhas 2 e 3
	#OBSERVAÇÃO IMPORTANTE: ALTERAR O NOME DO DOMÍNIO E APELIDO PARA O SEU CENÁRIO
	127.0.0.1    localhost.pti.intra    localhost
	127.0.1.1    wsvaamonde.pti.intra   wsvaamonde
	172.16.1.20  wsvaamonde.pti.intra   wsvaamonde

#salvar e sair do arquivo
ESC SHIFT : x <Enter>
```

#03_ Instalando os principais software de rede no Ubuntu Server<br>
```bash
#atualizando as lista do sources.list e instalando os pacotes e ferramentas de rede
sudo apt update
sudo apt install bridge-utils ifenslave net-tools
```

#04_ Verificando informações do Hardware de Rede no Ubuntu Server<br>
```bash
#verificando os dispositivos PCI de Placa de Rede instalados
#opções do comando lspci: -v (verbose), -s (show)
#opção do comando grep: -i (ignore-case)
#opção do redirecionador | (pipe): Conecta a saída padrão com a entrada padrão de outro comando
sudo lspci -v | grep -i ethernet

#verificando os detalhes do hardware de Placa de Rede instalada
sudo lshw -class network
```

#05_ Verificando as informações de Endereços IPv4 no Ubuntu Server<br>
```bash
#verificando as configurações de endereçamento IP da Placa de Rede instalada
#opção do comando ifconfig: -a (all)
sudo ifconfig -a
sudo ip address show

#verificando as configurações de Gateway (route)
#opção do comando route: -n (number)
sudo route -n
sudo ip route

#verificando as informações de cache dos Servidores DNS (resolução de nomes)
sudo resolvectl
```

#06_ Alterando as configurações da Placa de Rede do Ubuntu Server<br>
```bash
#OBSERVAÇÃO: o nome do arquivo pode mudar dependendo da versão do Ubuntu Server.
#/etc/netplan/00-installer-config.yaml #Padrão do Ubuntu Server 22.04.x LTS

#OBSERVAÇÃO IMPORTANTE: o arquivo de configuração do Netplan e baseado no formato 
#de serialização de dados legíveis YAML (Yet Another Markup Language) utilizado 
#pela linguagem de programação Python, muito cuidado com o uso de espaços e 
#tabulação e principalmente sua indentação.

#listando o conteúdo do diretório do Netplan
#opção do comando ls: -l (long listing), -h (human-readable)
ls -lh /etc/netplan/

#fazendo o backup do arquivo de configuração original do Netplan
#opção do comando cp: -v (verbose)
sudo cp -v /etc/netplan/00-installer-config.yaml /etc/netplan/00-installer-config.yaml.old

#editando o arquivo de configuração do Netplan
sudo vim /etc/netplan/00-installer-config.yaml
INSERT
```
```yaml
#bloco de configuração da rede
network:
  #bloco de configuração do protocolo Ethernet
  ethernets:
    #configuração da Interface Física (Nome Lógico comando lshw)
    enp0s3:
      #desabilitando o suporte ao DHCP Client
      dhcp4: false
      #desativando o suporte ao IPv6
      #OBSERVAÇÃO IMPORTANTE: utilizar essa opção somente se você não está usando
      #na sua rede o recurso do IPv6
      link-local: []
      #alterar o endereço IPv4 para o seu cenário
      #OBSERVAÇÃO IMPORTANTE: configuração do Endereço IPv4 dentro de Colchetes
      addresses: [172.16.1.20/24]
      #alterar o gateway padrão para o seu cenário
      #OBSERVAÇÃO IMPORTANTE: a opção de Gateway4 foi descontinuada, recomendo
      #utilizar as opções de Routes do Netplan para configurar o Gateway padrão
      #gateway4: 172.16.1.254
      routes:
        #configuração da rota padrão (cuidado com o traço antes do to)
        - to: default
          #configuração do endereço IPv4 do Gateway
          via: 172.16.1.254
      #configuração dos servidores de DNS Preferencial e Alternativo
      nameservers:
        #alterar os servidores DNS para o seu cenário
        #OBSERVAÇÃO: configuração do Endereço IPv4 dentro de Colchetes e separados
        #por vírgula, recomendo pelo menos dois DNS Server serem configurados ou 
        #somente o endereço do Servidor de DNS Local d Rede.
        addresses: [8.8.8.8, 8.8.4.4]
        #alterar a pesquisa de domínio para o seu cenário
        #OBSERVAÇÃO: configuração da pesquisa de Domínio dentro de Colchetes
        search: [pti.intra]
  #fim do bloco de configuração do protocolo Ethernet versão 2
  version: 2
```
```bash
#salvar e sair do arquivo
ESC SHIFT : x <Enter>
```

#07_ Aplicando as configurações do Netplan e verificando as informações de Rede do Ubuntu Server<br>
```bash
#aplicando as mudanças do Netplan em modo Debug (detalhado)
sudo netplan --debug apply

#OBSERVAÇÃO IMPORTANTE: você pode utilizar a opção: try que caso aconteça alguma
#falha na hora de configurar a placa de rede ele reverte a configuração inicial
sudo netplan --debug try

#verificando o endereço IPv4 da Interface de Rede
sudo ifconfig
sudo ip address show

#verificando as informações de Gateway padrão
#opção do comando route: -n (numeric)
sudo route -n
sudo ip route

#verificando as informações dos Servidores DNS e Pesquisa de Domínio
sudo resolvectl

#testando a conexão com a Internet
ping 8.8.8.8
ping google.com

#verificando as informações do nome do servidor Ubuntu Server
#opção do comando hostname: -A (all-fqdns), -d (domain), -i (ip address)
sudo hostname
sudo hostname -A
sudo hostname -d
sudo hostname -i
```

#08_ Acessando a máquina virtual do Ubuntu Server remotamente via SSH<br>
```bash
#OBSERVAÇÃO: após a configuração da Placa de Rede do Ubuntu Server você já pode
#acessar remotamente o seu servidor utilizando o Protocolo SSH nos clientes Linux
#ou Microsoft para dá continuidade nas configurações do servidor, ficando mais
#fácil administrar e configurar os principais serviços de rede de forma remota.

#testando a conexão com o Ubuntu Server
ping 172.16.1.20

#acessando remotamente o Ubuntu Server
ssh vaamonde@172.16.1.20

#confirmando a troca das chaves públicas e do fingerprint do SSH
Yes <Enter>
```