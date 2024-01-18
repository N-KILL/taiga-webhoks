#!/bin/bash

# Verify if this was executed with params
if [ "$#" -ne 2 ]; then
    # If not, return an error
    echo "Please put the correct parameters: $0 <token> <dependency_url>"
    exit 1
fi

# Assign the params into vars
token=$1
dependency_url=$2

# Read the pubspec.yaml file, and asis
yaml_file="pubspec.yaml"

# Verify if the line exist on the file and store it on a var
dependency_line_on_yaml=$(grep "$dependency_url" $yaml_file)

# Verify if can found the line
if [ -n "$dependency_line_on_yaml" ]; then

    # Modify dependency_line_on_yaml
    # Replacing: https://
    # For this: https://$token@
    new_url=$(echo "$dependency_line_on_yaml" | sed "s|https://|https://$token@|")

    # Reemplazar the exactly line with the content of "dependency_line_on_yaml" line on the YAML file
    sed -i "s|$dependency_line_on_yaml|$new_url|" $yaml_file

    echo "Archivo YAML actualizado:"
    cat $yaml_file
else
    echo "No se encontró la línea que contiene el contenido proporcionado."
fi