cd %~dp0..

rem rmdir /S /Q dlib_examples_build_x64_mkl_cuda
mkdir dlib_examples_build_x64_mkl_cuda
cd dlib_examples_build_x64_mkl_cuda

rem You need to install MKL on your build PC.
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
  -DCMAKE_INSTALL_PREFIX:PATH="%~dp0../dlib_examples_x64_mkl_cuda"

cmake.exe --build "." --target "ALL_BUILD" --config "Release"
cmake.exe --build "." --target "ALL_BUILD" --config "Debug"

call %~dp0DownloadAndExtractDataFiles.cmd

copy resnet34_1000_imagenet_classifier.dnn    "%~dp0..\dlib_examples_build_x64_mkl_cuda"
copy mmod_human_face_detector.dat             "%~dp0..\dlib_examples_build_x64_mkl_cuda"
copy shape_predictor_68_face_landmarks.dat    "%~dp0..\dlib_examples_build_x64_mkl_cuda"

copy "%~dp0..opencv_x64\install\x64\vc14\bin\*320.dll"   "%~dp0..\dlib_examples_build_x64_mkl_cuda\Release\
copy "%~dp0..opencv_x64\install\x64\vc14\bin\*320d.dll"  "%~dp0..\dlib_examples_build_x64_mkl_cuda\Debug\

cmake.exe --build "." --target "INSTALL" --config "Release"

