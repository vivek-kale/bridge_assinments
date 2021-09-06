count=0

sum=0

while [ $count -le 5 ]

do
	
	number=$((RANDOM%50))

	echo $number
    
	sum=$((sum+number))
	
	count=$((count+1))

done


echo "Sum of random numbers $sum"

echo "Average of random numbers is $((sum/5))"