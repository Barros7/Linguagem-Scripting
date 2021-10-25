BEGIN
	{
		FS = ":"
		print "Cidade Valor"
		print "____________"
	}
	{
	if (NR > 1){
		print $2 $3
		soma += $3
		if(max > $3){
			max=$3
			maxLetra=$4
		}
	}		
END {
	print "média" soma/(NR-1)
	print "Max letra" maxLetra
}
}
