#!/usr/bin/env bash

function convert_DOS2UNIX(){
    dos2unix -b ./relatorio.sh
}

#============ Chamar o ficheiro de LVC ============
L_v_c(){
    ../L_v_c/Lvc.sh
}

#============ Chamar o ficheiro de LVV ============
L_v_v(){
    chmod +x ../L_v_v/Lvv.sh 
    ../L_v_v/Lvv.sh
    }

#============ Chamar o ficheiro de LVS ============
L_v_s(){
    chmod +x ../L_v_s/Lvs.sh
    ../L_v_s/Lvs.sh
    }

#============ Chamar o ficheiro de NVS ============
N_v_s(){
    chmod +x ../N_v_s/Nvs.sh
    ../N_v_s/Nvs.sh
    }

#============ Chamar o ficheiro de NVV ============
N_v_v(){
    chmod +x ../N_v_v/Nvv.sh
    ../N_v_v/Nvv.sh
    }

#============ Chamar o ficheiro de VAS ============
V_a_s(){
    chmod +x ../V_a_s/Nas.sh
    ../V_a_s/Vas.sh
    }

#============ Chamar o ficheiro de VAS ============
T_l(){
    chmod +x ../T_l/Tl.sh
    ../T_l/Tl.sh
    }


#============ Função para  Sair do programa ============
Sair(){
    clear
    exit
}

#============ Função do Menu_Iniciar ==============
    menu=$(
        dialog --stdout                           \
                --title 'Relatorio'               \
                --menu 'Escolha uma opção'        \
                0 0 0                             \
                1 'Listar veiculos comprados'     \
                2 'Listar veiculos vendidos'      \
                3 'Listar veiculos em stock'      \
                4 'Numero de veiculos em stock'   \
                5 'Numero de veiculos vendido'    \
                6 'Veiculo mais antigo em stock'  \
                7 'Total lucros'                  \
                0 'Sair'   
                 
        )

    [ $? -ne 0 ] && break

    case "$menu" in
         1) L_v_c;;
         2) L_v_v ;;
         3) L_v_s ;;
         4) N_v_s ;;
         5) N_v_v ;;
         6) V_a_s ;;
         7) T_l ;;
         0) break ;;


    esac
    #convert file DOS2UNIX
    convert_DOS2UNIX ""
