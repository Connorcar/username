#! /bin/bash
# username.sh
# author
echo "Enter a username: "
read -r NAME
while echo "$NAME" | grep -E -v "^[a-z][0-9a-z_]{2,11}$" > /dev/null 2>&1
do
	echo "Username must only include lower case letters, digits, or underscores. Also must start with a lower case letter and has to be between 3-12 characters."
	echo "Enter a username: "
	read -r NAME
done
echo "Thank you"
