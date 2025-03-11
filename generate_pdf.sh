#!/bin/bash

# Nome file output
OUTPUT="output/manuale-casa.pdf"

# Controlla se la cartella output esiste, altrimenti la crea
mkdir -p output

# Genera il PDF con Pandoc prendendo i file in ordine numerico
pandoc docs/casa/index.md docs/casa/[0-9]*.md -o $OUTPUT --pdf-engine=xelatex --toc --metadata title="Manuale Casa Stocke"

echo "✅ PDF generato: $OUTPUT"
