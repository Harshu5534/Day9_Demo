#!/bin/bash -x

PRESENT=1;
WAGE_PER_HOUR=20;

isPresent=$((RANDOM%2));

if [ $isPresent -eq $PRESENT ]
then
	WorkingHour=8;
else
	WorkingHour=0;
fi
Wage=$((WAGE_PER_HOUR*workingHour));

echo "Employee wage : $"$wage "USD";
