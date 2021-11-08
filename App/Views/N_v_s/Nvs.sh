#!/bin/bash
function Marca(){
    Tipo_automovel=$(dialog --stdout --inputbox 'Introduz a marca:' \
    0 0 \
    )
    read Marca
}
Marca""