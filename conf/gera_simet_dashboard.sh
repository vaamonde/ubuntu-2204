#!/bin/bash

# Comando SIMET
SIMET_CMD="/opt/simet/bin/simet_view_results.sh --url"

# Diretório do site
WEB_DIR="/var/www/html"
HTML_FILE="$WEB_DIR/index.html"

# Cria diretório se não existir
mkdir -p "$WEB_DIR"

# Captura a URL (remove espaços e quebras extras)
SIMET_URL=$($SIMET_CMD | tr -d '[:space:]')

# Validação simples
if [[ ! "$SIMET_URL" =~ ^https?:// ]]; then
    echo "Erro: URL do SIMET inválida"
    exit 1
fi

# Gera o HTML com redirecionamento
cat <<EOF > "$HTML_FILE"
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="refresh" content="0; URL='$SIMET_URL'">
    <title>SIMET – Monitoramento de Link</title>
</head>
<body>
    <p>Redirecionando para o Dashboard do SIMET...</p>
    <p>
        Caso não seja redirecionado automaticamente,
        <a href="$SIMET_URL">clique aqui</a>.
    </p>
</body>
</html>
EOF

echo "Página do SIMET atualizada com sucesso:"
echo "$SIMET_URL"
