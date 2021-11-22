#!/bin/bash

#============ Função para  Sair do programa ============

   
#/home/jesus/Documents/Linguagem-Scripting/App/Views/main.sh


#============ Função visualizar carros modo geral ============
ARQUIVO="../Models/automoveis_comprados.txt"
dialog  --title "Automóveis comprados " --textbox "$ARQUIVO" \
        0 0 \
      
