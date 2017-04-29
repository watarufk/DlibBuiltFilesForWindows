# DlibBuiltFilesForWindows
This is used as a submodule of "FaceDetectionByDlibForWindows" (<https://github.com/kishimoto-exvision/FaceDetectionByDlibForWindows>).
Static link libraries of dlib are built with cmake and Visual Studio.
About CUDA, cuDNN and Intel MKL, they are not static linked.
It is necessary to download and install them independently.

## Requirement to rebuild
* Windows 7 or above
* Visual Studio 2015
* cmake 3.8
* CUDA Toolkit 8.0 (<https://developer.nvidia.com/cuda-toolkit>)
* cudnn-8.0-windows7-x64-v5.1 (<https://developer.nvidia.com/cudnn>)
* Intel MKL (Community License) (<https://registrationcenter.intel.com/en/forms/?productid=2558&licensetype=2>)

## License about text files
Boost Software License - Version 1.0 (<https://github.com/kishimoto-exvision/FaceDetectionByDlibForWindows/blob/master/LICENSE>)

## License about binary files
When you use binary built files of CUDA version or MKL version, please refer to their license about details.

## Third Party Libraries
* Dlib <http://dlib.net/> (Boost Software License) (<https://github.com/davisking/dlib/blob/master/dlib/LICENSE.txt>)
* OpenCV (3-clause BSD) (<https://github.com/opencv/opencv/blob/master/LICENSE>)
