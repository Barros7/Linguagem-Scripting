#!/bin/bash
function Voltar(){
    ./relatorio.sh
}

function break(){
    clear
}

function Vizualizar_lucros(){
    #grep "MARCA" ../Models/stock.txt | awk -F '|' ' {print NR")" $14 - ($12 + $16)}'
    grep "MARCA" ../Models/stock.txt | awk -F '|' ' {print NR")" $1 ":" $2 "|" $3 ":" $4 "|" $5 ":" $6 "|" $7 ":" $8 "|" $9 ":" $10 "|" $11 ":" $12 "|" $13 ":" $14 "|" $15 ":" $16}'
}

menu=$(
    dialog --stdout --title 'Relatorio' --menu 'Total Lucros' \
                0 0 0 \
                1 'Vizualizar lucros'                         \
                2 '<- Voltar' 
        )
    
    [ $? -ne 0 ] && break
    case "$menu" in
         1) Vizualizar_lucros ;;
         2) Voltar ;;
         0) break ;;
    esac