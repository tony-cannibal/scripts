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

# NOTES
How to Change the Video’s Resolution but Keep the Aspect Ratio?

The aspect ratio of an image is very well defined in Wikipedia as follows: The aspect ratio of an image is the ratio 
of its width to its height. It is commonly expressed as two numbers separated by a colon, as in 16:9. For an x:y aspect 
ratio, the image is x units wide and y units high.

It is very common to run into this problem while working with videos: How do I change a video’s resolution 
(or scaling a video) but keeping or retaining the video’s original aspect ratio.

In FFmpeg, if you want to scale a video while retaining its aspect ratio, you need to set either one of the height or 
width parameter and set the other parameter to -1. That is if you set the height, then set the width to -1 and vice-versa.

To demonstrate, assume the following commands take a HD video (1920x1080) as its input. And, let’s assume that we want to 
change its resolution. This can be done in two ways as discussed above, so let’s try both ways.

1. Specify the Width To Retain the Aspect Ratio

> ffmpeg -i input.mp4 -vf scale=320:-1 output.mp4

The resulting video will have a resolution of 320x180. 
This is because 1920 / 320 = 6. Thus, the height is 
scaled to 1080 / 6 = 180 pixels.

2. Specify the Height To Retain the Aspect Ratio

> ffmpeg -i input.mp4 -vf scale=-1:720 output.mp4

The resulting video will have a resolution of 1280x720. 
This is because 1080 / 720 = 1.5. Thus, the width is 
scaled to 1920 / 1.5 = 1280 pixels.

