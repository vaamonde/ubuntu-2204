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
#Data de atualização: 20/04/2023
#Versão: 0.02
#Testado e homologado no GNU/Linux Ubuntu Server 22.04.x LTS
#
# Apt-Get ou Apt A ferramenta de pacote avançada, é uma interface de usuário de software 
# livre que funciona com bibliotecas centrais para lidar com a instalação e remoção de 
# software no Debian e em distribuições Linux baseadas nele.
#
# Update é utilizado para baixar informações de pacotes de todas as fontes configuradas.
sudo apt update
#
# List é utilizado para listar todos os software que serão atualizados no sistema.
sudo apt list --upgradable
#
# Upgrade é utilizado para instalar atualizações disponíveis de todos os pacotes atualmente 
# instalados no sistema a partir das fontes configuradas via sources.list
sudo apt upgrade
#
# Dist-Upgrade além de executar a função de atualização, também lida de forma inteligente 
# com as novas dependências das novas versões de pacotes
sudo apt dist-upgrade
#
# Full-Upgrade executa a função de atualização, mas removerá os pacotes atualmente 
# instalados se isso for necessário para atualizar o sistema como um todo
sudo apt full-upgrade
#
# Autoremove é utilizado para remover pacotes que foram instalados automaticamente para 
# satisfazer dependências de outros pacotes e agora não são mais necessários, pois as 
# dependências foram alteradas ou os pacotes que precisavam deles foram removidos nesse 
# meio tempo.
sudo apt autoremove
#
# Autoclean como Clean, o autoclean limpa o repositório local de arquivos de pacotes 
# recuperados. A diferença é que ele remove apenas arquivos de pacotes que não podem 
# mais ser baixados e são inúteis.
sudo apt autoclean
#
# Clean limpa o repositório local de arquivos de pacotes recuperados
sudo apt clean
#
# Reiniciar o servidor para aplicar todas as atualizações
sudo reboot