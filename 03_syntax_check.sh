#!/bin/bash

# Directory containing SQL files
directory="university_db"
files=("create_and_use_db.sql" "drop_db.sql") # Array of filenames

all_passed=true  # Track if all files pass

for file in "${files[@]}"; do
  filepath="$directory/$file"
  
  if [ ! -f "$filepath" ]; then
    echo "Error: $filepath does not exist."
    all_passed=false  # Mark as failed but continue checking others
    continue  # Skip to the next file
  fi

  echo "$filepath: ✅ File exists"
done

# Exit with error code if any file was missing
$all_passed || exit 1
exit 0