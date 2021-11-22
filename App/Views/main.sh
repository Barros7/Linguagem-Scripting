#!/bin/bash

#============ Função para configuração dos ficheiros
function Config(){
    chmod +x ../Controllers/functions/*.sh
    chmod +x ../Views/*.sh
    dos2unix ../Views/*.sh
}

#============ Chamar o ficheiro de Compra ============
function Compra(){
    pwd
    chmod +x ./Compra/compra.sh ../../MarketplaceCars/wwwcars.txt
    ./Compra/compra.sh ../../MarketplaceCars/wwwcars.txt
    #chmod +x ../Views/Compra/comprar_automoveis.sh 
    #../Views/Compra/comprar_automoveis.sh 
}

#============ Chamar o ficheiro de Venda ============
function Venda(){

    chmod +x ./Venda/vendas.sh ./SGBD/stock.txt
    ./Venda/vendas.sh ./SGBD/stock.txt
    #chmod +x ./Venda/vendas.sh ../../SGBD/stock.txt
    #./Compra/compra.sh ../../MarketplaceCars/wwwcars.txt
}

#============ Chamar o ficheiro visualizar automoveis modo geral ============
function Visualizar_Automoveis (){
    chmod +x ./Visualizar_Automovel/visualizar_carros_modo_geral.sh
    chmod 777 Visualizar_Automovel/visualizar_carros_modo_geral.sh
    chmod 777 Visualizar_Automovel/texbox_v.sh

    ./Visualizar_Automovel/visualizar_carros_modo_geral.sh
}

#============ Chamar o ficheiro visualizar automoveis por criterio ============
function Visualizar_Automoveis_por_Criterio  (){
     chmod +x ./Visualizar_Automovel/por_criterios.sh
    chmod +x ./Visualizar_Automovel/por_criterios.sh
    chmod 777 Visualizar_Automovel/texbox_v.sh

    ./Visualizar_Automovel/por_criterios.sh
}

#============ Chamar o ficheiro Relatorios ============
function Relatorios(){
    chmod +x ./Relatorios/relatorio.sh

    ./Relatorios/relatorio.sh
}

#============ Chamar o ficheiro de Base de Dados ============
function SGBD(){
    ./SGBD/base_de_dados.sh
    }

#============ Chamar o ficheiro de Backup ============
function Backups(){
    ./Backups/backup.sh
    }

#============ Função para  Sair do programa e limpar a tela ============
function break(){
    clear
}

#============ Função do Menu_Iniciar ============
function Main(){

    menu=$(
        dialog --stdout --title 'Menu Inicial' --menu 'Escolha uma opção' \
                0 0 0                                  \
                1 'Compra'                                \
                2 'Venda'                              \
                3 'Atualizar Preço de Restauro'        \
                4 'Visualizar Automoveis'              \
                5 'Visualizar Automoveis por Criterio' \
                6 'Alterar Dados'                 \
                7 'Gestão de Base de Dados'       \
                8 'Relatórios'                    
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
Config ""
Main ""