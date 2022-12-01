#!/bin/bash

HOMEDIR=/opt/37_38_MA/Elina/20221025

if [ ! -e $HOMEDIR/files ]; then
  echo "Creating subfolder..."
  mkdir $HOMEDIR/files
fi

for N in {1..10}
do
  if [ $N -lt 10 ]; then
    N="0$N"
  fi
  fileName=$N"_"$(date +"%d.%m.%Y")
  echo -e "File $N crated!\nFilename: '$fileName'\nCreated at $(date +'%T')\nCreated in $HOMEDIR/files" > $HOMEDIR/files/$fileName
done
