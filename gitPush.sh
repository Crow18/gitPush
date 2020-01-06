#!/bin/bash

lastarg=${@:$#}
beforelast=${@:1:$(($#-1))}

if [ -z $1 ]
then
	echo "please add arguments to push, pull and commit"
else
	read -p "enter Push, Pull or Fetch : " prompt
	shopt -s nocasematch
	if [ "$prompt" == "fetch" ]
	then
		git fetch
	elif [ "$prompt" == "push" ]
	then
		git add $beforelast && git commit -m "$lastarg" && git push
	elif [ "$prompt" == "pull" ]
	then
		git pull
	else
		echo "command not found! : enter 'push', 'pull' or 'fetch'"
	fi
fi

#git fetch && git add $beforelast && git commit -m "$lastarg" && git push
