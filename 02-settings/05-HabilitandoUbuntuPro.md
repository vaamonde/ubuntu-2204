#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 18/04/2023<br>
#Data de atualização: 01/10/2025<br>
#Versão: 0.14<br>

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

Site Oficial do Ubuntu Pro: https://ubuntu.com/pro<br>
Site Oficial dos Procedimentos do Ubuntu Pro: https://ubuntu.com/pro/tutorial<br>
Site Oficial do Ubuntu One: https://login.ubuntu.com/<br>
Site Oficial do Ubuntu CVE: https://ubuntu.com/security/cves<br>
Site Oficial do Ubuntu Membership: https://wiki.ubuntu.com/Membership

Conteúdo estudado nessa configuração:<br>
#01_ Verificando as Informações do Sistema Operacional Ubuntu Server<br>
#02_ Atualizando o Sistema Operacional Ubuntu Server<br>
#03_ Criando sua conta no Ubuntu One para registrar o Ubuntu Pro no Ubuntu Server<br>
#04_ Criando uma Assinatura do Ubuntu Pro Free para uso Pessoal<br>
#05_ Verificando a versão do Ubuntu Advantage Tools no Ubuntu Server<br>
#06_ Ativando a sua Assinatura do Ubuntu Pro no Ubuntu Server<br>
#07_ Verificando os repositórios de origem das atualizações no Ubuntu Server<br>
#08_ Habilitando outros Serviços do Ubuntu Pro de Atualização<br>
#09_ Atualizando o sistema com o suporte do Ubuntu Pro no Ubuntu Server<br>

**O QUE É E PARA QUE SERVER O UBUNTU PRO:** O Ubuntu Pro é uma versão do Ubuntu oferecida pela Canonical para nuvens públicas, focada em uso empresarial e de produção. Ele é baseado em componentes do Ubuntu, mas vem com um conjunto de serviços adicionais que são ativados prontos para uso. O Ubuntu Pro também fornece Extended Security Maintenance (ESM).

**O QUE É E PARA QUE SERVER O ESM (Enterprise Service Manager):** é um serviço da Canonical que estende as atualizações de segurança para versões LTS do Ubuntu após o fim do suporte oficial.

**O QUE É E PARA QUE SERVER O LTS (Long-Term Support):** é uma versão de software que recebe suporte estendido por um longo período, geralmente 5 anos ou mais. Esse tipo de versão é comum em sistemas operacionais, como o Ubuntu LTS, e em softwares empresariais que exigem estabilidade e suporte prolongado. 

**O QUE É E PARA QUE SERVER O CVE (Common Vulnerabilities and Exposures):** é um sistema de identificação e catalogação de vulnerabilidades de segurança conhecidas em softwares e hardware. Ele é gerenciado pela organização MITRE Corporation e utilizado globalmente para rastrear e reportar falhas de segurança de forma padronizada.

