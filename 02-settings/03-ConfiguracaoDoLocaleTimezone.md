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
#Versão: 0.15<br>

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

Conteúdo estudado nessa configuração:<br>
#01_ Verificando as informações do Locale (Localidade) do Sistema Operacional Ubuntu Server;<br>
#02_ Configurando o Locale (Localidade) do Brasil no Sistema Operacional Ubuntu Server;<br>
#03_ Verificando as informações do Timezone (Fuso Horário) do Sistema Operacional Ubuntu Server;<br>
#04_ Configurando o Timezone (Fuso Horário) de São Paulo no Sistema Operacional Ubuntu Server;<br>
#05_ Configurando o Sincronismo de Data e Hora com o Protocolo NTP no Ubuntu Server;<br>
#06_ Reinicializar o serviço do Systemd Timesyncd (Sincronismo de Data e Hora) no Ubuntu Server;<br>
#07_ Configuração de Data e Hora Manual no Sistema Operacional Ubuntu Server;<br>
#08_ Sincronizando Data e Hora do Sistema Operacional com o Hardware (BIOS) no Ubuntu Server;<br>
#09_ Alterando as Configurações do Teclado e Console no Ubuntu Server **(NÃO COMENTADO NO VÍDEO)**.<br>

**O QUE É E PARA QUE SERVER O LOCALE:** O Locale é uma combinação de geografia, idioma e cultura. Para entender Localidade, considere a diferença entre os Estados Unidos e o Reino Unido. Ambos compartilham um idioma comum, mas usam unidades de medida completamente diferentes. Os Estados Unidos usam o idioma inglês, mas usam milhas, graus Fahrenheit e galões, enquanto o Reino Unido usa quilômetros, graus Celsius e litros.

**O QUE É E PARA QUE SERVER O UTF-8:** UTF é uma codificação de caracteres usada para representar texto em computadores. O formato mais comum é o UTF-8, que é um padrão universal para armazenar e trocar texto em diferentes idiomas e sistemas.

**O QUE É E PARA QUE SERVER O TIMEZONE:** O Timezone ou fuso horário é uma área que observa um tempo padrão uniforme para propósitos legais, comerciais e sociais. Os fusos horários tendem a seguir os limites entre países e suas subdivisões em vez de seguir estritamente a longitude, porque é conveniente para áreas em comunicação frequente manter o mesmo horário.

**O QUE É E PARA QUE SERVER O NTP:** O NTP é um protocolo para sincronização dos relógios dos computadores baseado no protocolo UDP sob a porta 123. É utilizado para sincronização do relógio de um conjunto de computadores e dispositivos em redes de dados com latência variável.

**O QUE É E PARA QUE SERVER O NTP.BR:** O NTP.br tem por objetivo oferecer condições para que os servidores da Internet no Brasil estejam sincronizados com a Horal Legal Brasileira. Para isso foi firmado um acordo entre o Observatório Nacional (ON) e o NIC.br. 

