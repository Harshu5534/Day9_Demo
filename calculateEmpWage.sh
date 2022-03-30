#!/bin/bash -x

PRESENT=1;
PART_TIME=2;
WAGE_PER_HOUR=100;
MAX_WORKING_DAY=20;

TotalSalary=0;

for ((day=0;day<$MAX_WORKING_DAY;day++))
do
	isPresent=$((RANDOM%3));
	case $isPresent in

		$PRESENT)
			#echo "Employee is Present";
			workingHour=8;
		;;

		$PART_TIME)
			#echo "Employee is working part time";
			workingHour=4;
		;;

		*)
			#echo "Employee is absent";
			workingHour=0;
		;;
	esac;

	dailyWage=$(( workingHour * WAGE_PER_HOUR ));
	TotalSalary=$(( TotalSalary + dailyWage));
done

echo "Employee Monthly Wage : $"$TotalSalary "USD";

