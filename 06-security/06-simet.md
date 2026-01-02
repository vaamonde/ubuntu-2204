#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 12/11/2025<br>
#Data de atualização: 12/11/2025<br>
#Versão: 0.01<br>

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO SIMET SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do Simet realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/25-simet.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiosimet #desafionicbr

Conteúdo estudado nesse desafio:<br>
#01_ Instalando o Lighttpd Server no Ubuntu Server<br>
#02_ Verificando o Serviço e Versão do Lighttpd Server no Ubuntu Server<br>
#03_ Verificando a Porta de Conexão do Lighttpd Server no Ubuntu Server<br>
#04_ Instalando Medidor Simet utilizando o script automatizado no Ubuntu Server<br>
#05_ Verificando o Serviço e Versão do Medidor Simet no Ubuntu Server<br>
#06_ Verificando a Porta de Conexão do Medidor Simet no Ubuntu Server<br>
#07_ Localização dos Arquivos de Configuração do Medidor Simet no Ubuntu Server<br>
#08_ Adicionando o Usuário Local no Grupo Padrão do Medidor Simet no Ubuntu Server<br>
#09_ Executando o Medidor Simet pela primeira vez no Ubuntu Server<br>
#10_ Testando o acesso ao Lighttpd Server no Terminal e no Navegador<br>
#11_ Desafios da implementação do Medidor Simet<br>

Site Oficial do SIMET: https://beta.simet.nic.br/<br>
Site Oficial do Medidor SIMET: https://medicoes.nic.br/<br>

**Sites de IA (Inteligência Artificial) indicados para os Desafios**<br>
OpenAI ChatGPT: https://chatgpt.com<br>
Microsoft Copilot: https://copilot.microsoft.com<br>
Google Gemini: https://gemini.google.com<br>
DeepSeek: https://chat.deepseek.com/<br>
x.AI Grok: https://grok.com/<br>

**O QUE É E PARA QUE SERVER O SIMET:** O SIMET (Sistema de Medição de Tráfego de Internet) é uma plataforma oficial do NIC.br / CGI.br criada para medir, monitorar e analisar a qualidade da conexão com a Internet no Brasil.
Ele pode ser usado tanto por usuários finais quanto por empresas, provedores, escolas e órgãos públicos.

