#!/bin/bash

# Specify the range for Lesson files
start_index=50
end_index=625

# Directory where you want to create the files
directory="/Users/jasoncameron/Desktop/Learning/LearningPostgres/LearningPostgres_LinkedIn/Worked_Lessons"

# Loop through the range and create blank LessonXX.sql files
for ((i = start_index; i <= end_index; i++)); do
    # Use printf to format the index with leading zeros if needed
    index=$(printf "%03d" $i)
    filename="Lesson${index}.sql"
    touch "${directory}/${filename}"
    echo "-- Blank SQL file for Lesson ${index}" > "${directory}/${filename}"
done

echo "Blank SQL files created from Lesson${start_index}.sql to Lesson${end_index}.sql in ${directory}."

