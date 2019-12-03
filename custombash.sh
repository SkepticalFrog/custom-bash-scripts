#!/bin/bash

# Add commit and push git

function gpp () {
	read -p "Message to commit: " COMMIT
	read -p "Branch: " BRANCH
	echo '============add============'
	echo 'Adding current folder'
	git add .
	echo '===========commit=========='
	git commit -m "$COMMIT"
	echo '============push==========='

	if [ "$BRANCH" == "" ]
	then
		BRANCH="master"
	fi

	git push -u origin "$BRANCH"
	echo '============done==========='
}

# Add commit with path

function gcom () {
	read -p "Message to commit: " COMMIT
	echo '============add============'
	echo "Adding $1"
	git add "$1"
	echo '===========commit=========='
	git commit -m "$COMMIT"
	echo '============done==========='
}

# Push upstream origin master

function gpush () {
	echo '============push==========='
	git push -u origin master
	echo '============done==========='
}

# Update and upgrade

function upup () {
	sudo apt update && sudo apt upgrade -y
}

function mkcd () {
   mkdir -p "$1"
   cd "$1"
}