#!/bin/bash
#Remove all old directories/symblinks
rm -Rf /share/iso/*

IFS=$(echo -en "\n\b") # to handle spaces in filenames
#Loop through all isos
for i in `ls -1 /mnt/raw_iso | sed 's/.iso$//'`
do
    #Create directory for ISO
    mkdir /share/iso/$i
    #Link the automount disc
    ln -s /mnt/iso_auto/$i /share/iso/$i/disc
    #Link the raw iso
    ln -s /mnt/raw_iso/$i.iso /share/iso/$i/.
done
