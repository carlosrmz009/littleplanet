@echo off
setlocal
if not defined VCINSTALLDIR call "C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Auxiliary\Build\vcvars64.bat" >nul
if not exist build mkdir build
if not exist build\gen mkdir build\gen
if not exist build\obj mkdir build\obj
if not exist build\obj\inst mkdir build\obj\inst
if not exist build\gen\build_id.c echo const char build_id[] = "%BUILD_ID%";> build\gen\build_id.c
set MOVIE=
if exist build\ffmpeg\include set MOVIE=/DLP_MOVIE /Ibuild\ffmpeg\include
set LIBS=
if exist build\ffmpeg\bin set LIBS=build\ffmpeg\bin\avutil-*.dll build\ffmpeg\bin\swresample-*.dll build\ffmpeg\bin\avcodec-*.dll build\ffmpeg\bin\avformat-*.dll build\ffmpeg\licenses\*.txt
if exist build\intro.mkv set LIBS=%LIBS% build\intro.mkv
python -I tools\packlibs.py build\gen\libs.bin %LIBS% || exit /b 1
if exist build\ffmpeg\bin copy /y build\ffmpeg\bin\*.dll build\ >nul
set CHD=/Ithird_party\libchdr\include /Ithird_party\libchdr\deps\lzma-26.02\include /Ithird_party\libchdr\deps\miniz-3.1.2 /Ithird_party\libchdr\deps\zstd-1.5.7
rem the game's code, recompiled to C from asm\ (tools\recomp.py); regenerated and recompiled only when it changes
if not exist build\obj\opmap mkdir build\obj\opmap
cl /nologo /O1 /w /DM68K_NAMES /D_CRT_SECURE_NO_WARNINGS /Isrc /Fobuild\obj\opmap\ /Febuild\opmap.exe tools\opmap.c || exit /b 1
build\opmap.exe > build\opmap.txt || exit /b 1
set RC=
for /f "delims=" %%d in ('python -I tools\recomp_gen.py build\opmap.txt') do set RC=%%d
if not defined RC exit /b 1
set RC=%RC:/=\%
if not exist %RC%\obj mkdir %RC%\obj
if not exist %RC%\obj\rc_tables.obj cl /nologo /O2 /MP /w /bigobj /D_CRT_SECURE_NO_WARNINGS /Isrc /I%RC% /c %RC%\*.c /Fo%RC%\obj\ || exit /b 1
rc /nologo /fobuild\obj\game.res res\game.rc || exit /b 1
cl /nologo /O2 /W3 /MP /wd4244 /wd4996 /wd4146 /wd4102 /wd4267 /wd4305 /wd4018 /D_CRT_SECURE_NO_WARNINGS /Isrc %CHD% %MOVIE% /DLP_RECOMP /EHsc /Fobuild\obj\ /Febuild\lp.exe src\*.c src\fm.cpp third_party\chd.c third_party\ymfm\ymfm_opn.cpp third_party\ymfm\ymfm_ssg.cpp third_party\ymfm\ymfm_adpcm.cpp build\gen\*.c %RC%\obj\*.obj build\obj\game.res %* /link /subsystem:windows /entry:mainCRTStartup || exit /b 1
if not exist build\obj\uninst mkdir build\obj\uninst
rc /nologo /fobuild\obj\uninst.res installer\uninst.rc || exit /b 1
cl /nologo /O2 /W3 /wd4996 /D_CRT_SECURE_NO_WARNINGS /Fobuild\obj\uninst\ /Febuild\uninst.exe installer\littleplanet.c src\gfx.c build\obj\uninst.res /link /subsystem:windows || exit /b 1
rc /nologo /fobuild\obj\littleplanet.res installer\littleplanet.rc || exit /b 1
cl /nologo /O2 /W3 /wd4996 /D_CRT_SECURE_NO_WARNINGS /Fobuild\obj\inst\ /Febuild\littleplanet.exe installer\littleplanet.c src\gfx.c build\obj\littleplanet.res /link /subsystem:windows || exit /b 1
