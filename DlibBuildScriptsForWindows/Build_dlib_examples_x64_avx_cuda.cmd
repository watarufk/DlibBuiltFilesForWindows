cd %~dp0..

rem rmdir /S /Q dlib_examples_build_x64_avx_cuda
mkdir dlib_examples_build_x64_avx_cuda
cd dlib_examples_build_x64_avx_cuda

rem Free version MKL can be used from OSS.
cmake.exe ../dlib/examples -A x64 ^
  -DOpenCV_DIR:PATH="%~dp0../opencv_x64/install" ^
  -DJPEG_INCLUDE_DIR:PATH="" ^
  -DJPEG_LIBRARY:FILEPATH="" ^
  -DPNG_LIBRARY_DEBUG:FILEPATH="" ^
  -DPNG_LIBRARY_RELEASE:FILEPATH="" ^
  -DPNG_PNG_INCLUDE_DIR:PATH="" ^
  -DZLIB_INCLUDE_DIR:PATH="" ^
  -DZLIB_LIBRARY_DEBUG:FILEPATH="" ^
  -DZLIB_LIBRARY_RELEASE:FILEPATH="" ^
  -DLIBJPEG_IS_GOOD:INTERNAL="" ^
  -DLIBPNG_IS_GOOD:INTERNAL="" ^
  -DUSE_AVX_INSTRUCTIONS:BOOL="1" ^
  -Dmkl_core="" ^
  -Dmkl_intel="" ^
  -Dmkl_iomp="" ^
  -Dmkl_thread=""

cmake.exe --build "." --target "ALL_BUILD" --config "Release"
cmake.exe --build "." --target "ALL_BUILD" --config "Debug"
