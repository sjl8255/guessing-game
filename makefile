DATE_TIM:="$(shell date)"
LINES_CHECK:="$(shell wc -l < guessinggame.sh)"
README.md:
	echo "# Guessing Game \n \n" > README.md
	echo "$(DATE_TIM) \n \n" >> README.md
	echo "The number of lines in the code is $(LINES_CHECK) \n" >> README.md
