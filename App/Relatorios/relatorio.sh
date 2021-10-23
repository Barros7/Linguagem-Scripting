#!/usr/bin/env bash
#============ Chamar o ficheiro Listar veículos comprados ============
Listar_veiculos_comprados(){
    ../Compras/compra.sh
}

#============ Chamar o ficheiro Listar veículos vendidos =============
Listar_veiculos_vendidos(){
    ../Vendas/venda.sh
}

#============ Chamar o ficheiro Listar veículos em Stock =============
Listar_veiculos_em_stock(){
    ..Stocks/stock.sh
}

#============ Chamar o ficheiro Número de veículos em stock =============
Numero_de_veiculos_em_stock(){
    ..Stocks/stock.sh
}

#============ Chamar o ficheiro Número de veículos vendido =============
Numero_de_veiculos_vendido(){
    ..Stocks/stock.sh
}

#============ Chamar o ficheiro Veículo mais antigo em stock =============
Veiculo_mais_antigo_em_stock(){
    ..Stocks/stock.sh
}

    #============ Chamar o ficheiro Total lucros =============
Total_lucros(){
    ..Stocks/stock.sh
}
#============ Funçao para Sair do programa ============
Sair(){
    Clear
    exit
}

#============ Função do menu Relatório ================

    menu=$(
        dialog --stdout                           \
                --title 'Relatorio'               \
                --menu 'Escolhe uma opção'        \
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
         1) Listar_veiculos_comprados ;;
         2) Listar_veiculos_vendidos ;;
         3) Listar_veiculos_em_stock ;;
         4) Numero_de_veiculos_em_stock ;;
         5) Numero_de_veiculos_vendido ;;
         6) Veiculo_mais_antigo_em_stock ;;
         7) Total_lucros ;;
         0) break ;;
    esac
