#!/bin/bash


#Funçao Opção inválida Menu Principal
opcaoErroMP(){
    clear
    echo "Opção inválida!"
    echo ""
    echo "Voltar ao Menu Principal? Y/N"
    read opcao

    case $opcao in
        y) menuPrincipal ;;
        Y) meuPrincipal ;;
        N) sair ;;
        n) sair ;;
        *) opcaoErroMP ;;
    esac
}