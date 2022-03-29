#!/bin/bash -x

PRESENT=1;
PART_TIME=2;
WAGE_PER_HOUR=20;

isPresent=$((RANDOM%3));

if [ $isPresent -eq $PRESENT ]
then
	WorkingHour=8;

elif [ $isPresent -eq $PART_TIME ]
then
	WorkingHour=4;
else
	WorkingHour=0;
fi
Wage=$((WAGE_PER_HOUR*workingHour));

echo "Employee wage : $"$wage "USD";
