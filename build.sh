# setup
mkdir bin
mkdir .build

# cmake and make
cd .build
cmake -G "MinGW Makefiles" ..
cmake --build . -- -j4

# run 
cd ..
cd bin/
start base-sfml-app.exe
cd ..