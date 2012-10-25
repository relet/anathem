#!/bin/bash
# build every configuration file in the themes/ folder

for i in $(ls themes); do 
  export name=$(echo $i|sed -e 's/\..*//g');
  echo "building $name..."
  #mkdir -p ../$name
  python26 anathem.py $name > ../$name.html;
done
