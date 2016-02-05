#! /bin/sh

echo "Content-Type: application/json"
echo ""
echo -n "["
first_object=true
for path in `ls /usr/share/tiva/webobjects`
do
	[ $first_object = false ] && echo -n ","
	echo -n "\"$path\""
	first_object=false
done
echo "]"
