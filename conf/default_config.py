# Autor: Robson Vaamonde
# Site: www.procedimentosemti.com.br
# Facebook: facebook.com/ProcedimentosEmTI
# Facebook: facebook.com/BoraParaPratica
# YouTube: youtube.com/BoraParaPratica
# Linkedin: https://www.linkedin.com/in/robson-vaamonde-0b029028/
# Instagram: https://www.instagram.com/procedimentoem/?hl=pt-br
# Data de criação: 07/10/2025
# Data de atualização: 10/10/2025
# Versão: 0.03
# Testado e homologado para a versão do Ubuntu Server 22.04.x LTS x64x
# Testado e homologado para a versão do PowerDNS Admin v0.4.2
#
# Configurando o serviço do PowerDNS Authoritative
#
# Configuração básico do python do PowerDNS Admin
import os
basedir = os.path.abspath(os.path.dirname(__file__))
#
# Configuração do endereço e porta de conexão do PowerDNS Admin
BIND_ADDRESS = '172.16.1.20'
PORT = 9191
#
# Configuração do Salt e do Senha de conexão do PowerDNS Admin
SALT = 'pwerdns'
SECRET_KEY = 'powerdns'
#
# Configurações básicas do PowerDNS Admin (deixar o padrão)
CAPTCHA_ENABLE = True
CAPTCHA_HEIGHT = 60
CAPTCHA_LENGTH = 6
CAPTCHA_SESSION_KEY = 'captcha_image'
CAPTCHA_WIDTH = 160
CSRF_COOKIE_HTTPONLY = True
HSTS_ENABLED = False
SAML_ASSERTION_ENCRYPTED = True
SAML_ENABLED = False
SERVER_EXTERNAL_SSL = os.getenv('SERVER_EXTERNAL_SSL', True)
SESSION_COOKIE_SAMESITE = 'Lax'
SESSION_TYPE = 'sqlalchemy'
SQLALCHEMY_DATABASE_URI = 'sqlite:///' + os.path.join(basedir, 'pdns.db')
SQLALCHEMY_TRACK_MODIFICATIONS = True
#
# Configuração do acesso ao Banco de Dados do PostgreSQL do PowerDNS Admin
SQLA_DB_DRIVER = 'postgresql'
SQLA_DB_USER = 'powerdns'
SQLA_DB_PASSWORD = 'powerdns'
SQLA_DB_HOST = 'powerdns'
SQLA_DB_NAME = 'powerdns'
#SQLALCHEMY_DATABASE_URI = 'mysql://{}:{}@{}/{}'.format(
#     urllib.parse.quote_plus(SQLA_DB_USER),
#     urllib.parse.quote_plus(SQLA_DB_PASSWORD),
#     SQLA_DB_HOST,
#     SQLA_DB_NAME
# )