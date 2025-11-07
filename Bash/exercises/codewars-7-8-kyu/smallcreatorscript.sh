#!/bin/zsh

echo "Enter a directory name: "
read dirname

mkdir $dirname
abspath=$(realpath $dirname) && cd $dirname
touch file1 file2 file3 && ls

echo "This belongs to file 1" >> file1 
echo "This belongs to file 2" >> file2
echo "This belongs to file 1" >> file3

cat file1 file2 file3

echo "Removing file..."
sleep 5
rm -rf $abspath

echo -e "Process complete\nGoodbye!"
