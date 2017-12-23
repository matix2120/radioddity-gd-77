#!/bin/bash

# SP contacts list generator for Radioditty GD-77
# by SQ8NXC

echo "Downloading DMR IDs"
wget http://dmr.ham-digital.net/user_by_call.php?id=260 -O contacts.csv -q
if [ $? -ne 0 ]; then
	echo "Download failed"
	exit 1
fi

dt=$(date '+%Y_%m_%d_%H_%M_%S');

echo "Number,Name,Call ID,Type,Ring Style,Call Receive Tone" > "$dt"_contacts.csv
echo "0,LOCAL,9,Group All,Off,None" >> "$dt"_contacts.csv
echo "1,CQ SP,260,Group All,Off,None" >> "$dt"_contacts.csv
echo "2,CQ SP1,2601,Group All,Off,None" >> "$dt"_contacts.csv
echo "3,CQ SP2,2602,Group All,Off,None" >> "$dt"_contacts.csv
echo "4,CQ SP3,2603,Group All,Off,None" >> "$dt"_contacts.csv
echo "5,CQ SP4,2604,Group All,Off,None" >> "$dt"_contacts.csv
echo "6,CQ SP5,2605,Group All,Off,None" >> "$dt"_contacts.csv
echo "7,CQ SP6,2606,Group All,Off,None" >> "$dt"_contacts.csv
echo "8,CQ SP7,2607,Group All,Off,None" >> "$dt"_contacts.csv
echo "9,CQ SP8,2608,Group All,Off,None" >> "$dt"_contacts.csv
echo "10,CQ SP9,2609,Group All,Off,None" >> "$dt"_contacts.csv


awk -v var=11 -F';' '/(S(P|Q|O)[0-9][A-Z]{1,4})/ {print var++","$2" "$4","$3",Private Call,Off,None"}' contacts.csv >> "$dt"_contacts.csv
rm contacts.csv

echo "List generated"
