#!/bin/bash
function Voltar(){
    ../Relatorios/relatorio.sh
}
function Tipo_automovel(){
    Tipo_automovel=$(dialog --stdout --inputbox 'Introduz o tipo de automóvel:' \
    0 0 \
    )
    read Tipo_automovel
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

function Preco_de_venda(){
    Preco_de_venda=$(dialog --stdout --inputbox 'Introduz o preço de venda:' \
    0 0 \
    )
    read Preco_de_venda
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
                4 'Modelo'                        \
                5 'Ano de fabrico'                        \
                6 'Preço de venda'                        \
                7 'Data da compra'                        \
                8 'Voltar' 
        )  
    [ $? -ne 0 ] && break
    case "$menu" in
         1) Tipo_automovel ;;
         2) Marca ;;
         3) Matricula ;;
         4) Modelo ;;
         5) Ano_de_fabrico ;;
         6) Preco_de_venda ;;
         7) Data_da_compra ;;
         8) Voltar;;
         0) break ;;
    esac
