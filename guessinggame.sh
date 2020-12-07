check_value=$(ls -al | grep "^-" | wc -l)
echo "How many files are available in this directory?"
diff=5
while true
do
echo "Take a guess: "
read choice
if [ $choice == $check_value ]
then
echo "You got the correct number!"
exit
elif [ $choice -gt $check_value ]
then
if [ `expr $choice - $check_value` -le 5 ]
then
echo "The number is close but still high"
else
echo "The number chosen is too high"
fi
elif [ $choice -lt $check_value ]
then
if [ `expr $check_value - $choice` -le 5 ]
then
echo "The number is close but still low"
else
echo "The number chosen is too low"
fi
fi
done
