pushd wrapper

%1 -S . -B build
%1 --build build --target kuzunet --config Release

popd

:: the following copies should likely live somewhere else
copy wrapper\build\Release\kuzunet.dll lib\kuzunet.dll
copy kuzu_shared.dll lib\kuzu_shared.dll