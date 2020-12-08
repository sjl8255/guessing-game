DATE_TIM:="$(shell date)"
LINES_CHECK:="$(shell wc -l < guessinggame.sh)"
README.md:
	echo "# Guessing Game" > README.md
	echo "$(DATE_TIM)  " >> README.md
	echo "The number of lines in the code is $(LINES_CHECK)  " >> README.md
