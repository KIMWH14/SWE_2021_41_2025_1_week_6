#!/bin/bash

for file in files/*; do
  file_name=$(basename "$file")
  
  first=$(echo "${file_name:0:1}" | tr 'A-Z' 'a-z')
  
  if [[ "$first" =~ [a-z] ]]; then
    mv "$file" "$first/"
  fi
done