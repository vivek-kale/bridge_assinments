read -p "Enter the year to check Leap year or not :" year

if [[ $(($year%4)) -eq 0 || ($(($year%100)) -ne 0  && $(($year%400)) -eq 0) ]]
then
	echo "Year is Leap Year"
else
	echo "Year is Not Leap year"
fi