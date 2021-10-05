#!/usr/bin/env bash

#============ Chamar o ficheiro de Compra ============

    Compra(){
        ../Compras/compra.sh
    }

#============ Chamar o ficheiro de venda =============

    Venda(){
        ../Vendas/venda.sh
    }

#============ Chamar o ficheiro de Stock =============

    Stock(){
        ..Stocks/stock.sh
    }

#============ Funçao para Sair do programa ============

    Sair(){
        Clear
        exit
    }

#============ Função do menu Relatório ================

Relatorio(){
    echo " 1 - Listar veículos comprados  "
    echo " 2 - Listar veículos vendidos   "
    echo " 3 - Listar veículos em Stock   "
    read opcao2

    case $opcao2 in
        1) Listar veículo comprados
        2) Listar veículos vendidos
        3) Listar veículos em Stock
    esac
}
Relatorio ""
