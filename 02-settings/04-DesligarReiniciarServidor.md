#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 18/04/2023<br>
#Data de atualização: 28/03/2025<br>
#Versão: 0.06<br>

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

Conteúdo estudado desses comandos:<br>
#01_ Desligando e reinicializando o servidor com halt no Ubuntu Server<br>
#02_ Desligando e reinicializando o servidor com poweroff no Ubuntu Server<br>
#03_ Desligando e reinicializando o servidor com init no Ubuntu Server<br>
#04_ Desligando e reinicializando o servidor com reboot no Ubuntu Server<br>
#05_ Desligando e reinicializando o servidor com shutdown no Ubuntu Server<br>

[![Desligar Reiniciar Ubuntu Server](http://img.youtube.com/vi/NbA-k5-iLWA/0.jpg)](https://www.youtube.com/watch?v=NbA-k5-iLWA "Desligar e Reiniciar Ubuntu Server")

Link da vídeo aula: https://www.youtube.com/watch?v=NbA-k5-iLWA

## 01_ Desligando e reinicializando o servidor com halt no Ubuntu Server<br>
```bash
#opção do comando halt: -p (poweroff)
sudo halt -p
sudo halt --reboot
```

## 02_ Desligando e reinicializando o servidor com poweroff no Ubuntu Server<br>
```bash
#opção do comando poweroff: --reboot (reboot host)
sudo poweroff
sudo poweroff --reboot
```

## 03_ Desligando e reinicializando o servidor com init no Ubuntu Server<br>

**OBSERVAÇÃO:** init é o primeiro processo iniciado durante a inicialização do sistema de computador. O init é um processo daemon que continua executando até o sistema ser desligado. o init trabalha no conceito de Runlevel (níveis de execução), no GNU/Linux temos basicamente 08 (oito) tipos de Runlevels: 

1. init 0 - Shutdown;
2. init 1 - Single user mode or emergency mode; 
3. init 2 - No network;
4. init 3 - Network is present;
5. init 4 - It is similar to runlevel 3;
6. init 5 - Network is present;
7. init 6 - This runlevel is defined to system restart;
8. init s - Tells the init command to enter the maintenance mode;
9. init S - Same as init s; 
10. init m - Same as init s and init S e init M - Same as init s or init S or init m.

```bash
#opção do comando init: 0 (halt), 6 (reboot)
sudo init 0
sudo init 6
```

## 04_ Desligando e reinicializando o servidor com reboot no Ubuntu Server<br>
```bash
#opção do comando reboot: --halt (shutdown host)
sudo reboot --halt
sudo reboot
```

## 05_ Desligando e reinicializando o servidor com shutdown no Ubuntu Server<br>
```bash
#opção do comando shutdown: -P (poweroff), -h (halt 60 second), -r (reboot), -c (cancel)
#now (Shutdown immediately), 19:50 (Shutdown at 19:50 pm), +20 (Shutdown in 20 minutes)
sudo shutdown -P
sudo shutdown -h
sudo shutdown -r
sudo shutdown -h now
sudo shutdown -r now

#agendando o desligamento ou o reboot do servidor
sudo date
sudo shutdown -r 19:50 Servidor será reinicializando às 19:50hs
sudo shutdown -r +20 Servidor será reinicializando em 20 minutos
sudo shutdown -c
```