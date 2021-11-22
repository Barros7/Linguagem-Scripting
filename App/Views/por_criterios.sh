#!/bin/bash


function Carros_Comprados(){
     ./por_criterio_comprado.sh
}

function Carros_vendidos(){
   ./por_criterio_vendido.sh
}

function Carros_em_Stock(){
    ./por_criterio_stock.sh
}

function Voltar(){
    ./main.sh
}

#============ Função para  Sair do programa ============
function break(){
    clear 
}

#============ Função visualizar carros por criterio ============
function Main(){

    menuc=$(
        dialog --stdout --title 'Visualizar Automoveis por Criterio' --menu 'Escolha uma opção' \
                0 0 0                \
                1 'Carros Comprados' \
                2 'Carros Vendidos'  \
                3 'Carros em Stock'  \
                4 '<- Voltar'
        )
    [ $? -ne 0 ] && break

    case "$menuc" in

         1) Carros_Comprados ;;
         2) Carros_vendidos ;;
         3) Carros_em_Stock ;;
         4) Voltar ;;
         0) break ;;
    esac
}
Main " "
