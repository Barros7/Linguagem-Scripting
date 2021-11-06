#!/bin/bash

#============ Função para  Sair do programa ============
break(){
   
/home/jesus/Documents/Linguagem-Scripting/App/main.sh
}

#============ Função visualizar carros por criterio ============
function Main(){

    menuc=$(
        dialog --stdout --title 'Visualizar Carros por Criterio' --menu 'Escolha uma opção' \
                0 0 0                \
                1 'Carros Comprados' \
                2 'Carros Vendidos'  \
                3 'Carros em Stock'  \
                0 'Sair'
        )
    [ $? -ne 0 ] && break

    case "$menuc" in

         1) Carros_Comprados ;;
         2) Carros_vendidos ;;
         3) Carros_em_Stock ;;
         0) break ;;
    esac
}
Main " "
