#!/bin/bash
function voltar(){
    ../Relatorios/relatorio.sh
}

menu=$(
    dialog --stdout --title 'Relatorio' --menu 'Pesquisar por: ' \
                0 0 0 \
                1 'Marca'                         \
                2 'Modelo'                        \
                3 'Matricula'                     \
                4 'Voltar' 
        )
    
    [ $? -ne 0 ] && break
    case "$menu" in
         1) Marca ;;
         2) Modelo ;;
         3) Matricula ;;
         4) voltar ;;
         0) break ;;
    esac
