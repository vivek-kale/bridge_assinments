declare -a cskTeam

declare -a miTeam

echo "WELCOME TO IPL TROPHY 2020"

echo "ENTER YOUR FAVOURITE TEAM"

read teamName



SEASON=2020

MATCHES_PLAYED=14

won=0

lose=0

runRate=""

points=0

position=0



rcbTeam=('Kholi' 'Abd' 'Siraj')

cskTeam[batsman]="MoenAli"

cskTeam[bowler]="Jadeja"

cskTeam[captain]="Dhoni"




function showError() 
{
         
	echo "Something Went Wrong :( !!"

}




if [ $teamName == 'MI' ]

then
    
	position=1

elif [ $teamName == 'DC' ]

then
    
	position=2

elif [ $teamName == 'SRH' ]

then
    
	position=3

elif [ $teamName == 'RCB' ]

then
    
	position=4

elif [ $teamName == 'KKR' ]

then
    
	position=5

elif [ $teamName == 'KXIP' ]

then
    
	position=6

elif [ $teamName == 'CSK' ]

then
    
	position=7

elif [ $teamName == 'RR' ]

then
    
	position=8

fi




function playOffs() 
{
 
	if [ $1 -le 4 ]
 
	then
     
		echo $teamName is eligible for Playoffs 
 
	else 
     
		echo $teamName is not eligible for Playoffs 
 
	fi

}


function getCaptain() 
{
         
echo $1 "is a captain"

}


function getBatsman() 
{
         
	echo $1 "is a batsman"

}


function getBowlers() 

{
         echo $1 "is a bowler"
}
function warningMessage() {
         echo "Selected Players Only"
}
function listingPlayers() {
     if [[($teamName == 'RCB') && ($1 == 4)]]
     then
         for player in ${rcbTeam[*]} 
         do


             if [ $player == 'Kholi' ]
             then
                 getCaptain $player
             elif [ $player == 'Abd' ]
             then
                 getBatsman $player
             else
                 getBowlers $player 
             fi


         done 
     elif [[($teamName == 'CSK') && ($1 == 7)]]
     then
         for player in ${cskTeam[*]} 
         do


             if [ $player == 'Dhoni' ]
             then
                 getCaptain $player
             elif [ $player == 'MoenAli' ]
             then
                 getBatsman $player
             else
                 getBowlers $player 
             fi


         done
      elif [[($teamName == 'MI') && ($1 == 1)]]
      then
          read -p "Enter MI Batsman " batsman
          read -p "Enter MI Bowler " bowler
          read -p "Enter MI Captain " captain
          miTeam[bat]=$batsman
          miTeam[bowl]=$bowler
          miTeam[captaincy]=$captain
          lengthOfMITeam=${#miTeam[*]}
          if [ $lengthOfMITeam -gt 0 ]
          then


              for player in ${miTeam[*]} 
              do


                    if [ $player == 'Rohit' ]
                    then
                          getCaptain $player
                    elif [ $player == 'Suryakumar' ]
                    then
                          getBatsman $player
                    elif [ $player == 'Bumrah' ]
                    then
                          getBowlers $player 
                    else
                          warningMessage
                    fi


              done


          fi
      else
         echo "May Be Condition Wrong "   
     fi
         
}
function getOverAllPoints() {
         lose=$((MATCHES_PLAYED-$2))
         points=$(($2*2))
         echo "IPL $SEASON"
         echo "Position : $1"
         echo "Team : $teamName"
         echo "Matches Faced : $MATCHES_PLAYED"
         echo "Matches Won : $2"
         echo "Matches Lost : $lose"
         echo "NRR : $3"
         echo "PTS : $points"
         playOffs $1
         listingPlayers $1
}
case $position in
   1)
      won=9
      runRate="+1.107"
      getOverAllPoints $position $won $runRate 
      ;;
   2)
      won=8
      runRate="-1.109"
      getOverAllPoints $position $won $runRate
      ;;
   3)
      won=7
      runRate="+0.608"
      getOverAllPoints $position $won $runRate
      ;;
   4)
      won=7
      runRate="-0.172"
      getOverAllPoints $position $won $runRate
      ;;
   5)
      won=7
      runRate="-0.214"
      getOverAllPoints $position $won $runRate
      ;;
   6)
      won=6
      runRate="-0.162"
      getOverAllPoints $position $won $runRate
      ;;
   7)
      won=6
      runRate="-0.455"
      getOverAllPoints $position $won $runRate
      ;;
   8)
      won=6
      runRate="-0.569"
      getOverAllPoints $position $won $runRate
      ;;
   *)
     showError 
     ;;
esac