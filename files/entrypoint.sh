#!/bin/bash

cd /app

if [ "$AUTOREQUIREMENTS" = "true" ]
then
  pip3 install requirements.txt
fi

if [ "$AUTORELOAD" = "true" ]
then
  /root/go/bin/reflex -s -r ".py" python3 ./main.py
else
  python3 ./main.py
fi
