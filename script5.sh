#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Vinit Burkul
# Purpose: Interactively asks questions to generate a text file manifesto

echo "--- Open Source Manifesto Generator ---"
echo "Answer three questions to generate your manifesto."
echo ""

# Gather user input
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date +'%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Write the collected data to a new file using redirection
echo "Personal Open Source Manifesto" > $OUTPUT
echo "Created on: $DATE" >> $OUTPUT
echo "------------------------------------------" >> $OUTPUT
echo "As a developer, I believe in $FREEDOM. Tools like $TOOL show us that sharing knowledge makes the world better." >> $OUTPUT
echo "In the spirit of FOSS, I commit to building $BUILD and sharing it with the community." >> $OUTPUT

echo ""
echo "Success! Your manifesto has been saved to $OUTPUT."
echo "Here is what it says:"
echo "------------------------------------------"
cat $OUTPUT
