declare -a repeatedArray

countArray=0


function repeatedNo()
{
	
for ((counter=10 ; counter < 100 ; counter++ ))
	
do
    
		if [ $((counter%10)) -eq   $(((counter/10)%10)) ]
		
then
    
        
			repeatedArray[((countArray++))]=$counter
	
    	fi

	
done


echo "Repeated number is ${repeatedArray[@]} "
}

#call function 


repeatedNo