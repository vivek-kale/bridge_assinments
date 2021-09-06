
read -p "enter team name" teamName

season=2020

matchplayed=14

won=0

lose=0

runrate=""

points=0

position=0

rcbteam=('kholi' 'abd' 'siraj')



if [ $teamName == 'RCB' ]

then

	position=4

fi

 

function getcaptain()
{
	
	echo "captain $1"


} 



function listingplayer()
{
	

if [[ ($teamName=='RCB') && ($1==4) ]]

	then
		
for player in ${rcbteam[*]}
		
do

			if [ $player == 'kholi' ]

			then
				
getcaptain $player


			fi

		done

	fi

}



function Getoverallpoint()
{
    
	lose=$((matchplayed-$2))

    	points=$(($2*2))
	
echo "IPL $season"
	
echo "Team: $teamName"
    
	echo "Match won: $2"
    
	listingplayer $1 
   

}



case $position in

4)
  

	won=7
  
	runrate="-0.172"
  
	Getoverallpoint $position $won $runrate

	;;

esac