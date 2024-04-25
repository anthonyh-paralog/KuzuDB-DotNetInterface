
::-I"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.39.33519\include" ^
::-I"C:\Program Files (x86)\Windows Kits\10\Include\10.0.18362.0\ucrt" ^

::set SWIG_EXE=%1

::echo %SWIG_EXE%

::-cpperraswarn ^


::-namespace KuzuDB ^
::-dllimport KuzuDB ^

echo %1

%1 ^
-c++ ^
-csharp ^
-outdir "generated" ^
-o wrapper\kuzu_wrap.cpp ^
-v ^
kuzu.i
