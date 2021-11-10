#!/bin/bash
perm(){
    dos2unix ./Compra/comprar.sh
    chmod +x ./Compra/comprar.sh
    chmod +x ./Restauro/restaurarCp.sh
    #git update-index --chmod=+x dar ao git as permissões no ficheiro.
}

#============ Chamar o ficheiro de Compra ============
Compra(){
    pwd
    chmod +x ./Compra/comprar.sh ../../MarketplaceCars/wwwcars.txt
    ./Compra/compra.sh ../../MarketplaceCars/wwwcars.txt
    #chmod +x ../Views/Compra/comprar_automoveis.sh 
    #../Views/Compra/comprar_automoveis.sh 
}

#============ Chamar o ficheiro de Venda ============
Venda(){
    ../Controller/Venda/venda.sh
}

#============ Chamar o ficheiro visualizar automoveis modo geral ============
Visualizar_Automoveis (){
    chmod +x ./Visualizar_Automovel/visualizar_carros_modo_geral.sh
    chmod 777 Visualizar_Automovel/visualizar_carros_modo_geral.sh
    chmod 777 Visualizar_Automovel/texbox_v.sh

    ./Visualizar_Automovel/visualizar_carros_modo_geral.sh
}

#============ Chamar o ficheiro visualizar automoveis por criterio ============
Visualizar_Automoveis_por_Criterio  (){
     chmod +x ./Visualizar_Automovel/por_criterios.sh
    chmod +x ./Visualizar_Automovel/por_criterios.sh
    chmod 777 Visualizar_Automovel/texbox_v.sh

    ./Visualizar_Automovel/por_criterios.sh
}
#============ Chamar o ficheiro de Base de Dados ============
SGBD(){
    ./SGBD/base_de_dados.sh
    }

#============ Chamar o ficheiro de Backup ============
Backups(){
    ./Backups/backup.sh
    }

#============ Função para  Sair do programa e limpar a tela ============
break(){
    clear
}

#============ Função do Menu_Iniciar ============
function Main(){

    menu=$(
        dialog --stdout --title 'Menu Inicial' --menu 'Escolha uma opção' \
                0 0 0                             \
                1 'Compra'                        \
                2 'Venda'                         \
                3 'Atualizar Preço de Restauro'   \
                4 'Visualizar Automoveis'         \
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
Main " "
