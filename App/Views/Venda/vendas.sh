!/bin/bash
    filename="$1"
    tags=()
    
    while read -r tag;
        do
            tags+=("${tag} off")
        done < "$filename"

             VENDA=$(dialog --stdout --no-items --checklist "VENDER AUTÓVEIS A CLIENTES:" 0 0 ${#tags[@]} ${tags[@]})





#============ MENSAGEM DE COMPRA DE AUTOMÓVEIS =======INÍCIO=======#
    dialog --ok-label "Concluír compra" --title "Acabou de escolher o seguinte Automovel: " --msgbox "$VENDA" 0 0
    dialog --msgbox 'VENDA REALIZADA COM SUCESSO. OBRIGADO POR REALIZAR A VENDA!' 5 40

#============ MENSAGEM DE COMPRA DE AUTOMÓVEIS =======FIM=======#


#============ GURADAR A COMPRA EM STOK DE AUTOMÓVEIS =======INÍCIO=======#
    pwd
    chmod +x ./SGBD/automoveis_vendidos.txt
    echo $VENDA >> ./SGBD/automoveis_vendidos.txt
    while [ -z "$LOJA=0" ]
        do 
        VENDA=$(dialog --msgbox "NENHUMA COMPRA IDENTIFICADA, FAÇA UMA COMPRA  SE FAZ FAVOR, OU CLICA CANCELAR:" 0 0  )
        done
            
#============ GURADAR A COMPRA EM STOK DE AUTOMÓVEIS =======INÍCIO=======#
    