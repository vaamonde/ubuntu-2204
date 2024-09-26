#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 16/04/2024<br>
#Data de atualização: 23/08/2024<br>
#Versão: 0.16<br>

OBSERVAÇÃO IMPORTANTE: COMENTAR NO VÍDEO DO VISUAL STUDIO SE VOCÊ CONSEGUIU INTEGRAR COM A SEGUINTE FRASE: Integração do Visual Studio realizado com sucesso!!! #BoraParaPrática

COMPARTILHAR O SELO DA IMPLEMENTAÇÃO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM)MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DA IMPLEMENTAÇÃO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/18-vscode.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiovscode #integracaovscode

Conteúdo estudado nessa implementação:<br>
#01_ Instalando as Dependências do Microsoft Visual Studio Code no Linux Mint<br>
#02_ Download e Instalação do Microsoft Visual Studio Code no Linux Mint e Windows<br>
#03_ Instalando a Extensão do Remote SSH e Explorer no Linux Mint e Windows<br>
#04_ Habilitando o Suporte ao Encaminhamento de Portas no OpenSSH Server<br>
#05_ Configurando a Extensão do Remote SSH no Linux Mint e Windows<br>
#06_ Fazendo o Fork de um Projeto de Site do Github e Clonando no Ubuntu Server
#07_ Testando um novo Fork de um Projeto de Site do Github e Clonando no Ubuntu Server<br>

Site Oficial do Visual Studio Code: https://code.visualstudio.com/<br>
Site Oficial do Visual Studio Code Web: https://vscode.dev/<br>
Link do Marketplace: https://marketplace.visualstudio.com/VSCode

O Visual Studio Code é um editor de código-fonte desenvolvido pela Microsoft para Windows, Linux e macOS. Ele inclui suporte para depuração, controle de versionamento Git incorporado, realce de sintaxe, complementação inteligente de código, snippets e refatoração de código.

A extensão Visual Studio Code Remote - SSH permite que você abra uma pasta remota em qualquer máquina remota, máquina virtual ou contêiner com um servidor SSH em execução e aproveite ao máximo o conjunto de recursos do VS Code. Uma vez conectado a um servidor, você pode interagir com arquivos e pastas em qualquer lugar do sistema de arquivos remoto.

GitHub é uma plataforma de hospedagem de código-fonte e arquivos com controle de versão usando o Git. Ele permite que programadores, utilitários ou qualquer usuário cadastrado na plataforma contribuam em projetos privados e/ou Open Source de qualquer lugar do mundo.

