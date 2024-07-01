#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 25/06/2024<br>
#Data de atualização: 01/07/2024<br>
#Versão: 0.02<br>

OBSERVAÇÃO IMPORTANTE: COMENTAR NO VÍDEO DO UFW SE VOCÊ CONSEGUIU IMPLEMENTAR COM 
A SEGUINTE FRASE: Implementação do Firewall UFW realizado com sucesso!!! #BoraParaPrática

COMPARTILHAR O SELO DA IMPLEMENTAÇÃO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM)
MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DA IMPLEMENTAÇÃO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/19-ufw.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver 
#ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiofirewall #desafioufw

Conteúdo estudado nessa implementação:<br>
#01_ 

Site Oficial Wiki do Ubuntu UFW: https://help.ubuntu.com/community/UFWbr<br>
Site Oficial do Descomplicando o Ubuntu UFW: https://wiki.ubuntu.com/UncomplicatedFirewall<br>
Site Oficial do Debian UFW: https://wiki.debian.org/Uncomplicated%20Firewall%20%28ufw%29

Uncomplicated Firewall é uma firewall desenhada para ser de fácil utilização. Utiliza uma<br>
interface de linha de comandos, e usa iptables para configuração. 

[![Firewall UFW](http://img.youtube.com/vi//0.jpg)]( "Firewall UFW")

Link da vídeo aula: 

#01_ <br>

#Configuração das regras básicas de Firewall

#Iniciando o Firewall UFW
sudo ufw enable

#Habilitando a Política Padrão de Negação de Entrada
sudo ufw default deny incoming

#Habilitando a Política Padrão de Liberação de Saída
sudo ufw default allow outgoing

#Liberando os Protocolos de Entrada Utilizados no Ubuntu Server
sudo ufw allow in 80/tcp
sudo ufw allow 22/tcp
sudo ufw allow mysql

sudo ufw reject telnet comment `telnet is insecure and unencrypted, simply unsafe to use.`

sudo ufw allow in ftp
sudo ufw allow out smtp

sudo ufw allow from 192.168.0.1 to any port 22

sudo ufw status
sudo ufw status verbose
sudo ufw status numbered
sudo ufw delete number
sudo ufw logging on 

Melhor How-To: https://www.digitalocean.com/community/tutorials/ufw-essentials-common-firewall-rules-and-commands

https://contabo.com/blog/how-to-use-linux-ufw/?gad_source=1&gclid=Cj0KCQjwsuSzBhCLARIsAIcdLm5dxlIh8P2hH1QUzvRBS5TkM1APjhpKhbw5jQirYBlOezy-6AL6upMaAiwzEALw_wcB

=========================================================================================

OBSERVAÇÃO IMPORTANTE: COMENTAR NO VÍDEO DO UFW SE VOCÊ CONSEGUIU IMPLEMENTAR COM 
A SEGUINTE FRASE: Implementação do Firewall UFW realizado com sucesso!!! #BoraParaPrática

COMPARTILHAR O SELO DA IMPLEMENTAÇÃO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM)
MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DA IMPLEMENTAÇÃO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/19-ufw.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver 
#ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiofirewall #desafioufw