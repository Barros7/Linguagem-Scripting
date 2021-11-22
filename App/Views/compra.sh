#!/bin/bash
filename="$1"
tags=()

while read -r tag;
    do
        tags+=("${tag} off")
    done < "$filename"

            LOJA=$(dialog --stdout --no-items --checklist "FAÇA COMPRA DE AUTÓVEIS:" 0 0 ${#tags[@]} ${tags[@]})


#============ INTRODUZIR A QUANTIDADE ==============#                

qtdCarro=$(dialog --stdout --inputbox "INTRODUZ A QUANTIDADE DE COMPRA:" 0 0 )

while [ -z "$qtdCarro" ] || [ $qtdCarro -lt 1 ] || [ $qtdCarro -gt 10000 ] && break
    do 
    qtdCarro=$(dialog --stdout --inputbox "QUANTIDADE INVALIDA, INTRODUZ DE NOVO:" 0 0 )
    done


#============ INTRODUZIR O PREÇO DE VENDA =======INÍCIO=======#
  precoVenda=$(dialog --stdout --inputbox "INTRODUZ O PREÇO DE VENDA:" 0 0 )

while [ -z "$precoVenda" ] && break
    do 
    precoVenda=$(dialog --stdout --inputbox "PREÇO NÃO IDENTIFICADO, INTRODUZ UM PREÇO VÁLIDO:" 0 0 )
done

#============ INTRODUZIR O PREÇO DE VENDA =======FIM=======#

#============ INTRODUZIR O PREÇO DE RESTAURO =======INÍCIO=======#
precorestauro=$(dialog --stdout --inputbox "Introduz o Preço de Restauro:" 0 0 )

while [ -z "$precorestauro" ] && break
    do 
    precorestauro=$(dialog --stdout --inputbox "Campo vazio, Introduz de Novo:" 0 0 )
done

#============ INTRODUZIR O PREÇO DE RESTAURO =======FIM=======#


#============ MENSAGEM DE COMPRA DE AUTOMÓVEIS =======INÍCIO=======#
dialog --ok-label "Concluír compra" --title "Acabou de escolher o seguinte Automovel: " --msgbox "$LOJA:QUANTIDADE:$qtdCarro:PREÇO_VENDA:$precoVenda:€:PREÇO_RESTAURO:$precorestauro:€ " 0 0
dialog --msgbox 'COMPRA REALIZADA COM SUCESSO. OBRIGADO, VOLTE SEMPRE!' 5 40

#============ MENSAGEM DE COMPRA DE AUTOMÓVEIS =======FIM=======#


#============ GURADAR A COMPRA EM STOK DE AUTOMÓVEIS =======INÍCIO=======#
pwd
echo $LOJA:QUANTIDADE:$qtdCarro:PREÇO_VENDA:$precoVenda:€:PREÇO_RESTAURO:$precorestauro:€  >> ../Models/stock.txt
echo $LOJA:QUANTIDADE:$qtdCarro:PREÇO_VENDA:$precoVenda:€:PREÇO_RESTAURO:$precorestauro:€  >> ../Models/automoveis_comprados.txt
while [ -z "$LOJA=0" ] && break
    do 
    LOJA=$(dialog --msgbox "NENHUMA COMPRA IDENTIFICADA, FAÇA UMA COMPRA  SE FAZ FAVOR, OU CLICA CANCELAR:" 0 0  )
    done
            
#============ GURADAR A COMPRA EM STOK DE AUTOMÓVEIS =======INÍCIO=======#
    