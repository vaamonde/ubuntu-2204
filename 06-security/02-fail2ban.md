#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 29/05/2025<br>
#Data de atualização: 26/09/2025<br>
#Versão: 0.02<br>

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO FAIL2BAN SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do Fail2Ban realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/21-fail2ban.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiofail2ban #desafiosecurity

Conteúdo estudado nesse desafio:<br>
#01_ Instalando o Fail2Ban no Ubuntu Server<br>
#02_ Habilitando o Serviço do Fail2Ban no Ubuntu Server<br>
#03_ Verificando o Serviço e Versão do Fail2Ban no Ubuntu Server<br>
#04_ Localização dos Arquivos de Configuração do Fail2Ban no Ubuntu Server<br>
#05_ Atualizando os arquivos de configuração do Fail2Ban no Ubuntu Server<br>
#06_ Editando os arquivos de configuração do Fail2Ban no Ubuntu Server<br>
#07_ Configurando o Monitoramento e Jail (Cadeia/Jaula) do serviço do OpenSSH no Ubuntu Server<br>
#08_ Reiniciando e Aplicando as novas regras de Jail (Cadeia/Jaula) do Fail2Ban no Ubuntu Server<br>
#09_ Configuração básica do serviço de Firewall UFW no Ubuntu Server<br>

Site Oficial do Fail2Ban: https://github.com/fail2ban/fail2ban

**Sites de IA (Inteligência Artificial) indicados para os Desafios**<br>
OpenAI ChatGPT: https://chatgpt.com<br>
Microsoft Copilot: https://copilot.microsoft.com<br>
Google Gemini: https://gemini.google.com<br>
DeepSeek: https://chat.deepseek.com/<br>
x.AI Grok: https://grok.com/<br>

**O QUE É E PARA QUE SERVER O FAIL2BAN:** O Fail2Ban é uma ferramenta de segurança para servidores Linux que protege contra ataques de força bruta e outras tentativas de acesso malicioso. Ele monitora arquivos de *log (como /var/log/auth.log, /var/log/apache2/error.log, entre outros)* e, quando detecta padrões de tentativas de acesso suspeitas (como várias senhas incorretas), ele bloqueia automaticamente o IP do atacante, adicionando regras no firewall (geralmente no iptables, nftables ou ufw).

**O QUE É E PARA QUE SERVER O UFW:** Uncomplicated Firewall é uma firewall desenhado para ser de fácil utilização. Utiliza uma interface de linha de comandos simple e de fácil entendimento, e usa o iptables como base para a sua configuração. 

**O QUE É E PARA QUE SERVER O IPTABLES:** O iptables é um programa escrito em C, utilizado como ferramenta para configurar as regras do protocolo de internet IPv4 na tabela de filtragem de pacotes, utilizando vários módulos e o framework do kernel Linux (versão 2.3.15 ou posteiro).

**O QUE É E PARA QUE SERVER O NETFILTER:** O netfilter é um módulo que fornece ao sistema operacional Linux as funções de firewall, NAT e log dos dados que trafegam na rede de computadores. iptables é o nome da ferramenta do espaço do usuário que permite a criação de regras de firewall e NATs.

**O QUE É E PARA QUE SERVER O NFTABLES:** O nftables é um subsistema do kernel Linux que fornece filtragem e classificação de pacotes de rede /datagramas/quadros. Ele está disponível desde o kernel Linux 3.13 lançado em 19 de janeiro de 2014. nftables substitui as partes legadas do iptables do Netfilter.