[![Medidor SIMET](http://img.youtube.com/vi//0.jpg)]( "Medidor SIMET")

Link da vídeo aula: 

## 01_ Instalando o Lighttpd Server no Ubuntu Server
```bash
#atualizando as listas do Apt
#opção do comando apt: update (Resynchronize the package index files from their sources)
sudo apt update

#instalando o Lighttpd Server no Ubuntu Server
#opção do comando apt: install (install is followed by one or more package names)
sudo apt install lighttpd

#reiniciando o serviço do Lighttpd Server
#opções do comando systemctl: restart (Stop and then start one or more units)
sudo systemctl restart lighttpd
```

## 02_ Verificando o Serviço e Versão do Lighttpd Server no Ubuntu Server
```bash
#verificando o serviço do Lighttpd Server
#opções do comando systemctl: status (runtime status information), restart (Stop and then start one or more units),
#stop (Stop (deactivate) one or more units), start (Start (activate) one or more units), reload (Asks all units 
#listed on the command line to reload their configuration)
sudo systemctl status lighttpd
sudo systemctl restart lighttpd
sudo systemctl reload lighttpd
sudo systemctl stop lighttpd
sudo systemctl start lighttpd

#analisando os Log's e mensagens de erro do Servidor do Lighttpd
#opção do comando journalctl: x (catalog), e (pager-end), u (unit)
sudo journalctl -xeu lighttpd
```

**OBSERVAÇÃO IMPORTANTE:** Por que sempre é necessário verificar a versão do serviço de rede que você está implementando ou configurando no Servidor Ubuntu Server, devido as famosas falhas de segurança chamadas de: *CVE (Common Vulnerabilities and Exposures)*, com base na versão utilizada podemos pesquisar no site do **Ubuntu Security CVE Reports:** https://ubuntu.com/security/cves as falhas de segurança encontradas e corrigidas da versão do nosso aplicativo, o que ela afeta, se foi corrigida e como aplicar a correção.

```bash
#verificando a versão do Lighttpd Server
#opção do comando lighttpd: -v (version)
sudo lighttpd -V
```

## 03_ Verificando a Porta de Conexão do Lighttpd Server no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** no Ubuntu Server as Regras de Firewall utilizando o comando: __` iptables `__ ou: __` ufw `__ está desabilitado por padrão **(INACTIVE)**, caso você tenha habilitado algum recurso de Firewall é necessário fazer a liberação do *Fluxo de Entrada (INPUT), Porta (PORT) e Protocolo (PROTOCOL) TCP* do Serviço corresponde nas tabelas do firewall e testar a conexão.

```bash
#verificando a porta padrão TCP-80 do Lighttpd Server
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'80' -sTCP:LISTEN
```

## 04_ Instalando Medidor Simet utilizando o script automatizado no Ubuntu Server
```bash
#download do script de instalação do Medidor Simet para Ubuntu Server
wget https://download.simet.nic.br/medidores/simet-ma/linux/simet-ma.run

#alterando as permissões de execução do script do Medidor Simet
#opção do comando chmod: -v (verbose), +x (additional execution for all)
chmod -v +x simet-ma.run

#instalando o Medidor Simet no Ubuntu Server
sudo ./simet-ma.run
```

## 05_ Verificando o Serviço e Versão do Medidor Simet no Ubuntu Server
```bash
#verificando os serviços do Medidor Simet
#opções do comando systemctl: status (runtime status information), restart (Stop and then start one or more units),
#stop (Stop (deactivate) one or more units), start (Start (activate) one or more units), reload (Asks all units 
#listed on the command line to reload their configuration)
sudo systemctl status simet-ma simet-lmapd
sudo systemctl restart simet-ma simet-lmapd
sudo systemctl reload simet-ma simet-lmapd
sudo systemctl stop simet-ma simet-lmapd
sudo systemctl start simet-ma simet-lmapd

#analisando os Log's e mensagens de erro do Medidor Simet
#opção do comando journalctl: x (catalog), e (pager-end), u (unit)
sudo journalctl -xeu simet-ma
sudo journalctl -xeu simet-lmapd
```

**OBSERVAÇÃO IMPORTANTE:** Por que sempre é necessário verificar a versão do serviço de rede que você está implementando ou configurando no Servidor Ubuntu Server, devido as famosas falhas de segurança chamadas de: *CVE (Common Vulnerabilities and Exposures)*, com base na versão utilizada podemos pesquisar no site do **Ubuntu Security CVE Reports:** https://ubuntu.com/security/cves as falhas de segurança encontradas e corrigidas da versão do nosso aplicativo, o que ela afeta, se foi corrigida e como aplicar a correção.

```bash
#verificando a versão do Medidor Simet
#opção do comando lmapd (SIMET-LMAP): -v (version)
#opção do comando inetupc (SIMET-MA): -V (version)
/opt/simet/bin/lmapd -v
/opt/simet/bin/inetupc -V
```

## 06_ Verificando a Porta de Conexão do Medidor Simet no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** no Ubuntu Server as Regras de Firewall utilizando o comando: __` iptables `__ ou: __` ufw `__ está desabilitado por padrão **(INACTIVE)**, caso você tenha habilitado algum recurso de Firewall é necessário fazer a liberação do *Fluxo de Entrada (INPUT), Porta (PORT) e Protocolo (PROTOCOL) TCP* do Serviço corresponde nas tabelas do firewall e testar a conexão.

```bash
#verificando a porta padrão TCP-22000 do Medidor Simet Remoto
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'22000' -sTCP:ESTABLISHED
```

## 07_ Localização dos Arquivos de Configuração do Medidor Simet no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** por padrão o agendamento de atualizações das medições do Simet é executado a cada: 4 horas (240 minutos), você pode alterar ou adicionar mais opções por dia, mês, semana, etc. conforme necessidade.

```bash
/opt/simet                           <-- Diretório de configuração do Medidor Simet
/opt/simet/bin                       <-- Diretório dos binários do Medidor Simet
/opt/simet/etc                       <-- Diretório das configurações do Medidor Simet
/opt/simet/lib                       <-- Diretório das bibliotecas do Medidor Simet
/opt/simet/lib/simet/simet-ma.conf   <-- Arquivo de configuração padrão do Medidor Simet
/var/log/syslog                      <-- Arquivo principal dos Logs do Medidor Simet
/etc/cron.d/siment-ma                <-- Arquivo de agendamento do Medidor Simet
/etc/cron.daily/siment-ma            <-- Arquivo de agendamento diário do Medidor Simet
/etc/cron.weekly/siment-ma           <-- Arquivo de agendamento semanal do Medidor Simet
```

## 08_ Adicionando o Usuário Local no Grupo Padrão do Medidor Simet no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** você pode substituir a variável de ambiente: __`$USER`__ pelo nome do usuário existente no sistema para adicionar no Grupo desejado.

```bash
#adicionando o usuário local (logado) no grupo do Medidor Simet
#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
sudo usermod -a -G nicbr-simet $USER

#verificando as informações do grupo NICBR-SIMET do Medidor Simet
#opção do comando getent: group (the database system group)
sudo getent group nicbr-simet

#recomendo fazer logout do usuário para testar as permissões de grupos
#OBSERVAÇÃO: você pode utilizar o comando: exit, logout ou tecla de atalho: Ctrl+D
exit
```

## 09_ Executando o Medidor Simet pela primeira vez no Ubuntu Server
```bash
#registrando o Medidor Simet para o envio das informações remotas
#opção do comando sudo: -u (other-user)
sudo -u nicbr-simet /opt/simet/bin/simet_register_ma.sh

#iniciando uma medição sob demanda do Medidor Simet e enviar para o remoto
#opção do comando sudo: -u (other-user)
#opção do script simet-ma_run.sh: -v (verbose)
sudo -u nicbr-simet /opt/simet/bin/simet-ma_run.sh -v

#gerando a URL de visualização remota dos resultados do Medidor Simet
#opção do script simet_view_results.sh: --url (output URL view report)
/opt/simet/bin/simet_view_results.sh --url
```

## 10_ Testando o acesso ao Lighttpd Server no Terminal e no Navegador

**OBSERVAÇÃO:** Tabela de referência dos Códigos do HTTP mais comuns para tester no Terminal ou no Navegador.

| Código | Significado                                     |
| ------ | ----------------------------------------------- |
| 200    | OK (Sucesso)                                    |
| 301    | Moved Permanently (Redirecionamento permanente) |
| 302    | Found (Redirecionamento temporário)             |
| 403    | Forbidden (Acesso negado)                       |
| 404    | Not Found (Não encontrado)                      |
| 500    | Internal Server Error                           |

```bash
#testando o acesso a páginas index.html no Lighttpd Server
#opção do comando curl: -I (Fetch the headers only)
curl -I http://127.0.0.1:80/
```
```bash
#utilizar os navegadores para testar o acesso remoto o Medidor Simet
firefox ou google chrome: http://endereço_ipv4_ubuntuserver
```

========================================DESAFIOS=========================================

**#11_ DESAFIO-01:** 

=========================================================================================

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO SIMET SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do Simet realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/25-simet.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiosimet #desafionicbr


