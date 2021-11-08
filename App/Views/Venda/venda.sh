#!/bin/bash

function venderCarro(){
    chmod +x ./venda.sh
    dialog --backtitle "Vender carros" --title "Carros a Venda" \
    --form "\n Introduz os valores do carro a Vender" 25 46 16 \
    "Marca:     " 1 1 " " 1 15 25 30  \
    "Modelo:    " 2 1 " " 2 15 25 30  \
    "Matrícula: " 3 1 " " 3 15 25 30  \
    "Tipo:      " 4 1 " " 4 15 25 30  \
    "Preco:     " 5 1 " " 5 15 25 30  \
    "Ano:       " 6 1 " " 6 15 25 30 > /tmp/out.tmp \
    2>&1 >/dev/tty

    marca=`sed -n 1p /tmp/out.tmp`
    modelo=`sed -n 2p /tmp/out.tmp`
    matricula=`sed -n 3p /tmp/out.tmp`
    tipo=`sed -n 4p /tmp/out.tmp`
    preco=`sed -n 5p /tmp/out.tmp`
    ano=`sed -n 6p /tmp/out.tmp`

    rm -f /tmp/out.tmp

    echo $marca:$modelo:$matricula:$tipo:$preco:$ano >> compra.txt
}

venderCarro ""