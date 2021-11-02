#!/bin/bash

#============ Chamar o ficheiro de Compra ============
Compra(){
    ./Compras/compra.sh ../MarketplaceCars/wwwcars.txt
}

#============ Chamar o ficheiro de Venda ============
Venda(){
    ./Venda/venda.sh
}

#============ Chamar o ficheiro visualizar automoveis modo geral ============
Visualizar_Automoveis (){
    Visualizar_Automovel/visualizar_carros_modo_geral.sh
}

#============ Chamar o ficheiro visualizar automoveis por criterio ============
Visualizar_Automoveis_por_Criterio  (){
    Visualizar_Automovel/por_criterio.sh
}
#============ Chamar o ficheiro de Base de Dados ============
SGBD(){
    ./GBD/base_de_dados.sh
    }

#============ Chamar o ficheiro de Backup ============
#Backups(){
   # ../Backups/backup.sh
   # }

#============ Função para  Sair do programa e limpar a tela ============
break(){
    clear
    exit
}

#============ Função do Menu_Iniciar ============
function Main(){

    menu=$(
        dialog --stdout --title 'Menu Inicial' --menu 'Escolhe uma opção' \
                0 0 0                             \
                1 'Compra'                        \
                2 'Venda'                         \
                3 'Atualizar Preço de Restauro'   \
                4 'Visualizar Automoveis'         \
                5 'Visualizar Automoveis por Criterio' \
                6 'Alterar Dados'                 \
                7 'Gestão de Base de Dados'       \
                8 'Relatórios'                    \
                0 'Sair'
        )
    [ $? -ne 0 ] && break

    case "$menu" in

         1) Compra ;;
         2) Venda ;;
         3) Atualizar_Preco_de_Restauro ;;
         4) Visualizar_Automoveis ;;
         5) Visualizar_Automoveis_por_Criterio ;;
         6) Alterar_Dados ;;
         7) SGBD ;;
         8) Relatorios ;;
         0) break ;;
    esac
}
Main " "