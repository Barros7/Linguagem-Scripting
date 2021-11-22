#!/bin/bash

#============ Função visualizar Automóveis por criterio / comprados ============

function Tipo_automovel(){
    Tipo=$(dialog --stdout --inputbox 'Introduz o tipo de automóvel:' \
    0 0 \
    )
    grep $Tipo ../Models/../Models/stock.txt | awk -F '|' ' {print NR")" $1 ":" $2 "|" $3 ":" $4 "|" $5 ":" $6 "|" $7 ":" $8 "|" $9 ":" $10 "|" $11 ":" $12 "|" $13 ":" $14 "|" $15 ":" $16}'
    echo $Tipo
}

function Marca(){
    Marca=$(dialog --stdout --inputbox 'Introduz a marca:' \
    0 0 \
    )
    grep $Marca ../Models/stock.txt | awk -F '|' ' {print NR")" $1 ":" $2 "|" $3 ":" $4 "|" $5 ":" $6 "|" $7 ":" $8 "|" $9 ":" $10 "|" $11 ":" $12 "|" $13 ":" $14 "|" $15 ":" $16}'
}

function Matricula(){
    Matricula=$(dialog --stdout --inputbox 'Introduz a matrícula:' \
    0 0 \
    )
    grep $Matricula ../Models/stock.txt | awk -F '|' ' {print NR")" $1 ":" $2 "|" $3 ":" $4 "|" $5 ":" $6 "|" $7 ":" $8 "|" $9 ":" $10 "|" $11 ":" $12 "|" $13 ":" $14 "|" $15 ":" $16}'
}

function Modelo(){
    Modelo=$(dialog --stdout --inputbox 'Introduz o modelo:' \
    0 0 \
    )
    grep $Modelo ../Models/stock.txt | awk -F '|' ' {print NR")" $1 ":" $2 "|" $3 ":" $4 "|" $5 ":" $6 "|" $7 ":" $8 "|" $9 ":" $10 "|" $11 ":" $12 "|" $13 ":" $14 "|" $15 ":" $16}'
}

function Ano_de_fabrico(){
    Ano_de_fabrico=$(dialog --stdout --inputbox 'Introduz o ano de fabrico:' \
    0 0 \
    )
    grep $Ano_de_fabrico ../Models/stock.txt | awk -F '|' ' {print NR")" $1 ":" $2 "|" $3 ":" $4 "|" $5 ":" $6 "|" $7 ":" $8 "|" $9 ":" $10 "|" $11 ":" $12 "|" $13 ":" $14 "|" $15 ":" $16}'
}

function Preco_da_compra(){
    Preco_da_compra=$(dialog --stdout --inputbox 'Introduz o preço da compra:' \
    0 0 \
    )
    grep $Preco_da_compra ../Models/stock.txt | awk -F '|' ' {print NR")" $1 ":" $2 "|" $3 ":" $4 "|" $5 ":" $6 "|" $7 ":" $8 "|" $9 ":" $10 "|" $11 ":" $12 "|" $13 ":" $14 "|" $15 ":" $16}'
}

function preco_de_restauro(){
    preco_de_restauro=$(dialog --stdout --inputbox 'Introduz o preço de restauro:' \
    0 0 \
    )
    grep $preco_de_restauro ../Models/stock.txt | awk -F '|' ' {print NR")" $1 ":" $2 "|" $3 ":" $4 "|" $5 ":" $6 "|" $7 ":" $8 "|" $9 ":" $10 "|" $11 ":" $12 "|" $13 ":" $14 "|" $15 ":" $16}'
}

function Data_da_compra(){
    Data_da_compra=$(dialog --stdout --inputbox 'Introduz a data da compra:' \
    0 0 \
    )
    grep $Data_da_compra ../Models/stock.txt | awk -F '|' ' {print NR")" $1 ":" $2 "|" $3 ":" $4 "|" $5 ":" $6 "|" $7 ":" $8 "|" $9 ":" $10 "|" $11 ":" $12 "|" $13 ":" $14 "|" $15 ":" $16}'
}

menu=$(
    dialog --stdout --title 'Comprados' --menu 'Visualizar por Criterio:' \
                0 0 0               \
                1 'Matrícula'       \
                2 'Marca'           \
                3 'Modelo'          \
                4 'Ano'             \
                5 'Tipo'            \
                6 '<- Voltar'                         
        )
    
[ $? -ne 0 ] && break
    case "$menu" in
         1) Matricula ;;
         2) Marca ;;
         3) Modelo ;;
         4) Ano ;;
         5) Tipo_automovel ;;
         6) Voltar ;;
         0) break ;;
    esac
