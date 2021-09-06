echo "Fahrenheit to Celsius"
read -p "Degree in Celsius= " degc
function Faherenhiet(){
degf=$(( (degc*9/5)+32 ))
echo "Faherenhiet =" $degf
}

function Celsius(){
degc=$(( (degf-32)*5/9 ))
echo "Celsius =" $degc
}

Faherenhiet

echo

echo "Celsius to Fahrenheit"
read -p "Degree in Fahreheit= " degf

Celsius