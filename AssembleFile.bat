cd burned
for %%f in (*.mp4) do @echo file %%f >> filelist.txt
ffmpeg -hide_banner -y -f concat -i filelist.txt -vcodec copy -acodec copy ..\Highlight\highlight.mp4
cd ..
