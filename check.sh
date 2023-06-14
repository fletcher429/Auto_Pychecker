#!/usr/bin/env bash

# Get the list of files in the current directory
files=$(ls)

# Check if autopep8 is installed
if ! command -v autopep8 &> /dev/null; then
    # Install autopep8
    pip3 install --user autopep8
fi

# Check if pycodestyle is installed
if ! command -v pycodestyle &> /dev/null; then
    # Install pycodestyle
    pip3 install --user pycodestyle
fi

# Color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

# Display the list of files in rows and columns
echo "Select a file to check and autocorrect with pycodestyle:"
num_files=$(ls | wc -l)
num_columns=4
files_per_column=$(( (num_files + num_columns - 1) / num_columns ))
file_counter=1

for ((row=0; row<files_per_column; row++)); do
    for ((col=0; col<num_columns; col++)); do
        index=$((col * files_per_column + row))
        if ((file_counter <= num_files)); then
            file=$(ls | awk "NR==${file_counter}")
            printf "%-4s ${ORANGE}%-30s${NC}" "$file_counter." "$file"
            ((file_counter++))
        else
            break
        fi
    done
    echo
done

# Prompt for the file number
read -p "Enter the file number: " file_number

# Validate the input
if ! [[ "$file_number" =~ ^[0-9]+$ ]]; then
    echo "Invalid input. Please enter a number."
    exit 1
fi

# Check if the file number is out of range
if ((file_number < 1 || file_number > num_files)); then
    echo "File number out of range. Please run the program again and select a valid file number."
    exit 1
fi

# Get the corresponding file path
file_path=$(ls | awk "NR==$file_number")

# Run autopep8 using the full path to the script
autopep8 --in-place "$file_path"

# Run pycodestyle to check the corrected code
pycodestyle --max-line-length=85 --select=E501 "$file_path" > pycodestyle_output.txt

# Check if pycodestyle command failed
if [ $? -ne 0 ]; then
    echo -e "${YELLOW}Code violations found:${NC}"
    awk -F: -v color="${YELLOW}" 'BEGIN {OFS=":"} {print "Warning: At line " $2 " :", color "Lines exceeds " $3 " > 85" NC}' pycodestyle_output.txt
    echo -e "${YELLOW}Fixing the fixable violations...${NC}"
    autopep8 --in-place --select=E501 "$file_path"
    if [ $? -eq 0 ]; then
        echo "Fixing completed!"
    else
        echo "Unable to fix all violations."
    fi
else
    echo -e "${GREEN}Success! No violations found.${NC}"
fi

# Remove temporary file
rm pycodestyle_output.txt