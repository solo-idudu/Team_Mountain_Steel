 #!/bin/bash

 #Prompt the user for the source directory containing text files
 echo "Enter the path to the source directory with .txt files:"
 read source_dir

 # Check if the source directory exists
 if [ ! -d "$source_dir" ]; then
   echo "Source directory could not be find.Please provide a valid directory path."
   exit 0
 fi

 #prompt the user for the destination directory
 echo "Enter the path to the destination directory for .txt files:"
 read destination_dir

 # Check if the destination directory exist, and if not, create it
 if [ ! -d "$destination_dir" ]; then
     mkdir -p "$destination_dir"
     echo "destination directory created successfully: $destination_dir"
 fi

 # Move .txt files from the source directory to the destination directory
 mv "$source_dir"/*.txt "$destination-dir"

 echo "Text files have been moved to $destination_dir."