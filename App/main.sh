#!/bin/bash

#============ Chamar o ficheiro de Compra ============
Compra(){
    ./functions/comprar.sh
}


#============ Chamar o ficheiro de Venda ============
Venda(){
    ./functions/vender.sh
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

#============ Função do Menu_Iniciar ==============
<<<<<<< HEAD:main.sh
<<<<<<< HEAD:App/Principal/main.sh
    menup=$(
        dialog --stdout                           \ 
               --title 'Menu Inicial'             \
               --menu 'Escolha uma opção'         \
=======
while : ; do
=======
function Main(){
>>>>>>> ab4ab270aa3f09ef029a1057c99a08fe4219f993:App/main.sh
    menu=$(
        dialog --stdout --title 'Menu Inicial'    \
                --menu 'Escolhe uma opção'        \
>>>>>>> 1c09db72b61dda7f93297e7727cbe84ec809b43a:main.sh
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
<<<<<<< HEAD:App/Principal/main.sh

    case "$menup" in
=======
    case "$menu" in
>>>>>>> 1c09db72b61dda7f93297e7727cbe84ec809b43a:main.sh
         1) Compra ;;
         2) Venda ;;
         3) Atualizar_Preco_de_Restauro ;;
         4) Visualizar_Automoveis ;;
         5) Alterar_Dados ;;
         6) Relatorios ;;
         7) SGBD ;;
         0) break ;;
    esac
<<<<<<< HEAD:main.sh
<<<<<<< HEAD:App/Principal/main.sh
=======
done
>>>>>>> 1c09db72b61dda7f93297e7727cbe84ec809b43a:main.sh
=======
}

Main ""
>>>>>>> ab4ab270aa3f09ef029a1057c99a08fe4219f993:App/main.sh
