DATE_TIM:="$(shell date)"
LINES_CHECK:="$(shell wc -l < guessinggame.sh)"
README.md:
	echo "# Guessing Game" > README.md
	echo " " >> README.md
	echo "$(DATE_TIM)" >> README.md
	echo " " >> REAME.md
	echo "The number of lines in the code is $(LINES_CHECK)" >> README.md
