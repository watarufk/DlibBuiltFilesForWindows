cd ..

REM rmdir /S /Q dlib_examples_build_x64_avx_cuda
REM rmdir /S /Q dlib_examples_build_x64_mkl_cuda
REM rmdir /S /Q dlib_examples_build_x86_avx
REM rmdir /S /Q dlib_examples_build_x86_mkl

mkdir dlib_examples_build_x64_avx_cuda
cd dlib_examples_build_x64_avx_cuda
copy ..\DlibBuiltFilesForWindows\CMakeCache_dlib_examples_build_x64_avx_cuda.txt .\CMakeCache.txt
cmake.exe ../dlib/examples -G "Visual Studio 14 2015 Win64"
cmake.exe --build "dlib_build" --target "ALL_BUILD" --config "Debug"
cmake.exe --build "dlib_build" --target "ALL_BUILD" --config "Release"
cd ..

mkdir dlib_examples_build_x64_mkl_cuda
cd dlib_examples_build_x64_mkl_cuda
copy ..\DlibBuiltFilesForWindows\CMakeCache_dlib_examples_build_x64_mkl_cuda.txt .\CMakeCache.txt
cmake.exe ../dlib/examples -G "Visual Studio 14 2015 Win64"
cmake.exe --build "dlib_build" --target "ALL_BUILD" --config "Debug"
cmake.exe --build "dlib_build" --target "ALL_BUILD" --config "Release"
cd ..

mkdir dlib_examples_build_x86_avx
cd dlib_examples_build_x86_avx
copy ..\DlibBuiltFilesForWindows\CMakeCache_dlib_examples_build_x86_avx.txt .\CMakeCache.txt
cmake.exe ../dlib/examples -G "Visual Studio 14 2015"
cmake.exe --build "dlib_build" --target "ALL_BUILD" --config "Debug"
cmake.exe --build "dlib_build" --target "ALL_BUILD" --config "Release"
cd ..

mkdir dlib_examples_build_x86_mkl
cd dlib_examples_build_x86_mkl
copy ..\DlibBuiltFilesForWindows\CMakeCache_dlib_examples_build_x86_mkl.txt .\CMakeCache.txt
cmake.exe ../dlib/examples -G "Visual Studio 14 2015"
cmake.exe --build "dlib_build" --target "ALL_BUILD" --config "Debug"
cmake.exe --build "dlib_build" --target "ALL_BUILD" --config "Release"
cd ..

pause
