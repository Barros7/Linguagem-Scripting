#!/bin/bash

#============ Função para configuração dos ficheiros (convert dos2unix and permission all files)
function Config(){
    ../Controllers/functions/config.sh
}

#============ Chamar o ficheiro de Compra ============
function Compra(){
    ./compra.sh ../MarketplaceCars/wwwcars.txt

}

#============ Chamar o ficheiro de Venda ============
function Venda(){
    ./vendas.sh ./stock.txt
}

#============ Chamar o ficheiro visualizar automoveis modo geral ============
function Visualizar_Automoveis (){
    ./visualizar_carros_modo_geral.sh
}

#============ Chamar o ficheiro visualizar automoveis por criterio ============
function Visualizar_Automoveis_por_Criterio  (){
    ./por_criterios.sh
}

#============ Chamar o ficheiro Relatorios ============
function Relatorios(){
    ./relatorio.sh
}

#============ Chamar o ficheiro de Base de Dados ============
function SGBD(){
    ./base_de_dados.sh
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