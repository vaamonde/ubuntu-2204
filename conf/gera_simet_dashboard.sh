#!/bin/bash
# Autor: Robson Vaamonde<br>
# Procedimentos em TI: http://procedimentosemti.com.br<br>
# Bora para Prática: http://boraparapratica.com.br<br>
# Robson Vaamonde: http://vaamonde.com.br<br>
# Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
# Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
# Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
# YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
# Data de criação: 01/01/2026<br>
# Data de atualização: 03/01/2026<br>
# Versão: 0.02<br>
# Testado e homologado para a versão do Ubuntu Server 22.04.x LTS x64
#
# ========== BLOCO DE CONFIGURAÇÃO DAS VARIÁVEIS DO SCRIPT ==========
#
# Variável da localização do comando do Medidor Simet para gerar a URL dos resultados
SIMET_CMD="/opt/simet/bin/simet_view_results.sh --url"
#
# Variável do Document Root (Diretório) padrão do site do Lighttpd Server
WEB_DIR="/var/www/html"
#
# Variável do nome do arquivo Index para a geração da páginas de redirecionamento
HTML_FILE="$WEB_DIR/index.html"
#
# Variável da Captura da URL do Medidor Simet (remove espaços e quebras extras)
SIMET_URL=$($SIMET_CMD | tr -d '[:space:]')
#
# Variável de criação da data do Cache Buster da URL do Medidor Simet
CACHE_BUSTER=$(date +%s)
#
# Variável da Captura da URL do Medidor Simet com o Cache Buster
SIMET_URL_CLEAN="${SIMET_URL}?cb=${CACHE_BUSTER}"
#
# ========== BLOCO DE VALIDAÇÃO DO SCRIPT ==========
#
# Validação simples da geração da URL do Medidor do Simet
if [[ ! "$SIMET_URL" =~ ^https?:// ]]; then
    echo "Erro: URL do SIMET inválida"
    exit 1
fi
#
# ========== BLOCO DE GERAÇÃO DA PÁGINA HTML DO SCRIPT ==========
#
# Gera a páginas HTML com redirecionamento para URL do Medidor Simet
cat <<EOF > "$HTML_FILE"
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <!-- Força não usar cache -->
    <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Expires" content="0">
    <!-- Redirecionamento -->
    <meta http-equiv="refresh" content="0; URL='$SIMET_URL_CLEAN'">
    <title>SIMET – Monitoramento de Link</title>
</head>
<body>
    <p>Redirecionando para o Dashboard do Medidor do SIMET...</p>
    <p>
        Caso não seja redirecionado automaticamente,
        <a href="$SIMET_URL_CLEAN">clique aqui</a>.
    </p>
</body>
</html>
EOF
#
# ========== BLOCO FINAL DO SCRIPT ==========
#
echo -e "Página do SIMET atualizada com sucesso!!! \n"
echo -e "URL Remota do Medidor Simet: $SIMET_URL \n"
echo -e "URL Local: http://localhost ou http://IPv4_SERVIDOR_UBUNTU"