#!/bin/bash
# Autor: Robson Vaamonde
# Site: www.procedimentosemti.com.br
# Facebook: facebook.com/ProcedimentosEmTI
# Facebook: facebook.com/BoraParaPratica
# YouTube: youtube.com/BoraParaPratica
# Linkedin: https://www.linkedin.com/in/robson-vaamonde-0b029028/
# Instagram: https://www.instagram.com/procedimentoem/?hl=pt-br
# Github: https://github.com/vaamonde
# Data de criação: 14/07/2024
# Data de atualização: 14/07/2024
# Versão: 0.01
# Testado e homologado para a versão do Ubuntu Server 22.04.x LTS x64
#
# Variável do endereço IPv4 Remoto do Ubuntu Server
IPADDRESS="172.16.1.20 22"
#
# Laço de Loop para testar a conexão simultânea com o servidor OpenSSH
# Nesse loop será feita 20 (vinte) tentativas de conexão nas porta do SSH
for i in {1..20}
do
	echo 'exit' | nc $IPADDRESS
done