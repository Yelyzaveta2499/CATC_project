#!/bin/bash

read -p "Enter starting salary (€): " salary
read -p "Enter number of salary scale points: " points
read -p "Enter salary increment per year (€): " increment
read -p "Is the employee a manager? (yes/no): " is_manager

year=$(date +"%Y")

if [[ "$is_manager" == "yes" ]]; then
  inc_per_year=2
else
  inc_per_year=1
fi

echo ""
echo "=== Salary Scale Table ==="
echo "Starting Year: $year"
echo "Manager Status: $is_manager"
echo "---------------------------"

for (( i=0; i<points; i++ ))
do
  current_salary=$(echo "$salary + ($increment * $i)" | bc)
  years_needed=$(( i / inc_per_year ))
  salary_year=$(( year + years_needed ))
  printf "Year %d: €%.2f\n" "$salary_year" "$current_salary"
done
