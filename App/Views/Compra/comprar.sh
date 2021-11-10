<<<<<<< HEAD
<<<<<<< HEAD
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

=======
=======
>>>>>>> 6b7dfadfdcf73ac5e9471c22f204f3d14d299c9a
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
    read dataCompra )
}

<<<<<<< HEAD
>>>>>>> 44e5739ae5053dbc3fdded000a6dc1f7d1eeaade
=======
>>>>>>> 6b7dfadfdcf73ac5e9471c22f204f3d14d299c9a
comprar " "