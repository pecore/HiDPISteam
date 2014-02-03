@echo off

set srcdir="C:\Program Files (x86)\Steam\graphics"
set destdir="C:\Program Files (x86)\Steam\skins\192dpi\graphics"

pushd %srcdir%
	for %%f in (*.tga) do (
		echo # scaling %%f
		convert %%f -resize 200%% %destdir%\%%f
	)
popd