[![Data e Hora Ubuntu Server](http://img.youtube.com/vi/Szt6egOsKxE/0.jpg)](https://www.youtube.com/watch?v=Szt6egOsKxE "Data e Hora Ubuntu Server")

Link da vídeo aula: https://www.youtube.com/watch?v=Szt6egOsKxE

## 01_ Verificando as informações do Locale (Localidade) do Sistema Operacional Ubuntu Server
```bash
#verificando as informações detalhas de localidade no Ubuntu Server
sudo localectl
```

Entendendo a saída do comando: __`localectl`__ (NÃO COMENTADO NO VÍDEO)<br>
| Campo | Valor | Descrição |
| ----- | ----- | --------- |
| **System Locale** | *LANG=en_US.UTF-8* | Define o idioma e codificação do sistema. Neste caso, está em **inglês (EUA)** com codificação **UTF-8**. Afeta mensagens de sistema, data, hora e ordenação alfabética. |
| **VC Keymap** | *n/a* | Layout do teclado para consoles virtuais (tty). **n/a** indica que não está configurado ou não se aplica. |
| **X11 Layout** | *us* | Layout do teclado para ambientes gráficos (X11), neste caso, **layout americano padrão (us)**. Mesmo em servidores sem interface gráfica, esse campo pode ser exibido.   |
| **X11 Model** | *pc105* | Modelo de teclado reconhecido (105 teclas padrão internacional). Importante em ambientes gráficos ou terminais compatíveis. |

```bash
#verificando as informações de localidades instaladas no Ubuntu Server 
#opção do comando locale: -a (all-locales)
sudo locale -a
```

Entendendo a saída do comando: __`locale`__ (NÃO COMENTADO NO VÍDEO)<br>
| Locale | Descrição |
| ------ | --------- |
| **C** | Locale padrão minimalista do sistema (equivalente ao `POSIX`). Usa codificação ASCII. |
| **C.utf8** | Variante do `C` locale com suporte à codificação UTF-8. Leve, rápida, mas sem formatação local. |
| **en_US.utf8** | Locale para **inglês dos Estados Unidos** com codificação UTF-8. Utilizado por padrão no Ubuntu Server. |
| **POSIX** | Locale mais básico possível. Idêntico ao `C`. Compatível com padrões UNIX antigos. |

## 02_ Configurando o Locale (Localidade) do Brasil no Sistema Operacional Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** O *pt_BR.UTF-8* é uma codificação de caractere que indica o uso da língua portuguesa (pt) como falada no Brasil (BR) com a codificação __`UTF-8`__. UTF-8 (Unicode Transformation Format - 8 bits) é uma codificação de caracteres que pode representar qualquer caractere no conjunto Unicode, o que inclui praticamente todos os caracteres de todas as línguas do mundo.

```bash
#gerando a localidade do Português do Brasil (pt_BR) no Ubuntu Server
sudo locale-gen pt_BR.UTF-8

#configurando a localidade do Português do Brasil no Ubuntu Server
#opção do comando localectl: set-locale (Set the system locale)
sudo localectl set-locale LANG=pt_BR.UTF-8

#atualizando as localidades do Português do Brasil e Linguagem no Ubuntu Server
sudo update-locale LANG=pt_BR.UTF-8 LC_ALL=pt_BR.UTF-8 LANGUAGE="pt_BR:pt:en"

#recomendado rebootar o sistema para testar as localidades
sudo reboot
```
```bash
#verificando as mudanças de localidades do sistema no Ubuntu Server depois do reboot
#opção do comando locale: -a (all-locales)
sudo localectl
sudo locale -a
```

## 03_ Verificando as informações do Timezone (Fuso Horário) do Sistema Operacional Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** no sistema operacional Ubuntu Server temos basicamente **03 (três)** configurações de hora (time) sendo elas: 

01) Local time (Hora Local do Servidor - Software/OS);<br>
02) Universal time (Hora Universal - UTC Horário Universal Coordenado);<br>
03) RTC (Real-time clock) time (Relógio de Tempo Real - BIOS/Hardware).<br>

```bash
#verificando as informações de fuso horário do sistema no Ubuntu Server
sudo timedatectl
```

Entendendo a saída do comando: __`timedatectl`__ (NÃO COMENTADO NO VÍDEO)<br>
| Campo | Valor | Descrição |
| ----- | ----- | --------- |
| **Local time** | *ter 2025-06-24 20:00:50 UTC`* | Hora local do sistema operacional com base no fuso horário configurado. |
| **Universal time** | *ter 2025-06-24 20:00:50 UTC* | Hora universal (UTC). Usada para consistência em sistemas distribuídos. |
| **RTC time** | *ter 2025-06-24 20:00:50* | Hora armazenada no **RTC (Relógio de Tempo Real)** da placa-mãe. |
| **Time zone** | *Etc/UTC (UTC, +0000)* | Fuso horário atual do sistema. Neste caso, está definido como UTC. |
| **System clock synchronized** | *yes* | Indica se o relógio do sistema está sincronizado com servidores NTP. |
| **NTP service** | *active* | Estado do serviço de sincronização automática via NTP. |
| **RTC in local TZ** | *no* | Define se o relógio de hardware está usando o fuso horário local (`yes`) ou UTC (`no`). Em servidores, é recomendado manter como `no`. |

## 04_ Configurando o Timezone (Fuso Horário) de São Paulo no Sistema Operacional Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** geralmente mudar para o Time Zone de __`America/Sao_Paulo`__ a hora fica errada no sistema, nesse caso podemos mudar para __`America/Fortaleza`__ ou __`America/Bahia`__ esse error é por causa do **Fuso Horário** em relação ao __`Horário de Verão`__ que não existe mais no Brasil (foi criado em 1931 pelo Governo Getúlio Vargas, só começou a ser aplicado no Brasil em 1985 no Governo José Sarney e foi cancelado em 2018 no Governo Bolsonaro).

**OBSERVAÇÃO IMPORTANTE:** Até o momento (25/06/2025), o horário de verão 2025 está em __`Processo de Avaliação`__ pelo Governo Federal. De acordo com o ministro de Minas e Energia, **Alexandre Silveira**, a volta da medida será analisada com base na *situação hídrica e na segurança energética*. "Nós temos a segurança energética assegurada, há o início de um processo de restabelecimento ainda muito modesto da nossa condição hídrica. Temos condições de chegar depois do verão em condição de avaliar, sim, a volta dessa política em 2025"

**OBSERVAÇÃO IMPORTANTE:** Até a data de 10/11/2025, o horário de verão não está previsto para ocorrer no Brasil em 2026. A medida foi suspensa por decreto em 2019 (decreto número: 9.772, de 25 de abril de 2019) e, até o momento, o governo federal decidiu por não retomá-la, nem para o período de 2025/2026.

**OBSERVAÇÃO:** ALTERAR O LOCALE CONFORME A LOCALIDADE DO SEU SERVIDOR, MAIS INFORMAÇÕES SOBRE TIMEZONE ACESSE: https://en.wikipedia.org/wiki/List_of_tz_database_time_zones

```bash
#listando os Timezones disponíveis do comando timedatectl (PARA SAIR PRESSIONE Q (quit))
#opção do comando timedatectl: list-timezones (List available time zones, one per line)
sudo timedatectl list-timezones

