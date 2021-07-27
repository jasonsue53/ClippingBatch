path \ffmpeg-4.4-essentials_build\bin;\clippingbatch;%PATH%

for %%f in (\clipping\burned\*.mp4) do TranscodeFile %%~nf