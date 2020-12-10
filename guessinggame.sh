value=-1
function check() {
	if  [ $1 -eq $2 ]
	then
		value=0
	elif [ $1 -lt $2 ]
	then
		value=1
	else
		value=2
	fi
}

check_value=$(ls -al | grep "^-" | wc -l)
echo "How many files are available in this directory?"
diff=5
while true
do
echo "Take a guess: "
read choice
check $choice $check_value
if [[ "$value" -eq 0 ]]
then
echo "You got the correct number!"
exit
elif [[ "$value" -eq 2 ]]
then
echo "The number chosen is too high"
elif [[ "$value" -eq 1 ]]
then
echo "The number chosen is too low"
fi
done
