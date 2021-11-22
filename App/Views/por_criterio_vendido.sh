#!/bin/bash

#============ Função visualizar Automóveis por criterio / vendidos ============

function Matricula(){
    Matricula=$(dialog --stdout --inputbox 'Introduz a matrícula, se faz favor:' \
    0 0 \
    )
    read Matricula
}

function Marca(){
    Marca=$(dialog --stdout --inputbox 'Introduz a marca, se faz favor:' \
    0 0 \
    )
    read Marca
}


function Modelo(){
    Modelo=$(dialog --stdout --inputbox 'Introduz o modelo, se faz favor:' \
    0 0 \
    )
    read Modelo
}

function Ano(){
    Ano=$(dialog --stdout --inputbox 'Introduz o ano, se faz favor:' \
    0 0 \
    )
    read Ano
}

function Tipo(){
    Tipo=$(dialog --stdout --inputbox 'Introduz o tipo, se faz favor:' \
    0 0 \
    )
    read Tipo
}

function Voltar(){
    ./por_criterios.sh
}

function break(){
    clear    
}

menu=$(
    dialog --stdout --title 'Vendidos' --menu 'Visualizar por Criterio:' \
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
