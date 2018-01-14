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

echo "Radio ID,Callsign,Name,Nickname,City,State,Country,Remarks<br/>" > "$dt"_dmr_ids.csv

awk -F';' '/(S(P|Q|O)[0-9][A-Z]{1,4})/ {print$3","$2" "$4",,,Poland,<br/>"}' contacts.csv >> "$dt"_dmr_ids.csv
rm contacts.csv

echo "List generated"
