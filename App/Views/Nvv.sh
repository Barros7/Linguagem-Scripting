#!/bin/bash
function Voltar(){
    ../Relatorios/relatorio.sh
}

menu=$(
    dialog --stdout --title 'Relatorio' --menu 'Número de veículos vendidos' \
                0 0 0 \
                1 'Total'                         \
                2 'Voltar' 
        )
    
    [ $? -ne 0 ] && break
    case "$menu" in
         1) Total ;;
         2) Voltar ;;
         0) break ;;
    esac


    