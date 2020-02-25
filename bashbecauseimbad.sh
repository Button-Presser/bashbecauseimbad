#!/bin/bash
IP=1
i=1
rm domainsscriptfound.txt
while [ $IP -lt 256 ]
do
	nslookup 192.168.100.$IP  | grep -v NXDOMAIN | grep -v -e '^$' | cut -d ' ' -f 3 | tee -a domainsscriptfound.txt
	((IP=$IP+1))
done
if [ $IP -gt 255 ]

count=$(wc -l domainsscriptfound.txt | cut -c-2)	
then echo "Have found domains doing reverse lookups on them"
while [ $i -lt $count ]
do
echo "domain "$i" of "$count
head -n $i domainsscriptfound.txt | tail -n 1 | nslookup | tail -n 3
((i=$i+1))
done
fi
