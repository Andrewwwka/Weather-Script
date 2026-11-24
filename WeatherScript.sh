#!/usr/bin/env bash

# 1. Store all arguments as the city to handle multi-word inputs easily
city="$*"

# 2. Check if a city was provided
if [ -z "$city" ]; then
    echo "No city specified. Fetching your local weather..."
    curl -s "https://v2.wttr.in/?0"
else
    echo "Fetching weather for: $city"
    # Replace spaces with plus signs (e.g., New York -> New+York)
    formatted_city=$(echo "$city" | tr ' ' '+')
    # Append the formatted city to the URL path
    curl -s "https://v2.wttr.in/${formatted_city}?0"
fi
