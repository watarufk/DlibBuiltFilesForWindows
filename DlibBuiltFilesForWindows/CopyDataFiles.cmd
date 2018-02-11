cd %~dp0

mkdir "%~dp0..\dlib_examples_build_x64_avx_cuda"
mkdir "%~dp0..\dlib_examples_build_x64_mkl_cuda"
mkdir "%~dp0..\dlib_examples_build_x86_mkl"

if not exist resnet34_1000_imagenet_classifier.dnn.bz2 (
  .\aria2c.exe https://github.com/davisking/dlib-models/raw/master/resnet34_1000_imagenet_classifier.dnn.bz2
  .\7za x -y resnet34_1000_imagenet_classifier.dnn.bz2
)

if not exist mmod_human_face_detector.dat.bz2 (
  .\aria2c.exe https://github.com/davisking/dlib-models/raw/master/mmod_human_face_detector.dat.bz2
  .\7za x -y mmod_human_face_detector.dat.bz2
)
if not exist shape_predictor_68_face_landmarks.dat.bz2 (
  .\aria2c.exe https://github.com/davisking/dlib-models/raw/master/shape_predictor_68_face_landmarks.dat.bz2
  .\7za x -y shape_predictor_68_face_landmarks.dat.bz2
)

rem del resnet34_1000_imagenet_classifier.dnn.bz2
rem del mmod_human_face_detector.dat.bz2
rem del shape_predictor_68_face_landmarks.dat.bz2



copy resnet34_1000_imagenet_classifier.dnn    "%~dp0..\dlib_examples_build_x64_avx_cuda"
copy resnet34_1000_imagenet_classifier.dnn    "%~dp0..\dlib_examples_build_x64_mkl_cuda"
copy resnet34_1000_imagenet_classifier.dnn    "%~dp0..\dlib_examples_build_x86_mkl"

copy mmod_human_face_detector.dat             "%~dp0..\dlib_examples_build_x64_avx_cuda"
copy mmod_human_face_detector.dat             "%~dp0..\dlib_examples_build_x64_mkl_cuda"
copy mmod_human_face_detector.dat             "%~dp0..\dlib_examples_build_x86_mkl"

copy shape_predictor_68_face_landmarks.dat    "%~dp0..\dlib_examples_build_x64_avx_cuda"
copy shape_predictor_68_face_landmarks.dat    "%~dp0..\dlib_examples_build_x64_mkl_cuda"
copy shape_predictor_68_face_landmarks.dat    "%~dp0..\dlib_examples_build_x86_mkl"
