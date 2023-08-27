#!/bin/sh

# Get weather data using curl
weather_data=$(curl -s "wttr.in/?format=%t+%w")
# %t - Temperature
# %w - Wind

# Extract individual data elements
temperature=$(echo "$weather_data" | cut -d' ' -f1)
wind=$(echo "$weather_data" | cut -d' ' -f2)

# Output the weather information
echo "$temperature $wind"
