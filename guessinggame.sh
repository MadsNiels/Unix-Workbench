#Defining number guessing function.
function guessing_numbers {
  #Takes two inputs. First guess and number to be guessed.
  guess=$1
  number=$2
  #Loops until guess equals number.
  while [[ $guess -ne $number ]]; do
    if [[ $guess -gt $number ]]; then
      echo 'Too high !'
    elif [[ $guess -lt $number ]]; then
      echo 'Too low !'
    fi
    echo "Guess again:"
    read guess
  done
  #End function.
  echo 'CONGRATULATIONS!'
}

#Return number of files in current directory, and save in variable
number_of_files=$(ls | wc -l)

#Ask for first guess.
echo "How many files are in the current directory?"
read guess

#Pass number and guess into guessing function:
guessing_numbers $guess $number_of_files
