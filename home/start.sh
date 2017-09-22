#!/bin/bash
#Start autofs
service autofs start

#Symblink isos
/root/symblink_isos.sh

#Add unix user - every samba user needs a unix one
useradd martin

#Start samba
#-F = In forground
#-S = log to stdout
#-d 1 = debug level 1
/usr/sbin/smbd -FS -d 1
