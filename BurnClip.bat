set "FullFilename=%1"
set "NoExtension=%2"

ffmpeg -hide_banner -y -c:v h264_qsv -i defense\%NoExtension%.mp4 -i sidelin\%NoExtension%.mp4 -filter_complex "[1]scale=1280:720 [pip]; [0][pip] overlay=main_w-overlay_w-10:main_h-overlay_h-10" -b:v 20M -c:v h264_qsv composed\%NoExtension%.mp4

ffmpeg -hide_banner -y -c:v h264_qsv -i composed\%NoExtension%.mp4 -vf drawtext="fontfile=font.ttf:text='%NoExtension%': fontcolor=white: fontsize=72: box=1: boxcolor=black@0.3: boxborderw=5: x=20: y=(h-text_h)-20" -b:v 8M -c:v h264_qsv burned\%NoExtension%.mp4
