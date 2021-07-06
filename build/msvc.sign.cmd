@echo off
rem Public domain
rem http://unlicense.org/
rem Created by Grigore Stefan <g_stefan@yahoo.com>

echo -^> sign web-dev-mini

pushd output
call grigore-stefan.sign "XYO" "web-dev-mini.exe"
popd
