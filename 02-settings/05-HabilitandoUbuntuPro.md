#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 18/04/2023<br>
#Data de atualização: 12/11/2023<br>
#Versão: 0.02<br>

Release Notes Ubuntu Server 22.04.x: https://discourse.ubuntu.com/t/jammy-jellyfish-release-notes/24668<br>
Ubuntu Advantage for Infrastructure: https://ubuntu.com/advantage<br>
Ciclo de Lançamento do Ubuntu Server: https://ubuntu.com/about/release-cycle<br>
Releases All Ubuntu Server: https://wiki.ubuntu.com/Releases

Site Oficial do Ubuntu Pro: https://ubuntu.com/pro<br>
Site Oficial dos Procedimentos do Ubuntu Pro: https://ubuntu.com/pro/tutorial<br>
Site Oficial do Ubuntu One: https://login.ubuntu.com/<br>
Site Oficial do Ubuntu CVE: https://ubuntu.com/security/cves<br>
Site Oficial do Ubuntu Membership: https://wiki.ubuntu.com/Membership

#01_ Verificando as Informações do Sistema Operacional Ubuntu Server<br>

	sudo cat /etc/os-release
	sudo cat /etc/lsb-release

#02_ Atualizando o Sistema Operacional Ubuntu Server<br>

	sudo apt update
	sudo apt upgrade
	sudo apt full-upgrade
	sudo apt dist-upgrade
	sudo apt autoremove
	sudo apt autoclean

#03_ Criando sua conta no Ubuntu One para registrar o Ubuntu Pro no Ubuntu Server<br>

	Acesse o site: https://login.ubuntu.com/
	Clique em: I don’t have an Ubuntu One account
	Preencha os campos: 
		Please type your email;
		Full name;
		Username;
		Choose password;
		Re-type password;
		Marque a opção: I have read and accept the Ubuntu One terms of service, data privacy policy and Canonical's SSO privacy notice.
		Clique em: <Create account>
	
	Finalize os procedimentos acessando seu email para ativar a sua conta no Ubuntu One.

#04_ Criando uma Assinatura do Ubuntu Pro Free para uso pessoal<br>

	Acesse o site: https://ubuntu.com/pro/dashboard
	Faça a autenticação com a sua conta criada no Ubuntu One;
	Será mostrado no campo Free Personal Token o seu token;
	Copiar o seu Token no campo: Token.

#05_ Verificando a versão do Ubuntu Advantage Tools no Ubuntu Server<br>

	OBSERVAÇÃO IMPORTANTE: a Canonical recomenda que a versão do Ubuntu Pro Client seja 
	>= a versão 27.13.x

	#verificando a versão do cliente do Ubuntu Pro
	sudo pro --version

#06_ Ativando a sua Assinatura do Ubuntu Pro no Ubuntu Server<br>

	#adicionando o Token da licença do Ubuntu Pro
	sudo pro attach [COLAR O SEU TOKEN]

#07_ Verificando os repositórios de origem das atualizações no Ubuntu Server<br>

	#verificando o status do Ubuntu Pro
	sudo pro status

	#verificando os status dos pacotes de segurança do Ubuntu Pro
	sudo pro security-status

	#verificando os status dos pacotes de segurança ESM do Ubuntu Pro
	sudo pro security-status --esm-apps

	#verificando as informações de Fix (correção) dos CVE (Common Vulnerabilities and Exposures)
	sudo pro fix CVE-2023-23518

#08_ Habilitando outros Serviços do Ubuntu Pro<br>

	OBSERVAÇÃO IMPORTANTE: por padrão após habilitar o Token do Ubuntu Pro os principais serviços 
	são habilitados, sendo o ESM-INFRA e o Livepatch, caso queira habilitar mais serviços veja a 
	lista abaixo:

	cc-eal..........: Relacionado à conformidade com os Critérios Comuns EAL2;
	cis.............: Ferramentas para conformidade automatizada com o Center of Internet Security 
	(CIS) e seus benchmarks.
	esm-infra.......: Manutenção Estendida de Segurança do Ubuntu; Mais 5 (total de 10) anos de 
	atualizações de segurança para versões LTS.
	esm-apps........: ESM do Ubuntu, mas para aplicativos.
	fips............: Relacionado à conformidade com os Padrões Federais de Processamento de 
	Informações (FIPS).
	fips-updates: Atualizações de segurança para fips.
	livepatch.......: Ferramenta de correção ao vivo do Kernel do Ubuntu (livepatch).
	realtime-kernel.: Obtenha um Kernel em tempo real (se você não sabe o que é, provavelmente não 
	precisa dele).
	ros.............: Ubuntu ajustado para Robótica, sensatamente chamado de Sistema Operacional 
	de Robô.
	ros-updates.....: Atualizações de segurança para o sistema operacional do robô.
	usg.............: Ferramentas para conformidade de segurança e auditoria do sistema.

	#habilitando o suporte ao ESM-APPS no Ubuntu Pro
	sudo pro enable esm-apps

	#verificando o status do Ubuntu Pro
	sudo pro status

#09_ Atualizando sistema com o suporte do Ubuntu Pro no Ubuntu Server<br>

	sudo apt update
	sudo apt upgrade
	sudo apt full-upgrade
	sudo apt dist-upgrade
	sudo apt autoremove
	sudo apt autoclean