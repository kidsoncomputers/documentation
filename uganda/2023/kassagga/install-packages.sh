#!/bin/bash

PACKAGE_FILE=packages.txt
if [ $# -gt 0 ] ; then
	if [ -f $1 ] ; then
		PACKAGE_FILE=$1
	fi
fi

echo "================================="
echo "= Installing packages from:"
echo "=  $PACKAGE_FILE"
echo "================================="
read -p "Proceed? <y/n> " prompt
if [[ $prompt =~ [yY](es)* ]]
then
	echo "installing ..."
else
	exit
fi

cat $PACKAGE_FILE | grep -v -e '^$' -e '^#' | xargs sudo apt-get install -y
