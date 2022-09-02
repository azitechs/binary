#!/bin/bash
echo "File name to commit (leave blank to commit all): "
read filename
echo "Commit message (leave blank for default message): "
read message
echo "Branch (leave blank for default main branch): "
read branch

if [ "$filename" == "" ]
then
filename="-A"
fi

if [ "$message" == "" ]
then
message="default commit message"
fi

if [ "$branch" == "" ]
then
branch="main"
fi

echo "Commit $filename with message: $message to $branch branch"

git add $filename
git commit -m "$message"
git branch -M $branch
git push -u origin $branch

echo Git push completed!!
