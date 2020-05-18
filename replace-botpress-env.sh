#!/bin/bash

if [ -z "$BOTPRESS_URL" ] || [ -z "$BOTPRESS_NAME" ]
then
      echo "Cannot update botpress dependencies please set BOTPRESS_URL  and BOTPRESS_NAME"
      exit;
fi;

while read -r line ; do
    echo "Processing $line"

    sed -ri 's#\{\{--BOTPRESS_URL--\}\}#'$BOTPRESS_URL'#' $line
    sed -ri 's#\{\{--BOTPRESS_NAME--\}\}#'$BOTPRESS_NAME'#' $line

    # your code goes here
done < <(grep -rl '{{--\w*--}}' $1)