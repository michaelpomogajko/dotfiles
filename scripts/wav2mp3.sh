#!/bin/bash

# Check if a directory path is provided
if [ $# -eq 0 ]; then
    echo "Please provide a directory path containing WAV files."
    echo "Usage: $0 /path/to/wav/files"
    exit 1
fi

# Get the directory path from the first argument
dir_path="$1"

# Check if the provided path is a directory
if [ ! -d "$dir_path" ]; then
    echo "Error: '$dir_path' is not a valid directory."
    exit 1
fi

# Change to the specified directory
cd "$dir_path" || exit

# Convert WAV files to MP3
for file in *.wav
do
    if [ -f "$file" ]; then
        echo "Converting $file to MP3..."
        ffmpeg -i "$file" -acodec libmp3lame -b:a 320k "${file%.wav}.mp3" -loglevel error -y
    fi
done

echo "Conversion complete!"