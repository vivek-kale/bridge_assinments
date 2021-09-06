arr=( 0 -1 2 3 -3 1 )

echo "the elements are: "${arr[0]}

len=${#arr[@]}

ar=()

function additon()
{

	for (( i=0 ; i<$len-2 ; i++ ))

	do 
	
		for (( j=i+1; j<$len-1 ; j++ ))
	
		do
		
			for (( k=j+1 ; k<$len ; k++ ))
	
		do
			
				if [ $(( arr[$i]+arr[$j]+arr[$k] )) == 0 ]

				then
				
					echo  " ${arr[i]} \c"
				
					echo  " ${arr[j]} \c"	
				
					echo  " ${arr[k]} \n"
			
				fi
		
			done
	
		done	
	
done

}


#call


additon