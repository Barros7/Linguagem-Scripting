#!/bin/bash

#============ Função para  Sair do programa ============
Sair(){   
/home/jesus/Documents/Linguagem-Scripting/App/main.sh
}

break(){
 clear
 exit
}


#============ Função visualizar carros por criterio ============
function Main(){

    menuc=$(
        dialog --stdout --title 'Visualizar Carros' --menu 'Escolha uma opção' \
                0 0 0                \
                1 'Carros Comprados' \
                2 'Carros Vendidos'  \
                3 'Carros em Stock'  \
                0 'Sair'
                4 'cancelar'
        )
    [ $? -ne 4 ] && break

    case "$menuc" in

         1) Carros_Comprados ;;
         2) Carros_vendidos ;;
         3) Carros_em_Stock ;;
         0) Sair ;;
         4) break ;;
    esac
}
Main " "