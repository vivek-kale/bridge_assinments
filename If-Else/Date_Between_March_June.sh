read -p "Enter day: " day
read -p "Enter month: " month
case $month in
	"january") m=1
	;;
	"february") m=2 
	;;
	"march") m=3 
		if (( $day<20 || $day>31 ))
		then
		echo "False";
		else echo "True";
		fi
	;;
	"april") m=4
		 if (( $day<1 || $day>30 ))
                then
                echo "False";
		else echo "True";
                fi
	;;
	"may") m=5 
		 if (( $day<1 || $day>31 ))
                then
                echo "False";
		else echo "True";
                fi
	;;
	"june") m=6 dd=30
		 if (( $day<1 || $day>20 ))
                then
                echo "False";
		else echo "True";
                fi
	;;
	"july") m=7 
	;;
	"august") m=8 
	;;
	"september") m=9
	;;
	"october") m=10 
	;;
	"november") m=11 
	;;
	"december") m=12 
	;;
	*)
	echo "Enter invalid Month please check and try again"; exit;
esac

if !(( $m>2 && $m<7 ))
then 
	echo "False";
fi