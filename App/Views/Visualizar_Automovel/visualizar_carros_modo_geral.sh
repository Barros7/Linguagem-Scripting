#!/bin/bash

#============ Função para  Sair do programa ============

Carros_Comprados (){
 chmod +x ./texbox_v_comprado.sh
./texbox_v_comprado.sh
}

Carros_vendidos (){
 chmod +x ./texbox_v_vendido.sh
./texbox_v_vendido.sh
}

break(){
 clear
 #/home/jesus/Documents/Linguagem-Scripting/App/main.sh
}


#============ Função visualizar todos os Automóveis============
function Main(){

    menuc=$(
        dialog --stdout --title 'Visualizar Automoveis' --menu 'Escolha uma opção' \
                0 0 0                \
                1 'Carros Comprados' \
                2 'Carros Vendidos'  \
                3 'Carros em Stock'  \
                0 'Sair'
        )
    [ $? -ne 4 ] && break

    case "$menuc" in

         1) Carros_Comprados ;;
         2) Carros_vendidos ;;
         3) Carros_em_Stock ;;
         0) break ;;
    esac
}
Main " "
