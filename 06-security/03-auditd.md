#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 12/08/2025<br>
#Data de atualização: 26/09/2025<br>
#Versão: 0.02<br>

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO AUDITD SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do Auditd realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/22-auditd.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafioauditd #desafiosecurity

Conteúdo estudado nesse desafio:<br>
#01_ 

Site Oficial do Auditd: https://man7.org/linux/man-pages/man8/auditd.8.html

**Sites de IA (Inteligência Artificial) indicados para os Desafios**<br>
OpenAI ChatGPT: https://chatgpt.com<br>
Microsoft Copilot: https://copilot.microsoft.com<br>
Google Gemini: https://gemini.google.com<br>
DeepSeek: https://chat.deepseek.com/<br>
x.AI Grok: https://grok.com/<br>

**O QUE É E PARA QUE SERVER O AUDITD:** O Fail2Ban é uma ferramenta de segurança para servidores Linux que protege contra ataques de força bruta e outras tentativas de acesso malicioso. Ele monitora arquivos de *log (como /var/log/auth.log, /var/log/apache2/error.log, entre outros)* e, quando detecta padrões de tentativas de acesso suspeitas (como várias senhas incorretas), ele bloqueia automaticamente o IP do atacante, adicionando regras no firewall (geralmente no iptables, nftables ou ufw).

[![Auditd](http://img.youtube.com/vi//0.jpg)]( "Auditd")

Link da vídeo aula: 

## 01_ Instalando o Auditd no Ubuntu Server
```bash
#atualizando as listas do Apt
sudo apt update

#instalando o Auditd no Ubuntu Server
sudo apt install auditd audispd-plugins 
```

## 03_ Verificando o Serviço e Versão do Auditd no Ubuntu Server
```bash
#verificando o serviço do Auditd
#opções do comando systemctl: status (runtime status information), restart (Stop and then 
#start one or more units), stop (Stop (deactivate) one or more units), start (Start (activate) 
#one or more units)
sudo systemctl status auditd
sudo systemctl restart auditd
sudo systemctl reload auditd
sudo systemctl stop auditd
sudo systemctl start auditd

#analisando os Log's e mensagens de erro do Auditd
#opção do comando journalctl: x (catalog), e (pager-end), u (unit)
sudo journalctl -xeu auditd
```

**OBSERVAÇÃO IMPORTANTE:** Por que sempre é necessário verificar a versão do serviço de rede que você está implementando ou configurando no Servidor Ubuntu Server, devido as famosas falhas de segurança chamadas de: *CVE (Common Vulnerabilities and Exposures)*, com base na versão utilizada podemos pesquisar no site do **Ubuntu Security CVE Reports:** https://ubuntu.com/security/cves as falhas de segurança encontradas e corrigidas da versão do nosso aplicativo, o que ela afeta, se foi corrigida e como aplicar a correção.

```bash
#verificando as versões do Auditctl, Ausearch e Aureport
#opção do comandos auditctl, ausearch e aureport: -v (version)
sudo auditctl -v    #configuração das regras de auditoria do Auditd
sudo ausearch -v    #consultar um evento de log de auditoria do Auditd
sudo aureport -v    #relatório do sistema de auditoria do Auditd
```

## 04_ Localização dos Arquivos de Configuração do Auditd no Ubuntu Server
```bash
/etc/audit/             <-- Diretório de configuração padrão do Auditd
/etc/audit/plugins.d/   <-- Diretório dos plugins do Auditd
/etc/audit/rules.d/     <-- Diretório das regras do Auditd
/var/log/audit/         <-- Diretório dos logs do Auditd
```

## 05_ Atualizando os arquivos de configuração do Auditd no Ubuntu Server
```bash
#fazendo o backup do arquivo de configuração do Auditd
#opção do comando cp: -v (verbose)
sudo cp -v /etc/audit/auditd.conf /etc/audit/auditd.conf.old

#atualizando o arquivo de configuração do Auditd do Github
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/audit/auditd.conf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/auditd.conf

#atualizando o arquivo de configuração das Regras do Auditd do Github
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/audit/rules.d/wsvaamodne.rules https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/wsvaamodne.rules
```


========================================DESAFIOS=========================================

**#12_ DESAFIO-01:** 

=========================================================================================

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO FAIL2BAN SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do Fail2Ban realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/21-fail2ban.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiofail2ban #desafiosecurityp
