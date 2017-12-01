function getNumberOfFiles {
    return $(ls | wc -l)
}

getNumberOfFiles
numberOfFiles=$?

echo "How many files are in the current directory?"
read response

while [[ $response -ne $numberOfFiles ]]
do
    if [[ $response -lt $numberOfFiles ]]
    then
	echo "There are more files than you said in the current directory. Try again"
	read response
    else
	echo "There are less files than you said in the current directory. Try again"
	read response
    fi
done

if [[ $response -eq $numberOfFiles ]]
then
    echo "Congratulations! You have guessed the number of files in the current directory!"
fi
