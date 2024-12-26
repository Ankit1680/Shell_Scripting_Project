

while :
do

	memUsed=` free -m  | head  -2  | tail -1  |   awk  ' { print $3 }' `
	totMem=` free -m  | head  -2  | tail -1  |   awk  ' { print $2 }' `

	memUsedPercent=` expr  $memUsed  \* 100  / $totMem `

	echo -e " `date   +" %r   %D" `  \t$memUsedPercent " >> mem_report.tsv


	if [[ memUsedPercent -ge  40 ]]
	then
		echo "Security Alert"  |  espeak-ng
	fi
	
	sleep  5

done




