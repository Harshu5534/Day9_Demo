#!/bin/bash -x

PRESENT=1;
isPresent=$((RANDOM%2));

if [ $isPresent -eq $PRESENT ]
then
	echo "Employee is present."$present;
else
	echo "Employee is absent."$absent;
fi