#configurando o fuso horário de America São Paulo no Ubuntu Server
#opção do comando timedatectl: set-timezone (set the system time zone to the specified value)
sudo timedatectl set-timezone "America/Sao_Paulo"

#verificando as mudanças do Timezone no Sistema do Ubuntu Server
sudo timedatectl
```

## 05_ Configurando o Sincronismo de Data e Hora com o Protocolo NTP no Ubuntu Server

**OBSERVAÇÃO:** O NTP (Network Time Protocol) é um protocolo para sincronização dos relógios dos computadores baseado no protocolo __`UDP`__ sob a porta __`123`__. É utilizado para sincronização do relógio de um conjunto de computadores e dispositivos em redes de dados com latência variável.

```bash
#editando o arquivo de configuração timesyncd.conf
#mais informações veja a documentação oficial em: https://documentation.ubuntu.com/server/how-to/networking/timedatectl-and-timesyncd/
sudo vim /etc/systemd/timesyncd.conf

#entrando no modo de edição do editor de texto VIM
INSERT
```

**OBSERVAÇÃO IMPORTANTE:** no Brasil sempre utilizar o site: https://ntp.br/ para o sincronismo de Data e Hora de forma correta nos servidores. O ntp.br é o serviço oficial de sincronização de horário do Brasil, mantido pelo Observatório Nacional (ON), em parceria com o NIC.br (Núcleo de Informação e Coordenação do Ponto BR).

```bash
#descomentar e alterar os valores das variáveis a partir da linha: 14
[Time]
NTP=a.st1.ntp.br
FallbackNTP=a.ntp.br
```
```bash
#salvar e sair do arquivo
ESC SHIFT : x <Enter>
```

## 06_ Reinicializar o serviço do Systemd Timesyncd (Sincronismo de Data e Hora) no Ubuntu Server
```bash
#reiniciar o serviço do Timesyncd
#opção do comando systemctl: restart (Stop and then start one or more units specified on the command line)
sudo systemctl restart systemd-timesyncd

#verificar o status do serviço do Timesyncd
#opção do comando systemctl: status (Show terse runtime status information about one or more units)
sudo systemctl status systemd-timesyncd

#verificando as informações de data e hora atualizada
sudo timedatectl

