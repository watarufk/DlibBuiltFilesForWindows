cd %~dp0..

rem rmdir /S /Q dlib_examples_build_x64_mkl_cuda
mkdir dlib_examples_build_x64_mkl_cuda
cd dlib_examples_build_x64_mkl_cuda

rem You need to install MKL on your build PC.
cmake.exe ../dlib/examples -A x64 ^
  -DOpenCV_DIR:PATH="%~dp0../opencv_x64/install" ^
  -DJPEG_INCLUDE_DIR:PATH="" ^
  -DJPEG_LIBRARY:FILEPATH="" ^
  -DOpenCV_DIR:PATH="%~dp0../opencv_x64/install" ^
  -DPNG_LIBRARY_DEBUG:FILEPATH="" ^
  -DPNG_LIBRARY_RELEASE:FILEPATH="" ^
  -DPNG_PNG_INCLUDE_DIR:PATH="" ^
  -DZLIB_INCLUDE_DIR:PATH="" ^
  -DZLIB_LIBRARY_DEBUG:FILEPATH="" ^
  -DZLIB_LIBRARY_RELEASE:FILEPATH="" ^
  -DLIBJPEG_IS_GOOD:INTERNAL="" ^
  -DLIBPNG_IS_GOOD:INTERNAL="" ^
  -DUSE_AVX_INSTRUCTIONS:BOOL="1"

cmake.exe --build "." --target "ALL_BUILD" --config "Release"
cmake.exe --build "." --target "ALL_BUILD" --config "Debug"