[![Fail2Ban](http://img.youtube.com/vi//0.jpg)]( "Fail2Ban")

Link da vídeo aula: 

## 01_ Instalando o Fail2Ban no Ubuntu Server
```bash
#atualizando as listas do Apt
sudo apt update

#instalando o Fail2Ban no Ubuntu Server
sudo apt install fail2ban
```

## 02_ Habilitando o Serviço do Fail2Ban no Ubuntu Server
```bash
#habilitando o serviço do Fail2Ban no Ubuntu Server
#opção do comando systemctl: daemon-reload (Reload the systemd manager configuration), 
#enable (Enable one or more units), start (Start (activate) one or more units)
sudo systemctl daemon-reload
sudo systemctl enable fail2ban
sudo systemctl start fail2ban
```

## 03_ Verificando o Serviço e Versão do Fail2Ban no Ubuntu Server
```bash
#verificando o serviço do Fail2Ban
#opções do comando systemctl: status (runtime status information), restart (Stop and then 
#start one or more units), stop (Stop (deactivate) one or more units), start (Start (activate) 
#one or more units)
sudo systemctl status fail2ban
sudo systemctl restart fail2ban
sudo systemctl reload fail2ban
sudo systemctl stop fail2ban
sudo systemctl start fail2ban

#analisando os Log's e mensagens de erro do Fail2Ban
#opção do comando journalctl: x (catalog), e (pager-end), u (unit)
sudo journalctl -xeu fail2ban

#verificando os arquivos de configuração do Fail2Ban
#opção do comando fail2ban-client: -t (test configuration)
sudo fail2ban-client -t
```

**OBSERVAÇÃO IMPORTANTE:** Por que sempre é necessário verificar a versão do serviço de rede que você está implementando ou configurando no Servidor Ubuntu Server, devido as famosas falhas de segurança chamadas de: *CVE (Common Vulnerabilities and Exposures)*, com base na versão utilizada podemos pesquisar no site do **Ubuntu Security CVE Reports:** https://ubuntu.com/security/cves as falhas de segurança encontradas e corrigidas da versão do nosso aplicativo, o que ela afeta, se foi corrigida e como aplicar a correção.

```bash
#verificando a versão do Fail2Ban
#opção do comando fail2ban-client: -V (version)
sudo fail2ban-client -V
```

## 04_ Localização dos Arquivos de Configuração do Fail2Ban no Ubuntu Server
```bash
/etc/fail2ban/                <-- Diretório de configuração do Fail2Ban
/etc/fail2ban/action.d/       <-- Diretório de configuração das Ações do Fail2Ban
/etc/fail2ban/filter.d/       <-- Diretório de configuração dos Filtros do Fail2Ban
/etc/fail2ban/jail.d/         <-- Diretório de configuração das Regras do Fail2Ban
/etc/fail2ban/fail2ban.conf   <-- Arquivo de configuração do Serviços do Fail2Ban
/var/log/fail2ban.log         <-- Arquivo de Log do Serviço do Fail2Ban
/var/run/fail2ban/            <-- Diretório do PID de Processo e Socket do Fail2Ban
/var/lib/fail2ban/            <-- Diretório do Banco de Dados SQLite3 do Fail2Ban
```

## 05_ Atualizando os arquivos de configuração do Fail2Ban no Ubuntu Server
```bash
#atualizando o arquivo de configuração do Fail2Ban Local do Github
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/fail2ban/fail2ban.local https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/fail2ban.local

#atualizando o arquivo de configuração do Jail (Cadeia/Jaula) Local do Fail2Ban do Github
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/fail2ban/jail.local https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/jail.local

#atualizando o arquivo de configuração de Reincidência do Fail2Ban do Github
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/fail2ban/jail.d/recidive.conf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/recidive.conf
```

## 06_ Editando os arquivos de configuração do Fail2Ban no Ubuntu Server
```bash
#editar o arquivo de configuração padrão do Fail2Ban
sudo vim /etc/fail2ban/fail2ban.local

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
#alterar as linhas: 41 até 43 conforme sua necessidade de tempo de Banimento
#Configuração das Políticas de Banimento mais Restritiva do Fail2Ban
bantime = 1h
findtime = 10m
maxretry = 3
#Configuração das Políticas de Banimento de Reincidência do Fail2Ban
enabled = true
bantime = 7d
findtime = 7d
maxretry = 5
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>

#editar o arquivo de configuração padrão do Jail (Cadeia/Jaula) do Fail2Ban
sudo vim /etc/fail2ban/jail.local

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
#alterar as linhas: 30 até 33 conforme sua necessidade de tempo de Banimento
30 #Configurações globais de banimento do Fail2Ban
bantime = 1h
findtime = 10m
maxretry = 3
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>

#editar o arquivo de configuração padrão do Recidive (Reincidência) do Fail2Ban
sudo vim /etc/fail2ban/jail.d/recidive.conf

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
#alterar as linhas: 30 até 33 conforme sua necessidade de tempo de Banimento
30 #Configurações globais de banimento do Fail2Ban
bantime = 1h
findtime = 10m
maxretry = 3
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>

#verificando os arquivos de configuração do Fail2Ban
#opção do comando fail2ban-client: -t (test configuration)
sudo fail2ban-client -t
```

## 07_ Configurando o Monitoramento e Jail (Cadeia/Jaula) do serviço do OpenSSH no Ubuntu Server
```bash
#removendo o arquivo de Jail padrão do Fail2Ban no Ubuntu Server
sudo rm -v /etc/fail2ban/jail.d/defaults-debian.conf

#atualizando o arquivo de configuração do Jail (Cadeia/Jaula) do OpenSSH do Github
sudo wget -v -O /etc/fail2ban/jail.d/sshd.conf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/sshd.conf

#editar o arquivo de configuração do Jail do OpenSSH Server
sudo vim /etc/fail2ban/jail.d/sshd.conf

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
#alterar as linhas: 31 até 41 conforme sua necessidade de tempo de Banimento
# Número máximo de tentativas falhas permitidas antes de aplicar o banimento
maxretry = 3
# Janela de tempo (10 minutos) para contar as tentativas falhas
findtime = 10m
# Tempo de banimento do IP ofensivo (1 hora)
bantime = 1h
# Ação aplicada no banimento; aqui, integra com o UFW para bloquear o IP
banaction = ufw
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>

#verificando os arquivos de configuração do Fail2Ban
#opção do comando fail2ban-client: -t (test configuration)
sudo fail2ban-client -t
```

## 08_ Reiniciando e Aplicando as novas regras de Jail (Cadeia/Jaula) do Fail2Ban no Ubuntu Server
```bash
#reiniciando o serviço do Fail2Ban no Ubuntu Server
#opção do comando systemctl: restart (Stop and then start one or more units), status (runtime status information)
sudo systemctl restart fail2ban
sudo systemctl status fail2ban

#verificando o status de todos os Jails (Cadeias/Jaulas) do Fail2Ban
#opção do comando fail2ban-client: status (gets the current status of the server)
sudo fail2ban-client status

#verificando o status do Jail (Cadeia/Jaula) do serviço do OpenSSH no Fail2Ban
#opção do comando fail2ban-client: status (gets the current status of the server), sshd (gets the current status of <JAIL>)
sudo fail2ban-client status sshd

#Verificando o status do UFW (Status padrão: inactive - inativo/desativado)
sudo ufw status
```

## 09_ Configuração básica do serviço de Firewall UFW no Ubuntu Server
```bash
#Habilitando e iniciando o Firewall UFW no Ubuntu Server integrado com o Fail2Ban
#opção do comando ufw: enable (reloads firewall and enables firewall on boot)
sudo ufw enable
  Command may disrupt existing ssh connections. Proceed with operation (y|n)? y <Enter>
  Firewall is active and enabled on system startup

#Verificando o serviço do Firewall UFW no Ubuntu Server
#opção do comando systemctl: status (runtime status information)
sudo systemctl status ufw

#Verificando o Status das Regras (RULES) Detalhadas (VERBOSE) do UFW
#opção do comando ufw: status (show status of firewall and ufw managed rules), verbose (for extra information)
sudo ufw status verbose

#configuração das regras mais restritivas de Entrada (Incoming) e Saída (Outgoing) do Firewall UFW no Ubuntu Server
#opção do comando ufw:
sudo ufw default deny incoming
sudo ufw default deny outgoing

#configuração do nível de Log do Firewall UFW no Ubuntu Server
#opção do comando ufw:
sudo ufw logging on
sudo ufw logging medium

#configuração das regras de Loopback de Entrada (Incoming) e Saída (Outgoing) do Firewall UFW no Ubuntu Server
#opção do comando ufw:
sudo ufw allow in on lo
sudo ufw allow out on lo

#configuração das regras de Saída (Outgoing) dos Protocolos Básicos do Firewall UFW no Ubuntu Server
#opção do comando ufw:
sudo ufw allow out 53/udp comment 'Liberando a saida para consulta do DNS'
sudo ufw allow out 853/tcp comment 'Liberando a saida para consulta do DNSTLS'
sudo ufw allow out 80/tcp comment 'Liberando a saida para navegação do HTTP'
sudo ufw allow out 443/tcp comment 'Liberando a saida para navegação do HTTPS'
sudo ufw allow out 123/udp comment 'Liberando a saida para sincronismo do NTP'

#configuração da regra de Entrada (Incoming) do Protocolo SSH do Firewall UFW no Ubuntu Server
#opção do comando ufw:
sudo ufw allow in log-all 22/tcp comment 'Liberando a entrada do acesso remoto via SSH'

#configuração das regras de Saída (Outgoing) do Protocolo ICMP do Firewall UFW no Ubuntu Server
#Editando o arquivo de configuração before.rules (ANTES DAS REGRAS) do UFW
sudo vim /etc/ufw/before.rules

#habilitando o recurso de número de linhas do Editor VIM
ESC SHIFT :set number <Enter>

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
#inserir as informações a partir da linha: 39 (COPIAR E COLAR)
#liberando a saída do protocolo ICMP (Permitindo o Ping - Echo Request)
#opções do comando iptables usados pelo UFW: -A (append), -p (protocol), -j (jump target)
# ok icmp codes for OUTPUT
-A ufw-before-output -p icmp --icmp-type destination-unreachable -j ACCEPT
-A ufw-before-output -p icmp --icmp-type time-exceeded -j ACCEPT
-A ufw-before-output -p icmp --icmp-type parameter-problem -j ACCEPT
-A ufw-before-output -p icmp --icmp-type echo-request -j ACCEPT
```
```bash
#Salvar e sair do arquivo
ESC SHIFT :x <Enter>

#Reiniciar as regras de firewall do UFW
sudo ufw reload
  Firewall reloaded

#Pingando o endereço IPv4 do Google
ping 8.8.8.8

#Pingando o nome do Google
ping google.com
```


========================================DESAFIOS=========================================

**#12_ DESAFIO-01:** 

=========================================================================================

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO FAIL2BAN SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do Fail2Ban realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/21-fail2ban.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiofail2ban #desafiosecurityp
