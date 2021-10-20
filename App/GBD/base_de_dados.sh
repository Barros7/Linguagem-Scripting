    menu=$(
        dialog --stdout                           \
                --title 'Gestão de Base Dados'    \
                --menu 'Escolhe uma opção:'       \
                0 0 0                             \
                1 'Criar backup'                  \
                2 'Eliminar backup'               \
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
