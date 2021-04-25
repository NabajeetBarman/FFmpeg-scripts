filepath=$(pwd)
for fileNa in ${filepath}/*.mp4 
do
	file=$(basename "$fileNa")
	ffmpeg -i $file -vf mpdecimate,setpts=N/FRAME_RATE/TB ${file%.*}_NoDuplicates.mp4
	rm $file
	mv ${file%.*}_NoDuplicates.mp4 ${file%.*}.mp4
done