    menu=$(
        dialog --stdout                           \
                --title 'Compra'            \
                --menu 'Escolha uma opção:'       \
                0 0 0                             \
                1 'Compra'                        \
                2 'Venda'                         \
                3 'Atualizar Preco de Restauro'   \
                4 'Visualizar Automoveis'         \
                5 'Alterar Dados'                 \
                6 'Visualizar Automoveis'         \
                7 'Gestão de Base de Dados'       \
                8 'Relatórios'                    \
                0 'Sair'                
        )

    [ $? -ne 0 ] && break

    case "$menu" in
         1) Compra ;;
         2) Venda ;;
         3) Atualizar_Preco_de_Restauro ;;
         4) Visualizar_Automoveis ;;
         5) Gestão_Base_Dados ;;
         6) Relatorios ;;
         0) break ;;
    esac
