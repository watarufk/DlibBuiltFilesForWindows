cd %~dp0

if not exist resnet34_1000_imagenet_classifier.dnn (
  .\aria2c.exe https://github.com/davisking/dlib-models/raw/master/resnet34_1000_imagenet_classifier.dnn.bz2
  .\7za x -y resnet34_1000_imagenet_classifier.dnn.bz2
  del resnet34_1000_imagenet_classifier.dnn.bz2
)

if not exist mmod_human_face_detector.dat (
  .\aria2c.exe https://github.com/davisking/dlib-models/raw/master/mmod_human_face_detector.dat.bz2
  .\7za x -y mmod_human_face_detector.dat.bz2
  del mmod_human_face_detector.dat.bz2
)

if not exist shape_predictor_68_face_landmarks.dat (
  .\aria2c.exe https://github.com/davisking/dlib-models/raw/master/shape_predictor_68_face_landmarks.dat.bz2
  .\7za x -y shape_predictor_68_face_landmarks.dat.bz2
  del shape_predictor_68_face_landmarks.dat.bz2
)

if not exist semantic_segmentation_voc2012net.dnn (
  .\aria2c.exe http://dlib.net/files/semantic_segmentation_voc2012net.dnn
)

