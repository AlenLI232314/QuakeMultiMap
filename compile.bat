@echo off

cd\
cd F:\quake-leveldesign-starterkit-master\quake-leveldesign-starterkit-master


echo Copying Files...
copy F:\quake-leveldesign-starterkit-master\quake-leveldesign-starterkit-master\id1\Maps\FistFightMap.map F:\quake-leveldesign-starterkit-master\quake-leveldesign-starterkit-master


echo Converting map...


echo --------------QBSP--------------
F:\quake-leveldesign-starterkit-master\quake-leveldesign-starterkit-master\tools\ericw-tools\bin\qbsp.exe FistFightMap

echo --------------VIS---------------
F:\quake-leveldesign-starterkit-master\quake-leveldesign-starterkit-master\tools\ericw-tools\bin\vis.exe FistFightMap

echo -------------LIGHT--------------
F:\quake-leveldesign-starterkit-master\quake-leveldesign-starterkit-master\tools\ericw-tools\bin\light.exe FistFightMap

copy FistFightMap.bsp F:\quake-leveldesign-starterkit-master\quake-leveldesign-starterkit-master\id1\Maps
copy FistFightMap.pts F:\quake-leveldesign-starterkit-master\quake-leveldesign-starterkit-master\id1\Maps
copy FistFightMap.lit F:\quake-leveldesign-starterkit-master\quake-leveldesign-starterkit-master\id1\Maps
pause
cd\
cd F:\quake-leveldesign-starterkit-master\quake-leveldesign-starterkit-master
quakespasm  +map FistFightMap
