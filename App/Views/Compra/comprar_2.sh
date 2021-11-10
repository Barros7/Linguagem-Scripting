#!/bin/bash

#============ Chamar o ficheiro de Compra ============
#Compra(){
    #pwd
   # chmod +x ./texbox_v_comprado.sh
   # ./texbox_v_comprado.sh
  #   ./Compras/compra.sh
#}


        pwd
        chmod +x Compra/wwwcars.txt  
        chmod +x ./wwwcars.txt         
        ARQUIVO="./wwwcars.txt" 
        dialog  --title "Loja de Automóveis" --textbox "$ARQUIVO" \
                0 0 \

#============ ESCOLHA DA MATRICULA ==============#
  matriculaCarro=$(dialog --stdout --inputbox "Insira a matricula do Automovel:" 0 0 )

  while [ -z "$matriculaCarro" ]
    do 
     matriculaCarro=$(dialog --stdout --inputbox "Campo vazio, insira de novo:" 0 0 )
  done

    compara=$(grep -o "$matriculaCarro" ./carros.txt)

    while [ $matriculaCarro == $compara ]
    do
      matriculaCarro=$(dialog --stdout --inputbox "Matricula existente, insira de novo:" 0 0 )
    done
#============ ESCOLHA DA MATRICULA ==============#
#============ ESCOLHA DA MARCA ==============#
  marcaCarro=$(dialog --stdout --inputbox "Insira a marca do carro:" 0 0 )

  while [ -z "$marcaCarro" ]
    do 
     marcaCarro=$(dialog --stdout --inputbox "Campo vazio, insira de novo:" 0 0 )
  done
#============ ESCOLHA DA MARCA ==============#
#============ ESCOLHA DO MODELO ==============#
  modeloCarro=$(dialog --stdout --inputbox "Insira o modelo do carro:" 0 0 )

  while [ -z "$modeloCarro" ]
    do 
     modeloCarro=$(dialog --stdout --inputbox "Campo vazio, insira de novo:" 0 0 )
  done
#============ ESCOLHA DO MODELO ==============#
#============ ESCOLHA DO ANO ==============#
  anoCarro=$(dialog --stdout --inputbox "Insira o ano do carro:" 0 0 )

  while [ -z "$anoCarro" ]
    do 
     anoCarro=$(dialog --stdout --inputbox "Campo vazio, insira de novo:" 0 0 )
  done
#============ ESCOLHA DO ANO ==============#
#============ ESCOLHA DA QUANTIDADE ==============#
   qtdCarro=$(dialog --stdout --inputbox "Insira a quantidade 1 a 3:" 0 0 )

  while [ -z "$qtdCarro" ] || [ $qtdCarro -lt 1 ] || [ $qtdCarro -gt 3 ]
    do 
     qtdCarro=$(dialog --stdout --inputbox "Quantidade incorrecta, insira de novo:" 0 0 )
  done
#============ ESCOLHA DA QUANTIDADE ==============#
#============ ESCOLHA DO PRECO DE COMPRA ==============#
  precoCompra=$(dialog --stdout --inputbox "Insira o preço de compra:" 0 0 )

  while [ -z "$precoCompra" ]
    do 
     precoCompra=$(dialog --stdout --inputbox "Campo vazio, insira de novo:" 0 0 )
  done
#============ ESCOLHA DO PRECO DE COMPRA ==============#
#============ ESCOLHA DO PRECO DE VENDA ==============#
  precoVenda=$(dialog --stdout --inputbox "Insira o preço de venda:" 0 0 )

  while [ -z "$precoVenda" ]
    do 
     precoVenda=$(dialog --stdout --inputbox "Campo vazio, insira de novo:" 0 0 )
  done

#============ ESCOLHA DO PRECO DE VENDA ==============#


dialog --msgbox 'Compra Realizada' 5 40

echo $matriculaCarro:$marcaCarro:$modeloCarro:$anoCarro:$qtdCarro:$precoCompra:$precoVenda >>./carros.txt