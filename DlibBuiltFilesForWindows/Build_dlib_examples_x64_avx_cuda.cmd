cd %~dp0..

rem rmdir /S /Q dlib_examples_build_x64_avx_cuda
mkdir dlib_examples_build_x64_avx_cuda
cd dlib_examples_build_x64_avx_cuda

rem Free version MKL can be used from OSS.
cmake.exe ../dlib/examples -A x64 ^
  -DUSE_AVX_INSTRUCTIONS:BOOL="1" ^
  -Dmkl_core="" ^
  -Dmkl_intel="" ^
  -Dmkl_iomp="" ^
  -Dmkl_thread="" ^
  -DCMAKE_CONFIGURATION_TYPES:STRING="Release;RelWithDebInfo" 

cmake.exe --build "." --target "ALL_BUILD" --config "Release"
cmake.exe --build "." --target "ALL_BUILD" --config "RelWithDebInfo"
