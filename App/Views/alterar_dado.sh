#!/bin/bash


function Voltar(){
    ./main.sh
}

function break(){
    clear
}

function Preco_restauro(){
    Preco_restauro=$(dialog --stdout --inputbox 'Qual é a preco de restauro do carro?' \
    0 0 \
    )
    Atualizar_Preco_restauro=$(dialog --stdout --inputbox 'Introduz o novo preço do restauro:' \
    0 0 \
    )

    sed -i "s/${Preco_restauro}/${Atualizar_Preco_restauro}/" ../Models/stockTemp.txt
    cp ../Models/stockTemp.txt ../Models/stock.txt
    rm ../Models/stockTemp.txt
}

function Marca(){
    marca=$(dialog --stdout --inputbox 'Introduz a marca de automóvel:' \
    0 0 \
    )
    AtualizarMarca=$(dialog --stdout --inputbox 'Introduz a nova marca do automóvel:' \
    0 0 \
    )
    sed -i "s/${marca}/${AtualizarMarca}/" ../Models/stockTemp.txt
    cp ../Models/stockTemp.txt ../Models/stock.txt
    }

function Modelo(){
    modelo=$(dialog --stdout --inputbox 'Introduz o modelo do automóvel:' \
    0 0 \
    )
    AtualizarModelo=$(dialog --stdout --inputbox 'Introduz o novo modelo do automóvel:' \
    0 0 \
    )
    sed -i "s/${modelo}/${AtualizarModelo}/" ../Models/stockTemp.txt
    cp ../Models/stockTemp.txt ../Models/stock.txt
    }

function Preco_compra(){
    PrecoCompra=$(dialog --stdout --inputbox 'Introduz o preco de compra do automóvel:' \
    0 0 \
    )
    AtualizarPrecoCompra=$(dialog --stdout --inputbox 'Introduz o novo preco de compra do automóvel:' \
    0 0 \
    )
    sed -i "s/${PrecoCompra}/${AtualizarPrecoCompra}/" ../Models/stockTemp.txt
    cp ../Models/stockTemp.txt ../Models/stock.txt
    }

function Tipo(){
    Tipo=$(dialog --stdout --inputbox 'Introduz o tipo do automóvel:' \
    0 0 \
    )
    AtualizarTipo=$(dialog --stdout --inputbox 'Introduz o novo tipo do automóvel:' \
    0 0 \
    )
    sed -i "s/${Tipo}/${AtualizarTipo}/" ../Models/stockTemp.txt
    cp ../Models/stockTemp.txt ../Models/stock.txt
    }

function Ano(){
    Ano=$(dialog --stdout --inputbox 'Introduz o ano do automóvel:' \
    0 0 \
    )
    AtualizarAno=$(dialog --stdout --inputbox 'Introduz o ano de restauro do automóvel:' \
    0 0 \
    )
    sed -i "s/${Ano}/${AtualizarAno}/" ../Models/stockTemp.txt
    cp ../Models/stockTemp.txt ../Models/stock.txt
    }

    touch ../Models/stockTemp.txt
    cp ../Models/stock.txt ../Models/stockTemp.txt

menu=$(
    dialog --stdout --title 'Relatorio' --menu 'Número de veículos vendidos'   \
                                                                         0 0 0 \
                1 'Matricula'                                                      \
                2 'Marca'                                                      \
                3 'Modelo'                                                      \
                4 'Preco'                                                      \
                4 'Ano'                                                      \
                5 ' <- Voltar' 
        )
    
    [ $? -ne 0 ] && break
    case "$menu" in
         1) Matricula ;;
         2) Marca ;;
         3) Modelo ;;
         4) Preco_compra ;;
         4) Ano ;;
         5) Voltar ;;
         0) break ;;
    esac
