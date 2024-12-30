#!/bin/bash
cont_unsafe=0
unsafe=0
safe_lt=0
safe_gr=0
while read v1 v2 v3 v4 v5 v6 v7 v8 v9;do
	unsafe=0
	safe_lt=0
	safe_gr=0
	for ((i=1;i<9;i++));do
		nomevar=v$i
		nomevar_plus=v$((i+1))
		if [[ $unsafe -eq 1 ]];then 
		((cont_unsafe=$cont_unsafe+1))
		break
		elif [[ -z ${!nomevar_plus} && $unsafe -eq 1 || ($safe_lt>0 && $safe_gr>0) ]];then
				((cont_unsafe=$cont_unsafe+1))
				break
		elif [[ -z ${!nomevar_plus} ]];then break;
		elif [[ ${!nomevar} -ge ${!nomevar_plus} && ( $((${!nomevar}-${!nomevar_plus})) -eq 1 ||  $((${!nomevar}-${!nomevar_plus})) -eq 2  || $((${!nomevar}-${!nomevar_plus})) -eq 3) ]];then
			((safe_gr=$safe_gr+1))
		elif [[  ${!nomevar} -lt ${!nomevar_plus} && ( $((${!nomevar_plus}-${!nomevar})) -eq 1 ||  $((${!nomevar_plus}-${!nomevar})) -eq 2 ||  $((${!nomevar_plus}-${!nomevar})) -eq 3) ]];then
			((safe_lt=$safe_lt+1))
		else 
			unsafe=1
		fi
	done
done < safe.txt
long=$(wc -l safe.txt)
long=${long%% *}
((safe=$long-$cont_unsafe))
echo $safe
