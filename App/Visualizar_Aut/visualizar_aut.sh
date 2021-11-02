#!/bin/bash


#============ Função para  Sair do programa ============

#============ Função do Menu_Visualizar_Automóveis_Por_Critério ============
function Main(){

    menuv=$(
        dialog --stdout --title 'Visualizar Automoveis por Criterio' --menu 'Escolha uma opção' \                    \
                0 0 0                       \
                1 'Matricula'               \
                2 'Marca'                   \
                3 'Modelo'                  \
                4 'Ano'                     \
                5 'Tipo'                    \
                0 'Sair do programa'        \
        )
    [ $? -ne 0 ] && break

    case "$menuv" in
         1) Matricula;;
         2) Marca ;;
         3) Modelo ;;
         4) Ano ;;
         5) Tipo ;;
         0) break ;;
    esac
}
Main ""

