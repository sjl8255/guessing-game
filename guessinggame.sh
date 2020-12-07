check_value=$(ls -al | grep "^-" | wc -l)
echo "How many files are available in this directory?"
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
echo "The number chosen is too high"
elif [ $choice -lt $check_value ]
then
echo "The number chosen is too low"
fi
done
