echo "Restaurar uma cópia de segurança"
echo ""
#Dá print aos backups disponíveis
echo "Backups disponíveis:"
for entry in `ls ~/Backup/`; 
do
    echo $entry
done
echo ""

cd ~/ScriptWork/Backup
echo "Qual a cópia de segurança que quer restaurar?:" ;
echo "1-livros" ;
echo "2-stocks" ;
echo "3-autores" ;

read copia

#Restauro do backup
case $copia in
1) cp carros.txt livros.txt
mv livros.txt ~/ScriptWork
echo ""
echo "Restauro finalizado!"
voltarbaseDados ;;
2) cp stocksbk.txt stocks.txt
mv stocks.txt ~/ScriptWork
echo ""
echo "Restauro finalizado!"
voltarbaseDados ;;
3) cp autoresbk.txt autores.txt
mv autores.txt ~/ScriptWork
echo ""
echo "Restauro finalizado!"
voltarbaseDados ;;
