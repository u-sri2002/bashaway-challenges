#!/bin/bash

echo "Hi! Welcome to SLIIT Bashaway 2022."

echo -n "Your team name: "
read team_name

echo -n "No. of members in your team: "
read count

echo -n "Your university: "
read university


# Creating a file with team details

file="${team_name}.txt"

echo "Team Name: $team_name" > $file
echo "Number of members: $count" >> $file
echo "University: $university" >> $file

echo "Details saved..!"

