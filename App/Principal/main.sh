#!/usr/bin/env bash

#============ Chamar o ficheiro de Compra ============
Compra(){
    ../Compras/compra.sh
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
#============ Função do Menu_Iniciar ============

Menu_Iniciar(){
    echo " 1 - Compra                       "
    echo " 2 - Venda                        "
    echo " 3 - Atualizar Preço de Restauro  "
    echo " 4 - Alterar Dados                "
    echo " 5 - Visualizar Automoveis        "
    echo " 6 - Gestão de Base de Dados      "
    echo " 7 - Relatórios                   "
    echo " 0 - Sair do Programa             "
    read opcao

    case $opcao in
        1) Compra ;;
        2) Venda ;;
        0) Sair ;;
    esac
}
Menu_Iniciar ""
#============ Função do Menu para criar Backup dos dados ============

#============ Função para fazer o Restauro dos dados ============

#============ Função para executar o programa ==============

