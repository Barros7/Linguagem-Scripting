#!/usr/bin/env bash


#========================= Limpar Tel ================================

#============ Chamar o ficheiro Listar veículos comprados ============

    Compra(){
        ../Compras/compra.sh
    }

#============ Chamar o ficheiro Listar veículos vendidos =============

    Venda(){
        ../Vendas/venda.sh
    }

#============ Chamar o ficheiro Listar veículos em Stock =============

    Stock(){
        ..Stocks/stock.sh
    }

#=========== Funçao para Sair do programa ============

    Sair(){
        Clear
        exit
    }

#============ Função do menu Relatório ================

Relatorio(){
    Clear
    echo " 1 - Listar veículos comprados  "
    echo " 2 - Listar veículos vendidos   "
    echo " 3 - Listar veículos em Stock   "
    echo " 0 - Sair do Programa           "
    read opcao2

    case $opcao2 in             #============ Estamos a pensar como vai ser ================
        1) Listar_veiculo_comprados ;;
        2) Listar_veiculos_vendidos ;; 
        3) Listar_veiculos_em_Stock ;;
        0) Sair ;;
    esac
}
Relatorio ""
