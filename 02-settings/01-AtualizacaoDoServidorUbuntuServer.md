#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 18/04/2023<br>
#Data de atualização: 07/01/2026<br>
#Versão: 0.10<br>

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

Conteúdo estudado nessa atualização:<br>
#01_ Atualizando as Listas sources.list do Apt ou Apt-Get no Ubuntu Server;<br>
#02_ Verificando todos os pacotes a serem utilizados no Ubuntu Server;<br>
#03_ Atualizando todos os software no Ubuntu Server;<br>
#04_ Forçando uma atualização completa de todos os software e dependências no Ubuntu Server;<br>
#05_ Forçando uma atualização e remoção de software desnecessários no Ubuntu Server;<br>
#06_ Removendo pacotes desnecessários no Ubuntu Server;<br>
#07_ Fazendo a limpeza dos repositórios locais e pacotes desnecessários no Ubuntu Server;<br>
#08_ Limpando o cache local do sources.list no Ubuntu Server;<br>
#09_ Verificando todas as versões de softwares atualizados no Ubuntu Server;<br>
#10_ Verificando os Logs de atualização de software no Ubuntu Server;<br>
#11_ Reiniciando o sistema operacional do Ubuntu Server.<br>

**O QUE É E PARA QUE SERVER O APT-GET OU APT:** O apt-get e o apt são ferramentas de linha de comando no sistema operacional Ubuntu (e outras distribuições baseadas em Debian) para gerenciar pacotes de software. Ambos são usados para instalar, atualizar, remover e consultar pacotes de software no sistema.

[![Atualização Ubuntu Server](http://img.youtube.com/vi/B3FzV2bxjtw/0.jpg)](https://www.youtube.com/watch?v=B3FzV2bxjtw "Atualização Ubuntu Server")

Link da vídeo aula: https://www.youtube.com/watch?v=B3FzV2bxjtw

## 01_ Atualizando as Listas (sources.list) do Apt ou Apt-Get no Ubuntu Server
```bash
#Update é utilizado para baixar informações de pacotes de todas as fontes configuradas.
#opção do comando apt: update (Resynchronize the package index files from their sources)
sudo apt update
```

## 02_ Verificando todos os pacotes a serem atualizados no Ubuntu Server
```bash
#List é utilizado para listar todos os software que serão atualizados no sistema.
#opção do comando apt: list (list is used to display a list of packages), --upgradable (shows
#a list of packages that can be upgraded using the apt package manager)
#opção do redirecionador | (pipe): Conecta a saída padrão com a entrada padrão de outro comando
#opção do comando cat: -n (number line)
sudo apt list --upgradable | cat -n
```

## 03_ Atualizando todos os software (Pacotes) no Ubuntu Server
```bash
#Upgrade é utilizado para instalar atualizações disponíveis de todos os pacotes atualmente 
#instalados no sistema a partir das fontes configuradas via sources.list
#opção do comando apt: upgrade (Install the newest versions of all packages currently installed
#on the system from the sources enumerated in /etc/apt/sources.list.)
sudo apt upgrade
  Do you want to continue? [Y/n] y <Enter>
```

**OBSERVAÇÃO:** algumas vezes pode aparecer uma tela na cor: __`Rosa/Branca`__ informando que alguns serviços de rede serão reinicializados, isso é comum na distribuição Ubuntu Server.

```bash
#reinicialização dos serviços de rede do Ubuntu Server
Daemons using outdated libraries
  Which services should be restarted?
<OK>
```

## 04_ Forçando uma atualização completa de todos os software e dependências no Ubuntu Server
```bash
#Dist-Upgrade além de executar a função de atualização, também lida de forma inteligente 
#com as novas dependências das novas versões de pacotes
#opção do comando apt: dist-upgrade (dist-upgrade in addition to performing the function of upgrade, 
#also intelligently handles changing dependencies with new versions of packages)
sudo apt dist-upgrade
```

## 05_ Forçando uma atualização e remoção de software desnecessários no Ubuntu Server
```bash
#Full-Upgrade executa a função de atualização, mas removerá os pacotes atualmente 
#instalados se isso for necessário para atualizar o sistema como um todo
#opção do comando apt: full-upgrade (Perform the function of upgrade but may also remove installed
#packages if that is required in order to resolve a package conflict)
sudo apt full-upgrade
```

## 06_ Removendo todos os pacotes desnecessários no Ubuntu Server
```bash
#Autoremove é utilizado para remover pacotes que foram instalados automaticamente para 
#satisfazer dependências de outros pacotes e agora não são mais necessários, pois as 
#dependências foram alteradas ou os pacotes que precisavam deles foram removidos nesse 
#meio tempo.
#opção do comando apt: autoremove (Autoremove is used to remove packages that were automatically
#installed to satisfy dependencies)
sudo apt autoremove
```

## 07_ Fazendo a limpeza dos repositórios locais e pacotes desnecessários no Ubuntu Server
```bash
#Autoclean como Clean, o autoclean limpa o repositório local de arquivos de pacotes 
#recuperados. A diferença é que ele remove apenas arquivos de pacotes que não podem 
#mais ser baixados e são inúteis.
#opção do comando apt: autoclean (Like clean, autoclean clears out the local repository of 
#retrieved package files)
sudo apt autoclean
```

## 08_ Limpando o cache local do (sources.list) no Ubuntu Server
```bash
#Clean limpa o repositório local de arquivos de pacotes recuperados
#opção do comando apt: clean (clean clears out the local repository of retrieved package files)
sudo apt clean
```

## 09_ Verificando todas as versões de software atualizados no Ubuntu Server (NÃO COMENTADO NO VÍDEO)
```bash
#List é utilizado para listar todos os software que serão atualizados no sistema.
#opção do comando apt: list (list is used to display a list of packages), --installed (shows
#a list of packages names as well as options to list installed)
#opção do redirecionador | (pipe): Conecta a saída padrão com a entrada padrão de outro comando
#opção do comando cat: -n (number line)
sudo apt list --installed | cat -n
```

## 10_ Verificando os Logs de atualização de software no Ubuntu Server (NÃO COMENTADO NO VÍDEO)
```bash
#Verificando o Log de instalação e atualização de pacotes no Ubuntu Server
#opção do comando cat: -n (number line)
sudo cat -n /var/log/apt/history.log

#Verificando o Log de finalização da atualização de pacotes no Ubuntu Server
#opção do comando cat: -n (number line)
sudo cat -n /var/log/apt/term.log
```

## 11_ Reiniciando o sistema operacional do Ubuntu Server para aplicar as mudanças
```bash
#Reiniciar o servidor para testar as atualizações
sudo reboot
```