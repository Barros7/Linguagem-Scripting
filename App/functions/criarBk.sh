#!/bin/bash
function CriarBk(){
    TIME=`date +%b-%d-%y`         # Adicionar a data no Nome do Arquivo de Backup.
    FILENAME=Backup-$TIME.tar.gz  # Aqui eu defino o formato do nome do arquivo de backup.
    SRCDIR=./functions            # Local Fonte     - onde estão os arquivos a serem feitos backup.
    DESDIR=./GBD/Backup/          # Local Destino - onde o Backup será salvo.
    tar -cpzf $DESDIR/$FILENAME $SRCDIR
}

CriarBk ""