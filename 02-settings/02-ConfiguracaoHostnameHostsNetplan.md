#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 18/04/2023<br>
#Data de atualização: 24/06/2025<br>
#Versão: 0.17<br>

Release Ubuntu Server 22.04.5: https://fridge.ubuntu.com/2024/09/13/ubuntu-22-04-5-lts-released/<br>
Release Ubuntu Server 22.04.4: https://fridge.ubuntu.com/2024/02/22/ubuntu-22-04-4-lts-released/<br>
Release Ubuntu Server 22.04.3: https://fridge.ubuntu.com/2023/08/11/ubuntu-22-04-3-lts-released/<br>
Release Ubuntu Server 22.04.2: https://fridge.ubuntu.com/2023/02/24/ubuntu-22-04-2-lts-released/<br>
Release Ubuntu Server 22.04.1: https://fridge.ubuntu.com/2022/08/12/ubuntu-22-04-1-lts-released/<br>
Release Ubuntu Server 22.04: https://fridge.ubuntu.com/2022/04/01/ubuntu-22-04-jammy-jellyfish-final-beta-released/

Release Notes Ubuntu Server 22.04.x: https://discourse.ubuntu.com/t/jammy-jellyfish-release-notes/24668<br>
Ubuntu Advantage for Infrastructure: https://ubuntu.com/advantage<br>
Ciclo de Lançamento do Ubuntu Server: https://ubuntu.com/about/release-cycle<br>
Releases All Ubuntu Server: https://wiki.ubuntu.com/Releases

Conteúdo estudado nessa configuração:<br>
#01_ Alterando o nome FQDN (Fully Qualified Domain Name) do Ubuntu Server<br>
#02_ Alterando as entradas no arquivo Hosts do Ubuntu Server<br>
#03_ Instalando os principais software de rede no Ubuntu Server<br>
#04_ Verificando as informações do Hardware de Rede no Ubuntu Server<br>
#05_ Verificando as informações de Endereços IPv4 no Ubuntu Server<br>
#06_ Alterando as configurações da Placa de Rede do Ubuntu Server<br>
#07_ Aplicando as configurações do Netplan e verificando as informações de Rede do Ubuntu Server<br>
#08_ Verificando as informações da Placa de Rede depois de alterada no Ubuntu Server
#09_ Acessando a máquina virtual do Ubuntu Server remotamente via SSH<br>

**O QUE É E PARA QUE SERVER O NETPLAN:** O *Netplan* é um utilitário para configurar facilmente a rede em um sistema Linux. Você simplesmente cria uma descrição **YAML** das interfaces de rede necessárias e o que cada uma deve ser configurada para fazer. A partir desta descrição o Netplan irá gerar toda a configuração necessária para a ferramenta de renderização escolhida.

**O QUE É E PARA QUE SERVER O HOSTNAME:** O arquivo *Hostname* é usado para exibir o nome DNS do sistema e para exibir ou defina seu nome de host ou nome de *domínio NIS*. O arquivo **/etc/hostname** armazena as informações de nome de máquina e domínio no formato *FQDN (Fully Qualified Domain Name)*

**O QUE É E PARA QUE SERVER O FQDN:** Algumas vezes denominado *nome de domínio absoluto*, é um nome de domínio que especifica sua localização exata na árvore hierárquica do **Domain Name System**. Ele especifica todos os níveis de domínio, incluindo, pelo menos, um domínio de segundo nível e um domínio de nível superior.

**O QUE É E PARA QUE SERVER O HOSTS:** O arquivo *Hosts* faz a pesquisa na tabela estática para nomes de host, é utilizado quando não temos servidores *DNS (Domain Name System)* e fazermos o apontamento diretamente no arquivo localizado em /etc/hosts.

