cd %~dp0..

copy opencv_x64\install\x64\vc14\bin\*320.dll        dlib_examples_build_x64_avx_cuda\Release\
copy opencv_x64\install\x64\vc14\bin\*320d.dll       dlib_examples_build_x64_avx_cuda\RelWithDebInfo\
copy opencv_x64\install\x64\vc14\bin\*320.dll        dlib_examples_build_x64_mkl_cuda\Release\
copy opencv_x64\install\x64\vc14\bin\*320d.dll       dlib_examples_build_x64_mkl_cuda\RelWithDebInfo\
copy opencv_x86\install\x86\vc14\bin\*320.dll        dlib_examples_build_x86_mkl\Release\
copy opencv_x86\install\x86\vc14\bin\*320d.dll       dlib_examples_build_x86_mkl\RelWithDebInfo\

pause
