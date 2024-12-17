ex_multa=0
cont=0
while read A B multa C;do
		if [[ $multa -eq $ex_multa || $ex_multa -le 0 ]];then
					((cont=$cont+1))
		else 
			echo $ex_multa $cont
			cont=1
		fi
		ex_multa=$multa
done
echo $ex_multa $cont
