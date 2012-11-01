#!/bin/sh

# Change here your basedirectory
# Example:
# Base="/this/is/my/basedirectory"
Base=""

if [ -z "$Base" -o "$Base" == "/this/is/my/basedirectory" ];
then
	Base=`pwd`
fi
echo "BASE: "$Base

for Dir in `find $Base -maxdepth 1 -type d`
do
	if [ -d $Dir/.git ];
	then
		cd $Dir
		echo ""
		pwd
		git pull -t origin master
	else
		continue
	fi
done