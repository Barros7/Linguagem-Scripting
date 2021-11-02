#!/bin/bash

#Executa o ficheiro criar backup
function CriarBk(){
    ./functions/criarBk.sh
}

function Voltar(){
    ./main.sh
}

#Função para a Gestão de Base de Dados
clear
    menu=$(
        dialog --stdout                               \
                --title 'Gestão de Base Dados'        \
                --menu 'Escolhe uma opção:'           \
                0 0 0                                 \
                1 'Criar backup'                      \
                2 'Restaurar uma cópia de segurança'  \
                3 'Eliminar backup'                   \
                4 '<- Voltar'                         \
                0 'Sair' 
        )

    [ $? -ne 0 ] && break

    case "$menu" in
         1) CriarBk ;;
         2) RestaurarCpS ;;
         3) EliminarBk ;;
         4) Voltar ;;
         0) break ;;
    esac