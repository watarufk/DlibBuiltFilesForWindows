cd ..

copy opencv_x64\install\x64\vc14\bin\*320.dll        dlib_examples_build_x64_cuda\Release\
copy opencv_x64\install\x64\vc14\bin\*320d.dll       dlib_examples_build_x64_cuda\Debug\
copy opencv_x86\install\x86\vc14\bin\*320.dll        dlib_examples_build_x86_avx\Release\
copy opencv_x86\install\x86\vc14\bin\*320d.dll       dlib_examples_build_x86_avx\Debug\
copy opencv_x86\install\x86\vc14\bin\*320.dll        dlib_examples_build_x86_mkl\Release\
copy opencv_x86\install\x86\vc14\bin\*320d.dll       dlib_examples_build_x86_mkl\Debug\

pause
