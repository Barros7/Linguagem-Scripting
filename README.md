# Linguagem Scripting

## Converte file DOS to UNIX command
- step 1: install the dos2unix.
sudo apt install dos2unix

- step 2: convert file.
dos2unix -b fileName


Para visualização de um ficheiro, podemos utilizar o parâmetro textbox.

Pensar na lógica de como vamos representar a lista de carros



App (empresa)    <--------    MarketplaceCars(www.cars.com)
        |
        '----> stock
                |
                '-----> Cliente(Nosso Cliente)

                  MarketplaceCars copyFile App <=> App - Cliente     

Em falta:

O ficheiro para visualizar automoveis por critério vai ler os dados do ficheiro que estiver no stok

Usar o awk para: 
    - criar relatório
    - encontrar o maior valor
    - calcular o lucro com o awk


4) cp  carros.txt livros.txt
   cp  stocksbk.txt stocks.txt
   cp  autoresbk.txt autores.txt
echo ""
echo "Restauro finalizado!"
voltarbaseDados ;;
esac;;

3) clear
echo "Apagar uma cópia de segurança"
echo ""
#Dá print aos backups disponíveis
echo "Backups disponíveis:"
for entry in `ls ~/Documentos/LS/TP/`; do
    echo $entry
done
echo ""

cd ~/ScriptWork/Backup/
echo "Qual a cópia de segurança a apagar?" ;
echo "1-livros" ;
echo "2-stocks" ;
echo "3-autores" ;
echo "4-Tudo" ;

read apagar

case $apagar in
1) rm carros.txt
echo ""
echo "Remoção finalizado!"
voltarbaseDados ;;
2) rm stocksbk.txt
echo ""
echo "Remoção finalizado!"
voltarbaseDados ;;
3) rm autoresbk.txt
echo ""
echo "Remoção finalizado!"
voltarbaseDados ;;
6) rm carros.txt
   rm stocksbk.txt
   rm autoresbk.txt 

echo "Remoção concluída"
voltarbaseDados ;;
esac;;

*)opcaoErroBaseDados ;;
esac
}