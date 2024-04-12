#!/bin/bash

read -p "Enter the file name: " filename

sed -i '5,$ s/\bgive\b/learning/g' "$filename"

echo "Text Replaced"
