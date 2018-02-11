Update submodules
https://github.com/davisking/dlib.git
at first.  And then run 
BuildAll.cmd.


[NOTE]
../../opencv_{x86|x64}/install is set to OpenCV_DIR:PATH in dlib cmake settings.
I set BUILD_opencv_world=OFF, because OpenCV_LIBS (=OpenCV_LIB_COMPONENTS) contains both of each libary and opencv_world, so link errors occurs.

When you make your own project files which uses dnn_*.cpp files, you need to add project property "/bigobj" in [Propety Pages] - [C/C++] - [Command Line] - [Additional Options].

About Intel MKL, dlib uses static library files.
https://software.intel.com/en-us/articles/intel-math-kernel-library-intel-mkl-linkage-and-distribution-quick-reference-guide
"Static library, contains all processor-specific optimization in one package.
mkl_intel_c.lib
mkl_intel_thread.lib
mkl_core.lib
..."

But libiomp5md.dll is NOT static linked, so you need to register paths for libiomp5md.dll or copy it into the same folder as EXE files.
* C:\Program Files (x86)\IntelSWTools\compilers_and_libraries_2017.2.187\windows\redist\ia32\compiler
* C:\Program Files (x86)\IntelSWTools\compilers_and_libraries_2017.2.187\windows\redist\intel64\compiler

Each project which uses DlibExtern.dll, you can set [Project Property Pages] - [Intel Performance Libraries] - [Use Intel MKL] to "No".

In some cases, it seems to be necessary to set [Linker] - [Input] - [Ignore Specific Default Libraries] to "libcpmt.lib;%(IgnoreSpecificDefaultLibraries)".
