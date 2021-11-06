#!/bin/bash
clear #limpa o menu anterior.

function comprar(){
    menu$(dialog --stdout --inputbox 'Digite seu nome:' 0 0 "seu nome aqui"
    read tipo

    echo "Introduz a marca:"
    read marca

    echo "Introduz a matrícula: "
    read matricula
    
    echo "Introduz o modelo:"
    read modelo

    echo "Introduz o ano de fabrico:"
    read ano

    echo "Introduz o preço da compra:"
    read precoCompra

    echo "Introduz o preço de restauro:"
    read precoRestauro

    echo "Introduz a data da compra:"
    read dataCompra
}

comprar " "