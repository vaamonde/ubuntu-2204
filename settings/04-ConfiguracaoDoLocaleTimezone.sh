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
#Data de atualização: 18/01/2023
#Versão: 0.01
#Testado e homologado no GNU/Linux Ubuntu Server 22.04.1 LTS
#
# Configuração do Locale (Localidade) do Sistema Operacional Ubuntu Server
sudo localectl
sudo locale -a
sudo locale-gen pt_BR.UTF-8
sudo localectl set-locale LANG=pt_BR.UTF-8
sudo update-locale LANG=pt_BR.UTF-8 LC_ALL=pt_BR.UTF-8 LANGUAGE="pt_BR:pt:en"
sudo reboot
#
# Configuração do Timezone (Fuso Horário) do Sistema Operacional Ubuntu Server
sudo timedatectl
sudo systemctl status systemd-timesyncd.service
sudo timedatectl set-timezone "America/Sao_Paulo"
#
# OBSERVAÇÃO IMPORTANTE: geralmente mudar para o Time Zone de America/Sao_Paulo a hora
# fica errada no sistema, nesse caso podemos mudar para America/Fortaleza ou America/Bahia
# esse error e por causa do Fuso Horário em relação ao Horário de Verão que não existe 
# mais no Brasil
sudo vim /etc/systemd/timesyncd.conf
	INSERT
		[Time]
		NTP=a.st1.ntp.br
		FallbackNTP=a.ntp.br
	ESC SHIFT : x
sudo systemctl restart systemd-timesyncd.service
sudo systemctl status systemd-timesyncd.service
sudo timedatectl
#
# Configuração de Data e Hora do Sistema Operacional Ubuntu Server
sudo date
sudo date +%d/%m/%Y
sudo date -s 20/01/2023	(-s=set, Mês, Dia e Ano)
sudo date +%H:%M:%S
sudo date -s 13:30:00 (-s=set, Hora, Minuto, Segundos)
#
# Sincronizando Data e Hora do Sistema Operacional Ubuntu Server e Hardware (BIOS)
sudo hwclock --show
sudo hwclock --systohc (Atualização do Sistema para o Hardware)
sudo hwclock --hctosys (Atualização do Hardware para o Sistema)
#