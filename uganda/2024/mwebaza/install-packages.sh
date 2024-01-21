#!/bin/bash

PACKAGE_FILE=install-packages.txt
if [ $# -gt 0 ] ; then
	if [ -f $1 ] ; then
		PACKAGE_FILE=$1
	fi
fi

REMOVE_PACKAGE_FILE=remove-packages.txt
if [ $# -gt 1 ] ; then
	if [ -f $2 ] ; then
		REMOVE_PACKAGE_FILE=$2
	fi
fi


echo "================================="
echo "= Installing packages from:"
echo "=  $PACKAGE_FILE"
echo "="
echo "= Removing packages from:"
echo "=  $REMOVE_PACKAGE_FILE"
echo "================================="
read -p "Proceed? <y/n> " prompt
if [[ $prompt =~ [yY](es)* ]]
then
	echo "installing ..."
else
	exit
fi

cat $PACKAGE_FILE | grep -v -e '^$' -e '^#' | xargs sudo apt-get install -y

echo "================================="
echo "= Installs completed."
echo "="
echo "= Proceeding with package"
echo "= removal ..."
echo "================================="

cat $REMOVE_PACKAGE_FILE | grep -v -e '^$' -e '^#' | xargs sudo apt-get remove -y

sudo apt autoremove -y