[![Integração VSCode](http://img.youtube.com/vi/V0Ddhelmi4Y/0.jpg)](https://www.youtube.com/watch?v=V0Ddhelmi4Y "Integração VSCode")

Link da vídeo aula: https://www.youtube.com/watch?v=V0Ddhelmi4Y

#01_ Instalando as Dependências do Microsoft Visual Studio Code VSCode no Linux Mint<br>

```bash
#OBSERVAÇÃO IMPORTANTE: O RECURSO DO REMOTE SSH DO VSCODE POSSUI AS DEPENDÊNCIAS 
#DO OPENSSH SERVER, ESSE APLICATIVO JÁ FOI INSTALADA E CONFIGURADO NA ETAPA: 01 
#DO OPENSSH.

#instalando as dependências do VSCode no Linux Mint
sudo apt update
sudo apt install vim git python2 python3 cloc
```

#02_ Download e Instalação do Microsoft Visual Studio Code VSCode no Linux Mint e Windows<br>
```bash
#link de download no Linux Mint
https://code.visualstudio.com/download
  Versão: .deb (Debian, Ubuntu 64 Bits)
    Salvar arquivo

#link de download no Microsoft Windows
https://code.visualstudio.com/download
  Versão: Windows (Windows 10, 11)
    Salvar arquivo
```

#03_ Instalando a Extensão do Remote SSH e Explorer no Linux Mint e Windows<br>
```bash
#adicionado as extensões do Remote SSH e Explorer no VSCode
vscode
  Extensões
    Pesquisar:
      Remote - SSH (Instalar)
      Remote Explorer (Instalar)
```

#04_ Habilitando o Suporte ao Encaminhamento de Portas no OpenSSH Server<br>
```bash
#editando o arquivo de configuração do OpenSSH Server
sudo vim /etc/ssh/sshd_config
INSERT
```
```bash
#comentar as variáveis: ClientAliveInterval e ClientAliveCountMax a partir da linha: 104
#ClientAliveInterval 1800
#ClientAliveCountMax 3

#habilitar o recurso na variável: AllowTcpForwarding de: no para: yes na linha: 138
AllowTcpForwarding yes
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>

#testando o arquivo de configuração do OpenSSH SERVER
#opção do comando sshd: -t (text mode check configuration)
sudo sshd -t

#reiniciar o serviço do OpenSSH Server
sudo systemctl restart ssh
sudo systemctl status ssh

#analisando os Log's e mensagens de erro do Servidor do OpenSSH (NÃO COMENTADO NO VÍDEO)
#opção do comando journalctl: -t (identifier), x (catalog), e (pager-end), u (unit)
sudo journalctl -t sshd
sudo journalctl -xeu ssh
```

#05_ Configurando a Extensão do Remote SSH no Linux Mint e Windows<br>
```bash
#configurando a integração com o Ubuntu Server no Linux Mint
Remote Explorer
  Remotes (Tunnels/SSH)
    SSH: +(New Remote)
      #altere o usuário e senha conforme a sua necessidade
      Enter SSH Connection Command: vaamonde@172.16.1.20
      #altere o caminho do arquivo de configuração conforme a sua necessidade
      Select SSH configuration file to update: /home/SEU_USUÁRIO/.ssh/config
    <Refresh>

    SSH:
      172.16.1.20 (Connect in Current Windows)
      Enter password for: vaamonde@172.16.1.20: pti@2018
    <Dont Show Again>

<Open Folder>
  /home/vaamonde/nodejs-hello <OK>
    Enter password for: vaamonde@172.16.1.20: pti@2018
    (YES) Trust the authors of all files in the parent folder
    <Yes, I trust the authors>

#configurando a integração com o Ubuntu Server no Windows 10
Remote Explorer
  Remotes (Tunnels/SSH)
    SSH: +(New Remote)
      #altere o usuário e senha conforme a sua necessidade
      Enter SSH Connection Command: vaamonde@172.16.1.20
      #altere o caminho do arquivo de configuração conforme a sua necessidade
      Select SSH configuration file to update: C:\Users\SEU_USUÁRIO\.ssh\config
    <Refresh>

    SSH:
      172.16.1.20 (Connect in Current Windows)
      Select the platform of the remote host: Linux
      Enter password for: vaamonde@172.16.1.20: pti@2018

<Open Folder>
  /home/vaamonde/nodejs-hello <OK>
    Enter password for: vaamonde@172.16.1.20: pti@2018
    (YES) Trust the authors of all files in the parent folder
    <Yes, I trust the authors>
```

#06_ Fazendo o Fork de um Projeto de Site do Github e Clonando no Ubuntu Server<br>
```bash
Conhecendo o Projeto do Aluno: João Vitor Andrade (Técnico em Informática Tarde SENAC-SP Tatuapé)
LinkedIn: https://www.linkedin.com/in/jo%C3%A3o-vitor-andrade-289216271/
Github: https://github.com/andradejao/
Repositório: https://github.com/andradejao/outlawgames
Site: https://andradejao.github.io/outlawgames/

#fazendo um Fork (garfada) do Projeto do João Vitor Andrade
Repositório: https://github.com/andradejao/outlawgames
  Clique em: Fork
    Create a new Fork
      Owner: vaamonde/ Repository name: outlawgames
      Description: Esse é o repositório que hospedará o meu primeiro site criado (FORK)
      Copy the main branch only: ON (Enable)
    <Create Fork>

#acessando o diretório Raiz do Apache2 no Ubuntu Server
cd /var/www/html

#clonando o projeto do Github no Ubuntu Server
sudo git clone https://github.com/vaamonde/outlawgames

#alterando as permissões dos diretórios e arquivos do site Clonado
#opção do comando chown: -R (recursive), -f (silent), -v (verbose), www-data (user), www-data (group)
#opção do comando find: . (path), -type d (directory), , type f (file), -exec (execute command)
#opção do comando chmod: -v (verbose), 2775 (Set-GID=2, Dono=RWX, Grupo=RWS, Outros=R-X)
#opção do comando chmod: -v (verbose), 2664 (Set-GID=2, Dono=RW-, Grupo=RWS, Outros=R--)
#opção do comando {} \;: executa comandos em lote e aplica as permissões para cada arquivo/diretório em loop
sudo chown -Rfv www-data.www-data /var/www/html/outlawgames/
sudo find /var/www/html/outlawgames/. -type d -exec chmod -v 2775 {} \;
sudo find /var/www/html/outlawgames/. -type f -exec chmod -v 2664 {} \;

#OBSERVAÇÃO IMPORTANTE (NÃO COMENTADO NO VÍDEO): DEPOIS QUE VOCÊ FAZ A CLONAGEM DE UM
#PROJETO DO GITHUB NO UBUNTU SERVER E ALTERA AS PERMISSÕES DOS ARQUIVOS, É NECESSÁRIO
#APLICAR O COMANDO ABAIXO PARA O REPOSITÓRIO LOCAL ENTENDER QUE ALTEROU AS PERMISSÕES
#E PERMITIR EXECUTAR O COMANDO: git pull PARA BUSCAR ATUALIZAÇÕES REMOTAS.
#opções do comando git: config (Get and set repository or global options), --global 
#(write to global ~/.gitconfig), --add (Adds a new line to the option without altering 
#any existing values), safe.directory (These config entries specify Git-tracked directories 
#that are considered safe even if they are owned by someone other than the current user)
git config --global --add safe.directory /var/www/html/outlawgames

#testando o site via navegador
firefox ou google chrome: http://endereço_ipv4_ubuntuserver/outlawgames
```

#07_ Testando um novo Fork de um Projeto de Site do Github e Clonando no Ubuntu Server<br>
```bash
Conhecendo o Projeto do Aluno: Camila Jodai (Técnico em Informática Tarde SENAC-SP Tatuapé)
LinkedIn: https://www.linkedin.com/in/camila-jodai-330676271/
Github: https://github.com/camilajodai
Repositório: https://github.com/camilajodai/protectpetz
Site: https://camilajodai.github.io/protectpetz/

#fazendo um Fork (garfada) do Projeto da Camila Jodai
Repositório: https://github.com/camilajodai/protectpetz
  Clique em: Fork
    Create a new Fork
      Owner: vaamonde/ Repository name: protectpetz
      Description: Esse é o repositório que hospedará o meu segundo site criado (FORK)
      Copy the main branch only: ON (Enable)
    <Create Fork>

#acessando o diretório Raiz do Apache2 no Ubuntu Server
cd /var/www/html

#clonando o projeto do Github no Ubuntu Server
sudo git clone https://github.com/vaamonde/protectpetz

#alterando as permissões dos diretórios e arquivos do site Clonado
#opção do comando chown: -R (recursive), -f (silent), -v (verbose), www-data (user), www-data (group)
#opção do comando find: . (path), -type d (directory), , type f (file), -exec (execute command)
#opção do comando chmod: -v (verbose), 2775 (Set-GID=2, Dono=RWX, Grupo=RWS, Outros=R-X)
#opção do comando chmod: -v (verbose), 2664 (Set-GID=2, Dono=RW-, Grupo=RWS, Outros=R--)
#opção do comando {} \;: executa comandos em lote e aplica as permissões para cada arquivo/diretório em loop
sudo chown -Rfv www-data.www-data /var/www/html/protectpetz/
sudo find /var/www/html/protectpetz/. -type d -exec chmod -v 2775 {} \;
sudo find /var/www/html/protectpetz/. -type f -exec chmod -v 2664 {} \;

#OBSERVAÇÃO IMPORTANTE (NÃO COMENTADO NO VÍDEO): DEPOIS QUE VOCÊ FAZ A CLONAGEM DE UM
#PROJETO DO GITHUB NO UBUNTU SERVER E ALTERA AS PERMISSÕES DOS ARQUIVOS, É NECESSÁRIO
#APLICAR O COMANDO ABAIXO PARA O REPOSITÓRIO LOCAL ENTENDER QUE ALTEROU AS PERMISSÕES
#E PERMITIR EXECUTAR O COMANDO: git pull PARA BUSCAR ATUALIZAÇÕES REMOTAS.
#opções do comando git: config (Get and set repository or global options), --global 
#(write to global ~/.gitconfig), --add (Adds a new line to the option without altering 
#any existing values), safe.directory (These config entries specify Git-tracked directories 
#that are considered safe even if they are owned by someone other than the current user)
git config --global --add safe.directory /var/www/html/protectpetz

#testando o site via navegador
firefox ou google chrome: http://endereço_ipv4_ubuntuserver/protectpetz
```

=========================================================================================

OBSERVAÇÃO IMPORTANTE: COMENTAR NO VÍDEO DO VISUAL STUDIO SE VOCÊ CONSEGUIU INTEGRAR COM A SEGUINTE FRASE: Integração do Visual Studio realizado com sucesso!!! #BoraParaPrática

COMPARTILHAR O SELO DA IMPLEMENTAÇÃO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DA IMPLEMENTAÇÃO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/18-vscode.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiovscode #integracaovscode