#!/bin/bash

#============ Função para  Sair do programa ============

   
#/home/jesus/Documents/Linguagem-Scripting/App/Views/main.sh


#============ Função visualizar carros modo geral ============
        pwd
        chmod +x ./Visualizar_Automovel/texbox_v_comprado.sh ./automoveis_comprados.txt        
        ARQUIVO="./Visualizar_Automovel/texbox_v_comprado.sh ../Models/automoveis_comprados.txt" 
        dialog  --title "Automóveis Comprados " --textbox "$ARQUIVO" \
                0 0 \
      
