#!/bin/bash
    filename="$1"
    tags=()
    
    while read -r tag;
        do
            tags+=("${tag} off")
        done < "$filename"

    LOJA=$(dialog --stdout --no-items --checklist "Faça compras:" 20 50 ${#tags[@]} ${tags[@]})
    
    dialog --ok-label "Certo" --title "Acabou de Comprar o seguinte Automovel: " --msgbox "$LOJA" 0 0

while [ -z "$LOJA=0" ]
    do 
     LOJA=$(dialog --msgbox "zero compra, faca uma compra:" 5 40  )
  done
    pwd
    chmod +x ./SGBD/automoveis_comprados.txt
    echo $LOJA >> ./SGBD/automoveis_comprados.txt
    