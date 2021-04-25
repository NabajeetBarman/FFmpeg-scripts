#!/bin/bash
for file in $(pwd)/*.mp4  
do
	echo $file >> fileNames.txt
	ffprobe -v error -select_streams v:0 -show_entries stream=bit_rate -of default=noprint_wrappers=1 $file >> bitrates.txt 	
done
sed -ri 's/.*=(.*)/\1/' bitrates.txt
paste -d ',' fileNames.txt bitrates.txt > actual_bitrates.csv
rm fileNames.txt
rm bitrates.txt