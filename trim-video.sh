#!/bin/bash
if [ "$#" -ne 4 ]; then
  echo "usage: $(basename $0) <input file> <trim start time, hh:mm:ss> <output duration hh:mm:ss> <output file>"
  exit 1
fi

avconv -i $1 -vcodec copy -acodec copy -ss $2 -t $3 $4

