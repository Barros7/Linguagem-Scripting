#!/bin/bash

#============ Função para  Sair do programa ============

function Carros_Comprados (){
    ./texbox_v_comprado.sh #../SGBD/automoveis_comprados.txt
}

function Carros_vendidos (){
    ./Visualizar_Automovel/texbox_v_vendido.sh
}

function Carros_Stock(){
    ./Carros_Stock.sh
}

function Voltar(){
    ./main.sh
}

function break(){
    clear
}


#============ Função visualizar todos os Automóveis============
function Main(){

    menuc=$(
        dialog --stdout --title 'Visualizar Automoveis' --menu 'Escolha uma opção' \
                0 0 0                \
                1 'Carros Comprados' \
                2 'Carros Vendidos'  \
                3 'Carros em Stock'  \
                4 '<- Voltar'
        )
    [ $? -ne 4 ] && break

    case "$menuc" in

         1) Carros_Comprados ;;
         2) Carros_vendidos ;;
         3) Carros_em_Stock ;;
         4) Voltar ;;
         0) break ;;
    esac
}
Main " "
