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
        3) Atualizar_Preco_De_Restauro ;;
        4) Venda ;;
        5) Venda ;;
        6) Venda ;;
        7) Venda ;;
        0) Sair ;;
    esac
}