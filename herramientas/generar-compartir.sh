#!/bin/sh
# Renders herramientas/compartir.html to sitio/assets/img/compartir.jpg (1200 × 630),
# the image LinkedIn, WhatsApp and other apps show when the portfolio link is shared.
# Usage, from the project folder:  sh herramientas/generar-compartir.sh
set -e
cd "$(dirname "$0")/.."
CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
[ -x "$CHROME" ] || { echo "No encuentro Google Chrome en /Applications"; exit 1; }
PROFILE="$(mktemp -d)"
TMP="$(mktemp -d)"
url="file://$(pwd | sed 's/ /%20/g')/herramientas/compartir.html"
"$CHROME" --headless=new --disable-gpu --user-data-dir="$PROFILE" --hide-scrollbars \
  --window-size=1200,630 --virtual-time-budget=8000 --screenshot="$TMP/compartir.png" "$url" 2>/dev/null
sips -s format jpeg -s formatOptions 88 "$TMP/compartir.png" --out sitio/assets/img/compartir.jpg >/dev/null
rm -rf "$PROFILE" "$TMP"
echo "sitio/assets/img/compartir.jpg"
