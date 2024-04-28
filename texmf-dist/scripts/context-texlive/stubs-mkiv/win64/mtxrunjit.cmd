@echo off

for /f "usebackq tokens=*" %%M in (`kpsewhich mtxrun.lua`) do set MTX=%%M
luajittex --luaonly %MTX% %*
