read -p "enter number" n
power=1
for ((a=1;a<=$n;a++))
do

power=$(( power*2 ))

echo "$power"
done