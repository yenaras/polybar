#!/usr/bin/env bash

# Get weather data using curl and parse it with jq
weather_data=$(curl -s "wttr.in?format=%C+%t+%w")
# The format string above includes:
# %C - Weather condition
# %t - Temperature
# %w - Wind

# Extract individual data elements
weather_condition=$(echo "$weather_data" | cut -d' ' -f1)
temperature=$(echo "$weather_data" | cut -d' ' -f2)
wind=$(echo "$weather_data" | cut -d' ' -f3)

# Output the weather information
echo "$weather_condition $temperature $wind"
