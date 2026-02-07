#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 18/04/2023<br>
#Data de atualização: 03/01/2026<br>
#Versão: 0.11<br>

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
#01_ Desligando e reinicializando o servidor com halt no Ubuntu Server;<br>
#02_ Desligando e reinicializando o servidor com poweroff no Ubuntu Server;<br>
#03_ Desligando e reinicializando o servidor com init no Ubuntu Server;<br>
#04_ Desligando e reinicializando o servidor com reboot no Ubuntu Server;<br>
#05_ Desligando e reinicializando o servidor com shutdown no Ubuntu Server.<br>

**O QUE É E PARA QUE SERVER O SHUTDOWN:** O comando shutdown é usado em sistemas operacionais baseados em Unix/Linux e no Windows para desligar, reiniciar ou suspender o sistema de maneira controlada. Ele é útil para garantir que todos os processos sejam encerrados corretamente, evitando perda de dados ou corrupção do sistema.

**O QUE É E PARA QUE SERVER O INIT:** O comando init é um processo fundamental no Linux e Unix que inicializa e gerencia o sistema após o boot. Ele é responsável por colocar o sistema em diferentes estados de funcionamento, conhecidos como runlevels (em sistemas mais antigos) ou targets no systemd.

[![Desligar Reiniciar Ubuntu Server](http://img.youtube.com/vi/NbA-k5-iLWA/0.jpg)](https://www.youtube.com/watch?v=NbA-k5-iLWA "Desligar e Reiniciar Ubuntu Server")

Link da vídeo aula: https://www.youtube.com/watch?v=NbA-k5-iLWA

## 01_ Desligando e reinicializando o servidor com halt (parar) no Ubuntu Server
```bash
#opção do comando halt: -p (poweroff), --reboot (reboot host)
sudo halt -p
sudo halt --reboot
```

## 02_ Desligando e reinicializando o servidor com poweroff (desligar) no Ubuntu Server
```bash
#opção do comando poweroff: --reboot (reboot host)
sudo poweroff
sudo poweroff --reboot
```

## 03_ Desligando e reinicializando o servidor com init (inicialização) no Ubuntu Server

**OBSERVAÇÃO:** O *init* é o primeiro processo iniciado durante a inicialização do sistema de computador. O init é um processo daemon que continua executando até o sistema ser desligado. O init trabalha no conceito de *Runlevel (níveis de execução)*, no GNU/Linux temos basicamente **08 (oito) tipos de Runlevels**: 

| VALOR | DESCRIÇÃO |
|-------|-----------|
| **init 0** | Shutdown (Desligar) |
| **init 1** | Single user mode or emergency mode (Modo de usuário único ou modo de emergência) |
| **init 2** | No network (Sem rede) |
| **init 3** | Network is present (A rede está presente) |
| **init 4** | It is similar to runlevel 3 (É semelhante ao nível de execução 3) |
| **init 5** | Network is present (A rede está presente) |
| **init 6** | This runlevel is defined to system restart (Este nível de execução é definido para reiniciar o sistema) |
| **init s** | Tells the init command to enter the maintenance mode (Diz ao comando init para entrar no modo de manutenção) |
| **init S** | Same as init s (O mesmo que init s) |
| **init m** | Same as init s and init S e init M - Same as init s or init S or init m (O mesmo que init s e init S e init M - O mesmo que init s ou init S ou init m) |

```bash
#opção do comando init: 0 (halt), 6 (reboot)
sudo init 0
sudo init 6
```

## 04_ Desligando e reinicializando o servidor com reboot (reinício) no Ubuntu Server
```bash
#opção do comando reboot: --halt (shutdown host)
sudo reboot --halt
sudo reboot
```

## 05_ Desligando e reinicializando o servidor com shutdown (desligar) no Ubuntu Server
```bash
#opção do comando shutdown: -P (poweroff), -h (halt 60 second default), -r (reboot), -c (cancel)
#now (Shutdown immediately), 19:50 (Shutdown at 19:50 pm), +20 (Shutdown in 20 minutes)
sudo shutdown -P
sudo shutdown -h
sudo shutdown -r
sudo shutdown -h now
sudo shutdown -r now

#agendando (schedule) o desligamento ou o reboot do servidor com shutdown
#opção do comando shutdown: -r (reboot), -c (cancel)
sudo date
sudo shutdown -r 19:50 Servidor será reinicializando às 19:50hs
sudo shutdown -r +20 Servidor será reinicializando em 20 minutos
sudo shutdown -c

#verificando o arquivo temporário de agendamento (schedule) do shutdown (NÃO COMENTADO NO VÍDEO)
#opção o comando cat: -n (number line)
sudo cat -n /run/systemd/shutdown/scheduled

#confirmando que o servidor fez o reboot na hora certa do shutdown (NÃO COMENTADO NO VÍDEO)
#opção do comando last: -x (Display the system shutdown entries and run level changes)
#opção do comando grep: -i (Ignore case distinctions in patterns and input data)
#opção do redirecionador | (pipe): Conecta a saída padrão com a entrada padrão de outro comando
sudo last -x | grep -i reboot

#confirmando o tempo que o servidor está ligado e funcionando após o reboot (NÃO COMENTADO NO VÍDEO)
#opção do comando uptime: -s (system up since)
sudo uptime       #analisar o valor da opção: up (Exemplo: 15:32:10 up 3 min)
sudo uptime -s    #data e hora que o sistema está ligado (Exemplo: 2025-09-16 15:28:44)
```