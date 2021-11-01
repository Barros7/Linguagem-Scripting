#!/bin/bash

#============ Chamar o ficheiro de Compra ============
Compra(){
    ./Compras/compra.sh ../MarketplaceCars/wwwcars.txt
}

#============ Chamar o ficheiro de Venda ============
Venda(){
    ./Venda/venda.sh
}

#============ Chamar o ficheiro de Base de Dados ============
SGBD(){
    ../GBD/base_de_dados.sh
    }

#============ Chamar o ficheiro de Backup ============
#Backups(){
   # ../Backups/backup.sh
   # }

#============ Função para  Sair do programa ============
Sair(){
    clear
    exit
}

#============ Função do Menu_Iniciar ============
    menup=$(
        dialog --stdout                           \ 
               --title 'Menu Inicial'             \
               --menu 'Escolha uma opção'         \

while : ; do

function Main(){

    menu=$(
        dialog --stdout --title 'Menu Inicial'    \
                --menu 'Escolhe uma opção'        \

                0 0 0                             \
                1 'Compra'                        \
                2 'Venda'                         \
                3 'Atualizar Preço de Restauro'   \
                4 'Visualizar Automoveis'         \
                5 'Alterar Dados'                 \
                6 'Visualizar Automoveis'         \
                7 'Gestão de Base de Dados'       \
                8 'Relatórios'                    \
                0 'Sair'
        )
    [ $? -ne 0 ] && break


    case "$menup" in

    case "$menu" in

         1) Compra ;;
         2) Venda ;;
         3) Atualizar_Preco_de_Restauro ;;
         4) Visualizar_Automoveis ;;
         5) Alterar_Dados ;;
         6) Relatorios ;;
         7) SGBD ;;
         0) break ;;
    esac

done

}

<<<<<<< HEAD
<<<<<<< HEAD
Main ""
=======
Main " "

>>>>>>> 5350263618e9839a8e518e34865d9e2edd94904b
=======
Main " "

>>>>>>> 5350263618e9839a8e518e34865d9e2edd94904b
