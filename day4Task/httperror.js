#!/bin/bash

http_code=$(curl -I -s -L https://guvi.in | grep "HTTP" | tail -n 1 | awk '{print $2}')

if [ $http_code -ge 200 ] && [ $http_code -lt 300 ]; then
    echo "Success: HTTP $http_code"
else
    echo "Failure: HTTP $http_code"
fi

