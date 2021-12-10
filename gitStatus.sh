#!/bin/bash
cd /home/php7encode/projects/devops/rxarchitecture
lastServerCommit=$(git rev-parse HEAD)
sudo -u php7encode git stash
sudo -u php7encode git pull
lastGitCommit=$(git rev-parse HEAD)
echo $lastGitCommit
echo $lastServerCommit
echo "\n"
echo "Files that are changes between two commits:"
echo "\n"
git diff --name-only $lastGitCommit $lastServerCommit
git diff --name-only $lastGitCommit $lastServerCommit -- '*.php' > changedfiles.txt
filename=changedfiles.txt
declare -a myArray
myArray=(`cat "$filename"`)
echo "${myArray[0]}"
echo "Number of file copying:"${#myArray[@]}
for (( i = 0 ; i < ${#myArray[@]} ; i++))
do
  echo ${myArray[$i]}
  cp --parent ${myArray[$i]} ../partial/
done
sudo -u php7encode cp devopsOps.sh ../ 