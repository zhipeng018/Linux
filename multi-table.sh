#!/bin/bash
read -p "row: " rows
read -p "column: " columns

if [ -z "$rows" ] || [ -z "$columns" ]; then
	echo "Invalid input"
	exit 1
fi

if [ $rows -lt 1 ]
then
	echo "Input must be greater than 0"
	exit 1
fi

for ((i=1; i<=rows; i++)); do
	for((j=1; j<=columns; j++)); do
		result=$((i * j))
		echo -n "$i* $j=$result "
	done

	echo
done
