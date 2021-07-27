path \ffmpeg-4.4-essentials_build\bin;\clipping;%PATH%
set "SourceVideo=%1"
set "Folder=%2"

call cut %SourceVideo% defense
call cut %SourceVideo% sidelin

for %%f in (defense\*.mp4) do BurnClip %%~ni %%~nf

rem call assemblefile
rem call createhls
rem call upload %Folder%_finleytouches
