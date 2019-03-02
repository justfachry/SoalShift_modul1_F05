#!/bin/bash

besar=ABCDEFGHIJKLMNOPQRSTUVWXYZ
kecil=abcdefghijklmnopqrstuvwxyz

waktu=`date '+%H:%M %d-%m-%Y'`
jam=`date '+%H'`

cat /var/log/syslog | tr "${kecil:0:26}" "${kecil:${jam}:26}" | tr "${besar:0:26}" "${besar:${jam}:26}" > ~/modul1/"$waktu"
