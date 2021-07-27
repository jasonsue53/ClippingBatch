set "NoExtension=%1"

ffmpeg -hide_banner -y -c:v h264_qsv -i \clipping\burned\%NoExtension%.mp4 -b:v 3M -c:v h264_qsv \clipping\post\%NoExtension%.mp4
