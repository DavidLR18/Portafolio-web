#!/bin/sh
# Exports the two CVs in hoja-de-vida/ to PDF with Google Chrome and copies
# the design version to sitio/assets (the file linked from the website).
# Usage, from the project folder:  sh herramientas/exportar-hv.sh
set -e
cd "$(dirname "$0")/.."
CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
[ -x "$CHROME" ] || { echo "No encuentro Google Chrome en /Applications"; exit 1; }
PROFILE="$(mktemp -d)"
mkdir -p hoja-de-vida/pdf
for v in diseno docencia; do
  [ -f "hoja-de-vida/$v.html" ] || continue
  url="file://$(pwd | sed 's/ /%20/g')/hoja-de-vida/$v.html"
  "$CHROME" --headless=new --disable-gpu --user-data-dir="$PROFILE" --no-pdf-header-footer \
    --virtual-time-budget=8000 --print-to-pdf="hoja-de-vida/pdf/David-Londono-Hoja-de-Vida-$v.pdf" "$url" 2>/dev/null
  echo "hoja-de-vida/pdf/David-Londono-Hoja-de-Vida-$v.pdf"
done
cp hoja-de-vida/pdf/David-Londono-Hoja-de-Vida-diseno.pdf sitio/assets/David-Londono-Hoja-de-Vida.pdf
echo "sitio/assets/David-Londono-Hoja-de-Vida.pdf (versión diseño)"
