#!/bin/bash
tar -xvf ../Models/Backup/Backup-22-11-2021-11.04.tar.gz
    if [ $? -eq 0 ]
        then
            for i in $(seq 0 20 100) ; do sleep 0.5; echo $i | dialog --gauge "Fazendo o restauro" 10 50 0; done
            dialog --title "Success!" --infobox 'Restauro feito com sucesso!' 6 30
    else 
            dialog --title "Sem success!" --infobox 'Não foi possível restaurar os ficheiros!' 6 30
        fi