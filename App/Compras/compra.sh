<<<<<<< HEAD
    #!/bin/bash
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
=======
#!/bin/bash
filename="$1"
tags=()
>>>>>>> 295057df076f30a3014e53728a72795590a10ed2

while read -r tag;
    do
        tags+=("${tag} off")
    done < "$filename"

<<<<<<< HEAD
    case "$menu" in
         1) Compra ;;
         2) Venda ;;
         3) Atualizar_Preco_de_Restauro ;;
         4) Visualizar_Automoveis ;;
         5) Gestão_Base_Dados ;;
         6) Relatorios ;;
         0) break ;;
    esac
}

convert_DOS2UNIX ""

menu_Compra ""
=======
carros=$(dialog --stdout --no-items --checklist "Carros:" 20 50 ${#tags[@]} ${tags[@]})
>>>>>>> 295057df076f30a3014e53728a72795590a10ed2
