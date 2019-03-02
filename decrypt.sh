#!/bin/bash

besar=ABCDEFGHIJKLMNOPQRSTUVWXYZ
kecil=abcdefghijklmnopqrstuvwxyz

n=`echo "$1" | awk -F: '{print $i}'`
cd ~/modul1
tr "${kecil:n}${kecil:0:n}${besar:n}${besar:0:n}" "$kecil$besar" <<< `cat "$1"` > ~/modul1/"$1_decrypt"
