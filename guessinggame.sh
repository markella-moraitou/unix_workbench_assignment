function guide {
    if [[ $1 -eq $2 ]]
    then
        break
    elif [[ $1 -lt $2 ]]
    then
        echo "There are more files than this. Try again!"
        read response
    else
        echo "There aren't that many files. How about a smaller number?"
        read response
    fi
}

correct=$(ls | wc -l)
echo "Can you guess how many folders are there in this directory? Enter a number:"
read response
while [[ $response -ne $correct ]]
do
    guide $response $correct
done
if [[ $response -eq $correct ]]
then
    echo "Congratulations! You guessed right!"
fi
