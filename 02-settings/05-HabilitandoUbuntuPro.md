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
	Copia o seu Token no campo: Token.

#05_ Verificando a versão do Ubuntu Advantage Tools no Ubuntu Server<br>

	OBSERVAÇÃO IMPORTANTE: a Canonical recomenda que a versão do Ubuntu Pro Client seja 
	>= 27.13.x

	sudo pro --version

#06_ Ativando a sua Assinatura do Ubuntu Pro no Ubuntu Server<br>

	sudo pro attach [COLAR O SEU TOKEN]
	sudo apt update

#07_ Verificando os repositório de origem das atualizações no Ubuntu Server<br>

	sudo pro status
	sudo pro security-status
	sudo pro security-status --esm-apps
	sudo pro fix CVE-2023-23518

#08_ https://learnubuntu.com/use-ubuntu-pro/