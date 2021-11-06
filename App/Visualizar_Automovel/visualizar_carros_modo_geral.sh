#!/bin/bash

#============ Visualizar automóveis comprados ============
Carros_Comprados(){
    #COMPRADOS="./commprados.text" &
    
    dialog \
            --title "Todos os Automóveis Comprados" \
            --textbox /home/jesus/Documents/Linguagem-Scripting/App/compra.txt  
            15 40
}

#============ Visualizar automóveis Vendidos ============
#Carros_vendidos  (){
#}

#============ Visualizar automóveis em Stock ============
#Carros_em_Stock  (){

#}
#============ Função para  Sair do programa ============
Voltar(){   
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
                4 'Voltar ao Menu Principal' \
            
        )
    [ $? -ne 0 ] && break

    case "$menuc" in

         1) Carros_Comprados ;;
         2) Carros_vendidos ;;
         3) Carros_em_Stock ;;
         4) Voltar ;;
        # 0) break ;;
    esac
}
Main " "
