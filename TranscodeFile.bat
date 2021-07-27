set "NoExtension=%1"

ffmpeg -hide_banner -y -c:v h264_qsv -i burned\%NoExtension%.mp4 -b:v 3M -c:v h264_qsv post\%NoExtension%.mp4
