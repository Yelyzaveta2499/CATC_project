#!/bin/bash

output_file="yelyzavetabezusahlushych.txt"

# Clear the file if it already exists
> "$output_file"

# Start of report
echo "===== System Information Report =====" >> "$output_file"
echo "Generated on: $(date)" >> "$output_file"
echo "" >> "$output_file"

echo ">>> DATE" >> "$output_file"
date >> "$output_file"
echo -e "\n------------------------------\n" >> "$output_file"

echo ">>> HOSTNAME" >> "$output_file"
hostname >> "$output_file"
echo -e "\n------------------------------\n" >> "$output_file"

echo ">>> ARCHITECTURE (arch)" >> "$output_file"
arch >> "$output_file"
echo -e "\n------------------------------\n" >> "$output_file"

echo ">>> UNAME -a" >> "$output_file"
uname -a >> "$output_file"
echo -e "\n------------------------------\n" >> "$output_file"

echo ">>> UPTIME" >> "$output_file"
uptime >> "$output_file"
echo -e "\n------------------------------\n" >> "$output_file"

echo ">>> WHOAMI" >> "$output_file"
whoami >> "$output_file"
echo -e "\n------------------------------\n" >> "$output_file"

echo ">>> WHO (Logged-in users)" >> "$output_file"
who >> "$output_file"
echo -e "\n------------------------------\n" >> "$output_file"

echo ">>> W (Who is doing what)" >> "$output_file"
w >> "$output_file"
echo -e "\n------------------------------\n" >> "$output_file"

echo ">>> TOP PROCESSES (first 10 lines)" >> "$output_file"
top -b -n 1 | head -n 10 >> "$output_file"
echo -e "\n------------------------------\n" >> "$output_file"

echo ">>> HISTORY (last 10 commands)" >> "$output_file"
history | tail -n 10 >> "$output_file"
echo -e "\n===== END OF REPORT =====\n" >> "$output_file"
