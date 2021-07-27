set "Folder=%1"

azcopy copy /clipping/HLS/* "https://b06tangovideo.blob.core.windows.net/$web/%Folder%?sv=2020-04-08&st=2021-07-02T22%%3A13%%3A33Z&se=2025-07-03T22%%3A13%%3A00Z&sr=c&sp=racwl&sig=iLYy6gvJ%%2BnskgzFDff645WrIMmbJdyP8x%%2FCglm0RY5Q%%3D"
