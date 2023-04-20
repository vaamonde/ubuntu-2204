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
#Testado e homologado no GNU/Linux Ubuntu Server 22.04.1 LTS
#
# Desligando e reinicializando o servidor com halt
# opção do comando halt: -p (poweroff)
sudo halt -p
sudo halt --reboot
#
# Desligando e reinicializando o servidor com poweroff
sudo poweroff
sudo poweroff --reboot
#
# Desligando e reinicializando o servidor com init
# opção do comando init: 0 (halt), 6 (reboot)
sudo init 0
sudo init 6
#
# Desligando e reinicializando o servidor com reboot
sudo reboot --halt
sudo reboot
#
# Desligando e reinicializando o servidor com shutdown
# opção do comando shutdown: -P (poweroff), -h (halt 60 second), -r (reboot), -c (cancel)
sudo shutdown -P
sudo shutdown -h
sudo shutdown -h now
sudo shutdown -r now
sudo date
sudo shutdown -r 19:50 Servidor será reinicializando
sudo shutdown -c