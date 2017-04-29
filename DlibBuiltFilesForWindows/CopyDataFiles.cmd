cd ..

mkdir dlib_examples_build_x64_avx_cuda
mkdir dlib_examples_build_x64_mkl_cuda
mkdir dlib_examples_build_x86_avx
mkdir dlib_examples_build_x86_mkl

REM Use your own downloaded files

copy C:\Data\Dlib\mmod_human_face_detector.dat    dlib_examples_build_x64_avx_cuda
copy C:\Data\Dlib\mmod_human_face_detector.dat    dlib_examples_build_x64_mkl_cuda
copy C:\Data\Dlib\mmod_human_face_detector.dat    dlib_examples_build_x86_avx
copy C:\Data\Dlib\mmod_human_face_detector.dat    dlib_examples_build_x86_mkl

copy C:\Data\Dlib\resnet34_1000_imagenet_classifier.dnn    dlib_examples_build_x64_avx_cuda
copy C:\Data\Dlib\resnet34_1000_imagenet_classifier.dnn    dlib_examples_build_x64_mkl_cuda
copy C:\Data\Dlib\resnet34_1000_imagenet_classifier.dnn    dlib_examples_build_x86_avx
copy C:\Data\Dlib\resnet34_1000_imagenet_classifier.dnn    dlib_examples_build_x86_mkl

copy C:\Data\Dlib\shape_predictor_68_face_landmarks.dat    dlib_examples_build_x64_avx_cuda
copy C:\Data\Dlib\shape_predictor_68_face_landmarks.dat    dlib_examples_build_x64_mkl_cuda
copy C:\Data\Dlib\shape_predictor_68_face_landmarks.dat    dlib_examples_build_x86_avx
copy C:\Data\Dlib\shape_predictor_68_face_landmarks.dat    dlib_examples_build_x86_mkl

pause
