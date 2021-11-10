#!/bin/bash

#============ Função para  Sair do programa ============
#break(){
   
#/home/jesus/Documents/Linguagem-Scripting/App/Views/main.sh
#}

#============ Função visualizar cLoja de Automóveis============

        LOJA=$(dialog --stdout --title "Loja de Automoveis Usados:" \
                             --separate-output \
                             --checklist "Escolha o Automovel que deseja Comprar" \
                             0 0 0 \
                             "MARCA:FiatgHS:MATRICULA:22FH01:ANO:1600:TIPO:Manual:MODELO:6013900:PREÇO:1500Euro" "1" off \
                             "MARCA:LandRover:MATRICULA:24FG11:ANO:2000:TIPO:Manual:MODELO:33900:PREÇO:2000Euro" "2" off \
                             "MARCA:SuzukiAuT:MATRICULA:32HG22:ANO:2003:TIPO:Manual:MODELO:13400:PREÇO:1450Euro" "3" off \
                             "MARCA:Land-Rover:MATRICULA:26FG02:ANO:2016:TIPO:Autom:MODELO:13800:PREÇO:2500Euro" "4" off \
                             "MARCA:Ferrari.2:MATRICULA:28FG21:ANO:2006:TIPO:MANUAL:MODELO:15900:PREÇO:3000Euro" "5" off \
                             "MARCA:Bugati-3.1:MATRICULA:54FG51:ANO:2013:TIPO:Autom:MODELO:45865:PREÇO:4000Euro" "6" off \
                             "MARCA:Grand-I10:MATRICULA:27FH04:ANO:2014:TIPO:MANUAL:MODELO:84567:PREÇO:1000Euro" "7" off \
                             "MARCA:MercedesAm:MATRICULA22FG01:ANO:2013:TIPO:MANUAL:MODELO:25478:PREÇO:3800Euro" "8" off \
                             "MARCA:PradoDub:MATRICULA:22FG01:ANO:2004:TIPO:MANUAL:MODELO:523900:PREÇO:3600Euro" "9" off \
                             "MARCA:Grand-I20:MATRICULA:22FG01:ANO:2013:TIPO:MANUAL:MODELO:25479:PREÇO:1000Euro" "10" off \
                             "MARCA:Santafe:MATRICULA:22FG01:ANO:2013:TIPO:Automati:MODELO:25879:PREÇO:2500Euro" "11" off \
                             "MARCA:Landcruse:MATRICULA:22FG01:ANO:2013:TIPO:MANUAL:MODELO:36985:PREÇO:2500Euro" "12" off \
                             "MARCA:HumerH2A:MATRICULA:222HF01:ANO:2005:TIPO:MANUAL:MODELO:12583:PREÇO:6000Euro" "13" off \
                             "MARCA:BMWDubai:MATRICULA:77FG05:ANO:2017:TIPO:MANUAL:MODELO:786546:PREÇO:2600Euro" "14" off \
                             "MARCA:IX35Ameri:MATRICULA:22FG01:ANO:2007:TIPO:MANUAL:MODELO:02589:PREÇO:1800Euro" "15" off \
                             "MARCA:Rav4Americ:MATRICULA:22FG01:ANO:2002:TIPO:MANUAL:MODELO:96900:PREÇO:750Euro" "16" off \
                             "MARCA:CorolaAmer:MATRICULA:28FG71:ANO:2008:TIPO_MANUAL:MODELO:44569:PREÇO:700Euro" "17" off \
                             "MARCA:Lamborguin:MATRICULA:22FG01:ANO:2001:TIPO:MANUAL:MODELO:7390:PREÇO:5000Euro" "18" off)
        
        dialog --ok-label "Certo" --title "Acabou de Comprar o seguinte Automovel: " --msgbox "$LOJA" 0 0

while [ -z "$LOJA=0" ]
    do 
     LOJA=$(dialog --msgbox "zero compra, faca uma compra:" 5 40  )
  done
        pwd
        chmod +x ../SGBD/automoveis_comprados.txt
echo $LOJA >> ../SGBD/automoveis_comprados.txt
pwd
chmod +x ../main.sh
 ../main.sh

#============ Função visualizar cLoja de Automóveis============

