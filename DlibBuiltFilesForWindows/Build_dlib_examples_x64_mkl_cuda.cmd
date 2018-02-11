cd %~dp0..

rem rmdir /S /Q dlib_examples_build_x64_mkl_cuda
mkdir dlib_examples_build_x64_mkl_cuda
cd dlib_examples_build_x64_mkl_cuda

rem You need to install MKL on your build PC.
cmake.exe ../dlib/examples -A x64 ^
  -DUSE_AVX_INSTRUCTIONS:BOOL="1" ^
  -DCMAKE_CONFIGURATION_TYPES:STRING="Release;RelWithDebInfo" 

cmake.exe --build "." --target "ALL_BUILD" --config "Release"
cmake.exe --build "." --target "ALL_BUILD" --config "RelWithDebInfo"
