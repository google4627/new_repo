#!/bin/bash

# Function to fetch HTTP error code of guvi.in
get_http_error_code() {
    status_code=$(curl -s -o /dev/null -w "%{http_code}" https://guvi.in)
    echo $status_code
}

# Function to print success/failure message based on HTTP error code response
print_message() {
    error_code=$1
    if [[ $error_code -ge 200 && $error_code -lt 300 ]]; then
        echo "Success: HTTP $error_code"
    else
        echo "Failure: HTTP $error_code"
    fi
}

# Replace occurrences of "give" with "learning" from 5th line till end in lines containing "welcome"
replace_words() {
    filename=$1
    sed -i '5,$ s/give/learning/g' $filename
}

# Main script
http_error_code=$(get_http_error_code)
print_message $http_error_code

# Replace words in file
replace_words yourfile.txt

