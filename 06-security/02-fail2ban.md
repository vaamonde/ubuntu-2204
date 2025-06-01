#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 29/05/2025<br>
#Data de atualização: 29/05/2025<br>
#Versão: 0.01<br>

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO FAIL2BAN SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do Fail2Ban realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/21-fail2ban.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiofail2ban #desafiosecurity

Conteúdo estudado nesse desafio:<br>
#01_ 

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
/etc/fail2ban/action.d        <-- Diretório de configuração das Ações do Fail2Ban
/etc/fail2ban/filter.d/       <-- Diretório de configuração dos Filtros do Fail2Ban
/etc/fail2ban/jail.d          <-- Diretório de configuração das Regras do Fail2Ban
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

#atualizando o arquivo de configuração do Jail Local do Github
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/fail2ban/jail.local https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/jail.local
```


========================================DESAFIOS=========================================

**#12_ DESAFIO-01:** 

=========================================================================================

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO FAIL2BAN SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do Fail2Ban realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/21-fail2ban.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiofail2ban #desafiosecurityp
