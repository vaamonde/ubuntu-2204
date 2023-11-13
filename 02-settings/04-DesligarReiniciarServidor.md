#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 18/04/2023<br>
#Data de atualização: 31/10/2023<br>
#Versão: 0.01<br>

Release Notes Ubuntu Server 22.04.x: https://discourse.ubuntu.com/t/jammy-jellyfish-release-notes/24668<br>
Ubuntu Advantage for Infrastructure: https://ubuntu.com/advantage<br>
Ciclo de Lançamento do Ubuntu Server: https://ubuntu.com/about/release-cycle<br>
Releases All Ubuntu Server: https://wiki.ubuntu.com/Releases

#01_ Desligando e reinicializando o servidor com halt no Ubuntu Server<br>

	#opção do comando halt: -p (poweroff)
	sudo halt -p
	sudo halt --reboot

#02_ Desligando e reinicializando o servidor com poweroff no Ubuntu Server<br>

	sudo poweroff
	sudo poweroff --reboot

#03_ Desligando e reinicializando o servidor com init no Ubuntu Server<br>

	#OBSERVAÇÃO: init é o primeiro processo iniciado durante a inicialização do sistema 
	#de computador. O init é um processo daemon que continua executando até o sistema 
	#ser desligado.

	#opção do comando init: 0 (halt), 6 (reboot)
	sudo init 0
	sudo init 6

#04_ Desligando e reinicializando o servidor com reboot no Ubuntu Server<br>

	sudo reboot --halt
	sudo reboot

#05_ Desligando e reinicializando o servidor com shutdown no Ubuntu Server<br>

	#opção do comando shutdown: -P (poweroff), -h (halt 60 second), -r (reboot), -c (cancel)
	sudo shutdown -P
	sudo shutdown -h
	sudo shutdown -h now
	sudo shutdown -r now
	
	#agendando o desligamento ou o reboot do servidor
	sudo date
	sudo shutdown -r 19:50 Servidor será reinicializando às 19:50hs
	show shutdown -r +20 Servidor será reinicializando em 20 minutos
	sudo shutdown -c