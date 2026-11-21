count_files() {
    ls -1 | wc -l | tr -d ' '
}

is_number() {
    [[ $1 =~ ^[0-9]+$ ]]
}

target=$(count_files)
guess=-1

echo "How many files are in the current directory?"

while [[ $guess -ne $target ]]
do
    read -p "Enter your guess: " input

    if ! is_number "$input"
    then
        echo "Please enter a valid non-negative integer."
        continue
    fi

    guess=$input

    if [[ $guess -lt $target ]]
    then
        echo "Your guess is too low. Try again."
    elif [[ $guess -gt $target ]]
    then
        echo "Your guess is too high. Try again."
    fi
done

echo "Congratulations! There are $target files in the current directory."
