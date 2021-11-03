#!/bin/bash
function CriarBk(){
    TIME=`date +%d-%m-%Y-%H.%M`            # Adicionar a data no Nome do Arquivo de Backup.
    FILENAME=Backup-$TIME.tar.gz           # Aqui eu defino o formato do nome do arquivo de backup.
    SRCDIR=../Models/Database         # Local Fonte - onde estão os arquivos a serem feitos backup.
    DESDIR=../Models/Backup/          # Local Destino - onde o Backup será salvo.
    tar -cpzf $DESDIR/$FILENAME $SRCDIR
    if [ $? -eq 0 ]
        then
            for i in $(seq 0 20 100) ; do sleep 0.5; echo $i | dialog --gauge "Criando o backup" 10 50 0; done
            dialog --title "Success!" --infobox 'Backup feito com sucesso!' 6 30
    else 
            dialog --title "Sem success!" --infobox 'Erro ao fazer o Backup!' 6 30
        fi
}

CriarBk ""