[![Ubuntu Pro Free](http://img.youtube.com/vi/SW9JzwjGdkM/0.jpg)](https://www.youtube.com/watch?v=SW9JzwjGdkM "Ubuntu Pro Free")

Link da vídeo aula: https://www.youtube.com/watch?v=SW9JzwjGdkM

## 01_ Verificando as Informações do Sistema Operacional Ubuntu Server
```bash
#verificando as informações da identificação do Sistema Operacional
#opção do comando cat: -n (number all output lines)
sudo cat -n /etc/os-release
```

Entendendo a saída do arquivo: __`os-release`__ (NÃO COMENTADO NO VÍDEO)<br>
| Linha | Campo                | Valor                                                            | Descrição                        |
| ----- | -------------------- | ---------------------------------------------------------------- | -------------------------------- |
| 1     | `PRETTY_NAME`        | `"Ubuntu 22.04.5 LTS"`                                           | Nome completo e legível da distribuição.                         |
| 2     | `NAME`               | `"Ubuntu"`                                                       | Nome genérico da distribuição.                                   |
| 3     | `VERSION_ID`         | `"22.04"`                                                        | Versão principal da distribuição (sem revisões menores).         |
| 4     | `VERSION`            | `"22.04.5 LTS (Jammy Jellyfish)"`                                | Versão completa com número de release e codinome.                |
| 5     | `VERSION_CODENAME`   | `jammy`                                                          | Codinome da versão em desenvolvimento.                           |
| 6     | `ID`                 | `ubuntu`                                                         | Identificador do sistema operacional.                            |
| 7     | `ID_LIKE`            | `debian`                                                         | Sistemas operacionais semelhantes (compatibilidade).             |
| 8     | `HOME_URL`           | `https://www.ubuntu.com/`                                        | Página oficial do Ubuntu.                                        |
| 9     | `SUPPORT_URL`        | `https://help.ubuntu.com/`                                       | Página de suporte oficial da distribuição.                       |
| 10    | `BUG_REPORT_URL`     | `https://bugs.launchpad.net/ubuntu/`                             | URL para relatar bugs do sistema operacional.                    |
| 11    | `PRIVACY_POLICY_URL` | `https://www.ubuntu.com/legal/terms-and-policies/privacy-policy` | Política de privacidade da Canonical/Ubuntu.                     |
| 12    | `UBUNTU_CODENAME`    | `jammy`                                                          | Codinome do release estável (mesmo valor de `VERSION_CODENAME`). |

```bash
#verificando as informações específicas do Sistema Operacional
#opção do comando cat: -n (number all output lines)
sudo cat -n /etc/lsb-release
```

Entendendo a saída do arquivo: __`lsb-release`__ (NÃO COMENTADO NO VÍDEO)<br>
| Linha | Campo                 | Valor                  | Descrição                                                                        |
| ----- | --------------------- | ---------------------- | -------------------------------------------------------------------------------- |
| 1     | `DISTRIB_ID`          | `Ubuntu`               | Identificador da distribuição conforme o padrão **LSB** (*Linux Standard Base*). |
| 2     | `DISTRIB_RELEASE`     | `22.04`                | Versão principal da distribuição Ubuntu.                                         |
| 3     | `DISTRIB_CODENAME`    | `jammy`                | Codinome da versão (`jammy` = Jammy Jellyfish).                                  |
| 4     | `DISTRIB_DESCRIPTION` | `"Ubuntu 22.04.5 LTS"` | Descrição completa da distribuição e número de release.                          |

## 02_ Atualizando o Sistema Operacional Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** recomendo fazer um upgrade completo no servidor antes de adicionar a Licença do Ubuntu Pro.

```bash
#atualização completa do Ubuntu Server antes de instalar e configurar o Ubuntu Pro
sudo apt update
sudo apt upgrade
sudo apt full-upgrade
sudo apt dist-upgrade
sudo apt autoremove
sudo apt autoclean
```

## 03_ Criando sua conta no Ubuntu One para registrar o Ubuntu Pro no Ubuntu Server

Link para o cadastro oficial do Ubuntu One: Acesse o site: https://login.ubuntu.com/

```bash
01) Clique em: I don’t have an Ubuntu One account
    Preencha os campos:
      Please type your email: (DIGITE_SEU_EMAIL)
      Full name: (DIGITE SEU NOME COMPLETO)
      Username: (DIGITE O NOME DO SEU USUÁRIO)
      Choose password: (DIGITE SUA SENHA)
      Re-type password: (CONFIRME SUA SENHA)
      Marque a opção: I have read and accept the Ubuntu One terms of service, data privacy policy and Canonical SSO privacy notice.
      Clique em: <Create account>

02) Finalize os procedimentos acessando seu email para ativar a sua conta no Ubuntu One.
    Are you sure you want to confirm and validate this email address?
<Sim, tenho certeza>
```

## 04_ Criando uma Assinatura Gratuita do Ubuntu Pro Free para uso Pessoal

Link para o Dashboard oficial do Ubuntu Pro: Acesse o site: https://ubuntu.com/pro/dashboard

```bash
01) Faça a autenticação com a sua conta criada no Ubuntu One;
    Personal Data Request: <Yes, log me in>

02) Será mostrado no campo Free Personal Token o seu token;
    Copiar o seu Token no campo: Token. ou
    Copiar o comando com o Token na linha: Command to attach a machine: 

03) No lado esquerdo em: Free Personal Token é mostrado as colunas:
    Machines (Licenças Disponíveis), Created (Data de Criação) e Expires (Data de Expiração)
```

## 05_ Verificando a versão do Ubuntu Advantage Tools Update no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** a Canonical recomenda que a versão do Ubuntu Pro Client seja: __`>= a versão 27.13.x`__

```bash
#verificando a versão do cliente do Ubuntu Pro Client
#opção do comado pro: --version ou version (Show version of the Ubuntu Pro package)
sudo pro --version
```

## 06_ Ativando a sua Assinatura do Ubuntu Pro no Ubuntu Server
```bash
#adicionando o Token da licença do Ubuntu Pro
#opção do comando pro: attach (Connect an Ubuntu Pro support contract to this machine)
sudo pro attach COPIAR_E_COLAR_O_SEU_TOKEN
```

## 07_ Verificando os repositórios de origem das atualizações no Ubuntu Server
```bash
#verificando o status do Ubuntu Pro
#opção do comando pro: status (Report current status of Ubuntu Pro services on system)
sudo pro status

#verificando os status dos pacotes de segurança do Ubuntu Pro
#opção do comando pro: security-status (Show security updates for packages in the system)
sudo pro security-status

#verificando os status dos pacotes de segurança ESM (Enterprise Service Manager) do Ubuntu Pro
#opção do comando pro: security-status (Show security updates for packages in the system), 
#--esm-apps (flag will only  show  information  about esm-apps packages)
sudo pro security-status --esm-apps

#verificando as informações de Fix (correções) dos CVE (Common Vulnerabilities and Exposures)
#opção do comando pro: fix (Fix a CVE or USN on the  system  by  upgrading  the  appropriate
#package(s))
#Site dos CVEs do Ubuntu: https://ubuntu.com/security/cves
sudo pro fix CVE-2023-52927
```

## 08_ Habilitando outros Serviços de Atualização do Ubuntu Pro

**OBSERVAÇÃO IMPORTANTE:** por padrão após habilitar o *Token do Ubuntu Pro* os principais serviços são habilitados por padrão, sendo o: **ESM-INFRA**, **ESM-APPS** e o **Livepatch**, caso queira habilitar ou desabilitar mais serviços veja a lista abaixo:

| ID | SERVIÇOS | DESCRIÇÃO |
|----|----------|-----------|
| 01 | cc-eal | Relacionado à conformidade com os Critérios Comuns EAL2 |
| 02 | cis | Ferramentas para conformidade automatizada com o Center of Internet Security (CIS) e seus benchmarks |
| 03 | esm-infra | Manutenção Estendida de Segurança do Ubuntu; Mais 5 (total de 10) anos de atualizações de segurança para versões LTS |
| 04 | esm-apps | ESM do Ubuntu, mas para aplicativos |
| 05 | fips | Relacionado à conformidade com os Padrões Federais de Processamento de Informações (FIPS) |
| 06 | fips-updates | Atualizações de segurança para fips |
| 07 | livepatch | Ferramenta de correção ao vivo do Kernel do Ubuntu (livepatch) |
| 08 | realtime-kernel | Obtenha um Kernel em tempo real (se você não sabe o que é, provavelmente não precisa dele) |
| 09 | ros | Ubuntu ajustado para Robótica, sensatamente chamado de Sistema Operacional de Robô |
| 10 | ros-updates | Atualizações de segurança para o sistema operacional do robô |
| 11 | usg | Ferramentas para conformidade de segurança e auditoria do sistema. |

```bash
#habilitando o suporte ao ESM-APPS no Ubuntu Pro
#opção do comando pro: enable (Activate  and  configure  this machine's access to an Ubuntu
#Pro service)
sudo pro enable esm-apps

#verificando o status do Ubuntu Pro
#opção do comando pro: status (Report current status of Ubuntu Pro services on system)
sudo pro status
```

## 09_ Atualizando o sistema com o suporte do Ubuntu Pro no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** após adicionar a licença do *Ubuntu Pro* é recomendado fazer um upgrade completo do sistema para testar o *Token* e as novas listas do **sources.list** do Ubuntu Pro.

```bash
#atualizando o sistema operacional com suporte ao Ubuntu Pro
sudo apt clean
sudo apt update
sudo apt upgrade
sudo apt full-upgrade
sudo apt dist-upgrade
sudo apt autoremove
sudo apt autoclean
sudo reboot
```