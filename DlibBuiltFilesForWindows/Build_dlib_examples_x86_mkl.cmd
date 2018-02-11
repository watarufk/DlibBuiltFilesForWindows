cd %~dp0..

rem rmdir /S /Q dlib_examples_build_x86_mkl
mkdir dlib_examples_build_x86_mkl
cd dlib_examples_build_x86_mkl

rem On ATOM processor, you can use MKL but you cannot use AVX.
cmake.exe ../dlib/examples ^
  -DUSE_SSE4_INSTRUCTIONS:BOOL="1"

cmake.exe --build "." --target "ALL_BUILD" --config "Release"
cmake.exe --build "." --target "ALL_BUILD" --config "Debug"
