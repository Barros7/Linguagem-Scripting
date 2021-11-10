#!/bin/bash

#============ Função para  Sair do programa ============
break(){
clear #===== Limpa a escolha anterior ==========================
   
#/home/jesus/Documents/Linguagem-Scripting/App/main.sh
}

#============ Função visualizar carros por criterio / comprados ============

function Matricula(){
    Matricula=$(dialog --stdout --inputbox 'Introduz a matrícula:' \
    0 0 \
    )
    read Matricula
}

function Marca(){
    Marca=$(dialog --stdout --inputbox 'Introduz a marca:' \
    0 0 \
    )
    read Marca
}


function Modelo(){
    Modelo=$(dialog --stdout --inputbox 'Introduz o modelo:' \
    0 0 \
    )
    read Modelo
}

function Ano(){
    Ano=$(dialog --stdout --inputbox 'Introduz o ano de fabrico:' \
    0 0 \
    )
    read Ano
}

function Tipo(){
    Tipo=$(dialog --stdout --inputbox 'Introduz o tipo de automóvel:' \
    0 0 \
    )
    read Tipo
}

#function Voltar(){
    
#}

menu=$(
    dialog --stdout --title 'Comprados' --menu 'Visualizar por Criterio: ' \
                0 0 0               \
                1 'Matrícula'       \
                2 'Marca'           \
                3 'Modelo'          \
                4 'Ano'             \
                5 'Tipo'            \
                0 'Voltar'          \                  
        )
    
    [ $? -ne 0 ] && break
    case "$menu" in
         1) Matricula ;;
         2) Marca ;;
         3) Modelo ;;
         4) Ano ;;
         5) Tipo_automovel ;;
         0) break ;;
    esac
