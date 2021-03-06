#!/usr/bin/env bash

#============ Chamar o ficheiro de LVC ============
function L_v_c(){
    ./Lvc.sh
}

#============ Chamar o ficheiro de LVV ============
function L_v_v(){
    ./Lvv.sh
    }

#============ Chamar o ficheiro de LVS ============
function L_v_s(){
    ./Lvs.sh
    }

#============ Chamar o ficheiro de NVS ============
function N_v_s(){
    ./Nvs.sh
    }

#============ Chamar o ficheiro de NVV ============
function N_v_v(){
    ./Nvv.sh
    }

#============ Chamar o ficheiro de VAS ============
function V_a_s(){
    ./Vas.sh
    }

#============ Chamar o ficheiro de VAS ============
function T_l(){
    ./Tl.sh
    }

function Voltar(){
    ./main.sh
}

#============ Função para  Sair do programa ============
function break(){
    clear
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
                8 '<- Voltar'                   
        )

    [ $? -ne 0 ] && break

    case "$menu" in
         1) L_v_c ;;
         2) L_v_v ;;
         3) L_v_s ;;
         4) N_v_s ;;
         5) N_v_v ;;
         6) V_a_s ;;
         7) T_l ;;
         8) Voltar ;;
         0) break ;;
    esac