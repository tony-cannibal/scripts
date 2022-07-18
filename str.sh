This is just some string manupulation tests that i did to create a script that converts all 
videos in a directory just to change the resolution using ffmpeg.

# This is the code

list=("somevideo1.mp4 somevideo2.mp4 somevideo3.mp4 somevideo4.mp4")
res="1020x720"

# echo $firstString
# echo "${firstString:0:-4}-${res}${firstString:${#firstString}-4:4}"  

for a in ${list}; do   
    echo "${a:0:-4}-$res${a:${#firstString}-4:4}"
done


# end code

I will also use what I learned here to create a script to convert audio files to mp3 given an 
input format.
