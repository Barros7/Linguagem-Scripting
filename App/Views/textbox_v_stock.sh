#!/bin/bash

#============ Função visualizar carros modo geral ============

ARQUIVO="../Models/stock.txt"

dialog  --title "Automóveis stock " --textbox "$ARQUIVO" \
        0 0 \
