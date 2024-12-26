echo " do you want to network conn   (yes/no)"
read  s

if [[ $s == "yes" ]] 
then

	if  ping -c 1 8.8.8.8   >  /dev/null
	then
		echo "internet is connected"
	else
		echo "no connection"
	fi
else
	echo "see you again"
fi


