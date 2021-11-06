#!/bin/bash

#============ Função para  Sair do programa ============
#break(){
   
#/home/jesus/Documents/Linguagem-Scripting/App/Views/main.sh
#}

#============ Função visualizar carros modo geral ============
        chmod +r Visualizar_Automovel/wwwcars.txt  
        chmod +x ./wwwcars.txt         
        ARQUIVO="./wwwcars.txt" 
        dialog  --title "Visualizar Automovel $(basename $ARQUIVO)" --textbox "$ARQUIVO" \
                0 0                \
      
