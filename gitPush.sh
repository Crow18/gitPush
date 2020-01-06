#!/bin/bash

lastarg=${@:$#}
beforelast=${@:1:$(($#-1))}

if [ -z $1 ]
then
	echo "please add arguments to push, pull or commit"
else
	read -p "enter Push, Pull or Fetch : " prompt
	shopt -s nocasematch
	echo $prompt
#	if [ "$prompt" != "push" ] | [ "$prompt" != "fetch" ] | [ "$prompt" != "pull" ]
#	then
#		echo "command not found!: enter fetch, pull or push"
	if [ "$prompt" == "fetch" ]
	then
		git fetch
	elif [ "$prompt" == "push" ]
	then
		git add $beforelast && git commit -m "$lastarg" && git push
	else
		git pull
	fi
fi

#git fetch && git add $beforelast && git commit -m "$lastarg" && git push
