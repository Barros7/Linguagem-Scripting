#!/bin/bash

#============ Função visualizar carros modo geral ============

ARQUIVO="../Models/automoveis_vendidos.txt"
dialog  --title "Automóveis Vendidos " --textbox "$ARQUIVO" \
        0 0 \
