cd %~dp0..

rem rmdir /S /Q dlib_examples_build_x86_mkl
mkdir dlib_examples_build_x86_mkl
cd dlib_examples_build_x86_mkl

rem On ATOM processor, you can use MKL but you cannot use AVX.
cmake.exe ../dlib/examples ^
  -DOpenCV_DIR:PATH="%~dp0../opencv_x86/install" ^
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
  -DUSE_SSE4_INSTRUCTIONS:BOOL="1"

cmake.exe --build "." --target "ALL_BUILD" --config "Release"
cmake.exe --build "." --target "ALL_BUILD" --config "Debug"
