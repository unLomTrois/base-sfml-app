REM setup
mkdir bin
mkdir .build

REM cmake and make
cd .build
cmake -G "MinGW Makefiles" ..
cmake --build . -- -j4

REM run 
cd ..
cd bin/
base-sfml-app.exe
cd ..