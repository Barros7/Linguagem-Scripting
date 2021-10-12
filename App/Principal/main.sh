#!/usr/bin/env bash

#============ Chamar o ficheiro de Compra ============
Compra(){
    ../Compras/compra.sh
}

#============ Chamar o ficheiro de Base de Dados ============
SGBD(){
    ../GBD/base_de_dados.sh
    }

#============ Chamar o ficheiro de Venda ============
Venda(){
    ../Vendas/venda.sh
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


    menu=$(
        dialog --stdout                           \ 
                --title 'Menu Inicial'            \
                --menu 'Escolhe uma opção'        \
                0 0 0                             \
                1 'Compra'                        \
                2 'Venda'                         \
                3 'Atualizar Preco de Restauro'   \
                4 'Visualizar Automoveis'         \
                5 'Alterar Dados'                 \
                6 'Visualizar Automoveis'         \
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
         5) Alterar_Dados ;;
         6) Relatorios ;;
         7) SGBD ;;
         0) break ;;
    esac



#============ Função do Menu_Iniciar ============
    
  

#============ Função do Menu para criar Backup dos dados ============

#============ Função para fazer o Restauro dos dados ============

#============ Função para executar o programa ==============

