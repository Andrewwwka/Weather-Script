# 1. Store the first argument as the city
city="$1"

# 2. Check if a city was provided
if [ -z "$city" ]; then
    echo "No city specified. Fetching your local weather..."
    # Call wttr.in with no arguments to get local weather
    curl -s "https://wttr.in?0"
else
    echo "Fetching weather for: $city"
    # Replace spaces with plus signs for the URL (e.g., New York -> New+York)
    formatted_city=$(echo "$city" | tr ' ' '+')
    curl -s "https://wttr.in"
fi
