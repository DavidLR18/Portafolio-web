#!/bin/sh
# Exports the brand manual in marca/ to PDF (A4 landscape, set by its @page rule) with Google Chrome.
set -e
cd "$(dirname "$0")/.."
CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
[ -x "$CHROME" ] || { echo "No encuentro Google Chrome en /Applications"; exit 1; }
PROFILE="$(mktemp -d)"
"$CHROME" --headless=new --disable-gpu --user-data-dir="$PROFILE" --no-pdf-header-footer \
  --virtual-time-budget=12000 --print-to-pdf="marca/manual-de-marca.pdf" "file://$PWD/marca/manual-de-marca.html" 2>/dev/null
rm -rf "$PROFILE"
echo "marca/manual-de-marca.pdf"
