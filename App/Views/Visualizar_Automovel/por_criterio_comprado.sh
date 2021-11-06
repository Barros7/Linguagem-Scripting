#!/bin/bash

#============ Função para  Sair do programa ============
break(){
clear
   
/home/jesus/Documents/Linguagem-Scripting/App/main.sh
}

clear #===== Limpa a escolha anterior ==========================

#============ Função visualizar carros por criterio / comprados ============

function Visualicar_Por_Cri_Comprado(){
    search$(dialog --stdout --inputbox 'Digite seu nome:' 0 0 "seu nome aqui" 
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
    read dataCompra )
    break;;
}
Visualicar_Por_Cri_Comprado " "