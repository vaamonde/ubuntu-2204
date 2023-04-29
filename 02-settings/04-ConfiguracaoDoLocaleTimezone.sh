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
# Verificando as informações do Locale (Localidade) do Sistema Operacional Ubuntu Server
# opção do comando locale: -a (all-locales)
sudo localectl
sudo locale -a
#
# Configurando o Locale (Localidade) do Brasil no Sistema Operacional Ubuntu Server
sudo locale-gen pt_BR.UTF-8
sudo localectl set-locale LANG=pt_BR.UTF-8
sudo update-locale LANG=pt_BR.UTF-8 LC_ALL=pt_BR.UTF-8 LANGUAGE="pt_BR:pt:en"
sudo reboot
#
# Verificando as mudanças do Locale (Localidade) no Sistema Operacional Ubuntu Server
sudo localectl
sudo locale -a
#
# Verificando as informações do Timezone (Fuso Horário) do Sistema Operacional Ubuntu Server
sudo timedatectl
#
# Configurando o Timezone (Fuso Horário) de São Paulo no Sistema Operacional Ubuntu Server
sudo timedatectl set-timezone "America/Sao_Paulo"
sudo timedatectl
#
# OBSERVAÇÃO IMPORTANTE: geralmente mudar para o Time Zone de America/Sao_Paulo a hora
# fica errada no sistema, nesse caso podemos mudar para America/Fortaleza ou America/Bahia
# esse error e por causa do Fuso Horário em relação ao Horário de Verão que não existe 
# mais no Brasil
#
# O NTP é um protocolo para sincronização dos relógios dos computadores baseado no protocolo 
# UDP sob a porta 123. É utilizado para sincronização do relógio de um conjunto de computadores 
# e dispositivos em redes de dados com latência variável.
sudo vim /etc/systemd/timesyncd.conf
	INSERT
		
		#descomentar e alterar os valores das variáveis a partir da linha 14
		[Time]
		NTP=a.st1.ntp.br
		FallbackNTP=a.ntp.br
	
	#salvar e sair do arquivo
	ESC SHIFT : x <Enter>
#
# Reinicializar o serviço do Systemd Timesyncd (Sincronismo de Data e Hora)
sudo systemctl restart systemd-timesyncd.service
sudo systemctl status systemd-timesyncd.service
sudo timedatectl
#
# Configuração de Data e Hora manualmente do Sistema Operacional Ubuntu Server
# opção do comando date: -s (set), %d (day of month), %m (month), %Y (year), %H (hour), %M (minute), %S (second)
sudo date
sudo date +%d/%m/%Y
sudo date -s 20/01/2023
sudo date +%H:%M:%S
sudo date -s 13:30:00
#
# Sincronizando Data e Hora do Sistema Operacional Ubuntu Server e Hardware (BIOS)
# opção do comando hwclock: --systohc (system clock to hardware clock), --hctosys (hardware clock to system clock)
sudo hwclock --show
sudo hwclock --systohc
sudo hwclock --hctosys