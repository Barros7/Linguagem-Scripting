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
Backups(){
    ../Backups/backup.sh
    }

#============ Função para  Sair do programa ============
Sair(){
    clear
    exit
}

#============ Função do Menu_Iniciar ============
<<<<<<< HEAD
    menup=$(
        dialog --stdout                           \ 
               --title 'Menu Inicial'             \
               --menu 'Escolha uma opção'         \



=======
>>>>>>> 57fc1aeee007d5cd59236edade1f458a69771bec
function Main(){

    menu=$(
        dialog --stdout --title 'Menu Inicial' --menu 'Escolhe uma opção'        \

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

<<<<<<< HEAD

=======
>>>>>>> 57fc1aeee007d5cd59236edade1f458a69771bec
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

}

<<<<<<< HEAD
Main " "
=======
Main " "
>>>>>>> 57fc1aeee007d5cd59236edade1f458a69771bec
