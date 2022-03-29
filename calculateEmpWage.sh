#!/bin/bash -x

PRESENT=1;
PART_TIME=2;
WAGE_PER_HOUR=20;
MAX_WORKING_DAY=20;

TotalSalary=0;

for ((day=0;day<$MAX_WORKING_DAY;day++))
do
	isPresent=$((RANDOM%3));
	case $isPresent in

		$PRESENT)
			echo "Employee is Present";
			WorkingHour=8;
		;;

		$PART_TIME)
			echo "Employee is working part time";
			WorkingHour=4;
		;;

		*)
			echo "Employee is absent";
			WorkingHour=0;
		;;
	esac;

	dailyWage=$((WAGE_PER_HOUR*workingHour));
	TotalSalary=$((TotalSalary+dailyWage));
done

echo "Employee monthly Wage : $"$TotalSalary "USD";
