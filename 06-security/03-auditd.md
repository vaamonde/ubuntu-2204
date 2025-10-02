#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 12/08/2025<br>
#Data de atualização: 02/10/2025<br>
#Versão: 0.03<br>

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO AUDITD SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do Auditd realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/22-auditd.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafioauditd #desafioaudit #desafiosecurity

Conteúdo estudado nesse desafio:<br>
#01_ Instalando o Auditd no Ubuntu Server<br>
#02_ Habilitando o Serviço do Auditd no Ubuntu Server<br>
#03_ Verificando o Serviço e Versão do Auditd no Ubuntu Server<br>
#04_ Localização dos Arquivos de Configuração do Auditd no Ubuntu Server<br>
#05_ Atualizando os arquivos de configuração do Auditd no Ubuntu Server<br>
#06_ Editando os arquivos de configuração do serviço e regras do Auditd no Ubuntu Server<br>
#07_ Atualizando as regras de auditoria do Auditd no Ubuntu Server<br>
#08_ Consultando o arquivo de Log de Auditoria do Auditd no Ubuntu Server<br>
#09_ Gerando os relatórios do arquivo de Log de Auditoria do Auditd no Ubuntu Server<br>
#10_ Testando a regras de Auditoria do Auditd no Ubuntu Server<br>
#11_ Desafios de Auditoria do Auditd no Ubuntu Server<br>

Site Oficial do Auditd: https://man7.org/linux/man-pages/man8/auditd.8.html

**Sites de IA (Inteligência Artificial) indicados para os Desafios**<br>
OpenAI ChatGPT: https://chatgpt.com<br>
Microsoft Copilot: https://copilot.microsoft.com<br>
Google Gemini: https://gemini.google.com<br>
DeepSeek: https://chat.deepseek.com/<br>
x.AI Grok: https://grok.com/<br>

**O QUE É E PARA QUE SERVER O AUDITD:** O auditd (Audit Daemon) é o daemon principal do Linux Audit Framework, um subsistema do kernel Linux voltado para auditoria e segurança. Ele registra eventos relevantes de segurança e alterações críticas no sistema, armazenando em logs detalhados que podem ser analisados depois. O auditd serve para monitorar, registrar e proteger o sistema contra alterações e acessos indevidos, sendo essencial para segurança, rastreabilidade e conformidade em servidores Linux.

