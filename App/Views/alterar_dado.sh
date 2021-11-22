#!/bin/bash

function Voltar(){
    ./main.sh
}

function break(){
    clear
}

menu=$(
    dialog --stdout --title 'Menu Inicial' --menu 'Escolha uma opção' \
            0 0 0                                                     \
            1 'Dados de automóveis em Stock'                          \
            0 '<- Voltar'
    )

    case $opcao in
        1) Automoveis_stock ;;
        0) Voltar ;;
    esac
}

function Nome(){
    nome=$(dialog --stdout --inputbox 'Introduz o tipo de automóvel:' \
    0 0 \
    )
    grep $Tipo ../Models/oi.txt | awk -F '|' ' {print NR")" $1 ":" $2 "|" $3 ":" $4 "|" $5 ":" $6 "|" $7 ":" $8 "|" $9 ":" $10 "|" $11 ":" $12 "|" $13 ":" $14 "|" $15 ":" $16}'
}

function Marca(){
    marca=$(dialog --stdout --inputbox 'Introduz o tipo de automóvel:' \
    0 0 \
    )
    grep $Tipo ../Models/oi.txt | awk -F '|' ' {print NR")" $1 ":" $2 "|" $3 ":" $4 "|" $5 ":" $6 "|" $7 ":" $8 "|" $9 ":" $10 "|" $11 ":" $12 "|" $13 ":" $14 "|" $15 ":" $16}'
}

function Modelo(){
    modelo=$(dialog --stdout --inputbox 'Introduz o tipo de automóvel:' \
    0 0 \
    )
    grep $Tipo ../Models/stock.txt | awk -F '|' ' {print NR")" $1 ":" $2 "|" $3 ":" $4 "|" $5 ":" $6 "|" $7 ":" $8 "|" $9 ":" $10 "|" $11 ":" $12 "|" $13 ":" $14 "|" $15 ":" $16}'
}

function Preco(){
    preco=$(dialog --stdout --inputbox 'Introduz o tipo de automóvel:' \
    0 0 \
    )
    grep $Tipo ../Models/oi.txt | awk -F '|' ' {print NR")" $1 ":" $2 "|" $3 ":" $4 "|" $5 ":" $6 "|" $7 ":" $8 "|" $9 ":" $10 "|" $11 ":" $12 "|" $13 ":" $14 "|" $15 ":" $16}'
}