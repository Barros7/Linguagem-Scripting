#!/urs/bin/env bash


#============ Função para  Sair do programa ============
Sair(){
    clear
    exit
}

function Main(){

    menuc=$(
        dialog --stdout --title 'Visualizar Automoveis por Criterio' --menuc 'Escolha o que deseja Visualizar' \
            0 0 0                \
            1 'Carros Comprados' \
            2 'Carros Vendidos'  \
            3 'Carros em Stock'  \
            0 'Sair'             \
        )
    [ $? -ne 0 ] && break

    case "$menuc" in
        1) carros_comprados ;;
        2) carros_vendidos ;;
        3) carros_em_stok ;;
        0) break ;;
    esac
    
}
Main " "