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
  -DUSE_SSE4_INSTRUCTIONS:BOOL="1" ^
  -DCMAKE_INSTALL_PREFIX:PATH="%~dp0../dlib_examples_x86_mkl"

cmake.exe --build "." --target "ALL_BUILD" --config "Release"
cmake.exe --build "." --target "ALL_BUILD" --config "Debug"

call %~dp0DownloadAndExtractDataFiles.cmd

copy resnet34_1000_imagenet_classifier.dnn    "%~dp0..\dlib_examples_build_x86_mkl"
copy mmod_human_face_detector.dat             "%~dp0..\dlib_examples_build_x86_mkl"
copy shape_predictor_68_face_landmarks.dat    "%~dp0..\dlib_examples_build_x86_mkl"

copy "%~dp0..opencv_x86\install\x86\vc14\bin\*320.dll"   "%~dp0..\dlib_examples_build_x86_mkl\Release\"
copy "%~dp0..opencv_x86\install\x86\vc14\bin\*320d.dll"  "%~dp0..\dlib_examples_build_x86_mkl\Debug\"

cmake.exe --build "." --target "INSTALL" --config "Release"

