#!/usr/bin/env bash

function convert_DOS2UNIX(){
    dos2unix -b ./relatorio.sh
}

#============ Chamar o ficheiro de LVC ============
L_v_c(){
    ../L_v_c/Lvc.sh
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

#============ Função do Menu_Iniciar ==============
    menu=$(
        dialog --stdout                           \
                --title 'Relatorio'               \
                --menu 'Escolha uma opção'        \
                0 0 0                             \
                1 'Listar veiculos comprados'     \
                2 'Listar veiculos vendidos'      \
                3 'Listar veiculos em stock'      \
                4 'Numero de veiculos em stock'   \
                5 'Numero de veiculos vendido'    \
                6 'Veiculo mais antigo em stock'  \
                7 'Total lucros'                  \
                0 'Sair'   
                 
        )

    [ $? -ne 0 ] && break

    case "$menu" in
         1) L_v_c;;
         2) listar_veiculos_vendidos ;;
         3) listar_veiculos_em_stock ;;
         4) numero_de_veiculos_em_stock ;;
         5) numero_de_veiculos_vendido ;;
         6) veiculo_mais_antigo_em_stock ;;
         7) total_lucros ;;
         0) break ;;
    esac

    #convert file DOS2UNIX
    convert_DOS2UNIX ""
