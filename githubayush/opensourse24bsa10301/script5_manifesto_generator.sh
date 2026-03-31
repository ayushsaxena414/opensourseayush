#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Ayush Saxena| Course: Open Source Software
# This script asks the user questions and creates a personalized
# open-source philosophy statement saved into a text file.

echo "=============================================================="
echo "              Open Source Manifesto Generator                 "
echo "=============================================================="
echo "Answer the following three questions:"
echo ""

# --- Take user input ---
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# --- Date and output file ---
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Note:
# An alias could be created for quick execution, e.g.
# alias manifesto='./script5_manifesto_generator.sh'

# --- Write manifesto to file ---
echo "==================================================" > "$OUTPUT"
echo "         PERSONAL OPEN SOURCE MANIFESTO           " >> "$OUTPUT"
echo "==================================================" >> "$OUTPUT"
echo "Generated on: $DATE" >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "I use $TOOL as part of my everyday digital life, and it reminds me" >> "$OUTPUT"
echo "that open source is more than code — it is a culture of sharing." >> "$OUTPUT"
echo "To me, freedom means $FREEDOM, because true software freedom gives" >> "$OUTPUT"
echo "users the right to learn, modify, and improve what they use." >> "$OUTPUT"
echo "If I had the opportunity, I would build and freely share $BUILD so" >> "$OUTPUT"
echo "that others could learn from it, improve it, and use it without" >> "$OUTPUT"
echo "unnecessary restrictions. Open source represents collaboration," >> "$OUTPUT"
echo "community, and the belief that knowledge grows when it is shared." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "— Created by $(whoami)" >> "$OUTPUT"

# --- Show result ---
echo ""
echo "Manifesto saved to: $OUTPUT"
echo "--------------------------------------------------------------"
cat "$OUTPUT"
echo "=============================================================="