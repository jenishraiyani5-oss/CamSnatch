#!/bin/bash
# Cleanup script for CamSnatch
# Removes all unnecessary files and logs

echo "Starting cleanup of unnecessary files and logs..."

# Stop running processes
echo "Stopping background processes..."
if [[ "$(uname -a)" == *"MINGW"* ]] || [[ "$(uname -a)" == *"MSYS"* ]] || [[ "$(uname -a)" == *"CYGWIN"* ]] || [[ "$(uname -a)" == *"Windows"* ]]; then
    taskkill /F /IM "ngrok.exe" 2>/dev/null
    taskkill /F /IM "php.exe" 2>/dev/null
    taskkill /F /IM "cloudflared.exe" 2>/dev/null
else
    pkill -f ngrok 2>/dev/null
    pkill -f php 2>/dev/null
    pkill -f cloudflared 2>/dev/null
fi

# Remove log files
echo "Removing log files..."
rm -f *.log
rm -f .cloudflared.log

# Remove temporary location files
echo "Removing temporary location files..."
rm -f location_*.txt
rm -f current_location.bak
rm -f current_location.txt

# Remove captured images
echo "Removing captured images..."
rm -f cam*.png
rm -f cam*.jpeg
rm -f cam*.jpg

# Remove temporary HTML files
echo "Removing temporary HTML files..."
rm -f index.php
rm -f index2.html
rm -f index3.html
rm -f index4.html
rm -f index5.html

# Clean saved locations directory
echo "Cleaning saved locations directory..."
if [ -d "saved_locations" ]; then
    rm -f saved_locations/*
fi

# Clean saved location master files
echo "Removing saved location master files..."
rm -f saved.locations.txt
rm -f saved.ip.txt

# Remove any other temporary files
echo "Removing other temporary files..."
rm -f LocationLog.log
rm -f LocationError.log
rm -f Log.log
rm -f ip.txt

echo "Cleanup completed successfully!"
