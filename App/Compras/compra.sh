<<<<<<< HEAD
    #!/bin/bash
<<<<<<< HEAD

function convert_DOS2UNIX(){
    dos2unix -b ./compra.sh
} 

function Compra (){
    echo "Compra"
}

function Venda (){
    echo "Venda"
}

function Atualizar_Preco_de_Restauro (){
    echo "Atualizar_Preco_de_Restauro"
}

function Visualizar_Automoveis (){
    echo "Visualizar_Automoveis"
}

function Gestão_Base_Dados (){
    echo "Gestão_Base_Dados"
}

function Relatorios (){
    echo "Relatorios"
}

function menu_Compra(){
menu=$(
=======
    menu=$(
>>>>>>> c32cc45b9d20b59aa416daad49afa2536a3d0058
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
