#!/bin/bash

#============ Função para  Sair do programa ============

Carros_Comprados (){
    pwd
    chmod +x ./texbox_v_comprado.sh #./SGBD/automoveis_comprados.txt
    ./texbox_v_comprado.sh #../SGBD/automoveis_comprados.txt

    #chmod +x ./Compra/compra.sh ../../MarketplaceCars/wwwcars.txt
    #./Compra/compra.sh ../../MarketplaceCars/wwwcars.txt
}

Carros_vendidos (){
    pwd
 chmod +x ./Visualizar_Automovel/texbox_v_vendido.sh
./Visualizar_Automovel/texbox_v_vendido.sh
}
pwd
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
