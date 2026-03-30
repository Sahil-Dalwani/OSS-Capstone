#!/bin/bash

echo "Open Source Manifesto Generator"

read -p "Name one open source tool you use every day: " tool
read -p "In one word, what does freedom mean to you? " freedom
read -p "What would you build using Python? " project

FILE="manifesto-$(whoami).txt"

echo "MY OPEN SOURCE MANIFESTO" > $FILE
echo "" >> $FILE
echo "I use tools like $tool every day." >> $FILE
echo "To me, freedom means $freedom." >> $FILE
echo "Using Python, I hope to build $project." >> $FILE

echo "Manifesto saved to $FILE"
cat $FILE

