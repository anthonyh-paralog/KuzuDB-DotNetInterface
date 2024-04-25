echo %1

%1 ^
-c++ ^
-csharp ^
-outdir "generated" ^
-o wrapper\kuzu_wrap.cpp ^
-v ^
kuzu.i