[![Endereço IPv4 Ubuntu Server](http://img.youtube.com/vi/sKn5fTy1OHI/0.jpg)](https://www.youtube.com/watch?v=sKn5fTy1OHI "Endereço IPv4 Ubuntu Server")

Link da vídeo aula: https://www.youtube.com/watch?v=sKn5fTy1OHI

## 01_ Alterando o nome FQDN (Fully Qualified Domain Name) do Ubuntu Server
```bash
#editando o arquivo de configuração do Hostname
sudo vim /etc/hostname

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
#alterar o nome de domínio FQDN na linha 1
#OBSERVAÇÃO IMPORTANTE: ALTERAR O NOME DO DOMÍNIO PARA O SEU CENÁRIO
wsseunome.seu.domínio
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>
```

## 02_ Alterando as entradas no arquivo Hosts do Ubuntu Server
```bash
#editando o arquivo de configuração do Hosts
sudo vim /etc/hosts

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
#OBSERVAÇÃO IMPORTANTE: ALTERAR O ENDEREÇO IPv4, NOME DO DOMÍNIO E APELIDO PARA O SEU CENÁRIO
#mais informações veja a documentação oficial em: https://linux.die.net/man/5/hosts

#adicionar o nome de domínio e apelido nas linhas 2 e 3
127.0.0.1      localhost.seu.domínio   localhost
127.0.1.1      wsseunome.seu.domínio   wsseunome
SUA_REDE_IPV4  wsseunome.seu.domínio   wsseunome

#OBSERVAÇÃO IMPORTANTE: NESSE CENÁRIO NÃO SERÁ CONFIGURADO O IPv6 (DEIXAR O PADRÃO)
# The following lines are desirable for IPv6 capable hosts
::1     ip6-localhost ip6-loopback
fe00::0 ip6-localnet
ff00::0 ip6-mcastprefix
ff02::1 ip6-allnodes
ff02::2 ip6-allrouters
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>
```

## 03_ Instalando os principais software de Rede (Network) no Ubuntu Server
```bash
#atualizando as lista do Apt sources.list
#opção do comando apt: update (Resynchronize the package index files from their sources)
sudo apt update

#instalando os pacotes e ferramentas de rede no Ubuntu Server
#opção do comando apt: install (install is followed by one or more package names)
sudo apt install bridge-utils ifenslave net-tools
```

## 04_ Verificando as informações do Hardware de Rede (Placa de Rede) no Ubuntu Server
```bash
#verificando os dispositivos PCI de Placa de Rede instalados no Ubuntu Server
#opções do comando lspci: -v (verbose)
#opção do comando grep: -i (ignore-case)
#opção do comando cat: -n (number line)
#opção do redirecionador | (pipe): Conecta a saída padrão com a entrada padrão de outro comando
sudo lspci -v | grep -i ethernet | cat -n
```

Entendendo a saída do comando: __`lspci`__ (NÃO COMENTADO NO VÍDEO)<br>
| Campo                                 | Descrição                                                                                    |
| ------------------------------------- | -------------------------------------------------------------------------------------------- |
| `1`                                   | Número da linha gerado pelo `cat -n`                                                         |
| `00:03.0`                             | **Endereço do dispositivo PCI** no barramento: Bus 00, Device 03, Function 0                 |
| `Ethernet controller`                 | Tipo do dispositivo detectado – neste caso, uma **controladora de rede Ethernet**            |
| `Intel Corporation`                   | **Fabricante** do hardware identificado                                                      |
| `82540EM Gigabit Ethernet Controller` | Modelo exato da **placa de rede Gigabit** (10/100/1000 Mbps) da Intel                        |
| `(rev 02)`                            | **Revisão do hardware** (Revision ID 02) – pode indicar atualizações de firmware ou hardware |

```bash
#verificando os detalhes do hardware de Placa de Rede instalada no Ubuntu Server
#opção do comando lshw: -class (Only show the given class of hardware)
sudo lshw -class network
```

Entendendo a saída do comando: __`lshw`__ (NÃO COMENTADO NO VÍDEO)<br>
| Campo           | Descrição                                                         |
| --------------- | ----------------------------------------------------------------- |
| `description`   | Tipo da interface (ex.: Ethernet, Wireless)                       |
| `product`       | Modelo da placa de rede                                           |
| `vendor`        | Fabricante da placa                                               |
| `physical id`   | Identificador físico (posição no barramento)                      |
| `bus info`      | Caminho do barramento PCI                                         |
| `logical name`  | Nome lógico atribuído à interface (ex.: enp0s3)                   |
| `version`       | Revisão do hardware (Revision ID)                                 |
| `serial`        | Endereço MAC da interface                                         |
| `size`          | Velocidade atual da conexão (ex.: 1Gbit/s)                        |
| `capacity`      | Velocidade máxima suportada                                       |
| `width`         | Largura do barramento PCI                                         |
| `clock`         | Frequência do barramento                                          |
| `capabilities`  | Recursos suportados (ex.: duplex, autonegociação, tipos de mídia) |
| `configuration` | Parâmetros ativos, como driver, IP, velocidade e status do link   |
| `resources`     | Recursos alocados pelo sistema (IRQ, memória, portas de I/O)      |

## 05_ Verificando as informações de Endereços IPv4 no Ubuntu Server
```bash
#verificando as configurações de endereçamento IP da Placa de Rede instalada
#opção do comando ifconfig: -a (all interfaces)
#opções do comando ip: address (Protocol (IP or IPv6) address on a device)
sudo ifconfig -a
sudo ip address show
```

Entendendo a saída do comando: __`ifconfig`__ (NÃO COMENTADO NO VÍDEO)<br>
| Campo                                                   | Descrição                                   |
| ------------------------------------------------------- | ------------------------------------------- |
| `enp0s3`                                                | Nome lógico da interface Ethernet detectada |
| `flags=4163<...>`                                       | Flags da interface (ex.: UP = ativa, RUNNING = link OK, MULTICAST = suporta multicast) |
| `mtu 1500`                                              | Tamanho máximo do pacote (MTU - Maximum Transmission Unit) |
| `inet 172.16.1.20`                                      | Endereço IPv4 atribuído à interface |
| `netmask 255.255.255.0`                                 | Máscara de sub-rede |
| `broadcast 172.16.1.255`                                | Endereço de broadcast IPv4 |
| `ether 08:00:27:b5:3b:c0`                               | Endereço MAC da interface (Ethernet) |
| `txqueuelen 1000`                                       | Tamanho da fila de transmissão de pacotes |
| `RX packets 3470`                                       | Total de pacotes recebidos |
| `RX bytes 624611`                                       | Total de bytes recebidos |
| `RX errors / dropped / overruns / frame`                | Contadores de erro durante a recepção |
| `TX packets 1854`                                       | Total de pacotes enviados |
| `TX bytes 314064`                                       | Total de bytes enviados |
| `TX errors / dropped / overruns / carrier / collisions` | Contadores de erro durante a transmissão |

```bash
#verificando as configurações de Gateway (route) no Ubuntu Server
#opção do comando route: -n (number)
#opções do comando ip: route (Routing table entry)
sudo route -n
sudo ip route
```

Entendendo a saída do comando: __`route`__ (NÃO COMENTADO NO VÍDEO)<br>
| Campo           | Valor          | Descrição                                                                    |
| --------------- | -------------- | ---------------------------------------------------------------------------- |
| **Destination** | `0.0.0.0`      | Endereço de destino. `0.0.0.0` indica a **rota padrão (default route)**.     |
| **Gateway**     | `172.16.1.254` | Endereço IP do **gateway** usado para essa rota.                             |
| **Genmask**     | `0.0.0.0`      | Máscara de sub-rede usada para o destino. Em `0.0.0.0`, abrange toda a rede. |
| **Flags**       | `UG`           | Indica que a rota está **Up (U)** e usa um **Gateway (G)**.                  |
| **Metric**      | `0`            | Prioridade da rota. Menor valor = maior prioridade.                          |
| **Ref**         | `0`            | Referência (obsoleto, sempre zero no Linux).                                 |
| **Use**         | `0`            | Contador de vezes que a rota foi usada (pode ser zero).                      |
| **Iface**       | `enp0s3`       | Interface de rede usada para essa rota.                                      |

```bash
#verificando as informações de cache dos Servidores DNS (resolução de nomes)
#opção do comando resolvectl: status (Shows the global and per-link DNS settings currently in effect)
sudo resolvectl status
```

Entendendo a saída do comando: __`resolvectl`__ (NÃO COMENTADO NO VÍDEO)<br>
| Campo                | Valor                    | Descrição    |
| -------------------- | -------------------------| -------------|
| **Protocols**        | `-LLMNR -mDNS -DNSOverTLS DNSSEC=no/unsupported` | Lista de protocolos de resolução **desativados** globalmente. DNSSEC está desativado ou não suportado. |
| **resolv.conf mode** | `stub`                                           | Indica que o `/etc/resolv.conf` está em modo *stub* e gerenciado pelo `systemd-resolved`. |

| Campo              | Valor                      | Descrição  |
| ------------------ | ---------------------------| ---------- |
| **Link**           | `2 (enp0s3)`                                                   | Interface de rede usada para resolução DNS |
| **Current Scopes** | `DNS`                                                          | Indica que a interface está usando o escopo DNS |
| **Protocols**      | `+DefaultRoute +LLMNR -mDNS -DNSOverTLS DNSSEC=no/unsupported` | Protocolos ativados/desativados para essa interface. `+LLMNR` está ativo; `-mDNS` e `-DNSOverTLS` estão desativados |
| **DNS Servers**    | `8.8.8.8, 8.8.4.4`                                             | Servidores DNS configurados para a interface |
| **DNS Domain**     | `pti.intra`                                                    | Domínio de busca DNS configurado para a interface |

## 06_ Alterando as configurações da Placa de Rede do Ubuntu Server

**OBSERVAÇÃO:** o nome do arquivo de configuração da placa de rede pode mudar dependendo da versão do Ubuntu Server. O arquivo: */etc/netplan/00-installer-config.yaml* e o Padrão do Ubuntu Server 22.04.x LTS, no Ubuntu Server 24.04.x LTS tem o nome: */etc/netplan/50-cloud-init.yaml*, sempre digitar o comando: *ls -lh /etc/netplan* antes de editar o arquivo Netplan.

**OBSERVAÇÃO IMPORTANTE:** o arquivo de configuração do Netplan e baseado no formato de *Serialização de Dados Legíveis YAML (Yet Another Markup Language)* utilizado na linguagem de programação Python por exemplo, muito cuidado com o uso de __`espaços e tabulação`__ e principalmente sua **Indentação**.

**OBSERVAÇÃO IMPORTANTE:** a partir da versão do Ubuntu Server __`22.04.4 LTS`__ e da versão __`22.04.5 LTS`__ o sistema de **Cloud-Init** afeta diretamente nas configurações da Placa de Rede utilizando o Netplan, mesmo que você altere as configurações no arquivo: */etc/netplan/50-cloud-init.yaml* ele sempre será sobrescrito (voltar para o original) toda vez que você reiniciar ou desligar o servidor, para resolver esse problema recomendo desativar as opções do Cloud-Init referente a Placa de Rede conforme o procedimento abaixo:

```bash
#criando o arquivo para desativar as configurações da Placa de Rede do Cloud-Init (NÃO COMENTADO NO VÍDEO)
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
echo "network: {config: disabled}" | sudo tee /etc/cloud/cloud.cfg.d/99-disable-network-config.cfg
```

```bash
#listando o conteúdo do diretório do Netplan
#opção do comando ls: -l (long listing), -h (human-readable)
ls -lh /etc/netplan/
```

**OBSERVAÇÃO IMPORTANTE:** ARQUIVO ANTIGO DA VERSÃO 22.04: __`/etc/netplan/00-installer-config.yaml`__, A PARTIR DA VERSÃO 22.04.3 O NOME DO ARQUIVO MUDOU PARA: __`/etc/netplan/50-cloud-init.yaml`__

```bash
#fazendo o backup do arquivo de configuração original do Netplan
#opção do comando cp: -v (verbose)
#sudo cp -v /etc/netplan/00-installer-config.yaml /etc/netplan/00-installer-config.yaml.old (ARQUIVO ANTIGO)
sudo cp -v /etc/netplan/50-cloud-init.yaml /etc/netplan/50-cloud-init.yaml.old

#editando o arquivo de configuração do Netplan
sudo vim /etc/netplan/50-cloud-init.yaml

#entrando no modo de edição do editor de texto VIM
INSERT
```
```yaml
# Bloco inicial das configurações da Rede no Netplan (BLOCO MELHORADO PARA A NOVA VERSÃO)
network:
  #
  # Início da configuração do Netplan usando a versão 2 (mais atual)
  version: 2
  #
  # Bloco de configuração das Interfaces Ethernet (físicas ou virtuais)
  ethernets:
    #
    # Configuração da Interface Física (Nome Lógico visto no comando: lshw -class network)
    enp0s3:
      #
      # Desabilitando o suporte ao DHCP Client IPv4 na interface física
      dhcp4: false
      #
      # Desabilitando o suporte da configuração automática do IPv6 na interface física
      # OBSERVAÇÃO IMPORTANTE: utilizar essa opção somente se você não está usando
      # na sua rede o recurso do IPv6, caso contrário fazer a configuração adequada
      link-local: []
      #
      # Configuração do Endereço IPv4 e Máscara de Rede (CIDR) para o seu cenário
      # OBSERVAÇÃO IMPORTANTE: configuração do Endereço IPv4 dentro de Colchetes
      addresses: [SEU_ENDEREÇO_IPv4/CIDR]
      #
      # Configuração do Gateway Padrão (Rota Padrão) para o seu cenário
      # OBSERVAÇÃO IMPORTANTE: a opção de Gateway4 foi descontinuada, recomendo utilizar 
      # as opções de Routes (Rotas) do Netplan para configurar o Gateway padrão
      # gateway4: SEU_ENDEREÇO_IPv4
      routes:
        # Configuração da Rota Padrão (cuidado com o traço antes da opção: to)
        - to: default
          # Configuração do endereço IPv4 do Gateway para o seu cenário
          via: SEU_ENDEREÇO_IPv4
          #
      # Configuração dos servidores de DNS Server Preferencial e Alternativo
      nameservers:
        # Configuração dos servidores de DNS para o seu cenário
        # OBSERVAÇÃO: configuração do Endereço IPv4 dentro de Colchetes e separados
        # por vírgula, recomendo pelo menos dois DNS Servers serem configurados ou 
        # somente o endereço do Servidor de DNS Local da Rede.
        addresses: [8.8.8.8, 8.8.4.4]
        # Configuração da pesquisa de domínio para o seu cenário
        # OBSERVAÇÃO: configuração da pesquisa de Domínio dentro de Colchetes
        search: [seu.domínio]
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>
```

## 07_ Aplicando as configurações do Netplan e verificando as informações de Rede do Ubuntu Server
```bash
#fazendo o backup do arquivo de configuração modificado do Netplan (NÃO COMENTADO NO VÍDEO)
#opção do comando cp: -v (verbose)
#sudo cp -v /etc/netplan/00-installer-config.yaml /etc/netplan/00-installer-config.yaml.bkp (ARQUIVO ANTIGO)
sudo cp -v /etc/netplan/50-cloud-init.yaml /etc/netplan/50-cloud-init.yaml.bkp

#listando o conteúdo do diretório do Netplan com os novos arquivos (NÃO COMENTADO NO VÍDEO)
#opção do comando ls: -l (long listing), -h (human-readable)
ls -lh /etc/netplan/

#verificando as configurações do arquivo do Netplan no Ubuntu Server (NÃO COMENTADO NO VÍDEO)
#opções do comando netplan: --debug (enable debug messages), get (get a settings config netplan)
sudo netplan --debug get

#aplicando as mudanças do Netplan em modo Debug (detalhado)
#opções do comando netplan: --debug (enable debug messages), apply (apply current netplan config)
sudo netplan --debug apply

#OBSERVAÇÃO IMPORTANTE: você pode utilizar a opção: try que caso aconteça alguma
#falha na hora de configurar a placa de rede ele reverte a configuração inicial
#opções do comando netplan: --debug (enable debug messages), try (try to apply a new netplan config)
sudo netplan --debug try
```

## 08_ Verificando as informações da Placa de Rede depois de alterada no Ubuntu Server
```bash
#verificando o endereço IPv4 da Interface de Rede
#opção do comando ifconfig: -a (all interfaces)
sudo ifconfig -a
sudo ip address show

#verificando as informações de Gateway padrão
#opção do comando route: -n (numeric)
sudo route -n
sudo ip route

#verificando as informações dos Servidores DNS e Pesquisa de Domínio
#opção do comando resolvectl: status (Shows the global and per-link DNS settings currently in effect)
sudo resolvectl status

#testando a conexão com a Internet e Resolução de nomes de DNS
#opção do comando ping: -c 5 (Stop after sending count ECHO_REQUEST packets)
ping -c 5 8.8.8.8
ping -c 5 google.com

#verificando as informações do nome do servidor Ubuntu Server
#opção do comando hostname: -A (all-fqdns), -d (domain), -i (ip address)
sudo hostname
sudo hostname -A
sudo hostname -d
sudo hostname -i
```

## 09_ Acessando a máquina virtual do Ubuntu Server remotamente via SSH

**OBSERVAÇÃO:** após a configuração da Placa de Rede do Ubuntu Server você já pode acessar remotamente o seu servidor utilizando o __`Protocolo SSH`__ nos clientes Linux ou Microsoft Windows para dá continuidade nas configurações do servidor, ficando mais fácil administrar e configurar os principais serviços de rede de forma remota.

**DICA:** Você pode usar os softwares: __`Bash/Shell`__ (GNU/Linux), __`Powershell`__ (Microsoft Windows), __`PuTTY`__ (GNU/Linux ou Microsoft Windows) e __`Git Bash`__ (Microsoft Windows - RECOMENDADO SE ESTIVER USANDO O WINDOWS).

```bash
#testando a conexão com o Ubuntu Server (alterar o Endereço IPv4 para o seu cenário)
ping SEU_ENDEREÇO_IPV4_UBUNTU_SERVER

#acessando remotamente o Ubuntu Server (alterar o Usuário e Endereço IPv4 para o seu cenário)
ssh seu_usuário@SEU_ENDEREÇO_IPV4_UBUNTU_SERVER

#confirmando a troca das chaves públicas e do fingerprint do SSH (alterar sua senha para o seu cenário)
The authenticity of host 'SEU_ENDEREÇO_IPV4_UBUNTU_SERVER' can't be established.
ECDSA key fingerprint is SHA256:5yoVsKHMrn3FP/LBW1fyPTtVlt3og9jmyXPPkki/BY0.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes <Enter>
seu_usuário@SEU_ENDEREÇO_IPV4's password: sua_senha <Enter> (Por motivo de segurança a senha não aparece no Terminal)
seu_usuário@wsseunome:~$ (Acesso ao Terminal Remoto (Bash/Shell) via SSH)
```