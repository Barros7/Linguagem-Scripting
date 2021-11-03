#!/bin/bash
    filename="$1"
    tags=()
    
    while read -r tag;
        do
            tags+=("${tag} off")
        done < "$filename"

    carros=$(dialog --stdout --no-items --checklist "Carros:" 20 50 ${#tags[@]} ${tags[@]})