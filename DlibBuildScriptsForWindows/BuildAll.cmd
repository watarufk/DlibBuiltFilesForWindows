cd %~dp0..

rmdir /S /Q dlib_build_x64_mkl_cuda
rmdir /S /Q dlib_build_x86_mkl
del dlib_examples_build_x64_mkl_cuda\CMakeCache.txt
del dlib_examples_build_x64_avx_cuda\CMakeCache.txt
del dlib_examples_build_x86_mkl\CMakeCache.txt

cd %~dp0..
call %~dp0Build_dlib_x64_mkl_cuda.cmd
call %~dp0Build_dlib_x86_mkl.cmd

call %~dp0Build_dlib_examples_x64_mkl_cuda.cmd
call %~dp0Build_dlib_examples_x64_avx_cuda.cmd
call %~dp0Build_dlib_examples_x86_mkl.cmd

call %~dp0DownloadAndCopyDataFiles.cmd
call %~dp0CopyOpenCvDlls.cmd

pause
