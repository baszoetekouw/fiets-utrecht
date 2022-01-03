#!/bin/bash

export TZ=GMT
url=https://stallingsnet.nl/api/1/parkingcount/utrecht

while true
do
	date=$( date '+%Y%m%d_%H%M%S' )
	dates=$( date '+%s' )
	file="${date}.json"
	echo "$dates $date" > $file
	curl -s $url >> $file
	sleep 300;
done