[![Auditd](http://img.youtube.com/vi//0.jpg)]( "Auditd")

Link da vídeo aula: 

## 01_ Instalando o Auditd no Ubuntu Server
```bash
#atualizando as listas do Apt
sudo apt update

#instalando o Auditd no Ubuntu Server
sudo apt install auditd audispd-plugins 
```

## 02_ Habilitando o Serviço do Auditd no Ubuntu Server
```bash
#habilitando o serviço do Auditd no Ubuntu Server
#opção do comando systemctl: daemon-reload (Reload the systemd manager configuration), 
#enable (Enable one or more units), start (Start (activate) one or more units)
sudo systemctl daemon-reload
sudo systemctl enable auditd
sudo systemctl start auditd
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
sudo ausearch -v    #consultar eventos no log de auditoria do Auditd
sudo aureport -v    #gerar relatórios do sistema de auditoria do Auditd
```

## 04_ Localização dos Arquivos de Configuração do Auditd no Ubuntu Server
```bash
/etc/audit/                      <-- Diretório de configuração padrão do Auditd
/etc/audit/auditd.conf           <-- Arquivo de configuração padrão do serviço do Auditd
/etc/audit/plugins.d/            <-- Diretório dos plugins do Auditd
/etc/audit/rules.d/              <-- Diretório das regras do Auditd
/etc/audit/rules.d/audit.rules   <-- Arquivo de configuração padrão das regras do Auditd
/var/log/audit/                  <-- Diretório dos logs do Auditd
```

## 05_ Atualizando os arquivos de configuração do Auditd no Ubuntu Server
```bash
#fazendo o backup do arquivo de configuração do serviço do Auditd
#opção do comando cp: -v (verbose)
sudo cp -v /etc/audit/auditd.conf /etc/audit/auditd.conf.old

#atualizando o arquivo de configuração do Auditd do Github
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/audit/auditd.conf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/auditd.conf

#atualizando o arquivo de configuração das Regras do Auditd do Github
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/audit/rules.d/wsvaamonde.rules https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/wsvaamonde.rules
```

## 06_ Editando os arquivos de configuração do serviço e regras do Auditd no Ubuntu Server
```bash
#editar o arquivo de configuração do Auditd
sudo vim /etc/audit/auditd.conf

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
#alterar a linha: 61 variável do: name = pti.intra
name = pti.intra
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>

#editar o arquivo de regras do Auditd
sudo vim /etc/audit/rules.d/wsvaamonde.rules

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
#adicionar mais regras de monitoramento seguindo o padrão
-w arquivo_ou_diretório -p permissões -k chave_para_filtro
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>
```

## 07_ Atualizando as regras de auditoria do Auditd no Ubuntu Server
```bash
#verificando se há alguma alteração de regra existente para carregar no Auditd
#opção do comando augenrules: --check (test if rules have changed and need updating without overwriting audit.rules)
sudo augenrules --check

#carregando e mesclando as regras do Auditd
#opção do comando augenrules: --load (load old or newly built rules into the kernel)
sudo augenrules --load

#verificando as regras de auditoria ativas do Auditd
#opção do comando auditctl: -l (List all rules 1 per line) 
sudo auditctl -l

#verificando o arquivo de mesclagem de regras do Auditd
#opção do comando cat: -n (number line)
sudo cat -n /etc/audit/audit.rules
```

## 08_ Consultando o arquivo de Log de Auditoria do Auditd no Ubuntu Server
```bash
#listando todo o conteúdo do arquivo de Log do Auditd no Ubuntu Server
#opção do comando cat: -n (number line)
sudo cat -n /var/log/audit/audit.log

#pesquisando no arquivo de log ocorrências no arquivo /etc/passwd
#opção do comando ausearch: -f (Search for an event based on the given filename)
sudo ausearch -f /etc/passwd

#pesquisando no arquivo de log ocorrências no arquivo /etc/passwd
#opção do comando ausearch: -k (Search for an event based on the given key string)
sudo ausearch -k passwd_changes
```

## 09_ Gerando os relatórios do arquivo de Log de Auditoria do Auditd no Ubuntu Server
```bash
#gerando o relatório de sumário do Auditd
sudo aureport

#gerando o relatório de modificações de contas no Auditd
#opção do comando aureport: -m (Report about account modifications)
sudo aureport -m 

#gerando o relatório de autenticação de contas no Auditd
#opção do comando aureport: -au (Report about authentication attempts)
sudo aureport -au
```

## 10_ Testando a regras de Auditoria do Auditd no Ubuntu Server
```bash
#monitoramento em tempo real de arquivo de log do Auditd no Ubuntu Server
#opção do comando tail: -f (output appended data as the file grows)
#opção do comando cat: -n (number all output lines)
#opção do redirecionador | (piper): Conecta a saída padrão com a entrada padrão de outro comando
sudo tail -f /var/log/audit/audit.log | cat -n

#autenticando remotamente via ssh no Ubuntu Server
ssh SEU_USUÁRIO_REMOTO@ENDEREÇO_IPV4_SERVIDOR

#adicionando um novo usuário de teste no Ubuntu Server
sudo useradd teste01

#removendo o usuário de teste no Ubuntu Server
sudo userdel teste01

#pesquisando no arquivo de log ocorrências no arquivo /etc/passwd
#opção do comando ausearch: -f (Search for an event based on the given filename)
#opção do redirecionador | (piper): Conecta a saída padrão com a entrada padrão de outro comando
sudo ausearch -f /etc/passwd | grep passwd

#pesquisando no arquivo de log ocorrências no arquivo /etc/passwd
#opção do comando ausearch: -k (Search for an event based on the given key string)
#opção do redirecionador | (piper): Conecta a saída padrão com a entrada padrão de outro comando
sudo ausearch -k passwd_changes | grep passwd
```

========================================DESAFIOS=========================================

**#11_ DESAFIO-01:** 

=========================================================================================

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO AUDITD SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do Auditd realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/22-auditd.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafioauditd #desafioaudit #desafiosecurity
