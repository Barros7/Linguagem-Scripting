#!/bin/bash
function Voltar(){
    ../Relatorios/relatorio.sh
}
function Tipo_automovel(){
    Tipo_automovel=$(dialog --stdout --inputbox 'Introduz o tipo de automóvel:' \
    0 0 \
    )
    read Tipo_automovel

    grep 'AUTOMATICO' wwwcars.txt | awk -F '|' '{print NR")" $1 ":" $2 "|" $3 ":" $4 "|" $5 ":" $6 "|" $7 ":" $8 "|" $9 ":" $10 "|" $11 ":" $12}'
    grep 'AUTOMATICO' wwwcars.txt | awk -F '|' '{print NR")" $1 ":" $2 "|" $3 ":" $4 "|" $5 ":" $6 "|" $7 ":" $8 "|" $9 ":" $10 "|" $11 ":" $12}'  
}

function Marca(){
    Marca=$(dialog --stdout --inputbox 'Introduz a marca:' \
    0 0 \
    )
    read Marca
}

function Matricula(){
    Matricula=$(dialog --stdout --inputbox 'Introduz a matrícula:' \
    0 0 \
    )
    read Matricula
}

function Modelo(){
    Modelo=$(dialog --stdout --inputbox 'Introduz o modelo:' \
    0 0 \
    )
    read Modelo
}

function Ano_de_fabrico(){
    Ano_de_fabrico=$(dialog --stdout --inputbox 'Introduz o ano de fabrico:' \
    0 0 \
    )
    read Ano_de_fabrico
}

function Preco_da_compra(){
    Preco_da_compra=$(dialog --stdout --inputbox 'Introduz o preço da compra:' \
    0 0 \
    )
    read Preco_da_compra
}

function preco_de_restauro(){
    preco_de_restauro=$(dialog --stdout --inputbox 'Introduz o preço de restauro:' \
    0 0 \
    )
    read preco_de_restauro
}

function Data_da_compra(){
    Data_da_compra=$(dialog --stdout --inputbox 'Introduz a data da compra:' \
    0 0 \
    )
    read Data_da_compra
}
menu=$(
    dialog --stdout --title 'Relatorio' --menu 'Pesquisar por: ' \
                0 0 0 \
                1 'Tipo automóvel'                         \
                2 'Marca'                        \
                3 'Matrícula'                     \
                4 'Modelo'                         \
                5 'Ano de fabrico'                         \
                6 'Preço da compra'                         \
                7 'Preço de restauro'                         \
                8 'Data da compra'                         \
                9 'Voltar'                         
        )
    
    [ $? -ne 0 ] && break
    case "$menu" in
         1) Tipo_automovel ;;
         2) Marca ;;
         3) Matricula ;;
         4) Modelo ;;
         5) Ano_de_fabrico ;;
         6) Preco_da_compra ;;
         7) preco_de_restauro ;;
         8) Data_da_compra ;;
         9) Voltar ;;
         0) break ;;
    esac