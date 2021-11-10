#!/bin/bash
read Tipo_automovel
grep $Tipo_automovel wwwcars.txt
<<C
while [ -z "$Tipo_automovel="AUTOMATICO"" ]
    do 
     Tipo_automovel=$(dialog --stdout --inputbox "Campo vazio, insira de novo:" 0 0 )
  done 
  grep $Tipo_automovel wwwcars.txt | awk -F '|' ' {print NR")" $1 ":" $2 "|" $3 ":" $4 "|" $5 ":" $6 "|" $7 ":" $8 "|" $9 ":" $10 "|" $11 ":" $12}'
  
  Tipo_automovel=$(dialog --stdout --inputbox "Campo vazio, insira de novo:" 0 0 )  
   # ../../../MarketplaceCars/wwwcars.txt | awk -v var="$Teste" -F '|' 'BEGIN{print var, NR")" $1 ":" $2 "|" $3 ":" $4 "|" $5 ":" $6 "|" $7 ":" $8 "|" $9 ":" $10 "|" $11 ":" $12}'  
    #pesquisar=`awk -v -F "|" '{if($2 != "'$Tipo_automovel'") print $10" "$3}' wwwcars.txt`
    #echo "$pesquisar"
    # ../../../MarketplaceCars/wwwcars.txt awk -F ":" -v var="$Tipo_automovel" '{print var ":" $1 ":" $2 ":" $3 ":" $4 ":" $5 ":" $6 ":" $7 ":" $8 ":" $9 ":" $10 ":" $11 ":" $12}' /etc/passwd >> /dev/null
    C 