#!/bin/bash
function Voltar(){
    ../Relatorios/relatorio.sh
}

menu=$(
    dialog --stdout --title 'Relatorio' --menu 'Total Lucros' \
                0 0 0 \
                1 'Vizualizar lucros'                         \
                2 'Voltar' 
        )
    
    [ $? -ne 0 ] && break
    case "$menu" in
         1) Vizualizar_lucros ;;
         2) Voltar ;;
         0) break ;;
    esac