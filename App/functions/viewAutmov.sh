#!/bin/bash

clear # Limpa os dados encontrados

#function viewAutmov(){
Visualizar=$(dialog --stdout --title "Visualizar Automoveis"  --fselect /home/jesus/Documents/Linguagem-Scripting/App/Principal/main.sh  0 0) # Saída do dialog

[-f "$Visualizar"] && {
        gedit "$Visualizar" &  # Condição de existência do arquivo, se existir, mostra
        exit 0
}

dialog --msgbox "Arquivo não encontrado!" 0 0 # Se o arquivo não exitir, apresenta a mensagem
exit 1

    
    
    
#}

#viewAutmov ""