#!/bin/bash

function venderCarro(){
    
    dos2unix ./venda.sh
    chmod +x ./venda.sh
    VENDA=$(dialog --title "Compras de Automoveis" \
    --form "\n Caro Cliente: Indica os dados do automovel que deseja comprar" 25 46 16 \
    "Marca:     " 1 1 "MARCA:     " 1 15 25 30  \
    "Modelo:    " 2 1 "MODELO:    " 2 15 25 30  \
    "Matrícula: " 3 1 "MATRICULA: " 3 15 25 30  \
    "Tipo:      " 4 1 "TIPO:      " 4 15 25 30  \
    "Preço:     " 5 1 "PREÇO:     " 5 15 25 30  \
    "Ano:       " 6 1 "ANO:       " 6 15 25 30  \
    "Restauro:  " 7 1 "RESTAURO:  " 7 15 25 30  > /tmp/out.tmp \
    2>&1 >/dev/tty

    marca=`sed -n 1p /tmp/out.tmp`
    modelo=`sed -n 2p /tmp/out.tmp`
    matricula=`sed -n 3p /tmp/out.tmp`
    tipo=`sed -n 4p /tmp/out.tmp`
    preco=`sed -n 5p /tmp/out.tmp`
    ano=`sed -n 6p /tmp/out.tmp`
    restauro=`sed -n 7p /tmp/out.tmp`

    rm -f /tmp/out.tmp
                                                                chmod +x ../SGBD/automoveis_vendidos.txt
    echo $marca:$modelo:$matricula:$tipo:$preco:$ano:$restauro: >> ../SGBD/automoveis_vendidos.txt

    
    )
    
}
venderCarro ""