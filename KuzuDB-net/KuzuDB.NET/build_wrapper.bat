pushd wrapper
::mkdir build
::pushd build
::%1 -G "Visual Studio 17 2022" -A x64 .. -DCMAKE_BUILD_TYPE=Release
::%1 --build . --target kuzunet --config Release
%1 -S . -B build
%1 --build build --target kuzunet --config Release
::popd
popd


copy wrapper\build\Release\kuzunet.dll lib\kuzunet.dll
copy kuzu_shared.dll lib\kuzu_shared.dll