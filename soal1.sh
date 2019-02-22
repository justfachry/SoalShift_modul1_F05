#!/bin/bash

i=0;

for image in /home/justfachry/modul1/nature/*.jpg
do
base64 -d $image | xxd -r > /home/justfachry/modul1/$i.jpg
i=$((i+1))

done