#verificar as informações do sincronismo do Timesyncd (NÃO COMENTADO NO VÍDEO)
#opção do comando timedatectl: timesync-status
sudo timedatectl timesync-status
```

Entendendo a saída do comando: __`timedatectl`__ (NÃO COMENTADO NO VÍDEO)<br>
| Campo | Valor | Descrição |
| ----- | ----- | --------- |
| **Server** | *200.160.7.186 (a.st1.ntp.br)* | Endereço IP e nome do servidor NTP atualmente em uso. |
| **Poll interval** | *1min 4s (min: 32s; max: 34min 8s)* | Intervalo de verificação da hora. Mostra o tempo atual, mínimo e máximo de polling.|
| **Leap** | *normal* | Estado de ajuste de segundos (ex: `normal`, `insert second`, `delete second`).|
| **Version** | *4* | Versão do protocolo NTP utilizado. |
| **Stratum** | *1* | Nível de proximidade com a fonte de tempo. `1` indica servidor de referência (ex: GPS, relógio atômico). |
| **Reference** | *ONBR* | Identificador da fonte de tempo utilizada pelo servidor NTP remoto. |
| **Precision** | *1us (-22)* | Precisão estimada do relógio local. |
| **Root distance** | *1.022ms (max: 5s)* | Distância total (erro estimado) até a fonte de tempo confiável. |
| **Offset** | *+5.324ms* | Diferença atual entre o relógio do sistema e o relógio do servidor NTP. |
| **Delay** | *33.551ms* | Tempo de ida e volta da comunicação com o servidor NTP. |
| **Jitter** | *0* | Variação de atraso entre pacotes consecutivos — ideal quando está baixo. |
| **Packet count** | *1* | Número de pacotes trocados desde a última inicialização. |
| **Frequency** | *-458,403ppm* | Ajuste de frequência aplicado ao relógio do sistema para mantê-lo sincronizado. |

## 07_ Configuração de Data e Hora Manual no Sistema Operacional Ubuntu Server (SOMENTE SE NECESSÁRIO)

**OBSERVAÇÃO IMPORTANTE:** só utilizar as configurações de Data e Hora em modo manual caso as configurações de sincronismo automático não funcione de forma adequada, não recomendo a configuração de Data e Hora em modo manual, isso é um alerta de erro de sistema (BIOS/Hardware ou Rede/Internet).

```bash
#configuração da data e hora no modo manual no Ubuntu Server
#opção do comando date: -s (set), %d (day of month), %m (month), %Y (year), %H (hour), 
#%M (minute), %S (second)
sudo date
sudo date +%d/%m/%Y
sudo date -s 20/01/2023
sudo date +%H:%M:%S
sudo date -s 13:30:00
```

## 08_ Sincronizando Data e Hora do Sistema Operacional com o Hardware (BIOS) no Ubuntu Server (SOMENTE SE NECESSÁRIO)

**OBSERVAÇÃO IMPORTANTE:** mesmo cenário da utilização do comando __`date`__, a da Data e Hora da BIOS do Hardware é mantida pela *CMOS e Bateria* que mantém essa hora armazenada, caso a Data e Hora de BIOS esteja errada, recomendo verificar a Bateria pois já é um sinal de falha de Hardware, no GNU/Linux você pode sincronizar a Data e Hora de Software para o Hardware e vice-versa, também, não é recomendo a sua utilização.

```bash
#sincronizando a data hora de software e hardware manual no Ubuntu Server
#opção do comando hwclock: --systohc (system clock to hardware clock), --hctosys (hardware 
#clock to system clock)
sudo hwclock --show
sudo hwclock --systohc
sudo hwclock --hctosys
```

## 09_ Alterando as Configurações do Teclado e Console no Ubuntu Server (NÃO COMENTADO NO VÍDEO)

```bash
#verificando as configurações do Teclado no Ubuntu Server
#opção do comando cat: -n (number line)
sudo cat -n /etc/default/keyboard
  XKBMODEL="pc105"  (Padrão 105 teclas pc105)
  XKBLAYOUT="br"    (Layout de Teclado Português Brasileiro ABNT2)
```
```bash
#reconfigurando o Teclado no Ubuntu Server
sudo dpkg-reconfigure keyboard-configuration
  Keyboard model: Generic 105-Key PC (intl <- Internacional) <Enter>;
  Country of origin for the keyboard: Portuguese (Brazil) <Enter>;
  Keyboard layout: Portuguese (Brazil) (Padrão ABNT-2) <Enter>;
  Key to function as AltGr: Right Alt (AltGr) <Enter>;
    (The Default for the Keyboard Layout (O padrão para o layout do teclado));
  No Compose Key (Nenhuma combinação de composição) <Enter>.
```
```bash
#verificando as configurações do UTF-8 (8-bit Unicode Transformation Format) e Console (Bash/Shell)
#opção do comando cat: -n (number line)
sudo cat -n /etc/default/console-setup
  CHARMAP="UTF-8"
```
```bash
#reconfigurando o UTF-8 e Console no Ubuntu Server
sudo dpkg-reconfigure console-setup
  UTF-8 <Enter>;
  Guess optimal character set (Supor o melhor conjunto de caracteres) <Enter>;
  Fixed <Enter>;
  8x16 <Enter>.
```
```bash
#reiniciando o servidor para aplicar as mudanças do Teclado e Console
sudo reboot
```