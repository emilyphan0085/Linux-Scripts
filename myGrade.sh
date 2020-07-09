#!/bin/bash
# student name: Tran Bich Ngoc Phan
# student number: 040973054
# course: cst8102
# section: 330
# description: this program will calculate the final grade, and display the letter grade for a course 
read -p "Enter Assignment mark (0 - 40): " assign
read -p "Enter Test 1 mark (0 - 15): " test1
read -p "Enter Test 2 mark (0 - 15): " test2
read -p "Enter Final exam mark (0 - 30): " final
((grade=assign+test1+test2+final))
case $grade in
	[9][0-9]|[1][0][0]) echo "Your final numeric grade is $grade, and your final letter grade is A+";;
	[8][5-9]) echo "Your final numeric grade is $grade, and your final letter grade is A";;
	[8][0-4]) echo "Your final numeric grade is $grade, and your final letter grade is A-";;
	[7][7-9]) echo "Your final numeric grade is $grade, and your final letter grade is B+";;
	[7][3-6]) echo "Your final numeric grade is $grade, and your final letter grade is B";;
	[7][0-2]) echo "Your final numeric grade is $grade, and your final letter grade is B-";;
	[6][7-9]) echo "Your final numeric grade is $grade, and your final letter grade is C+";;
	[6][3-6]) echo "Your final numeric grade is $grade, and your final letter grade is C";;
	[6][0-2]) echo "Your final numeric grade is $grade, and your final letter grade is C-";;
	[5][7-9]) echo "Your final numeric grade is $grade, and your final letter grade is D+";;
    	[5][3-6]) echo "Your final numeric grade is $grade, and your final letter grade is D";;
    	[5][0-2]) echo "Your final numeric grade is $grade, and your final letter grade is D-";;
	[0-9]|[1-4][0-9]) echo "Your final numeric grade is $grade, and your final letter grade is F";;


esac











