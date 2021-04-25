# Scripts for Video Quality Assessment related tasks us

Collection of various shell scripts for common video processing tasks. Uses FFmpeg and related packages (FFprobe and FFplay). 
New scripts will be added on a rolling basis.

**Operating System:** `Ubuntu/Linux` (though with minor changes, the same can be used in Windows/Mac OS).

**Dependencies:**     `FFmpeg, FFprobe`

# List of Scripts in this Repository

## ExtractBitrateMP4Vids.sh

This script uses FFprobe to extract bitrates for all the videos in the present working directory and writes the filename and corresponding extracted bitrate to a `.csv` file.
To use this for other video container `.avi` and `.mkv`, replace the `.mp4` in line 2 with the corresponding extension. 

_Note_: Please note that this will not give correct output for `AV1` and `VP9` encoded video sequences. Use the `ExtractBitrateWebmVids.sh` script for the same.

## ExtractBitrateWebmVids.sh

This script uses FFprobe to extract bitrates for all the videos in the present working directory and writes the filename and corresponding extracted bitrate to a `.csv` file. For AV1 encoded videos, replace the `.webm` video sequence with corresponding video extension (`.mp4/.avi/.mkv`).

## RemoveDuplicateFrames.sh

This script removes duplicate frames from all the videos in the present working directory. The script overwrites the original files. If you want to keep the original files, please comment line 7 of the script. Video containers other than .mp4 are not tested but should work fine.

## Citation

If you find this file useful and use it in your work, please provide a link to this Github page in your publication.

## Related Literature Work
 If you are interested in research work on Quality of Experience for video streaming applications, please check out my research publications on my [Google Scholar profile](https://scholar.google.co.uk/citations?user=69Xj8bEAAAAJ&hl=en).

## Contact
Nabajeet Barman, Kingston University, London, UK (n.barman@kingston.ac.uk, n.barman@ieee.org)
