README.md: guessinggame.sh
	touch README.md
	echo "# The Unix Workbench Guessing Game" > README.md
	echo "When the README was made, the date and time was:  " >> README.md
	date >> README.md
	echo "The guessing program contains the following lines of code:  " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
