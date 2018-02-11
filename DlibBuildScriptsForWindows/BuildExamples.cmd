cd %~dp0..

del dlib_examples_build_x64_mkl_cuda\CMakeCache.txt
del dlib_examples_build_x64_avx_cuda\CMakeCache.txt
del dlib_examples_build_x86_mkl\CMakeCache.txt
rmdir /S /Q dlib_examples_x64_mkl_cuda
rmdir /S /Q dlib_examples_x64_avx_cuda
rmdir /S /Q dlib_examples_x86_mkl

call %~dp0Build_dlib_examples_x64_mkl_cuda.cmd
call %~dp0Build_dlib_examples_x64_avx_cuda.cmd
call %~dp0Build_dlib_examples_x86_mkl.cmd
