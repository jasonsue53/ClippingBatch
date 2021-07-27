call \clippingbatch\setpath

set "SourceVideo=%1"
set "Folder=%2"

call cut %SourceVideo% defense
call cut %SourceVideo% sidelin

for %%f in (\clipping\defense\*.mp4) do BurnClip %%~ni %%~nf

rem call assemblefile
rem call createhls
rem call upload %Folder%_finleytouches
